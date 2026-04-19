# SPDX-FileCopyrightText: 2026 Glen Lowe
# SPDX-License-Identifier: Apache-2.0

set repo_root [file normalize [file join [file dirname [info script]] ".."]]
set proj_dir [file join $repo_root "vivado_projects" "hyperbus_test_proj"]
set xpr_path [file join $proj_dir "hyperbus_test_proj.xpr"]

set hb_new_vlnv "github.com:user:hyperbus_controller:1.3"
set uart_new_vlnv "github.com:user:e_uart:1.1"

proc require_single {objs desc} {
    if {[llength $objs] != 1} {
        error "Expected exactly one $desc, got [llength $objs]"
    }
    return [lindex $objs 0]
}

proc capture_connected_nets {cell_obj} {
    set out [dict create pin_peers [dict create] intf_peers [dict create]]
    set intf_names [list]
    set cell_name [get_property NAME $cell_obj]

    foreach intf_pin [get_bd_intf_pins -quiet -of_objects $cell_obj] {
        set pin_name [get_property NAME $intf_pin]
        lappend intf_names $pin_name
        set nets [get_bd_intf_nets -quiet -of_objects $intf_pin]
        if {[llength $nets] == 1} {
            set peer_refs [list]
            foreach peer_pin [get_bd_intf_pins -quiet -of_objects [lindex $nets 0]] {
                set peer_path [get_property PATH $peer_pin]
                if {![string match "${cell_name}/*" $peer_path]} {
                    lappend peer_refs $peer_path
                }
            }
            foreach peer_port [get_bd_intf_ports -quiet -of_objects [lindex $nets 0]] {
                lappend peer_refs [get_property NAME $peer_port]
            }
            if {[llength $peer_refs] > 0} {
                dict set out intf_peers $pin_name $peer_refs
            }
        }
    }

    foreach pin [get_bd_pins -quiet -of_objects $cell_obj] {
        set pin_name [get_property NAME $pin]
        set skip_pin 0
        foreach intf_name $intf_names {
            if {$pin_name eq $intf_name || [string match "${intf_name}_*" $pin_name]} {
                set skip_pin 1
                break
            }
        }
        if {$pin_name eq "txd" || $pin_name eq "rxd"} {
            set skip_pin 1
        }
        if {$skip_pin} {
            continue
        }
        set nets [get_bd_nets -quiet -of_objects $pin]
        if {[llength $nets] == 1} {
            set peer_refs [list]
            foreach peer_pin [get_bd_pins -quiet -of_objects [lindex $nets 0]] {
                set peer_path [get_property PATH $peer_pin]
                if {$peer_path ne "${cell_name}/${pin_name}"} {
                    lappend peer_refs $peer_path
                }
            }
            foreach peer_port [get_bd_ports -quiet -of_objects [lindex $nets 0]] {
                lappend peer_refs [get_property NAME $peer_port]
            }
            if {[llength $peer_refs] > 0} {
                dict set out pin_peers $pin_name $peer_refs
            }
        }
    }

    return $out
}

proc reconnect_cell {cell_name conn_info} {
    dict for {pin_name peer_refs} [dict get $conn_info pin_peers] {
        set pin [get_bd_pins -quiet ${cell_name}/${pin_name}]
        set peers [list]
        foreach peer_ref $peer_refs {
            set peer [get_bd_pins -quiet $peer_ref]
            if {[llength $peer] == 0} {
                set peer [get_bd_ports -quiet $peer_ref]
            }
            if {[llength $peer] == 1} {
                lappend peers $peer
            }
        }
        if {[llength $pin] == 1 && [llength $peers] > 0} {
            set rc [catch {connect_bd_net $pin {*}$peers} msg]
            if {$rc != 0} {
                error "connect_bd_net failed for ${cell_name}/${pin_name}: $msg"
            }
        }
    }

    dict for {pin_name peer_refs} [dict get $conn_info intf_peers] {
        set pin [get_bd_intf_pins -quiet ${cell_name}/${pin_name}]
        set peers [list]
        foreach peer_ref $peer_refs {
            set peer [get_bd_intf_pins -quiet $peer_ref]
            if {[llength $peer] == 0} {
                set peer [get_bd_intf_ports -quiet $peer_ref]
            }
            if {[llength $peer] == 1} {
                lappend peers $peer
            }
        }
        if {[llength $pin] == 1 && [llength $peers] > 0} {
            set rc [catch {connect_bd_intf_net $pin {*}$peers} msg]
            if {$rc != 0} {
                error "connect_bd_intf_net failed for ${cell_name}/${pin_name}: $msg"
            }
        }
    }
}

proc recreate_ip_cell {cell_name new_vlnv config_dict} {
    delete_bd_objs [get_bd_cells $cell_name]
    create_bd_cell -type ip -vlnv $new_vlnv $cell_name
    if {[dict size $config_dict] > 0} {
        set cfg_list [list]
        dict for {k v} $config_dict {
            lappend cfg_list $k $v
        }
        set_property -dict $cfg_list [get_bd_cells $cell_name]
    }
}

puts "INFO: Opening project $xpr_path"
open_project $xpr_path

set proj [current_project]
puts "INFO: Project IP repos: [get_property ip_repo_paths $proj]"
update_ip_catalog

set bd_file [require_single [get_files -quiet */design_1.bd] "design_1 BD file"]
open_bd_design $bd_file

set hb_cell [require_single [get_bd_cells -quiet hyperbus_controller_0] "hyperbus_controller_0 BD cell"]
set uart_cell [require_single [get_bd_cells -quiet e_uart_0] "e_uart_0 BD cell"]

set hb_old_vlnv [get_property VLNV $hb_cell]
set uart_old_vlnv [get_property VLNV $uart_cell]
puts "INFO: Existing hyperbus_controller_0 VLNV: $hb_old_vlnv"
puts "INFO: Existing e_uart_0 VLNV: $uart_old_vlnv"

set hb_conn [capture_connected_nets $hb_cell]
set uart_conn [capture_connected_nets $uart_cell]

set hb_cfg [dict create \
    CONFIG.AXI_ADDR_WIDTH 32 \
    CONFIG.AXI_DATA_WIDTH 32 \
    CONFIG.AXI_ID_WIDTH 1 \
    CONFIG.AXIL_ADDR_WIDTH 16 \
    CONFIG.HB_LATENCY_DEFAULT 7 \
    CONFIG.PHY_IO_STYLE 0 \
    CONFIG.PHY_FAMILY 0 \
    CONFIG.ODDRE1_TX_PIPE_CYCLES 1 \
    CONFIG.HB_READ_CS_DEASSERT_DELAY 2]

set uart_cfg [dict create]

if {$hb_old_vlnv ne $hb_new_vlnv} {
    puts "INFO: Recreating hyperbus_controller_0 as $hb_new_vlnv"
    recreate_ip_cell hyperbus_controller_0 $hb_new_vlnv $hb_cfg
    reconnect_cell hyperbus_controller_0 $hb_conn
}

if {$uart_old_vlnv ne $uart_new_vlnv} {
    puts "INFO: Recreating e_uart_0 as $uart_new_vlnv"
    recreate_ip_cell e_uart_0 $uart_new_vlnv $uart_cfg
    reconnect_cell e_uart_0 $uart_conn
}

assign_bd_address
validate_bd_design
save_bd_design

puts "INFO: Regenerating BD output products"
generate_target all $bd_file
export_ip_user_files -of_objects $bd_file -no_script -sync -force -quiet

save_project
close_project
puts "INFO: Migration complete"
exit 0
