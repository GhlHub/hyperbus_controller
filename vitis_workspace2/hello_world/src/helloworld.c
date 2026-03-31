/******************************************************************************
* Copyright (C) 2023 - 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#include "FreeRTOS.h"
#include "task.h"

#include "platform.h"
#include "xil_printf.h"

static void prvHeartbeatTask(void *pvParameters)
{
    ( void ) pvParameters;

    for( ; ; )
    {
        xil_printf("FreeRTOS tick %lu\r\n", (unsigned long)xTaskGetTickCount());
        vTaskDelay( pdMS_TO_TICKS( 1000U ) );
    }
}

int main(void)
{
    BaseType_t xStatus;

    init_platform();

    xil_printf("Starting FreeRTOS on MicroBlaze V\r\n");

    xStatus = xTaskCreate( prvHeartbeatTask,
                           "heartbeat",
                           configMINIMAL_STACK_SIZE,
                           NULL,
                           tskIDLE_PRIORITY + 1U,
                           NULL );
    configASSERT( xStatus == pdPASS );

    vTaskStartScheduler();

    xil_printf("vTaskStartScheduler returned unexpectedly\r\n");
    cleanup_platform();

    return 1;
}
