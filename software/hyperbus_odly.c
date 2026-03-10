#include "hyperbus_odly.h"
#include <stdio.h>
#include "xil_printf.h"

#define HB_ODLY_MASK_9BIT 0x01FFu
#define HB_IDELAYCTRL_RDY_MASK 0x1u
#define HB_ERR_STATUS_TIMEOUT_MASK 0x1u

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
    uint32_t ctrl;
    uint32_t ctrl_sticky;

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

    return 0;
}

int hb_odly_inc(uintptr_t base_addr, int reenable_en_vtc)
{
    return hb_odly_step(base_addr, 1, reenable_en_vtc);
}

int hb_odly_dec(uintptr_t base_addr, int reenable_en_vtc)
{
    return hb_odly_step(base_addr, 0, reenable_en_vtc);
}

int hb_idelayctrl_reset_wait_ready(uintptr_t base_addr, uint32_t timeout_polls)
{
    uint32_t ctrl;
    uint32_t polls;

    if (timeout_polls == 0U) {
        return -1;
    }

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
        if ((hb_reg_read(base_addr, HB_IDELAYCTRL_STATUS_OFFSET) & HB_IDELAYCTRL_RDY_MASK) != 0U) {
            return 0;
        }
    }

    return -2;
}

int hb_odly_reset_pulse(uintptr_t base_addr)
{
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
    int rc;

    rc = hb_idelayctrl_reset_wait_ready(base_addr, timeout_polls);
    if (rc != 0) {
        return rc;
    }

    return hb_odly_reset_pulse(base_addr);
}

int hb_odly_sweep(uintptr_t base_addr)
{
    int rc;
    uint16_t cntvalue;
    uint32_t id0;
    uint32_t err_status;
    uint32_t axif_rwds_cntr;
    uint32_t axil_rwds_cntr;

    for (;;) {
        rc = hb_odly_get(base_addr, &cntvalue);
        if (rc != 0) {
            return rc;
        }

        xil_printf("CNTVALUEOUT=0x%03x\n", (unsigned)(cntvalue & HB_ODLY_MASK_9BIT));
        if (cntvalue > 500U) {
            return 0;
        }

        id0 = hb_reg_read(base_addr, HB_ID0_OFFSET);
        err_status = hb_reg_read(base_addr, HB_ERR_STATUS_OFFSET);
        axif_rwds_cntr = hb_reg_read(base_addr, HB_AXIF_RWDS_CNTR_OFFSET);
        axil_rwds_cntr = hb_reg_read(base_addr, HB_AXIL_RWDS_CNTR_OFFSET);

        xil_printf("ID0=0x%08x ERR_STATUS=0x%08x AXIF_RWDS_CNTR=0x%08x AXIL_RWDS_CNTR=0x%08x\n",
                   (unsigned)id0, (unsigned)err_status, (unsigned)axif_rwds_cntr, (unsigned)axil_rwds_cntr);

        if ((err_status & HB_ERR_STATUS_TIMEOUT_MASK) != 0U) {
            hb_reg_write(base_addr, HB_ERR_STATUS_OFFSET, HB_ERR_STATUS_TIMEOUT_MASK);
        }

        rc = hb_odly_inc(base_addr, 1);
        if (rc != 0) {
            return rc;
        }
    }
}
