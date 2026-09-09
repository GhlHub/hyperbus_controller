#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2026 Glen Lowe
# SPDX-License-Identifier: Apache-2.0
set -euo pipefail

# Optional RTL path allows testing the regression against an older revision.
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
rtl="${1:-$repo_root/rtl/hyperbus_axi_full_frontend.sv}"
mkdir -p "$repo_root/build/sim"
iverilog -g2012 -s tb_hyperbus_wready_probe \
    -o "$repo_root/build/sim/hyperbus_wready_probe" \
    "$rtl" "$repo_root/tb/tb_hyperbus_wready_probe.sv"
vvp "$repo_root/build/sim/hyperbus_wready_probe"
