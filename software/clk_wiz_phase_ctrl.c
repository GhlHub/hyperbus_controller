// SPDX-FileCopyrightText: 2026 Glen Lowe
// SPDX-License-Identifier: Apache-2.0
#include "clk_wiz_phase_ctrl.h"

static inline volatile uint32_t *clk_wiz_phase_ctrl_reg_ptr(uintptr_t base_addr, uint32_t offset)
{
    return (volatile uint32_t *)(base_addr + (uintptr_t)offset);
}

static inline uint32_t clk_wiz_phase_ctrl_reg_read(uintptr_t base_addr, uint32_t offset)
{
    return *clk_wiz_phase_ctrl_reg_ptr(base_addr, offset);
}

static inline void clk_wiz_phase_ctrl_reg_write(uintptr_t base_addr, uint32_t offset, uint32_t value)
{
    *clk_wiz_phase_ctrl_reg_ptr(base_addr, offset) = value;
}

int clk_wiz_phase_ctrl_step(uintptr_t base_addr,
                            uint8_t target_sel,
                            int32_t step_count,
                            uint32_t timeout_polls)
{
    uint32_t polls;
    uint32_t control_value;
    uint32_t status;

    if ((target_sel > 7u) || (timeout_polls == 0u)) {
        return -1;
    }

    for (polls = 0u; polls < timeout_polls; ++polls) {
        status = clk_wiz_phase_ctrl_reg_read(base_addr, CLK_WIZ_PHASE_CTRL_STATUS_OFFSET);
        if ((status & CLK_WIZ_PHASE_CTRL_STATUS_BUSY) == 0u) {
            break;
        }
    }

    if (polls == timeout_polls) {
        return -2;
    }

    clk_wiz_phase_ctrl_reg_write(base_addr,
                                 CLK_WIZ_PHASE_CTRL_STATUS_OFFSET,
                                 CLK_WIZ_PHASE_CTRL_STATUS_DONE | CLK_WIZ_PHASE_CTRL_STATUS_ERROR);
    clk_wiz_phase_ctrl_reg_write(base_addr,
                                 CLK_WIZ_PHASE_CTRL_STEP_COUNT_OFFSET,
                                 (uint32_t)step_count);

    control_value = ((uint32_t)target_sel << CLK_WIZ_PHASE_CTRL_CONTROL_TARGET_SHIFT) |
                    CLK_WIZ_PHASE_CTRL_CONTROL_START;
    clk_wiz_phase_ctrl_reg_write(base_addr, CLK_WIZ_PHASE_CTRL_CONTROL_OFFSET, control_value);

    for (polls = 0u; polls < timeout_polls; ++polls) {
        status = clk_wiz_phase_ctrl_reg_read(base_addr, CLK_WIZ_PHASE_CTRL_STATUS_OFFSET);

        if ((status & CLK_WIZ_PHASE_CTRL_STATUS_ERROR) != 0u) {
            return -3;
        }

        if (((status & CLK_WIZ_PHASE_CTRL_STATUS_BUSY) == 0u) &&
            ((status & CLK_WIZ_PHASE_CTRL_STATUS_DONE) != 0u)) {
            return 0;
        }
    }

    return -4;
}
