/******************************************************************************
* Copyright (C) 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#ifndef UART_MSG_Q_H
#define UART_MSG_Q_H

#include "FreeRTOS.h"
#include "queue.h"

#define UART_MSG_Q_TASK_STACK_WORDS   512U
#define UART_MSG_Q_TASK_PRIORITY      ( tskIDLE_PRIORITY + 2U )
#define UART_MSG_Q_DEPTH              64U
#define UART_MSG_Q_ENTRY_BYTES        128U

typedef struct UartMsgQEntry
{
    size_t xDataLength;
    unsigned char ucData[ UART_MSG_Q_ENTRY_BYTES ];
} UartMsgQEntry_t;

extern QueueHandle_t UartRxMsgQ;
extern QueueHandle_t UartTxMsgQ;

BaseType_t UartMsgQInit( void );
void UartRxMsgQTask( void *pvParameters );
void UartTxMsgQTask( void *pvParameters );

#endif
