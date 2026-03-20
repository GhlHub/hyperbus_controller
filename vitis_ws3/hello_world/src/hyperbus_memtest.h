// SPDX-FileCopyrightText: 2026 Glen Lowe
// SPDX-License-Identifier: Apache-2.0
#ifndef HYPERBUS_MEMTEST_H
#define HYPERBUS_MEMTEST_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

/*
 * Run a byte-oriented HyperRAM memory test across the default range
 * [HB_MEMTEST_START_ADDR, HB_MEMTEST_END_ADDR).
 *
 * The pattern set is intended to stress worst-case byte-lane behavior:
 * - solid 0x00 / 0xFF
 * - checkerboards 0x55 / 0xAA
 * - byte-lane checkerboards that alternate by address
 * - walking 1 / walking 0 byte patterns
 * - address-derived byte patterns
 *
 * Return codes:
 *   0  = success
 *  -1  = at least one readback mismatch
 */
int hb_memtest_hyperram_worst_case_bytes(void);

/*
 * Run a randomized mixed-width HyperRAM stress test until a mismatch occurs.
 *
 * Test flow:
 * - issue pseudo-random 8-bit, 16-bit, and 32-bit writes
 * - vary transfer lengths while preserving alignment for the selected width
 * - defer readback of completed writes until a later random time
 * - verify pending writes using a pseudo-random mix of 8-bit, 16-bit, and 32-bit reads
 * - for aligned reads that extend past the written region, only check the overlapping bytes
 * - verify pending writes before any overlapping write is allowed to replace them
 * - continue indefinitely until a mismatch is detected
 *
 * Requirement:
 * - this test keeps a large pending-transaction table and requires a 32 KiB
 *   LMB BRAM configuration to run in the current MicroBlaze V system
 *
 * On error, the test prints the failing address, access width, expected value,
 * and actual value.
 *
 * Return codes:
 *  -1  = readback mismatch detected
 */
int hb_memtest_hyperram_random_rw_until_error(void);

#ifdef __cplusplus
}
#endif

#endif /* HYPERBUS_MEMTEST_H */
