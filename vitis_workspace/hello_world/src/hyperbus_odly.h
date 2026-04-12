// SPDX-FileCopyrightText: 2026 Glen Lowe
// SPDX-License-Identifier: Apache-2.0
#ifndef HYPERBUS_ODLY_H
#define HYPERBUS_ODLY_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

/*
 * AXI-Lite local register offsets (decoded/handled by AXI-Lite slave).
 */
#define HB_VERSION_OFFSET               0x0024u
#define HB_ERR_STATUS_OFFSET            0x0080u
#define HB_AXIF_RWDS_CNTR_OFFSET        0x0084u
#define HB_AXIL_RWDS_CNTR_OFFSET        0x0088u
#define HB_HB_CLK_CE_FORCE_OFFSET       0x008Cu
#define HB_ODLY_CTRL_OFFSET             0x0100u
#define HB_ODLY_TIME_OFFSET             0x0104u
#define HB_ODLY_STATUS_OFFSET           0x0108u
#define HB_RWDS_IDLY_CTRL_OFFSET        0x01C0u
#define HB_RWDS_IDLY_TIME_OFFSET        0x01C4u
#define HB_RWDS_IDLY_STATUS_OFFSET      0x01C8u
#define HB_DQ_IDLY_BASE_OFFSET          0x0300u
#define HB_DQ_IDLY_STRIDE               0x0010u
#define HB_DQ_IDLY_CTRL_OFFSET(n)       (HB_DQ_IDLY_BASE_OFFSET + ((uint32_t)(n) * HB_DQ_IDLY_STRIDE) + 0x0u)
#define HB_DQ_IDLY_TIME_OFFSET(n)       (HB_DQ_IDLY_BASE_OFFSET + ((uint32_t)(n) * HB_DQ_IDLY_STRIDE) + 0x4u)
#define HB_DQ_IDLY_STATUS_OFFSET(n)     (HB_DQ_IDLY_BASE_OFFSET + ((uint32_t)(n) * HB_DQ_IDLY_STRIDE) + 0x8u)
#define HB_DELAY_RST_CTRL_OFFSET        0x0200u
#define HB_IDELAYCTRL_STATUS_OFFSET     0x0204u

/*
 * AXI-Lite addresses forwarded to HyperBus register-space transactions.
 */
#define HB_ID0_OFFSET                   0x0000u
#define HB_ID1_OFFSET                   0x0004u
#define HB_ID1_OFFSET_ALIAS_16          0x0002u
#define HB_CR0_OFFSET                   0x0800u
#define HB_CR1_OFFSET                   0x0804u
#define HB_CR1_OFFSET_ALIAS_16          0x0802u

/*
 * Constant values and common masks.
 */
#define HB_VERSION_VALUE                0x01000008u
#define HB_ODLY_MASK_9BIT               0x01FFu
#define HB_AXIF_RWDS_CNTR_MASK          0x3Fu
#define HB_AXIL_RWDS_CNTR_MASK          0x3Fu
#define HB_CR0_DRIVE_STRENGTH_MASK      0x00007000u
#define HB_CR0_DRIVE_STRENGTH_46_OHM    0x00003000u

/*
 * HB_ODLY_CTRL bit definitions.
 * bit0 EN_VTC (sticky)
 * bit1 INC    (sticky)
 * bit2 CE     (pulse)
 * bit3 LOAD   (pulse)
 */
#define HB_ODLY_CTRL_EN_VTC    (1u << 0)
#define HB_ODLY_CTRL_INC       (1u << 1)
#define HB_ODLY_CTRL_CE        (1u << 2)
#define HB_ODLY_CTRL_LOAD      (1u << 3)

/*
 * HB_RWDS_IDLY_CTRL bit definitions.
 * bit0 EN_VTC (sticky)
 * bit1 INC    (sticky)
 * bit2 CE     (pulse)
 * bit3 LOAD   (pulse)
 */
#define HB_RWDS_IDLY_CTRL_EN_VTC (1u << 0)
#define HB_RWDS_IDLY_CTRL_INC    (1u << 1)
#define HB_RWDS_IDLY_CTRL_CE     (1u << 2)
#define HB_RWDS_IDLY_CTRL_LOAD   (1u << 3)

/*
 * HB_HB_CLK_CE_FORCE bit definitions.
 */
#define HB_HB_CLK_CE_FORCE_EN  (1u << 0)

/*
 * HB_ERR_STATUS bit definitions.
 */
#define HB_ERR_STATUS_TIMEOUT   (1u << 0)

/*
 * HB_DELAY_RST_CTRL bit definitions.
 * bit0 IDELAYCTRL reset request
 * bit1 ODELAY reset request
 * bit2 RWDS and DQ IDELAY reset request
 * bit3 external HyperRAM RESET# request (active while set)
 */
#define HB_DELAY_RST_IDELAYCTRL (1u << 0)
#define HB_DELAY_RST_CKP_ODELAY (1u << 1)
#define HB_DELAY_RST_RWDS_IDELAY (1u << 2)
#define HB_DELAY_RST_HB_RESET   (1u << 3)

/*
 * HB_IDELAYCTRL_STATUS bit definitions.
 */
#define HB_IDELAYCTRL_STATUS_RDY (1u << 0)

/*
 * HyperRAM memory-test default range [start, end).
 */
#define HB_MEMTEST_START_ADDR          0x80000000u
#define HB_MEMTEST_END_ADDR            0x807F0000u

/*
 * Read current ODELAY CNTVALUEOUT[8:0] from STATUS register.
 * Return codes:
 *   0  = success
 *  -1  = invalid argument (cntvalue is NULL)
 */
int hb_odly_get(uintptr_t base_addr, uint16_t *cntvalue);

/*
 * Program ODELAY TIME/CNTVALUEIN[8:0] then pulse LOAD.
 * The sequence disables EN_VTC before update and optionally re-enables it.
 * Return codes:
 *   0  = success
 */
int hb_odly_set(uintptr_t base_addr, uint16_t cntvalue, int reenable_en_vtc);

/*
 * Increment/decrement ODELAY by one tap using INC + CE pulse sequence.
 * EN_VTC is forced low during the step and optionally re-enabled after.
 * Return codes:
 *   0  = success
 */
int hb_odly_inc(uintptr_t base_addr, int reenable_en_vtc);
int hb_odly_dec(uintptr_t base_addr, int reenable_en_vtc);

/*
 * Pulse IDELAYCTRL reset high for >=50ns, then poll IDELAYCTRL RDY until high.
 * timeout_polls is the maximum number of status reads before returning timeout.
 * Return codes:
 *   0  = success
 *  -1  = invalid argument (timeout_polls == 0)
 *  -2  = timeout waiting for IDELAYCTRL RDY
 */
int hb_idelayctrl_reset_wait_ready(uintptr_t base_addr, uint32_t timeout_polls);

/*
 * Pulse ODELAYE3 reset request high then low via HB_DELAY_RST_CTRL bit1.
 * Return codes:
 *   0  = success
 */
int hb_odly_reset_pulse(uintptr_t base_addr);

/*
 * Initialize delay control blocks:
 * 1) reset IDELAYCTRL and wait RDY
 * 2) pulse ODELAY reset
 * Return codes:
 *   0   = success
 *  < 0  = propagated error from hb_idelayctrl_reset_wait_ready() or
 *         hb_odly_reset_pulse()
 */
int hb_dly_init(uintptr_t base_addr, uint32_t timeout_polls);

/*
 * Sweep ODELAY by repeatedly incrementing one step at a time.
 * Loop behavior:
 * 1) Read CNTVALUEOUT and print it in hex.
 * 2) Read ID0, ERR_STATUS, AXIF_RWDS_CNTR, AXIL_RWDS_CNTR and print on one line.
 *    If ERR_STATUS.bit0 is set, clear it by writing 1 to bit0.
 * 3) Increment delay by one step.
 * 4) Repeat from step 1.
 * Stop condition:
 * - if required_matches == 0: stop when CNTVALUEOUT > 500
 * - if required_matches > 0: stop after required_matches ID0 "MATCH" events
 * Return codes:
 *   0   = normal completion (sweep stop condition reached)
 *  < 0  = propagated error from hb_odly_get() or hb_odly_inc()
 */
int hb_odly_sweep(uintptr_t base_addr, uint32_t required_matches);

/*
 * Find a contiguous passing ODELAY window using HyperRAM ID0 readback, then
 * step back to the midpoint of that window.
 * Flow:
 * 1) Increment until ID0 matches the expected value and capture that CNTVALUEOUT
 *    as cntvalue_min.
 * 2) Continue incrementing until ID0 no longer matches; the previous CNTVALUEOUT
 *    is captured as cntvalue_max.
 * 3) Compute cntvalue_mid = ((cntvalue_max - cntvalue_min) >> 1) + cntvalue_min.
 * 4) Decrement until CNTVALUEOUT is less than or equal to cntvalue_mid.
 * 5) Optionally return min/max/mid through the output pointers.
 * Return codes:
 *   0   = success
 *  -3   = no matching window found before the sweep guard limit
 *  -4   = matching window did not terminate before the sweep guard limit
 *  < -4 = propagated helper error
 */
int hb_odly_sweep_to_midpoint(uintptr_t base_addr,
                              uint16_t *cntvalue_min_out,
                              uint16_t *cntvalue_max_out,
                              uint16_t *cntvalue_mid_out);

/*
 * Read ERR_STATUS, print the value, and clear timeout status when set.
 * Behavior:
 * 1) Read HB_ERR_STATUS_OFFSET and print it in hex.
 * 2) If bit0 is set, write bit0=1 back to clear (W1C behavior).
 * 3) Optionally return the read value through err_status_out.
 * Return codes:
 *   0  = success
 */
int hb_err_status_read_print_clear(uintptr_t base_addr, uint32_t *err_status_out);

/*
 * Increment RWDS IDELAY CNTVALUEOUT until it reaches target_cntvalue.
 * Uses RWDS_IDELAY_CTRL INC+CE stepping and polls RWDS_IDELAY_STATUS.
 * Return codes:
 *   0  = success (target reached)
 *  -1  = invalid argument (target_cntvalue > 9-bit range)
 *  -2  = current status already above target (function only increments)
 *  -3  = target not reached within guard iteration window
 */
int hb_rwds_idly_inc_until(uintptr_t base_addr, uint16_t target_cntvalue);

/*
 * Decrement RWDS IDELAY CNTVALUEOUT until it becomes less than 16.
 * Uses RWDS_IDELAY_CTRL INC=0 + CE stepping and polls RWDS_IDELAY_STATUS.
 * Return codes:
 *   0  = success (status is now < 16)
 *  -3  = target not reached within guard iteration window
 */
int hb_rwds_idly_dec_below_16(uintptr_t base_addr);

/*
 * Run a full 32-bit memory test across HyperRAM range [0x80000000, 0x807F0000).
 * Test flow:
 * 1) Write deterministic data pattern to each 32-bit word in range.
 * 2) Read back each word and compare against expected pattern.
 * Return codes:
 *   0  = success
 *  -1  = at least one readback mismatch
 */
int hb_memtest_hyperram_range(void);

#ifdef __cplusplus
}
#endif

#endif /* HYPERBUS_ODLY_H */
