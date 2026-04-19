# SPDX-FileCopyrightText: 2026 Glen Lowe
# SPDX-License-Identifier: Apache-2.0

set out_tcl "/raid/work/ghl_ip/hyperbus_controller/build/design_1_hdio_exported.tcl"
open_project /raid/work/ghl_ip/hyperbus_controller/vivado_projects/hyperbus_hdio/hyperbus_hdio.xpr
open_bd_design [get_files */design_1.bd]
write_bd_tcl -force $out_tcl
close_project
exit 0
