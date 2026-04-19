# SPDX-FileCopyrightText: 2026 Glen Lowe
# SPDX-License-Identifier: Apache-2.0

set repo_root [file normalize [file join [file dirname [info script]] ".."]]
set proj_dir [file join $repo_root "vivado_projects" "hyperbus_hdio"]
set xpr_path [file join $proj_dir "hyperbus_hdio.xpr"]
set bd_tcl [file join $repo_root "build" "design_1_hdio_retargeted.tcl"]

open_project $xpr_path
set_property ip_repo_paths [list \
    [file join $repo_root "ip_repo"] \
    "/raid/work/ghl_ip/e_uart/ip_repo" \
    "/raid/work/ghl_ip/axi_clk_wiz/ip_repo" \
] [current_project]
update_ip_catalog

catch {close_bd_design [current_bd_design]}

set bd_files [get_files -quiet */design_1.bd]
if {[llength $bd_files] > 0} {
    remove_files $bd_files
}

foreach dir_to_delete [list \
    [file join $proj_dir "hyperbus_hdio.srcs" "sources_1" "bd" "design_1"] \
    [file join $proj_dir "hyperbus_hdio.gen" "sources_1" "bd" "design_1"] \
] {
    if {[file exists $dir_to_delete]} {
        file delete -force $dir_to_delete
    }
}

source $bd_tcl

set bd_file [lindex [get_files -quiet */design_1.bd] 0]
open_bd_design $bd_file
generate_target all $bd_file
export_ip_user_files -of_objects $bd_file -no_script -sync -force -quiet
close_project
exit 0
