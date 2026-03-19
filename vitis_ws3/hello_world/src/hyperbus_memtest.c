// SPDX-FileCopyrightText: 2026 Glen Lowe
// SPDX-License-Identifier: Apache-2.0
#include "hyperbus_memtest.h"

#include <stdint.h>
#include "hyperbus_odly.h"
#include "xil_printf.h"

#define HB_MEMTEST_MAX_LOG_MISMATCHES 8U

typedef uint8_t (*hb_byte_pattern_fn)(uintptr_t addr, uint32_t pass);

typedef struct {
    const char *name;
    hb_byte_pattern_fn pattern_fn;
    uint32_t pass;
} hb_memtest_pattern_desc;

static uint8_t hb_pattern_zero(uintptr_t addr, uint32_t pass)
{
    (void)addr;
    (void)pass;
    return 0x00U;
}

static uint8_t hb_pattern_ones(uintptr_t addr, uint32_t pass)
{
    (void)addr;
    (void)pass;
    return 0xFFU;
}

static uint8_t hb_pattern_55(uintptr_t addr, uint32_t pass)
{
    (void)addr;
    (void)pass;
    return 0x55U;
}

static uint8_t hb_pattern_aa(uintptr_t addr, uint32_t pass)
{
    (void)addr;
    (void)pass;
    return 0xAAU;
}

static uint8_t hb_pattern_addr_checker_55aa(uintptr_t addr, uint32_t pass)
{
    (void)pass;
    return ((addr & 1U) == 0U) ? 0x55U : 0xAAU;
}

static uint8_t hb_pattern_addr_checker_aa55(uintptr_t addr, uint32_t pass)
{
    (void)pass;
    return ((addr & 1U) == 0U) ? 0xAAU : 0x55U;
}

static uint8_t hb_pattern_walking_one(uintptr_t addr, uint32_t pass)
{
    uint32_t bit = (uint32_t)((addr + (uintptr_t)pass) & 7U);
    return (uint8_t)(1U << bit);
}

static uint8_t hb_pattern_walking_zero(uintptr_t addr, uint32_t pass)
{
    return (uint8_t)~hb_pattern_walking_one(addr, pass);
}

static uint8_t hb_pattern_addr_low(uintptr_t addr, uint32_t pass)
{
    (void)pass;
    return (uint8_t)addr;
}

static uint8_t hb_pattern_addr_low_inv(uintptr_t addr, uint32_t pass)
{
    (void)pass;
    return (uint8_t)~(uint8_t)addr;
}

static uint8_t hb_pattern_addr_xor_5a(uintptr_t addr, uint32_t pass)
{
    (void)pass;
    return (uint8_t)((uint8_t)addr ^ 0x5AU);
}

static uint8_t hb_pattern_addr_xor_a5(uintptr_t addr, uint32_t pass)
{
    (void)pass;
    return (uint8_t)((uint8_t)addr ^ 0xA5U);
}

static const hb_memtest_pattern_desc hb_memtest_patterns[] = {
    { "all_00",               hb_pattern_zero,              0U },
    { "all_ff",               hb_pattern_ones,              0U },
    { "all_55",               hb_pattern_55,                0U },
    { "all_aa",               hb_pattern_aa,                0U },
    { "addr_checker_55aa",    hb_pattern_addr_checker_55aa, 0U },
    { "addr_checker_aa55",    hb_pattern_addr_checker_aa55, 0U },
    { "walking_one_p0",       hb_pattern_walking_one,       0U },
    { "walking_one_p1",       hb_pattern_walking_one,       1U },
    { "walking_zero_p0",      hb_pattern_walking_zero,      0U },
    { "walking_zero_p1",      hb_pattern_walking_zero,      1U },
    { "addr_low",             hb_pattern_addr_low,          0U },
    { "addr_low_inv",         hb_pattern_addr_low_inv,      0U },
    { "addr_xor_5a",          hb_pattern_addr_xor_5a,       0U },
    { "addr_xor_a5",          hb_pattern_addr_xor_a5,       0U },
};

static uint32_t hb_memtest_run_pattern(const hb_memtest_pattern_desc *pattern,
                                       volatile uint8_t *base,
                                       uintptr_t start,
                                       uint32_t bytes)
{
    uint32_t i;
    uint32_t mismatches = 0U;

    xil_printf("HB_MEMTEST pattern=%s bytes=%u\r\n", pattern->name, (unsigned)bytes);

    for (i = 0U; i < bytes; ++i) {
        uintptr_t addr = start + (uintptr_t)i;
        base[i] = pattern->pattern_fn(addr, pattern->pass);
    }

    for (i = 0U; i < bytes; ++i) {
        uintptr_t addr = start + (uintptr_t)i;
        uint8_t exp = pattern->pattern_fn(addr, pattern->pass);
        uint8_t got = base[i];
        if (got != exp) {
            if (mismatches < HB_MEMTEST_MAX_LOG_MISMATCHES) {
                uintptr_t word_addr = addr & ~(uintptr_t)0x3U;
                uint32_t word32 = *(volatile uint32_t *)word_addr;
                xil_printf("HB_MEMTEST mismatch pattern=%s addr=0x%08x exp=0x%02x got=0x%02x word_addr=0x%08x word32=0x%08x\r\n",
                           pattern->name, (unsigned)addr, (unsigned)exp, (unsigned)got,
                           (unsigned)word_addr, (unsigned)word32);
            }
            mismatches++;
        }
    }

    if (mismatches == 0U) {
        xil_printf("HB_MEMTEST pattern=%s PASS\r\n", pattern->name);
    } else {
        xil_printf("HB_MEMTEST pattern=%s FAIL mismatches=%u\r\n",
                   pattern->name, (unsigned)mismatches);
    }

    return mismatches;
}

int hb_memtest_hyperram_worst_case_bytes(void)
{
    const uintptr_t start = (uintptr_t)HB_MEMTEST_START_ADDR;
    const uintptr_t end = (uintptr_t)HB_MEMTEST_END_ADDR;
    const uint32_t bytes = (uint32_t)(end - start);
    volatile uint8_t *base = (volatile uint8_t *)start;
    uint32_t total_mismatches = 0U;
    uint32_t i;

    xil_printf("HB_MEMTEST byte_worst_case start=0x%08x end=0x%08x bytes=%u patterns=%u\r\n",
               (unsigned)start, (unsigned)end, (unsigned)bytes,
               (unsigned)(sizeof(hb_memtest_patterns) / sizeof(hb_memtest_patterns[0])));

    for (i = 0U; i < (uint32_t)(sizeof(hb_memtest_patterns) / sizeof(hb_memtest_patterns[0])); ++i) {
        total_mismatches += hb_memtest_run_pattern(&hb_memtest_patterns[i], base, start, bytes);
    }

    if (total_mismatches != 0U) {
        xil_printf("HB_MEMTEST byte_worst_case FAIL total_mismatches=%u\r\n",
                   (unsigned)total_mismatches);
        return -1;
    }

    xil_printf("HB_MEMTEST byte_worst_case PASS\r\n");
    return 0;
}
