#include "hyperbus_odly.h"

#define HB_ODLY_MASK_9BIT 0x01FFu
#define HB_IDELAYCTRL_RDY_MASK 0x1u

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

int hb_odly_read(uintptr_t base_addr, uint16_t *cntvalue)
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

    /* Assert IDELAYCTRL reset (bit0), preserving ODELAY reset control bit. */
    hb_reg_write(base_addr, HB_DELAY_RST_CTRL_OFFSET, ctrl | HB_DELAY_RST_IDELAYCTRL);

    /*
     * Hold reset high well above 50ns requirement.
     * This is intentionally conservative for software timing uncertainty.
     */
    hb_delay_cycles(64);

    /* Deassert IDELAYCTRL reset, preserving bit1 state. */
    hb_reg_write(base_addr, HB_DELAY_RST_CTRL_OFFSET, ctrl & ~HB_DELAY_RST_IDELAYCTRL);

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
