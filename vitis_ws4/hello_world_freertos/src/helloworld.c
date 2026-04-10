/******************************************************************************
* Copyright (C) 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#include "FreeRTOS.h"
#include "task.h"

#include "cli.h"
#include "platform.h"
#include "UartMsgQ.h"
#include "xil_printf.h"

int main( void )
{
    init_platform();

    xil_printf( "Starting hello_world_freertos on MicroBlaze\r\n" );

    configASSERT( UartMsgQInit() == pdPASS );
    configASSERT( Cli_Init() == pdPASS );

    configASSERT( xTaskCreate( Cli_Task,
                               "cli",
                               CLI_TASK_STACK_WORDS,
                               NULL,
                               CLI_TASK_PRIORITY,
                               NULL ) == pdPASS );

    configASSERT( xTaskCreate( Cli_RxMsgQTask,
                               "clirx",
                               CLI_RX_TASK_STACK_WORDS,
                               NULL,
                               CLI_RX_TASK_PRIORITY,
                               NULL ) == pdPASS );

    vTaskStartScheduler();

    xil_printf( "Scheduler exited unexpectedly\r\n" );

    for( ; ; )
    {
    }
}
