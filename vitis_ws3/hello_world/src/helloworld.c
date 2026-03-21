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
#include "hyperbus_memtest.h"
#include "hyperbus_odly.h"

#define DLY_ADDR 0x10000
int main()
{
    init_platform();

    print("Hello World\n\r");

    hb_idelayctrl_reset_wait_ready(DLY_ADDR, 0x8000);
    hb_rwds_idly_dec_below_16(DLY_ADDR);

    hb_odly_sweep_to_midpoint(DLY_ADDR, NULL, NULL, NULL);
    
    if (hb_memtest_hyperram_worst_case_bytes() != 0) {
        xil_printf("Worst-case HyperRAM memtest failed\r\n");
        cleanup_platform();
        return -1;
    }

    xil_printf("Starting randomized HyperRAM memtest (requires 32 KiB LMB BRAM)\r\n");
    if (hb_memtest_hyperram_random_rw_until_error() != 0) {
        xil_printf("Randomized HyperRAM memtest failed\r\n");
        cleanup_platform();
        return -1;
    }

    print("Successfully ran Hello World application");
    cleanup_platform();
    return 0;
}
