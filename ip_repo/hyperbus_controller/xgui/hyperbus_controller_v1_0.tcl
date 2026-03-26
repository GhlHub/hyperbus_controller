namespace eval hyperbus_controller_xgui {
  variable phy_family_autofill_done
  array set phy_family_autofill_done {}
}

proc hyperbus_controller_detect_phy_family {} {
	set default_phy_family 0
	set project_obj ""
	set part_name ""

	if {[catch {set project_obj [current_project]}]} {
		return $default_phy_family
	}
	if {$project_obj eq ""} {
		return $default_phy_family
	}
	if {[catch {set part_name [string tolower [get_property PART $project_obj]]}]} {
		return $default_phy_family
	}
	if {$part_name eq ""} {
		return $default_phy_family
	}

	if {[regexp {^xc7|^xa7|^xq7|^xqr7} $part_name]} {
		return 1
	}

	if {![catch {set part_obj [get_parts $part_name]}] && [llength $part_obj] > 0} {
		set family ""
		set arch ""
		catch {set family [string tolower [get_property FAMILY $part_obj]]}
		catch {set arch [string tolower [get_property ARCHITECTURE $part_obj]]}

		if {[regexp {(artix7|kintex7|virtex7|spartan7|zynq|7series)} $family]} {
			return 1
		}
		if {[regexp {(artix7|kintex7|virtex7|spartan7|zynq|7series)} $arch]} {
			return 1
		}
	}

	return $default_phy_family
}

proc hyperbus_controller_prefill_phy_family {param_obj} {
	variable ::hyperbus_controller_xgui::phy_family_autofill_done
	set key [format %s $param_obj]

	if {[info exists phy_family_autofill_done($key)]} {
		return
	}

	set detected_phy_family [hyperbus_controller_detect_phy_family]
	catch {set_property value $detected_phy_family $param_obj}
	set phy_family_autofill_done($key) 1
}

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXIL_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HB_LATENCY_DEFAULT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HB_READ_CS_DEASSERT_DELAY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ODDRE1_TX_PIPE_CYCLES" -parent ${Page_0}
  set phy_family_widget [ipgui::add_param $IPINST -name "PHY_FAMILY" -parent ${Page_0}]
  set_property tooltip "Prefilled from the current project family on first open; you can override it manually." $phy_family_widget


}

proc update_PARAM_VALUE.AXIL_ADDR_WIDTH { PARAM_VALUE.AXIL_ADDR_WIDTH } {
	# Procedure called to update AXIL_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIL_ADDR_WIDTH { PARAM_VALUE.AXIL_ADDR_WIDTH } {
	# Procedure called to validate AXIL_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to update AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to validate AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_DATA_WIDTH { PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to update AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_DATA_WIDTH { PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to validate AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_ID_WIDTH { PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to update AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ID_WIDTH { PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to validate AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.HB_LATENCY_DEFAULT { PARAM_VALUE.HB_LATENCY_DEFAULT } {
	# Procedure called to update HB_LATENCY_DEFAULT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HB_LATENCY_DEFAULT { PARAM_VALUE.HB_LATENCY_DEFAULT } {
	# Procedure called to validate HB_LATENCY_DEFAULT
	return true
}

proc update_PARAM_VALUE.HB_READ_CS_DEASSERT_DELAY { PARAM_VALUE.HB_READ_CS_DEASSERT_DELAY } {
	# Procedure called to update HB_READ_CS_DEASSERT_DELAY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HB_READ_CS_DEASSERT_DELAY { PARAM_VALUE.HB_READ_CS_DEASSERT_DELAY } {
	# Procedure called to validate HB_READ_CS_DEASSERT_DELAY
	return true
}

proc update_PARAM_VALUE.ODDRE1_TX_PIPE_CYCLES { PARAM_VALUE.ODDRE1_TX_PIPE_CYCLES } {
	# Procedure called to update ODDRE1_TX_PIPE_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ODDRE1_TX_PIPE_CYCLES { PARAM_VALUE.ODDRE1_TX_PIPE_CYCLES } {
	# Procedure called to validate ODDRE1_TX_PIPE_CYCLES
	return true
}

proc update_PARAM_VALUE.PHY_FAMILY { PARAM_VALUE.PHY_FAMILY } {
	# Procedure called to update PHY_FAMILY when any of the dependent parameters in the arguments change
	hyperbus_controller_prefill_phy_family ${PARAM_VALUE.PHY_FAMILY}
}

proc validate_PARAM_VALUE.PHY_FAMILY { PARAM_VALUE.PHY_FAMILY } {
	# Procedure called to validate PHY_FAMILY
	return true
}


proc update_MODELPARAM_VALUE.AXI_ADDR_WIDTH { MODELPARAM_VALUE.AXI_ADDR_WIDTH PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_DATA_WIDTH { MODELPARAM_VALUE.AXI_DATA_WIDTH PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_ID_WIDTH { MODELPARAM_VALUE.AXI_ID_WIDTH PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ID_WIDTH}] ${MODELPARAM_VALUE.AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIL_ADDR_WIDTH { MODELPARAM_VALUE.AXIL_ADDR_WIDTH PARAM_VALUE.AXIL_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIL_ADDR_WIDTH}] ${MODELPARAM_VALUE.AXIL_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.HB_LATENCY_DEFAULT { MODELPARAM_VALUE.HB_LATENCY_DEFAULT PARAM_VALUE.HB_LATENCY_DEFAULT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HB_LATENCY_DEFAULT}] ${MODELPARAM_VALUE.HB_LATENCY_DEFAULT}
}

proc update_MODELPARAM_VALUE.PHY_FAMILY { MODELPARAM_VALUE.PHY_FAMILY PARAM_VALUE.PHY_FAMILY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PHY_FAMILY}] ${MODELPARAM_VALUE.PHY_FAMILY}
}

proc update_MODELPARAM_VALUE.ODDRE1_TX_PIPE_CYCLES { MODELPARAM_VALUE.ODDRE1_TX_PIPE_CYCLES PARAM_VALUE.ODDRE1_TX_PIPE_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ODDRE1_TX_PIPE_CYCLES}] ${MODELPARAM_VALUE.ODDRE1_TX_PIPE_CYCLES}
}

proc update_MODELPARAM_VALUE.HB_READ_CS_DEASSERT_DELAY { MODELPARAM_VALUE.HB_READ_CS_DEASSERT_DELAY PARAM_VALUE.HB_READ_CS_DEASSERT_DELAY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HB_READ_CS_DEASSERT_DELAY}] ${MODELPARAM_VALUE.HB_READ_CS_DEASSERT_DELAY}
}
