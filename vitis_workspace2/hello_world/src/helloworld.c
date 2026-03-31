/******************************************************************************
* Copyright (C) 2023 - 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#include <stdint.h>

#include "FreeRTOS.h"
#include "queue.h"
#include "task.h"
#include "timers.h"

#include "platform.h"
#include "xil_printf.h"

#define mainTEST_QUEUE_LENGTH            8U
#define mainPRODUCER_STACK_WORDS         192U
#define mainCONSUMER_STACK_WORDS         192U
#define mainNOTIFIER_STACK_WORDS         192U
#define mainMONITOR_STACK_WORDS          320U

#define mainPRODUCER_PERIOD_TICKS        pdMS_TO_TICKS( 100U )
#define mainNOTIFIER_PERIOD_TICKS        pdMS_TO_TICKS( 250U )
#define mainMONITOR_PERIOD_TICKS         pdMS_TO_TICKS( 1000U )
#define mainSOFTWARE_TIMER_PERIOD_TICKS  pdMS_TO_TICKS( 200U )

typedef struct TestSnapshot
{
    uint32_t ulProduced;
    uint32_t ulConsumed;
    uint32_t ulNotificationSent;
    uint32_t ulNotificationReceived;
    uint32_t ulTimerCallbacks;
} TestSnapshot_t;

static QueueHandle_t xSequenceQueue;
static TimerHandle_t xPeriodicTimer;

static TaskHandle_t xProducerTaskHandle;
static TaskHandle_t xConsumerTaskHandle;
static TaskHandle_t xNotifierTaskHandle;
static TaskHandle_t xMonitorTaskHandle;

static volatile uint32_t ulQueueProduced;
static volatile uint32_t ulQueueConsumed;
static volatile uint32_t ulNotificationSent;
static volatile uint32_t ulNotificationReceived;
static volatile uint32_t ulTimerCallbacks;

static void prvTestFail( const char *pcTestName,
                         uint32_t ulExpected,
                         uint32_t ulActual )
{
    taskDISABLE_INTERRUPTS();

    xil_printf( "TEST FAIL %s expected=%lu actual=%lu\r\n",
                pcTestName,
                ( unsigned long ) ulExpected,
                ( unsigned long ) ulActual );

    for( ; ; )
    {
    }
}

static void prvQueueProducerTask( void *pvParameters )
{
    uint32_t ulValueToSend = 0U;

    ( void ) pvParameters;

    for( ; ; )
    {
        ulValueToSend++;

        if( xQueueSend( xSequenceQueue,
                        &ulValueToSend,
                        pdMS_TO_TICKS( 50U ) ) != pdPASS )
        {
            prvTestFail( "queue_send", ulValueToSend, ulQueueConsumed );
        }

        ulQueueProduced = ulValueToSend;
        vTaskDelay( mainPRODUCER_PERIOD_TICKS );
    }
}

static void prvQueueConsumerTask( void *pvParameters )
{
    uint32_t ulExpectedValue = 1U;
    uint32_t ulReceivedValue;

    ( void ) pvParameters;

    for( ; ; )
    {
        if( xQueueReceive( xSequenceQueue,
                           &ulReceivedValue,
                           portMAX_DELAY ) != pdPASS )
        {
            prvTestFail( "queue_recv", ulExpectedValue, 0U );
        }

        if( ulReceivedValue != ulExpectedValue )
        {
            prvTestFail( "queue_order", ulExpectedValue, ulReceivedValue );
        }

        ulQueueConsumed = ulReceivedValue;
        ulExpectedValue++;
    }
}

static void prvNotifierTask( void *pvParameters )
{
    ( void ) pvParameters;

    for( ; ; )
    {
        xTaskNotifyGive( xMonitorTaskHandle );
        ulNotificationSent++;
        vTaskDelay( mainNOTIFIER_PERIOD_TICKS );
    }
}

static void prvPeriodicTimerCallback( TimerHandle_t xTimer )
{
    ( void ) xTimer;
    ulTimerCallbacks++;
}

static void prvMonitorTask( void *pvParameters )
{
    TestSnapshot_t xPrevious = { 0 };
    TestSnapshot_t xCurrent;

    ( void ) pvParameters;

    for( ; ; )
    {
        const uint32_t ulDrainedNotifications = ( uint32_t ) ulTaskNotifyTake( pdTRUE, 0U );

        if( ulDrainedNotifications != 0U )
        {
            ulNotificationReceived += ulDrainedNotifications;
        }

        xCurrent.ulProduced = ulQueueProduced;
        xCurrent.ulConsumed = ulQueueConsumed;
        xCurrent.ulNotificationSent = ulNotificationSent;
        xCurrent.ulNotificationReceived = ulNotificationReceived;
        xCurrent.ulTimerCallbacks = ulTimerCallbacks;

        if( ( xPrevious.ulProduced != 0U ) &&
            ( xCurrent.ulProduced <= xPrevious.ulProduced ) )
        {
            prvTestFail( "producer_progress",
                         xPrevious.ulProduced + 1U,
                         xCurrent.ulProduced );
        }

        if( ( xPrevious.ulConsumed != 0U ) &&
            ( xCurrent.ulConsumed <= xPrevious.ulConsumed ) )
        {
            prvTestFail( "consumer_progress",
                         xPrevious.ulConsumed + 1U,
                         xCurrent.ulConsumed );
        }

        if( ( xPrevious.ulNotificationReceived != 0U ) &&
            ( xCurrent.ulNotificationReceived <= xPrevious.ulNotificationReceived ) )
        {
            prvTestFail( "notify_progress",
                         xPrevious.ulNotificationReceived + 1U,
                         xCurrent.ulNotificationReceived );
        }

        if( ( xPrevious.ulTimerCallbacks != 0U ) &&
            ( xCurrent.ulTimerCallbacks <= xPrevious.ulTimerCallbacks ) )
        {
            prvTestFail( "timer_progress",
                         xPrevious.ulTimerCallbacks + 1U,
                         xCurrent.ulTimerCallbacks );
        }

        if( xCurrent.ulConsumed > xCurrent.ulProduced )
        {
            prvTestFail( "queue_accounting",
                         xCurrent.ulProduced,
                         xCurrent.ulConsumed );
        }

        xil_printf(
            "tick=%lu queue=%lu/%lu pending=%lu notify=%lu/%lu timer=%lu stack=%u/%u/%u/%u\r\n",
            ( unsigned long ) xTaskGetTickCount(),
            ( unsigned long ) xCurrent.ulProduced,
            ( unsigned long ) xCurrent.ulConsumed,
            ( unsigned long ) uxQueueMessagesWaiting( xSequenceQueue ),
            ( unsigned long ) xCurrent.ulNotificationSent,
            ( unsigned long ) xCurrent.ulNotificationReceived,
            ( unsigned long ) xCurrent.ulTimerCallbacks,
            ( unsigned int ) uxTaskGetStackHighWaterMark( xProducerTaskHandle ),
            ( unsigned int ) uxTaskGetStackHighWaterMark( xConsumerTaskHandle ),
            ( unsigned int ) uxTaskGetStackHighWaterMark( xNotifierTaskHandle ),
            ( unsigned int ) uxTaskGetStackHighWaterMark( NULL ) );

        xPrevious = xCurrent;
        vTaskDelay( mainMONITOR_PERIOD_TICKS );
    }
}

int main( void )
{
    BaseType_t xStatus;
    void ( * volatile pxPlatformInit )( void ) = init_platform;

    pxPlatformInit();

    xil_printf( "Starting FreeRTOS on MicroBlaze V\r\n" );

    xSequenceQueue = xQueueCreate( mainTEST_QUEUE_LENGTH, sizeof( uint32_t ) );
    configASSERT( xSequenceQueue != NULL );

    xPeriodicTimer = xTimerCreate( "periodic",
                                   mainSOFTWARE_TIMER_PERIOD_TICKS,
                                   pdTRUE,
                                   NULL,
                                   prvPeriodicTimerCallback );
    configASSERT( xPeriodicTimer != NULL );

    xStatus = xTaskCreate( prvQueueProducerTask,
                           "producer",
                           mainPRODUCER_STACK_WORDS,
                           NULL,
                           tskIDLE_PRIORITY + 1U,
                           &xProducerTaskHandle );
    configASSERT( xStatus == pdPASS );

    xStatus = xTaskCreate( prvQueueConsumerTask,
                           "consumer",
                           mainCONSUMER_STACK_WORDS,
                           NULL,
                           tskIDLE_PRIORITY + 1U,
                           &xConsumerTaskHandle );
    configASSERT( xStatus == pdPASS );

    xStatus = xTaskCreate( prvNotifierTask,
                           "notify",
                           mainNOTIFIER_STACK_WORDS,
                           NULL,
                           tskIDLE_PRIORITY + 1U,
                           &xNotifierTaskHandle );
    configASSERT( xStatus == pdPASS );

    xStatus = xTaskCreate( prvMonitorTask,
                           "monitor",
                           mainMONITOR_STACK_WORDS,
                           NULL,
                           tskIDLE_PRIORITY + 2U,
                           &xMonitorTaskHandle );
    configASSERT( xStatus == pdPASS );

    xStatus = xTimerStart( xPeriodicTimer, 0U );
    configASSERT( xStatus == pdPASS );

    vTaskStartScheduler();

    xil_printf( "vTaskStartScheduler returned unexpectedly\r\n" );
    cleanup_platform();

    return 1;
}
