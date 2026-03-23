// SPDX-FileCopyrightText: 2026 Glen Lowe
// SPDX-License-Identifier: Apache-2.0
#include "hyperbus_memtest.h"

#include <stdint.h>
#include "hyperbus_odly.h"
#include "xil_printf.h"

#define HB_MEMTEST_MAX_LOG_MISMATCHES 8U
#define HB_MEMTEST_RANDOM_MAX_XFER_BYTES      64U
#define HB_MEMTEST_RANDOM_MAX_PENDING_WRITES  128U
#define HB_MEMTEST_RANDOM_PENDING_LOW_WATERMARK 120U
#define HB_MEMTEST_RANDOM_VERIFY_BURST        4U
#define HB_MEMTEST_RANDOM_PROGRESS_INTERVAL   1024U
#define HB_MEMTEST_RANDOM_SEED                0x7A4F9D13U

typedef uint8_t (*hb_byte_pattern_fn)(uintptr_t addr, uint32_t pass);

typedef struct {
    const char *name;
    hb_byte_pattern_fn pattern_fn;
    uint32_t pass;
} hb_memtest_pattern_desc;

typedef struct {
    uintptr_t addr;
    uint32_t len;
    uint32_t access_size_bytes;
    uint8_t payload[HB_MEMTEST_RANDOM_MAX_XFER_BYTES];
} hb_memtest_pending_write;

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

static uint32_t hb_memtest_prng_next(uint32_t *state)
{
    uint32_t x = *state;

    if (x == 0U) {
        x = 1U;
    }

    x ^= x << 13;
    x ^= x >> 17;
    x ^= x << 5;
    *state = x;
    return x;
}

static uint32_t hb_memtest_prng_bounded(uint32_t *state, uint32_t limit)
{
    if (limit <= 1U) {
        return 0U;
    }

    return hb_memtest_prng_next(state) % limit;
}

static uint32_t hb_memtest_random_access_width(uint32_t *state)
{
    switch (hb_memtest_prng_bounded(state, 3U)) {
    case 0U:
        return 1U;
    case 1U:
        return 2U;
    default:
        return 4U;
    }
}

static uint32_t hb_memtest_load_le_value(const uint8_t *buf, uint32_t width_bytes)
{
    uint32_t value = 0U;
    uint32_t i;

    for (i = 0U; i < width_bytes; ++i) {
        value |= ((uint32_t)buf[i]) << (i * 8U);
    }

    return value;
}

static int hb_memtest_ranges_overlap(uintptr_t addr_a, uint32_t len_a,
                                     uintptr_t addr_b, uint32_t len_b)
{
    uintptr_t end_a = addr_a + (uintptr_t)len_a;
    uintptr_t end_b = addr_b + (uintptr_t)len_b;

    return (addr_a < end_b) && (addr_b < end_a);
}

static void hb_memtest_pending_fill(hb_memtest_pending_write *pending,
                                    uintptr_t addr,
                                    uint32_t len,
                                    uint32_t access_size_bytes,
                                    uint32_t *prng_state)
{
    uint32_t i;

    pending->addr = addr;
    pending->len = len;
    pending->access_size_bytes = access_size_bytes;

    for (i = 0U; i < len; ++i) {
        pending->payload[i] = (uint8_t)hb_memtest_prng_next(prng_state);
    }
}

static void hb_memtest_pending_write_issue(volatile uint8_t *base,
                                           uintptr_t start,
                                           const hb_memtest_pending_write *pending)
{
    uint32_t i;
    uint32_t offset = (uint32_t)(pending->addr - start);
    uint32_t width = pending->access_size_bytes;

    for (i = 0U; i < pending->len; i += width) {
        uintptr_t byte_addr = start + (uintptr_t)(offset + i);

        if (width == 1U) {
            *(volatile uint8_t *)byte_addr = pending->payload[i];
        } else if (width == 2U) {
            *(volatile uint16_t *)byte_addr =
                (uint16_t)hb_memtest_load_le_value(&pending->payload[i], width);
        } else {
            *(volatile uint32_t *)byte_addr =
                hb_memtest_load_le_value(&pending->payload[i], width);
        }
    }
}

static int hb_memtest_pending_verify(volatile uint8_t *base,
                                     uintptr_t start,
                                     const hb_memtest_pending_write *pending,
                                     uint32_t *prng_state)
{
    uintptr_t pending_end = pending->addr + (uintptr_t)pending->len;
    uint32_t verified = 0U;

    (void)base;
    (void)start;

    while (verified < pending->len) {
        uint32_t read_width = hb_memtest_random_access_width(prng_state);
        uintptr_t cur_addr = pending->addr + (uintptr_t)verified;
        uintptr_t read_addr = cur_addr & ~((uintptr_t)read_width - 1U);
        uintptr_t overlap_start = cur_addr;
        uintptr_t overlap_end = read_addr + (uintptr_t)read_width;
        uint32_t read_value;
        uintptr_t addr;

        if (overlap_end > pending_end) {
            overlap_end = pending_end;
        }

        if (read_width == 1U) {
            read_value = *(volatile uint8_t *)read_addr;
        } else if (read_width == 2U) {
            read_value = *(volatile uint16_t *)read_addr;
        } else {
            read_value = *(volatile uint32_t *)read_addr;
        }

        for (addr = overlap_start; addr < overlap_end; ++addr) {
            uint32_t payload_idx = (uint32_t)(addr - pending->addr);
            uint32_t byte_lane = (uint32_t)(addr - read_addr);
            uint8_t exp = pending->payload[payload_idx];
            uint8_t got = (uint8_t)((read_value >> (byte_lane * 8U)) & 0xFFU);

            if (got != exp) {
                uintptr_t word_addr = addr & ~(uintptr_t)0x3U;
                uint32_t word32 = *(volatile uint32_t *)word_addr;

                xil_printf("HB_MEMTEST random_rw FAIL addr=0x%08x exp=0x%02x got=0x%02x read_addr=0x%08x read_width=%u read_value=0x%08x xfer_addr=0x%08x xfer_len=%u word_addr=0x%08x word32=0x%08x\r\n",
                           (unsigned)addr, (unsigned)exp, (unsigned)got,
                           (unsigned)read_addr, (unsigned)read_width, (unsigned)read_value,
                           (unsigned)pending->addr, (unsigned)pending->len,
                           (unsigned)word_addr, (unsigned)word32);
                return -1;
            }
        }

        verified = (uint32_t)(overlap_end - pending->addr);
    }

    return 0;
}

static void hb_memtest_pending_remove(hb_memtest_pending_write *pending,
                                      uint32_t *pending_count,
                                      uint32_t index)
{
    uint32_t last = *pending_count - 1U;

    if (index != last) {
        pending[index] = pending[last];
    }
    *pending_count = last;
}

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

int hb_memtest_hyperram_random_rw_until_error(void)
{
    const uintptr_t start = (uintptr_t)HB_MEMTEST_START_ADDR;
    const uintptr_t end = (uintptr_t)HB_MEMTEST_END_ADDR;
    const uint32_t bytes = (uint32_t)(end - start);
    volatile uint8_t *base = (volatile uint8_t *)start;
    static hb_memtest_pending_write pending[HB_MEMTEST_RANDOM_MAX_PENDING_WRITES];
    uint32_t pending_count = 0U;
    uint32_t prng_state = HB_MEMTEST_RANDOM_SEED;
    uint32_t op_count = 0U;

    xil_printf("HB_MEMTEST random_rw start=0x%08x end=0x%08x bytes=%u max_xfer=%u max_pending=%u seed=0x%08x\r\n",
               (unsigned)start, (unsigned)end, (unsigned)bytes,
               (unsigned)HB_MEMTEST_RANDOM_MAX_XFER_BYTES,
               (unsigned)HB_MEMTEST_RANDOM_MAX_PENDING_WRITES,
               (unsigned)prng_state);

    if (bytes == 0U) {
        xil_printf("HB_MEMTEST random_rw FAIL empty range\r\n");
        return -1;
    }

    for (;;) {
        uint32_t i;
        uint32_t verify_budget;
        uint32_t max_verify_without_dropping_below_low_watermark;
        uint32_t access_size_bytes;
        uint32_t max_elems_per_xfer;
        uint32_t total_elems;
        uint32_t elem_count;
        uint32_t start_elem;
        uint32_t len;
        uintptr_t addr;

        if (pending_count > HB_MEMTEST_RANDOM_PENDING_LOW_WATERMARK) {
            max_verify_without_dropping_below_low_watermark =
                pending_count - HB_MEMTEST_RANDOM_PENDING_LOW_WATERMARK;
            verify_budget = hb_memtest_prng_bounded(&prng_state, HB_MEMTEST_RANDOM_VERIFY_BURST + 1U);
            if (verify_budget > max_verify_without_dropping_below_low_watermark) {
                verify_budget = max_verify_without_dropping_below_low_watermark;
            }
        } else {
            verify_budget = 0U;
        }

        while ((pending_count != 0U) && (verify_budget != 0U)) {
            uint32_t index = hb_memtest_prng_bounded(&prng_state, pending_count);
            if (hb_memtest_pending_verify(base, start, &pending[index], &prng_state) != 0) {
                return -1;
            }
            hb_memtest_pending_remove(pending, &pending_count, index);
            verify_budget--;
        }

        access_size_bytes = hb_memtest_random_access_width(&prng_state);

        max_elems_per_xfer = HB_MEMTEST_RANDOM_MAX_XFER_BYTES / access_size_bytes;
        if (max_elems_per_xfer == 0U) {
            max_elems_per_xfer = 1U;
        }
        total_elems = bytes / access_size_bytes;
        if (total_elems == 0U) {
            xil_printf("HB_MEMTEST random_rw FAIL width=%u exceeds range\r\n",
                       (unsigned)access_size_bytes);
            return -1;
        }
        if (max_elems_per_xfer > total_elems) {
            max_elems_per_xfer = total_elems;
        }

        elem_count = 1U + hb_memtest_prng_bounded(&prng_state, max_elems_per_xfer);
        len = elem_count * access_size_bytes;
        start_elem = hb_memtest_prng_bounded(&prng_state, total_elems - elem_count + 1U);
        addr = start + (uintptr_t)(start_elem * access_size_bytes);

        for (i = 0U; i < pending_count; ) {
            if (hb_memtest_ranges_overlap(pending[i].addr, pending[i].len, addr, len)) {
                if (hb_memtest_pending_verify(base, start, &pending[i], &prng_state) != 0) {
                    return -1;
                }
                hb_memtest_pending_remove(pending, &pending_count, i);
            } else {
                ++i;
            }
        }

        if (pending_count == HB_MEMTEST_RANDOM_MAX_PENDING_WRITES) {
            uint32_t index = hb_memtest_prng_bounded(&prng_state, pending_count);
            if (hb_memtest_pending_verify(base, start, &pending[index], &prng_state) != 0) {
                return -1;
            }
            hb_memtest_pending_remove(pending, &pending_count, index);
        }

        hb_memtest_pending_fill(&pending[pending_count], addr, len, access_size_bytes, &prng_state);
        hb_memtest_pending_write_issue(base, start, &pending[pending_count]);
        pending_count++;
        op_count++;

        if ((op_count % HB_MEMTEST_RANDOM_PROGRESS_INTERVAL) == 0U) {
            xil_printf("HB_MEMTEST random_rw progress writes=%u pending=%u prng=0x%08x\r\n",
                       (unsigned)op_count, (unsigned)pending_count, (unsigned)prng_state);
        }
    }
}
