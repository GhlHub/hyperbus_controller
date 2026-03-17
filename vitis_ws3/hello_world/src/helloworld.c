/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "hyperbus_odly.h"

#define DLY_ADDR 0x10000
int main()
{
    init_platform();

    print("Hello World\n\r");

    hb_idelayctrl_reset_wait_ready(DLY_ADDR, 0x8000);
    hb_rwds_idly_dec_below_16(DLY_ADDR);
    hb_odly_sweep(DLY_ADDR, 10U);
    //hb_rwds_idly_inc_until(DLY_ADDR, 500);
    hb_memtest_hyperram_range();

    print("Successfully ran Hello World application");
    cleanup_platform();
    return 0;
}
