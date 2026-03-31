/******************************************************************************
* Copyright (C) 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#ifndef FREERTOS_CONFIG_H
#define FREERTOS_CONFIG_H

#include <stdint.h>
#include <stddef.h>

#include "xparameters.h"

#ifdef __cplusplus
extern "C" {
#endif

void vAssertCalled(const char *pcFileName, uint32_t ulLine);

#define configASSERT(x)                                    \
    do                                                     \
    {                                                      \
        if((x) == 0)                                       \
        {                                                  \
            vAssertCalled(__FILE__, (uint32_t)__LINE__);   \
        }                                                  \
    } while(0)

#define configUSE_PREEMPTION                       1
#define configUSE_PORT_OPTIMISED_TASK_SELECTION    1
#define configCPU_CLOCK_HZ                         XPAR_MICROBLAZE_RISCV_FREQ
#define configTICK_RATE_HZ                         100
#define configMAX_PRIORITIES                       5
#define configMINIMAL_STACK_SIZE                   256
#define configTOTAL_HEAP_SIZE                      ( ( size_t ) ( 12U * 1024U ) )
#define configMAX_TASK_NAME_LEN                    16
#define configUSE_16_BIT_TICKS                     0
#define configIDLE_SHOULD_YIELD                    1
#define configUSE_TASK_NOTIFICATIONS               1
#define configTASK_NOTIFICATION_ARRAY_ENTRIES      1
#define configQUEUE_REGISTRY_SIZE                  0
#define configUSE_MUTEXES                          1
#define configUSE_RECURSIVE_MUTEXES                0
#define configUSE_COUNTING_SEMAPHORES              0
#define configUSE_TIME_SLICING                     1
#define configUSE_NEWLIB_REENTRANT                 0
#define configENABLE_BACKWARD_COMPATIBILITY        0
#define configNUM_THREAD_LOCAL_STORAGE_POINTERS    0
#define configSTACK_DEPTH_TYPE                     uint32_t
#define configMESSAGE_BUFFER_LENGTH_TYPE           size_t

#define configCHECK_FOR_STACK_OVERFLOW             2
#define configUSE_MALLOC_FAILED_HOOK               1
#define configUSE_IDLE_HOOK                        0
#define configUSE_TICK_HOOK                        0
#define configUSE_DAEMON_TASK_STARTUP_HOOK         0

#define configUSE_TRACE_FACILITY                   0
#define configGENERATE_RUN_TIME_STATS              0

#define configUSE_CO_ROUTINES                      0
#define configUSE_TIMERS                           1
#define configTIMER_TASK_PRIORITY                  ( tskIDLE_PRIORITY + 2 )
#define configTIMER_QUEUE_LENGTH                   8
#define configTIMER_TASK_STACK_DEPTH               256

#define configSUPPORT_DYNAMIC_ALLOCATION           1
#define configSUPPORT_STATIC_ALLOCATION            0

#define INCLUDE_vTaskDelay                         1
#define INCLUDE_vTaskDelayUntil                    1
#define INCLUDE_vTaskDelete                        1
#define INCLUDE_vTaskSuspend                       0
#define INCLUDE_xTaskGetCurrentTaskHandle          1
#define INCLUDE_xTaskGetIdleTaskHandle             0
#define INCLUDE_xTaskGetSchedulerState             1
#define INCLUDE_xTaskGetStackHighWaterMark         1
#define INCLUDE_xTaskGetStackHighWaterMark2        1
#define INCLUDE_uxTaskGetStackHighWaterMark        1

#define configMTIME_BASE_ADDRESS                   0
#define configMTIMECMP_BASE_ADDRESS                0
#define configISR_STACK_SIZE_WORDS                 256

#ifdef __cplusplus
}
#endif

#endif /* FREERTOS_CONFIG_H */
