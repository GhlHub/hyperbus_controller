/******************************************************************************
* Copyright (C) 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#include "UartMsgQ.h"

#include "task.h"
#include "xil_io.h"
#include "xparameters.h"

#define EUART_TX_BYTE_FIFO_OFFSET     0x00U
#define EUART_TX_WORD_FIFO_OFFSET     0x04U
#define EUART_RX_BYTE_FIFO_OFFSET     0x08U
#define EUART_INT_STAT_OFFSET         0x10U
#define EUART_INT_MASK_OFFSET         0x14U
#define EUART_TX_FIFO_CNT_OFFSET      0x38U
#define EUART_RX_FIFO_CNT_OFFSET      0x3CU
#define EUART_TX_FIFO_CAPACITY_BYTES  1024U
#define EUART_INT_STAT_TX_EMPTY       0x01U
#define EA_INT_STAT_TX_AE             0x02U
#define EUART_INT_STAT_RX_THRESH      0x08U
#define EUART_INT_STAT_RX_TIME        0x10U
#define EUART_INT_STAT_RX_WAKE        ( EUART_INT_STAT_RX_THRESH | EUART_INT_STAT_RX_TIME )
/* design_1.bd wires e_uart_0/intr to ilconcat_0/In0 -> axi_intc_0 input 0 */
#define EUART_INTERRUPT_ID            0U

QueueHandle_t UartRxMsgQ;
QueueHandle_t UartTxMsgQ;

static TaskHandle_t xUartRxMsgQTaskHandle;
static TaskHandle_t xUartTxMsgQTaskHandle;
static uint32_t ulUartIntMaskShadow;

static void prvEUartWriteInterruptMaskShadow( void )
{
#ifdef XPAR_E_UART_0_BASEADDR
    Xil_Out32( XPAR_E_UART_0_BASEADDR + EUART_INT_MASK_OFFSET,
               ulUartIntMaskShadow );
#endif
}

static void prvEUartTxCallback( void *pvCallBackRef, unsigned int ulByteCount )
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;

    ( void ) pvCallBackRef;
    ( void ) ulByteCount;

    if( xUartTxMsgQTaskHandle != NULL )
    {
        vTaskNotifyGiveFromISR( xUartTxMsgQTaskHandle, &xHigherPriorityTaskWoken );
        portYIELD_FROM_ISR( xHigherPriorityTaskWoken );
    }
}

static void prvEUartRxCallback( void *pvCallBackRef, unsigned int ulByteCount )
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;

    ( void ) pvCallBackRef;
    ( void ) ulByteCount;

    if( xUartRxMsgQTaskHandle != NULL )
    {
        vTaskNotifyGiveFromISR( xUartRxMsgQTaskHandle, &xHigherPriorityTaskWoken );
        portYIELD_FROM_ISR( xHigherPriorityTaskWoken );
    }
}

static void prvEUartInterruptHandler( void *pvInstance )
{
    uint32_t ulIntStatus;
    const uint32_t ulEnabledMask = ulUartIntMaskShadow;
    BaseType_t xHandled = pdFALSE;

    ( void ) pvInstance;

    Xil_Out32( XPAR_E_UART_0_BASEADDR + EUART_INT_MASK_OFFSET, 0U );
    ulIntStatus = Xil_In32( XPAR_E_UART_0_BASEADDR + EUART_INT_STAT_OFFSET );

    if( ( ( ulEnabledMask & EA_INT_STAT_TX_AE ) != 0U ) &&
        ( ( ulIntStatus & EA_INT_STAT_TX_AE ) != 0U ) )
    {
        ulUartIntMaskShadow &= ~EA_INT_STAT_TX_AE;
        xHandled = pdTRUE;
        prvEUartTxCallback( NULL, 0U );
    }

    if( ( ( ulEnabledMask & EUART_INT_STAT_RX_WAKE ) != 0U ) &&
        ( ( ulIntStatus & EUART_INT_STAT_RX_WAKE ) != 0U ) )
    {
        ulUartIntMaskShadow &= ~EUART_INT_STAT_RX_WAKE;

        /* RX_TIME is sticky in the updated e_uart implementation and must be
         * acknowledged explicitly after masking the RX wake sources. */
        if( ( ulIntStatus & EUART_INT_STAT_RX_TIME ) != 0U )
        {
            Xil_Out32( XPAR_E_UART_0_BASEADDR + EUART_INT_STAT_OFFSET,
                       EUART_INT_STAT_RX_TIME );
        }

        xHandled = pdTRUE;
        prvEUartRxCallback( NULL, 0U );
    }

    ( void ) xHandled;
    prvEUartWriteInterruptMaskShadow();
}

static BaseType_t prvEUartInterruptInit( void )
{
#ifdef XPAR_E_UART_0_BASEADDR
    int iStatus;

    iStatus = xPortInstallInterruptHandler(
        EUART_INTERRUPT_ID,
        ( XInterruptHandler ) prvEUartInterruptHandler,
        NULL );

    if( iStatus != pdPASS )
    {
        return pdFAIL;
    }

    ulUartIntMaskShadow = 0U;
    prvEUartWriteInterruptMaskShadow();
    vPortEnableInterrupt( EUART_INTERRUPT_ID );

    return pdPASS;
#else
    return pdFAIL;
#endif
}

static size_t prvEUartGetTxFifoSpaceAvailable( void )
{
#ifdef XPAR_E_UART_0_BASEADDR
    uint32_t ulOccupancy =
        Xil_In32( XPAR_E_UART_0_BASEADDR + EUART_TX_FIFO_CNT_OFFSET );

    if( ulOccupancy >= EUART_TX_FIFO_CAPACITY_BYTES )
    {
        return 0U;
    }

    return ( size_t ) ( EUART_TX_FIFO_CAPACITY_BYTES - ulOccupancy );
#else
    return 0U;
#endif
}

static void prvEUartSendBytes( const unsigned char *pucData, size_t xLength )
{
#ifdef XPAR_E_UART_0_BASEADDR
    size_t xIndex = 0U;

    while( ( xIndex + sizeof( uint32_t ) ) <= xLength )
    {
        const uint32_t ulWord =
            ( ( uint32_t ) pucData[ xIndex + 0U ] << 0U ) |
            ( ( uint32_t ) pucData[ xIndex + 1U ] << 8U ) |
            ( ( uint32_t ) pucData[ xIndex + 2U ] << 16U ) |
            ( ( uint32_t ) pucData[ xIndex + 3U ] << 24U );

        Xil_Out32( XPAR_E_UART_0_BASEADDR + EUART_TX_WORD_FIFO_OFFSET, ulWord );
        xIndex += sizeof( uint32_t );
    }

    while( xIndex < xLength )
    {
        Xil_Out32( XPAR_E_UART_0_BASEADDR + EUART_TX_BYTE_FIFO_OFFSET,
                   ( uint32_t ) pucData[ xIndex ] );
        xIndex++;
    }
#else
    ( void ) pucData;
    ( void ) xLength;
#endif
}

BaseType_t UartMsgQInit( void )
{
    UartRxMsgQ = xQueueCreate( UART_MSG_Q_DEPTH, sizeof( UartMsgQEntry_t ) );
    UartTxMsgQ = xQueueCreate( UART_MSG_Q_DEPTH, sizeof( UartMsgQEntry_t ) );

    if( ( UartRxMsgQ == NULL ) || ( UartTxMsgQ == NULL ) )
    {
        return pdFAIL;
    }

    if( xTaskCreate( UartTxMsgQTask,
                     "uarttxq",
                     UART_MSG_Q_TASK_STACK_WORDS,
                     NULL,
                     UART_MSG_Q_TASK_PRIORITY,
                     &xUartTxMsgQTaskHandle ) != pdPASS )
    {
        return pdFAIL;
    }

    if( xTaskCreate( UartRxMsgQTask,
                     "uartrxq",
                     UART_MSG_Q_TASK_STACK_WORDS,
                     NULL,
                     UART_MSG_Q_TASK_PRIORITY,
                     &xUartRxMsgQTaskHandle ) != pdPASS )
    {
        return pdFAIL;
    }

    return prvEUartInterruptInit();
}

static size_t prvEUartGetRxFifoOccupancy( void )
{
#ifdef XPAR_E_UART_0_BASEADDR
    uint32_t ulOccupancy =
        Xil_In32( XPAR_E_UART_0_BASEADDR + EUART_RX_FIFO_CNT_OFFSET );

    if( ulOccupancy > EUART_TX_FIFO_CAPACITY_BYTES )
    {
        ulOccupancy = EUART_TX_FIFO_CAPACITY_BYTES;
    }

    return ( size_t ) ulOccupancy;
#else
    return 0U;
#endif
}

static void prvEUartReadRxBytes( unsigned char *pucData, size_t xLength )
{
#ifdef XPAR_E_UART_0_BASEADDR
    size_t xIndex;

    for( xIndex = 0U; xIndex < xLength; xIndex++ )
    {
        pucData[ xIndex ] = ( unsigned char )
            ( Xil_In32( XPAR_E_UART_0_BASEADDR + EUART_RX_BYTE_FIFO_OFFSET ) & 0xFFU );
    }
#else
    ( void ) pucData;
    ( void ) xLength;
#endif
}

void UartRxMsgQTask( void *pvParameters )
{
    UartMsgQEntry_t xMessage;

    ( void ) pvParameters;

    for( ; ; )
    {
        size_t xOccupancy = prvEUartGetRxFifoOccupancy();

        while( xOccupancy != 0U )
        {
            size_t xLength = xOccupancy;

            if( xLength > UART_MSG_Q_ENTRY_BYTES )
            {
                xLength = UART_MSG_Q_ENTRY_BYTES;
            }

            prvEUartReadRxBytes( xMessage.ucData, xLength );
            xMessage.xDataLength = xLength;

            ( void ) xQueueSend( UartRxMsgQ, &xMessage, portMAX_DELAY );
            xOccupancy = prvEUartGetRxFifoOccupancy();
        }

        taskENTER_CRITICAL();
        ulUartIntMaskShadow |= EUART_INT_STAT_RX_WAKE;
        prvEUartWriteInterruptMaskShadow();
        taskEXIT_CRITICAL();

        ( void ) xTaskNotifyWait( 0U,
                                  0xffffffffUL,
                                  NULL,
                                  portMAX_DELAY );
    }
}

void UartTxMsgQTask( void *pvParameters )
{
    UartMsgQEntry_t xMessage;

    ( void ) pvParameters;

    for( ; ; )
    {
        if( xQueueReceive( UartTxMsgQ, &xMessage, portMAX_DELAY ) == pdPASS )
        {
            size_t xLength = xMessage.xDataLength;
            size_t xOffset = 0U;

            if( xLength > UART_MSG_Q_ENTRY_BYTES )
            {
                xLength = UART_MSG_Q_ENTRY_BYTES;
            }

            while( xOffset < xLength )
            {
                const size_t xSpaceAvailable =
                    prvEUartGetTxFifoSpaceAvailable();
                size_t xBytesToSend = xLength - xOffset;

                if( xBytesToSend > xSpaceAvailable )
                {
                    xBytesToSend = xSpaceAvailable;
                }

                if( xBytesToSend != 0U )
                {
                    prvEUartSendBytes( &xMessage.ucData[ xOffset ],
                                       xBytesToSend );
                    xOffset += xBytesToSend;
                }

                if( xOffset < xLength )
                {
                    taskENTER_CRITICAL();
                    ulUartIntMaskShadow |= EA_INT_STAT_TX_AE;
                    prvEUartWriteInterruptMaskShadow();
                    taskEXIT_CRITICAL();

                    ( void ) xTaskNotifyWait( 0U,
                                              0xffffffffUL,
                                              NULL,
                                              portMAX_DELAY );
                }
            }
        }
    }
}
