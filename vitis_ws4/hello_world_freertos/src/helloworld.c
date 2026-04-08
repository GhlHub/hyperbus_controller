/******************************************************************************
* Copyright (C) 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#include "FreeRTOS.h"
#include "task.h"

#include "platform.h"
#include "xil_printf.h"

#define mainHELLO_TASK_STACK_WORDS  256U
#define mainHELLO_TASK_PERIOD_TICKS pdMS_TO_TICKS( 1000U )

static void prvHelloTask( void *pvParameters )
{
    uint32_t ulCount = 0U;

    ( void ) pvParameters;

    for( ; ; )
    {
        xil_printf( "FreeRTOS hello world tick=%lu count=%lu\r\n",
                    ( unsigned long ) xTaskGetTickCount(),
                    ( unsigned long ) ulCount );
        ulCount++;
        vTaskDelay( mainHELLO_TASK_PERIOD_TICKS );
    }
}

int main( void )
{
    init_platform();

    xil_printf( "Starting hello_world_freertos on MicroBlaze\r\n" );

    configASSERT( xTaskCreate( prvHelloTask,
                               "hello",
                               mainHELLO_TASK_STACK_WORDS,
                               NULL,
                               tskIDLE_PRIORITY + 1U,
                               NULL ) == pdPASS );

    vTaskStartScheduler();

    xil_printf( "Scheduler exited unexpectedly\r\n" );

    for( ; ; )
    {
    }
}
