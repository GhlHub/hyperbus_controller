# SPDX-FileCopyrightText: 2026 Glen Lowe
# SPDX-License-Identifier: Apache-2.0
set script_dir [file normalize [file dirname [info script]]]
set repo_root  [file normalize [file join $script_dir ".."]]

set build_dir  [file join $repo_root "build" "ip_pack"]
set proj_dir   [file join $build_dir "vivado_proj"]
set ip_root    [file join $repo_root "ip_repo" "hyperbus_controller"]
set component_xml [file join $ip_root "component.xml"]
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
    [file join $repo_root "rtl" "hyperbus_phy_xilinx_usplus.sv"] \
    [file join $repo_root "rtl" "hyperbus_phy_xilinx_7series.sv"] \
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

ipx::package_project -root_dir $ip_root -vendor http://github.com/GhlHub -library user -taxonomy /UserIP -import_files -set_current false
ipx::unload_core $ip_root/component.xml
ipx::edit_ip_in_project -upgrade true -name tmp_edit_ip_project -directory $build_dir $ip_root/component.xml

set core [ipx::current_core]
set_property name $ip_name $core
set_property display_name "HyperBus Controller" $core
set_property description "AXI4/AXI4-Lite to HyperBus HyperRAM controller (Xilinx primitive based)." $core
set_property vendor_display_name "GhlHub" $core
set_property company_url "http://github.com/GhlHub" $core
set_property version "1.3" $core

proc set_bus_param_value {bus_if param_name param_value} {
    set p [ipx::get_bus_parameters $param_name -of_objects $bus_if]
    if {[llength $p] == 0} {
        set p [ipx::add_bus_parameter $param_name $bus_if]
    }
    set_property value $param_value $p
}

proc apply_phy_choice_labels {component_xml} {
    set fd [open $component_xml r]
    set xml [read $fd]
    close $fd

    set needle {  <spirit:choices>
    <spirit:choice>
      <spirit:name>choice_list_9d8b0d81</spirit:name>
      <spirit:enumeration>ACTIVE_HIGH</spirit:enumeration>
      <spirit:enumeration>ACTIVE_LOW</spirit:enumeration>
    </spirit:choice>
  </spirit:choices>}
    set replacement {  <spirit:choices>
    <spirit:choice>
      <spirit:name>choice_list_9d8b0d81</spirit:name>
      <spirit:enumeration>ACTIVE_HIGH</spirit:enumeration>
      <spirit:enumeration>ACTIVE_LOW</spirit:enumeration>
    </spirit:choice>
    <spirit:choice>
      <spirit:name>choice_list_phy_io_style</spirit:name>
      <spirit:enumeration spirit:text="io_delay">0</spirit:enumeration>
      <spirit:enumeration spirit:text="phased_hb_clock">1</spirit:enumeration>
    </spirit:choice>
    <spirit:choice>
      <spirit:name>choice_list_phy_family</spirit:name>
      <spirit:enumeration spirit:text="UltraScale+">0</spirit:enumeration>
      <spirit:enumeration spirit:text="Series7">1</spirit:enumeration>
    </spirit:choice>
  </spirit:choices>}

    set xml [string map [list $needle $replacement] $xml]
    set xml [string map [list \
        {<spirit:value spirit:format="long" spirit:resolve="generated" spirit:id="MODELPARAM_VALUE.PHY_IO_STYLE">0</spirit:value>} \
        {<spirit:value spirit:format="long" spirit:resolve="generated" spirit:id="MODELPARAM_VALUE.PHY_IO_STYLE" spirit:choiceRef="choice_list_phy_io_style">0</spirit:value>} \
        {<spirit:value spirit:format="long" spirit:resolve="generated" spirit:id="MODELPARAM_VALUE.PHY_FAMILY">0</spirit:value>} \
        {<spirit:value spirit:format="long" spirit:resolve="generated" spirit:id="MODELPARAM_VALUE.PHY_FAMILY" spirit:choiceRef="choice_list_phy_family">0</spirit:value>} \
        {<spirit:value spirit:format="long" spirit:resolve="user" spirit:id="PARAM_VALUE.PHY_IO_STYLE">0</spirit:value>} \
        {<spirit:value spirit:format="long" spirit:resolve="user" spirit:id="PARAM_VALUE.PHY_IO_STYLE" spirit:choiceRef="choice_list_phy_io_style">0</spirit:value>} \
        {<spirit:value spirit:format="long" spirit:resolve="user" spirit:id="PARAM_VALUE.PHY_FAMILY">0</spirit:value>} \
        {<spirit:value spirit:format="long" spirit:resolve="user" spirit:id="PARAM_VALUE.PHY_FAMILY" spirit:choiceRef="choice_list_phy_family">0</spirit:value>} \
    ] $xml]

    set fd [open $component_xml w]
    puts -nonewline $fd $xml
    close $fd
}

proc apply_ref_clk_enablement {component_xml} {
    set fd [open $component_xml r]
    set xml [read $fd]
    close $fd

    set needle {      <spirit:port>
        <spirit:name>i_ref_clk_300</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
              <spirit:viewNameRef>xilinx_anylanguagebehavioralsimulation</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>}
    set replacement {      <spirit:port>
        <spirit:name>i_ref_clk_300</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
              <spirit:viewNameRef>xilinx_anylanguagebehavioralsimulation</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
        <spirit:vendorExtensions>
          <xilinx:portInfo>
            <xilinx:enablement>
              <xilinx:isEnabled xilinx:resolve="dependent" xilinx:id="PORT_ENABLEMENT.i_ref_clk_300" xilinx:dependency="(spirit:decode(id(&apos;MODELPARAM_VALUE.PHY_IO_STYLE&apos;))=0)">true</xilinx:isEnabled>
            </xilinx:enablement>
          </xilinx:portInfo>
        </spirit:vendorExtensions>
      </spirit:port>}

    set xml [string map [list $needle $replacement] $xml]

    set fd [open $component_xml w]
    puts -nonewline $fd $xml
    close $fd
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

set ck_p_odly_rst_if [ipx::get_bus_interfaces o_ck_p_odly_rst -of_objects $core]
if {[llength $ck_p_odly_rst_if] > 0} {
    set_bus_param_value $ck_p_odly_rst_if POLARITY {ACTIVE_HIGH}
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
apply_phy_choice_labels $component_xml
apply_ref_clk_enablement $component_xml
puts "Packaged IP at: $ip_root"
