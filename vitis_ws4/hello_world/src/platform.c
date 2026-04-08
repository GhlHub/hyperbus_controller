/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#include "xparameters.h"
#include "xil_cache.h"

#ifndef SDT
#include "platform_config.h"
#endif

#ifdef STDOUT_IS_16550
#include "xuartns550_l.h"

#define UART_BAUD 9600
#endif

void euart_console_init( void );

static void enable_caches( void )
{
#ifdef __PPC__
    Xil_ICacheEnableRegion( CACHEABLE_REGION_MASK );
    Xil_DCacheEnableRegion( CACHEABLE_REGION_MASK );
#elif __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_ICACHE
    Xil_ICacheEnable();
#endif
#ifdef XPAR_MICROBLAZE_USE_DCACHE
    Xil_DCacheEnable();
#endif
#elif defined(__riscv)
#if XPAR_MICROBLAZE_RISCV_USE_ICACHE
    Xil_ICacheEnable();
#endif
#if XPAR_MICROBLAZE_RISCV_USE_DCACHE
    Xil_DCacheEnable();
#endif
#endif
}

static void disable_caches( void )
{
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_DCACHE
    Xil_DCacheDisable();
#endif
#ifdef XPAR_MICROBLAZE_USE_ICACHE
    Xil_ICacheDisable();
#endif
#endif
#ifdef __riscv
#if XPAR_MICROBLAZE_RISCV_USE_DCACHE
    Xil_DCacheDisable();
#endif
#if XPAR_MICROBLAZE_RISCV_USE_ICACHE
    Xil_ICacheDisable();
#endif
#endif
}

static void init_uart( void )
{
#ifdef STDOUT_IS_16550
    XUartNs550_SetBaud( STDOUT_BASEADDR, XPAR_XUARTNS550_CLOCK_HZ, UART_BAUD );
    XUartNs550_SetLineControlReg( STDOUT_BASEADDR, XUN_LCR_8_DATA_BITS );
#elif defined(XPAR_E_UART_0_BASEADDR)
    euart_console_init();
#endif
}

void init_platform( void )
{
    enable_caches();
    init_uart();
}

void cleanup_platform( void )
{
    disable_caches();
}
