#include "hyperbus_odly.h"
#include <stdint.h>
#include <stdio.h>
#include "xil_printf.h"

static inline volatile uint32_t *hb_reg_ptr(uintptr_t base, uint32_t offset)
{
    return (volatile uint32_t *)(base + (uintptr_t)offset);
}

static inline uint32_t hb_reg_read(uintptr_t base, uint32_t offset)
{
    return *hb_reg_ptr(base, offset);
}

static inline void hb_reg_write(uintptr_t base, uint32_t offset, uint32_t value)
{
    *hb_reg_ptr(base, offset) = value;
}

static void hb_delay_cycles(unsigned count)
{
    volatile unsigned i;
    for (i = 0; i < count; ++i) {
        __asm__ volatile ("" ::: "memory");
    }
}

int hb_odly_get(uintptr_t base_addr, uint16_t *cntvalue)
{
    /* Return codes: 0=success, -1=invalid argument (cntvalue==NULL). */
    uint32_t status;

    if (cntvalue == 0U) {
        return -1;
    }

    status = hb_reg_read(base_addr, HB_ODLY_STATUS_OFFSET);
    *cntvalue = (uint16_t)(status & HB_ODLY_MASK_9BIT);
    return 0;
}

int hb_odly_set(uintptr_t base_addr, uint16_t cntvalue, int reenable_en_vtc)
{
    /* Return codes: 0=success. */
    uint32_t ctrl;
    uint32_t ctrl_sticky;
    uint32_t target;

    target = (uint32_t)cntvalue & HB_ODLY_MASK_9BIT;

    /*
     * Preserve sticky bits, clear pulse bits, then force EN_VTC low
     * before programming TIME/VAR_LOAD and pulsing LOAD.
     */
    ctrl = hb_reg_read(base_addr, HB_ODLY_CTRL_OFFSET);
    ctrl_sticky = ctrl & (HB_ODLY_CTRL_EN_VTC | HB_ODLY_CTRL_INC);
    ctrl_sticky &= ~HB_ODLY_CTRL_EN_VTC;
    hb_reg_write(base_addr, HB_ODLY_CTRL_OFFSET, ctrl_sticky);

    hb_delay_cycles(64);

    hb_reg_write(base_addr, HB_ODLY_TIME_OFFSET, target);

    /* Pulse LOAD (bit3), then clear pulse bits. */
    hb_reg_write(base_addr, HB_ODLY_CTRL_OFFSET, ctrl_sticky | HB_ODLY_CTRL_LOAD);
    hb_reg_write(base_addr, HB_ODLY_CTRL_OFFSET, ctrl_sticky);

    if (reenable_en_vtc) {
        hb_delay_cycles(64);
        hb_reg_write(base_addr, HB_ODLY_CTRL_OFFSET, ctrl_sticky | HB_ODLY_CTRL_EN_VTC);
    }

    return 0;
}

static int hb_odly_step(uintptr_t base_addr, int inc, int reenable_en_vtc)
{
    /* Return codes: 0=success. */
    uint32_t ctrl;
    uint32_t ctrl_sticky;

    hb_reg_write(base_addr, HB_HB_CLK_CE_FORCE_OFFSET, HB_HB_CLK_CE_FORCE_EN);
    ctrl = hb_reg_read(base_addr, HB_ODLY_CTRL_OFFSET);
    ctrl_sticky = ctrl & (HB_ODLY_CTRL_EN_VTC | HB_ODLY_CTRL_INC);

    /* EN_VTC must be low for deterministic dynamic stepping. */
    ctrl_sticky &= ~HB_ODLY_CTRL_EN_VTC;
    if (inc) {
        ctrl_sticky |= HB_ODLY_CTRL_INC;
    } else {
        ctrl_sticky &= ~HB_ODLY_CTRL_INC;
    }

    hb_reg_write(base_addr, HB_ODLY_CTRL_OFFSET, ctrl_sticky);
    hb_delay_cycles(64);

    /* Pulse CE (bit2), then clear pulse bit. */
    hb_reg_write(base_addr, HB_ODLY_CTRL_OFFSET, ctrl_sticky | HB_ODLY_CTRL_CE);
    hb_reg_write(base_addr, HB_ODLY_CTRL_OFFSET, ctrl_sticky);

    if (reenable_en_vtc) {
        hb_delay_cycles(64);
        hb_reg_write(base_addr, HB_ODLY_CTRL_OFFSET, ctrl_sticky | HB_ODLY_CTRL_EN_VTC);
    }
    hb_reg_write(base_addr, HB_HB_CLK_CE_FORCE_OFFSET, 0);
    return 0;
}

int hb_odly_inc(uintptr_t base_addr, int reenable_en_vtc)
{
    /* Return codes: 0=success. */
    return hb_odly_step(base_addr, 1, reenable_en_vtc);
}

int hb_odly_dec(uintptr_t base_addr, int reenable_en_vtc)
{
    /* Return codes: 0=success. */
    return hb_odly_step(base_addr, 0, reenable_en_vtc);
}

int hb_idelayctrl_reset_wait_ready(uintptr_t base_addr, uint32_t timeout_polls)
{
    /* Return codes: 0=success, -1=invalid timeout_polls, -2=RDY timeout. */
    uint32_t ctrl;
    uint32_t polls;

    if (timeout_polls == 0U) {
        return -1;
    }
    // Make sure gated clock is running, or IDELAYCTRL reset won't work
    hb_reg_write(base_addr, HB_HB_CLK_CE_FORCE_OFFSET, HB_HB_CLK_CE_FORCE_EN);
    ctrl = hb_reg_read(base_addr, HB_DELAY_RST_CTRL_OFFSET);

    /*
     * Start sequence with both resets asserted together (bit0+bit1 high),
     * then continue with IDELAYCTRL release/poll.
     */
    ctrl |= (HB_DELAY_RST_IDELAYCTRL | HB_DELAY_RST_ODELAY);
    hb_reg_write(base_addr, HB_DELAY_RST_CTRL_OFFSET, ctrl);

    /*
     * Hold reset high well above 50ns requirement.
     * This is intentionally conservative for software timing uncertainty.
     */
    hb_delay_cycles(64);

    /* Deassert IDELAYCTRL reset, preserving bit1 state. */
    ctrl &= ~HB_DELAY_RST_IDELAYCTRL;
    hb_reg_write(base_addr, HB_DELAY_RST_CTRL_OFFSET, ctrl);

    for (polls = 0; polls < timeout_polls; ++polls) {
        if ((hb_reg_read(base_addr, HB_IDELAYCTRL_STATUS_OFFSET) & HB_IDELAYCTRL_STATUS_RDY) != 0U) {
            ctrl &= ~ HB_DELAY_RST_ODELAY;
            hb_reg_write(base_addr, HB_DELAY_RST_CTRL_OFFSET, ctrl);
            // Turn off gated clocks            
            hb_reg_write(base_addr, HB_HB_CLK_CE_FORCE_OFFSET, 0);
            return 0;
        }
    }

    return -2;
}

int hb_odly_reset_pulse(uintptr_t base_addr)
{
    /* Return codes: 0=success. */
    uint32_t ctrl;

    ctrl = hb_reg_read(base_addr, HB_DELAY_RST_CTRL_OFFSET);

    /* Assert ODELAY reset (bit1), preserving IDELAYCTRL bit. */
    hb_reg_write(base_addr, HB_DELAY_RST_CTRL_OFFSET, ctrl | HB_DELAY_RST_ODELAY);

    /* Deassert ODELAY reset, preserving IDELAYCTRL bit. */
    hb_reg_write(base_addr, HB_DELAY_RST_CTRL_OFFSET, ctrl & ~HB_DELAY_RST_ODELAY);

    return 0;
}

int hb_dly_init(uintptr_t base_addr, uint32_t timeout_polls)
{
    /* Return codes: 0=success, <0=propagated helper error. */
    int rc;

    rc = hb_idelayctrl_reset_wait_ready(base_addr, timeout_polls);
    if (rc != 0) {
        return rc;
    }

    return hb_odly_reset_pulse(base_addr);
}

int hb_odly_sweep(uintptr_t base_addr)
{
    /* Return codes: 0=normal sweep completion, <0=propagated helper error. */
    int rc;
    uint32_t match_count = 0U;
    uint16_t cntvalue;
    uint32_t id0;
    uint32_t err_status;
    uint32_t axif_rwds_cntr;
    uint32_t axil_rwds_cntr;
    uint32_t last_read32;

    for (;;) {
        hb_reg_write(base_addr, HB_HB_CLK_CE_FORCE_OFFSET, HB_HB_CLK_CE_FORCE_EN);
        rc = hb_odly_get(base_addr, &cntvalue);
        hb_reg_write(base_addr, HB_HB_CLK_CE_FORCE_OFFSET, 0);
        if (rc != 0) {
            return rc;
        }

        if (cntvalue > 500U) {
            return 0;
        }

        id0 = hb_reg_read(base_addr, HB_ID0_OFFSET);
        err_status = hb_reg_read(base_addr, HB_ERR_STATUS_OFFSET);
        axif_rwds_cntr = hb_reg_read(base_addr, HB_AXIF_RWDS_CNTR_OFFSET);
        axil_rwds_cntr = hb_reg_read(base_addr, HB_AXIL_RWDS_CNTR_OFFSET);
        last_read32    = hb_reg_read(base_addr, HB_LAST_HB_READ32_OFFSET);

        xil_printf("CNTVALUEOUT=0x%03x ID0=0x%08x r32=0x%08x ERR_STATUS=0x%08x AXIF_RWDS_CNTR=0x%08x AXIL_RWDS_CNTR=0x%08x%s\r\n",
                   (unsigned)(cntvalue & HB_ODLY_MASK_9BIT), (unsigned)id0, (unsigned)last_read32,
                   (unsigned)err_status, (unsigned)axif_rwds_cntr, (unsigned)axil_rwds_cntr,
                   (id0 == 0x0000810Cu) ? " MATCH" : "");
        if (id0 == 0x0000810Cu) {
            match_count++;
            if (match_count >= 4U) {
                return 0;
            }
        }

        if ((err_status & HB_ERR_STATUS_TIMEOUT) != 0U) {
            hb_reg_write(base_addr, HB_ERR_STATUS_OFFSET, HB_ERR_STATUS_TIMEOUT);
        }

        rc = hb_odly_inc(base_addr, 1);
        if (rc != 0) {
            return rc;
        }
    }
}

int hb_err_status_read_print_clear(uintptr_t base_addr, uint32_t *err_status_out)
{
    /* Return codes: 0=success. */
    uint32_t err_status;

    err_status = hb_reg_read(base_addr, HB_ERR_STATUS_OFFSET);
    xil_printf("ERR_STATUS=0x%08x\n", (unsigned)err_status);

    if ((err_status & HB_ERR_STATUS_TIMEOUT) != 0U) {
        hb_reg_write(base_addr, HB_ERR_STATUS_OFFSET, HB_ERR_STATUS_TIMEOUT);
    }

    if (err_status_out != 0) {
        *err_status_out = err_status;
    }

    return 0;
}

int hb_last_hb_read32_get(uintptr_t base_addr, uint32_t *last_read_out)
{
    /* Return codes: 0=success, -1=invalid argument (last_read_out==NULL). */
    if (last_read_out == 0) {
        return -1;
    }

    *last_read_out = hb_reg_read(base_addr, HB_LAST_HB_READ32_OFFSET);
    return 0;
}
