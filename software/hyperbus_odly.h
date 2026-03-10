#ifndef HYPERBUS_ODLY_H
#define HYPERBUS_ODLY_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

/*
 * AXI-Lite register offsets for CK_P ODELAY control.
 */
#define HB_ODLY_CTRL_OFFSET    0x0100u
#define HB_ODLY_TIME_OFFSET    0x0104u
#define HB_ODLY_STATUS_OFFSET  0x0108u

/*
 * AXI-Lite register offsets for delay-reset/status control.
 */
#define HB_DELAY_RST_CTRL_OFFSET        0x0200u
#define HB_IDELAYCTRL_STATUS_OFFSET     0x0204u
#define HB_ID0_OFFSET                   0x0000u
#define HB_ERR_STATUS_OFFSET            0x0080u
#define HB_AXIF_RWDS_CNTR_OFFSET        0x0084u
#define HB_AXIL_RWDS_CNTR_OFFSET        0x0088u

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
 * HB_DELAY_RST_CTRL bit definitions.
 * bit0 IDELAYCTRL reset request
 * bit1 ODELAY reset request
 */
#define HB_DELAY_RST_IDELAYCTRL (1u << 0)
#define HB_DELAY_RST_ODELAY     (1u << 1)

/*
 * Read current ODELAY CNTVALUEOUT[8:0] from STATUS register.
 * Returns 0 on success, negative on error.
 */
int hb_odly_get(uintptr_t base_addr, uint16_t *cntvalue);

/*
 * Program ODELAY TIME/CNTVALUEIN[8:0] then pulse LOAD.
 * The sequence disables EN_VTC before update and optionally re-enables it.
 * Returns 0 on success, negative on error.
 */
int hb_odly_set(uintptr_t base_addr, uint16_t cntvalue, int reenable_en_vtc);

/*
 * Increment/decrement ODELAY by one tap using INC + CE pulse sequence.
 * EN_VTC is forced low during the step and optionally re-enabled after.
 * Returns 0 on success, negative on error.
 */
int hb_odly_inc(uintptr_t base_addr, int reenable_en_vtc);
int hb_odly_dec(uintptr_t base_addr, int reenable_en_vtc);

/*
 * Pulse IDELAYCTRL reset high for >=50ns, then poll IDELAYCTRL RDY until high.
 * timeout_polls is the maximum number of status reads before returning timeout.
 * Returns 0 on success, -1 on invalid args, -2 on timeout.
 */
int hb_idelayctrl_reset_wait_ready(uintptr_t base_addr, uint32_t timeout_polls);

/*
 * Pulse ODELAYE3 reset request high then low via HB_DELAY_RST_CTRL bit1.
 * Returns 0 on success.
 */
int hb_odly_reset_pulse(uintptr_t base_addr);

/*
 * Initialize delay control blocks:
 * 1) reset IDELAYCTRL and wait RDY
 * 2) pulse ODELAY reset
 * Returns 0 on success, negative on error.
 */
int hb_dly_init(uintptr_t base_addr, uint32_t timeout_polls);

/*
 * Sweep ODELAY by repeatedly incrementing one step at a time.
 * Loop behavior:
 * 1) Read CNTVALUEOUT and print it in hex. If CNTVALUEOUT > 500, return.
 * 2) Read ID0, ERR_STATUS, AXIF_RWDS_CNTR, AXIL_RWDS_CNTR and print on one line.
 *    If ERR_STATUS.bit0 is set, clear it by writing 1 to bit0.
 * 3) Increment delay by one step.
 * 4) Repeat from step 1.
 * Returns 0 on normal completion, negative on error from lower-level helpers.
 */
int hb_odly_sweep(uintptr_t base_addr);

#ifdef __cplusplus
}
#endif

#endif /* HYPERBUS_ODLY_H */
