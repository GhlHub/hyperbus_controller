set script_dir [file normalize [file dirname [info script]]]
set repo_root  [file normalize [file join $script_dir ".."]]

set build_dir  [file join $repo_root "build" "ip_pack"]
set proj_dir   [file join $build_dir "vivado_proj"]
set ip_root    [file join $repo_root "ip_repo" "hyperbus_controller"]
set ip_name    "hyperbus_controller"
set part_name  "xcsu35p-sbvb625-2-e"

if {[info exists ::env(HB_IP_PART)] && $::env(HB_IP_PART) ne ""} {
    set part_name $::env(HB_IP_PART)
}

file mkdir $build_dir
file mkdir [file dirname $ip_root]

create_project -force ${ip_name}_pkg $proj_dir -part $part_name
set_property source_mgmt_mode None [current_project]

set rtl_files [list \
    [file join $repo_root "rtl" "hyperbus_fifo_bank_xilinx.sv"] \
    [file join $repo_root "rtl" "hyperbus_phy_xilinx.sv"] \
    [file join $repo_root "rtl" "hyperbus_axi_lite_frontend.sv"] \
    [file join $repo_root "rtl" "hyperbus_axi_full_frontend.sv"] \
    [file join $repo_root "rtl" "hyperbus_hb_engine.sv"] \
    [file join $repo_root "rtl" "hyperbus_controller.sv"] \
]

add_files -fileset sources_1 -norecurse $rtl_files
import_files -fileset sources_1
set src_fs [get_filesets sources_1]
set_property top hyperbus_controller $src_fs
set_property top_auto_set 0 $src_fs
update_compile_order -fileset sources_1

ipx::package_project -root_dir $ip_root -vendor user.org -library user -taxonomy /UserIP -import_files -set_current false
ipx::unload_core $ip_root/component.xml
ipx::edit_ip_in_project -upgrade true -name tmp_edit_ip_project -directory $build_dir $ip_root/component.xml

set core [ipx::current_core]
set_property name $ip_name $core
set_property display_name "HyperBus Controller" $core
set_property description "AXI4/AXI4-Lite to HyperBus HyperRAM controller (Xilinx primitive based)." $core
set_property vendor_display_name "User" $core
set_property company_url "https://example.com" $core
set_property version "1.0" $core

proc set_bus_param_value {bus_if param_name param_value} {
    set p [ipx::get_bus_parameters $param_name -of_objects $bus_if]
    if {[llength $p] == 0} {
        set p [ipx::add_bus_parameter $param_name $bus_if]
    }
    set_property value $param_value $p
}

set axi_clk_if [ipx::get_bus_interfaces i_axi_aclk -of_objects $core]
if {[llength $axi_clk_if] > 0} {
    set_bus_param_value $axi_clk_if ASSOCIATED_BUSIF {s_axi:s_axil}
    set_bus_param_value $axi_clk_if ASSOCIATED_RESET {i_axi_aresetn}
    set_bus_param_value $axi_clk_if FREQ_HZ 50000000
}

set rst_if [ipx::get_bus_interfaces i_axi_aresetn -of_objects $core]
if {[llength $rst_if] > 0} {
    set_bus_param_value $rst_if POLARITY {ACTIVE_LOW}
}

set s_axi_if [ipx::get_bus_interfaces s_axi -of_objects $core]
if {[llength $s_axi_if] > 0} {
    set_bus_param_value $s_axi_if PROTOCOL {AXI4}
    set_bus_param_value $s_axi_if FREQ_HZ 50000000
}

set s_axil_if [ipx::get_bus_interfaces s_axil -of_objects $core]
if {[llength $s_axil_if] > 0} {
    set_bus_param_value $s_axil_if PROTOCOL {AXI4LITE}
    set_bus_param_value $s_axil_if FREQ_HZ 50000000
}

ipx::create_xgui_files $core
ipx::update_checksums $core
ipx::check_integrity -quiet $core
ipx::save_core $core

close_project -delete
puts "Packaged IP at: $ip_root"
