# SPDX-FileCopyrightText: 2026 Glen Lowe
# SPDX-License-Identifier: Apache-2.0
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

proc update_MODELPARAM_VALUE.ODDRE1_TX_PIPE_CYCLES { MODELPARAM_VALUE.ODDRE1_TX_PIPE_CYCLES PARAM_VALUE.ODDRE1_TX_PIPE_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ODDRE1_TX_PIPE_CYCLES}] ${MODELPARAM_VALUE.ODDRE1_TX_PIPE_CYCLES}
}

proc update_MODELPARAM_VALUE.HB_READ_CS_DEASSERT_DELAY { MODELPARAM_VALUE.HB_READ_CS_DEASSERT_DELAY PARAM_VALUE.HB_READ_CS_DEASSERT_DELAY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HB_READ_CS_DEASSERT_DELAY}] ${MODELPARAM_VALUE.HB_READ_CS_DEASSERT_DELAY}
}

