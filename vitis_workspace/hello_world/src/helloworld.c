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
#include <stdint.h>
#include "platform.h"
#include "xil_printf.h"
#include "hyperbus_memtest.h"
#include "hyperbus_odly.h"

#define MEMTEST_SMOKE_BASE       0x807E0000U
#define MEMTEST_SMOKE_BYTES      4096U

static int memtest_smoke(void)
{
    static const uint8_t patterns[] = { 0x00U, 0xFFU, 0x55U, 0xAAU };
    volatile uint8_t *const base = (volatile uint8_t *)(uintptr_t)MEMTEST_SMOKE_BASE;
    uint32_t pattern_index;

    for (pattern_index = 0U;
         pattern_index < (uint32_t)(sizeof(patterns) / sizeof(patterns[0]));
         ++pattern_index) {
        uint32_t offset;
        const uint8_t pattern = patterns[pattern_index];

        for (offset = 0U; offset < MEMTEST_SMOKE_BYTES; ++offset) {
            base[offset] = pattern;
        }
        for (offset = 0U; offset < MEMTEST_SMOKE_BYTES; ++offset) {
            const uint8_t got = base[offset];
            if (got != pattern) {
                return -1;
            }
        }
    }

    return 0;
}

int main()
{
    init_platform();

    print("Hello World\n\r");

    /* The QSPI bootloader calibrated HyperRAM before loading this image.
     * Recalibrating while executing from HyperRAM would disrupt instruction
     * fetches, so the application begins directly with memory traffic. */
    if (memtest_smoke() != 0) {
        xil_printf("HyperRAM smoke test failed\r\n");
        for (;;) {
        }
    }

    if (hb_memtest_hyperram_worst_case_bytes() != 0) {
        xil_printf("Worst-case HyperRAM memtest failed\r\n");
        for (;;) {
        }
    }

    xil_printf("Starting randomized HyperRAM memtest (requires 32 KiB LMB BRAM)\r\n");
    if (hb_memtest_hyperram_random_rw_until_error() != 0) {
        xil_printf("Randomized HyperRAM memtest failed\r\n");
        for (;;) {
        }
    }

    print("Successfully ran Hello World application");
    cleanup_platform();
    return 0;
}
