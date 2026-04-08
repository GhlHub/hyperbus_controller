# file: design_1_mdm_0_0.xdc
create_clock -period 33.333 [get_pins Use*.BSCAN*/*/INTERNAL_TCK]
create_generated_clock -source [get_pins Use*.BSCAN*/*/INTERNAL_TCK] -divide_by 2 [get_pins Use*.BSCAN*/*/UPDATE]
create_generated_clock -source [get_pins Use*.BSCAN*/*/INTERNAL_TCK] -divide_by 1 [get_pins Use*.BSCAN*/*/DRCK]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins "Use*.BSCAN*/*/INTERNAL_TCK"]]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins "Use*.BSCAN*/*/UPDATE"]]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins "Use*.BSCAN*/*/DRCK"]]
set_input_delay 1.000 -clock [get_clocks -of_objects [get_pins "Use*.BSCAN*/*/DRCK"]] [get_pins "Use*.BSCAN*/*/INTERNAL_TDI"]

create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-10 -description "Debug protocol ensures stable signals" \
  -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Debug_SYS_Rst_i_reg/C]

# Methodology waivers for internal BSCAN clock constraints
create_waiver -internal -scoped -user mdm -tags 12436 -type METHODOLOGY -id TIMING-54 \
  -object [get_clocks -quiet -of_objects [get_pins "Use*.BSCAN*/*/DRCK"]] \
  -description "Avoid warning for valid DRCK clock constraint"
create_waiver -internal -scoped -user mdm -tags 12436 -type METHODOLOGY -id TIMING-54 \
  -object [get_clocks -quiet -of_objects [get_pins "Use*.BSCAN*/*/UPDATE"]] \
  -description "Avoid warning for valid UPDATE clock constraint"
create_waiver -internal -scoped -user mdm -tags 12436 -type METHODOLOGY -id TIMING-54 \
  -object [get_clocks -quiet -of_objects [get_pins "Use*.BSCAN*/Use*.BSCAN*/INTERNAL_TCK"]] \
  -description "Avoid warning for valid TCK clock constraint"

# Waivers for serial debug interface
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_Serial_Unified_Completion.*/C]

create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_Serial_Unified_Completion.*/D]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_Serial_Unified_Completion.*/D]

# Waivers for internal BSCAN
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TDI]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-2  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-7  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-8  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-10 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-11 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TDI]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TDI]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/UPDATE]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/UPDATE]

# Waivers for BSCAN
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/C]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/*/C]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/C]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/*/C*]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/*/O]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -from [list [get_pins -quiet {MDM_Core_I1/*/C MDM_Core_I1/JTAG_CONTROL_I/*/C}]]

create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet MDM_Core_I1/*/CE]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/CE]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/*/CE]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [list [get_pins -quiet {MDM_Core_I1/JTAG_CONTROL_I/*/D MDM_Core_I1/JTAG_CONTROL_I/*/R}]]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-7  -description "Debug protocol ensures stable signals" -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/PRE]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-7  -description "Debug protocol ensures stable signals" -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/*/CLR]
create_waiver -internal -scoped -user mdm -tags 12436 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -to [list [get_pins -quiet {MDM_Core_I1/JTAG_CONTROL_I/*/R MDM_Core_I1/JTAG_CONTROL_I/*/*/R}]]

