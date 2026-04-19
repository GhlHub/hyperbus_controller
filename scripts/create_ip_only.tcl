# SPDX-FileCopyrightText: 2026 Glen Lowe
# SPDX-License-Identifier: Apache-2.0

create_project -in_memory -part xcsu35p-sbvb625-2-e
set_property ip_repo_paths [list /raid/work/ghl_ip/hyperbus_controller/ip_repo /raid/work/ghl_ip/e_uart/ip_repo] [current_project]
update_ip_catalog
create_ip -vlnv github.com:user:hyperbus_controller:1.3 -module_name hb0
create_ip -vlnv github.com:user:e_uart:1.1 -module_name uart0
exit 0
