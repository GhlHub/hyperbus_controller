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

#ifdef __cplusplus
}
#endif

#endif /* HYPERBUS_MEMTEST_H */
