# SPDX-FileCopyrightText: 2026 Glen Lowe
# SPDX-License-Identifier: Apache-2.0

create_project -in_memory -part xcsu35p-sbvb625-2-e
set_property ip_repo_paths [list /raid/work/ghl_ip/hyperbus_controller/ip_repo /raid/work/ghl_ip/e_uart/ip_repo] [current_project]
update_ip_catalog
set hb [get_ipdefs -all *hyperbus_controller*]
set uart [get_ipdefs -all *e_uart*]
puts "HB=$hb"
report_property $hb
puts "UART=$uart"
report_property $uart
exit 0
