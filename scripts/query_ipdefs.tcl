# SPDX-FileCopyrightText: 2026 Glen Lowe
# SPDX-License-Identifier: Apache-2.0

open_project /raid/work/ghl_ip/hyperbus_controller/vivado_projects/hyperbus_test_proj/hyperbus_test_proj.xpr
update_ip_catalog
puts "HB_IPDEFS=[get_ipdefs -all *hyperbus_controller*]"
puts "UART_IPDEFS=[get_ipdefs -all *e_uart*]"
close_project
exit 0
