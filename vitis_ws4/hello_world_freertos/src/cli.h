/******************************************************************************
* Copyright (C) 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#ifndef CLI_H
#define CLI_H

#include "FreeRTOS.h"

#define CLI_INPUT_BUFFER_SIZE        96U
#define CLI_MAX_TOKENS               8U
#define CLI_QUEUE_DEPTH              4U
#define CLI_TASK_STACK_WORDS         512U
#define CLI_TASK_PRIORITY            ( tskIDLE_PRIORITY + 2U )
#define CLI_RX_TASK_STACK_WORDS      512U
#define CLI_RX_TASK_PRIORITY         ( tskIDLE_PRIORITY + 2U )
#define CLI_HISTORY_DEPTH            8U

BaseType_t Cli_Init( void );
BaseType_t Cli_SubmitLine( const char *pcLine );
void Cli_RxMsgQTask( void *pvParameters );
void Cli_Task( void *pvParameters );

#endif
