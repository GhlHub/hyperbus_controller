/******************************************************************************
* Copyright (C) 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#include <stdint.h>

#include "FreeRTOS.h"
#include "task.h"

#include "xil_exception.h"
#include "xil_printf.h"
#include "xintc.h"
#include "xparameters.h"
#include "xtmrctr.h"

extern void freertos_risc_v_trap_handler(void);
extern size_t xCriticalNesting;

#define FREERTOS_MACHINE_EXTERNAL_MCAUSE    ( ( uintptr_t ) ( ( 1UL << ( sizeof( uintptr_t ) * 8U - 1U ) ) | 11UL ) )

static XIntc xInterruptController;
static XTmrCtr xTickTimer;

static uintptr_t prvReadMcause(void)
{
    uintptr_t ulValue;

    __asm volatile ( "csrr %0, mcause" : "=r" ( ulValue ) );

    return ulValue;
}

static uintptr_t prvReadMepc(void)
{
    uintptr_t ulValue;

    __asm volatile ( "csrr %0, mepc" : "=r" ( ulValue ) );

    return ulValue;
}

static uintptr_t prvReadMtval(void)
{
    uintptr_t ulValue;

    __asm volatile ( "csrr %0, mtval" : "=r" ( ulValue ) );

    return ulValue;
}

static void prvPanicLoop(const char *pcMessage, uintptr_t ulCause, uintptr_t ulEpc, uintptr_t ulValue)
{
    xil_printf("%s mcause=0x%08lx mepc=0x%08lx mtval=0x%08lx\r\n",
               pcMessage,
               (unsigned long)ulCause,
               (unsigned long)ulEpc,
               (unsigned long)ulValue);

    taskDISABLE_INTERRUPTS();

    for( ; ; )
    {
    }
}

static void prvInstallFreeRTOSTrapHandler(void)
{
    uintptr_t ulTrapVector = ( uintptr_t ) &freertos_risc_v_trap_handler;

    __asm volatile ( "csrw mtvec, %0" : : "r" ( ulTrapVector ) );
}

static void prvTickTimerCallback(void *pvCallBackRef, u8 ucTimerNumber)
{
    BaseType_t xSwitchRequired;

    ( void ) pvCallBackRef;
    ( void ) ucTimerNumber;

    xSwitchRequired = xTaskIncrementTick();
    portYIELD_FROM_ISR( xSwitchRequired );
}

void vPortSetupTimerInterrupt(void)
{
    const uint32_t ulCyclesPerTick = ( uint32_t ) ( configCPU_CLOCK_HZ / configTICK_RATE_HZ );
    int iStatus;

    configASSERT( ulCyclesPerTick > 0U );

    iStatus = XIntc_Initialize( &xInterruptController, XPAR_XINTC_0_BASEADDR );
    configASSERT( iStatus == XST_SUCCESS );

    iStatus = XTmrCtr_Initialize( &xTickTimer, XPAR_XTMRCTR_0_BASEADDR );
    configASSERT( iStatus == XST_SUCCESS );

    XTmrCtr_SetHandler( &xTickTimer, prvTickTimerCallback, &xTickTimer );
    XTmrCtr_SetResetValue( &xTickTimer, 0, ulCyclesPerTick );
    XTmrCtr_SetOptions( &xTickTimer,
                        0,
                        XTC_INT_MODE_OPTION |
                        XTC_AUTO_RELOAD_OPTION |
                        XTC_DOWN_COUNT_OPTION );

    iStatus = XIntc_Connect( &xInterruptController,
                             XPAR_FABRIC_XTMRCTR_0_INTR,
                             ( XInterruptHandler ) XTmrCtr_InterruptHandler,
                             &xTickTimer );
    configASSERT( iStatus == XST_SUCCESS );

    iStatus = XIntc_Start( &xInterruptController, XIN_REAL_MODE );
    configASSERT( iStatus == XST_SUCCESS );

    XIntc_Enable( &xInterruptController, XPAR_FABRIC_XTMRCTR_0_INTR );

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler( XIL_EXCEPTION_ID_INT,
                                  ( Xil_ExceptionHandler ) XIntc_InterruptHandler,
                                  &xInterruptController );

    prvInstallFreeRTOSTrapHandler();

    __asm volatile ( "csrs mie, %0" : : "r" ( 0x800U ) );

    XTmrCtr_Start( &xTickTimer, 0 );
}

void freertos_risc_v_application_interrupt_handler(void)
{
    const uintptr_t ulCause = prvReadMcause();

    if( ulCause == FREERTOS_MACHINE_EXTERNAL_MCAUSE )
    {
        /* The generic RISC-V port does not support nested interrupts. The
         * Xilinx timer/INTC stack acknowledges the source after the callback
         * returns, so keep the kernel critical nesting non-zero while the
         * external interrupt is dispatched to prevent taskEXIT_CRITICAL()
         * inside xTaskIncrementTick() from re-enabling MIE too early. */
        xCriticalNesting++;
        XIntc_InterruptHandler( &xInterruptController );
        xCriticalNesting--;
        return;
    }

    prvPanicLoop( "Unhandled FreeRTOS interrupt",
                  ulCause,
                  prvReadMepc(),
                  prvReadMtval() );
}

void freertos_risc_v_application_exception_handler(void)
{
    prvPanicLoop( "Unhandled FreeRTOS exception",
                  prvReadMcause(),
                  prvReadMepc(),
                  prvReadMtval() );
}

void vApplicationMallocFailedHook(void)
{
    prvPanicLoop( "FreeRTOS malloc failed", 0U, 0U, 0U );
}

void vApplicationStackOverflowHook(TaskHandle_t xTask, char *pcTaskName)
{
    ( void ) xTask;

    xil_printf("FreeRTOS stack overflow in task %s\r\n",
               ( pcTaskName != NULL ) ? pcTaskName : "<unknown>");

    taskDISABLE_INTERRUPTS();

    for( ; ; )
    {
    }
}

void vAssertCalled(const char *pcFileName, uint32_t ulLine)
{
    xil_printf("FreeRTOS assert: %s:%lu\r\n", pcFileName, (unsigned long)ulLine);

    taskDISABLE_INTERRUPTS();

    for( ; ; )
    {
    }
}
