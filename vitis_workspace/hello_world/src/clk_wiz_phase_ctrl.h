// SPDX-FileCopyrightText: 2026 Glen Lowe
// SPDX-License-Identifier: Apache-2.0
#ifndef CLK_WIZ_PHASE_CTRL_H
#define CLK_WIZ_PHASE_CTRL_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#define CLK_WIZ_PHASE_CTRL_CONTROL_OFFSET     0x0000u
#define CLK_WIZ_PHASE_CTRL_STATUS_OFFSET      0x0004u
#define CLK_WIZ_PHASE_CTRL_STEP_COUNT_OFFSET  0x0008u
#define CLK_WIZ_PHASE_CTRL_APPLIED_OFFSET     0x000Cu
#define CLK_WIZ_PHASE_CTRL_INFO_OFFSET        0x0010u

#define CLK_WIZ_PHASE_CTRL_CONTROL_START      (1u << 0)
#define CLK_WIZ_PHASE_CTRL_CONTROL_TARGET_SHIFT 8u
#define CLK_WIZ_PHASE_CTRL_CONTROL_TARGET_MASK  (7u << CLK_WIZ_PHASE_CTRL_CONTROL_TARGET_SHIFT)
#define CLK_WIZ_PHASE_CTRL_CONTROL_IRQ_EN     (1u << 16)

#define CLK_WIZ_PHASE_CTRL_STATUS_BUSY        (1u << 0)
#define CLK_WIZ_PHASE_CTRL_STATUS_DONE        (1u << 1)
#define CLK_WIZ_PHASE_CTRL_STATUS_ERROR       (1u << 2)
#define CLK_WIZ_PHASE_CTRL_STATUS_LOCKED      (1u << 3)
#define CLK_WIZ_PHASE_CTRL_STATUS_PSDONE      (1u << 4)
#define CLK_WIZ_PHASE_CTRL_STATUS_PSINCDEC    (1u << 5)
#define CLK_WIZ_PHASE_CTRL_STATUS_TARGET_SHIFT 8u
#define CLK_WIZ_PHASE_CTRL_STATUS_TARGET_MASK  (7u << CLK_WIZ_PHASE_CTRL_STATUS_TARGET_SHIFT)

int clk_wiz_phase_ctrl_step(uintptr_t base_addr,
                            uint8_t target_sel,
                            int32_t step_count,
                            uint32_t timeout_polls);

#ifdef __cplusplus
}
#endif

#endif
