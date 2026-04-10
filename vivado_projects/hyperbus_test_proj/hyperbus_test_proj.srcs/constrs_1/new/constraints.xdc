# HyperBus controller constraints
#
# This file was re-created after the previous constraints file was missing.
# Add/adjust board-specific clocks, pin LOCs, and interface timing constraints here.

# Example primary clocks (edit to match your top-level ports):
#create_clock -name i_axi_aclk   -period 20.000 [get_ports i_axi_aclk]
#create_clock -name i_hb_clk_200 -period 5.000  [get_ports i_hb_clk_200]
#create_clock -name i_ref_clk_300 -period 3.333 [get_ports i_ref_clk_300]

# Forwarded HyperBus clock at the package pin. Read-side timing below uses the
# trained forwarded clock as the external reference.
create_generated_clock -name hb_ck_fwd \
  -source [get_pins {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/u_oddr_ck/CLK}] \
  -divide_by 1 \
  [get_ports o_hb_ck_p_0]

# Example HyperBus output timing constraints (uncomment and tune as needed):

# Example IOB packing hints:
set_property IOB TRUE [get_ports o_hb_ck_p_0]




set_property IOSTANDARD LVCMOS18 [get_ports io_hb_rwds_0]
set_property IOSTANDARD LVCMOS18 [get_ports o_hb_ck_n_0]
set_property IOSTANDARD LVCMOS18 [get_ports o_hb_ck_p_0]
set_property IOSTANDARD LVCMOS18 [get_ports o_hb_cs_n_0]
set_property IOSTANDARD LVCMOS18 [get_ports o_hb_reset_n_0]
set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[0]}]
set_property PACKAGE_PIN F3 [get_ports ext_reset_in_0]
set_property PACKAGE_PIN AC6 [get_ports UART_0_rxd]
set_property PACKAGE_PIN AB6 [get_ports UART_0_txd]
set_property PACKAGE_PIN E21 [get_ports o_hb_reset_n_0]
set_property PACKAGE_PIN B22 [get_ports {io_hb_dq_0[7]}]
set_property PACKAGE_PIN B21 [get_ports {io_hb_dq_0[6]}]
set_property PACKAGE_PIN A21 [get_ports {io_hb_dq_0[5]}]
set_property PACKAGE_PIN A20 [get_ports {io_hb_dq_0[4]}]
set_property PACKAGE_PIN A24 [get_ports {io_hb_dq_0[3]}]
set_property PACKAGE_PIN A23 [get_ports {io_hb_dq_0[2]}]
set_property PACKAGE_PIN B20 [get_ports {io_hb_dq_0[1]}]
set_property PACKAGE_PIN C20 [get_ports {io_hb_dq_0[0]}]
set_property PACKAGE_PIN B23 [get_ports io_hb_rwds_0]
set_property PACKAGE_PIN B25 [get_ports o_hb_ck_n_0]
set_property PACKAGE_PIN B24 [get_ports o_hb_ck_p_0]
set_property PACKAGE_PIN C22 [get_ports o_hb_cs_n_0]

set_property IOSTANDARD LVCMOS33 [get_ports UART_0_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports UART_0_txd]
set_property IOSTANDARD LVCMOS33 [get_ports ext_reset_in_0]

# HyperBus DQ bus-skew limits, assuming zero board-contributed skew for now.
# Read-side: pad to IDDRE1 capture input.
set_bus_skew 0.050 \
  -from [get_ports {io_hb_dq_0[*]}] \
  -to   [get_pins {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[*].u_iddr_dq/D}]

# Read-side DQ/RWDS timing budget after training centers the observed eye.
set_input_delay -clock hb_ck_fwd -max  0.250 [get_ports {io_hb_dq_0[*] io_hb_rwds_0}]
set_input_delay -clock hb_ck_fwd -min -0.250 [get_ports {io_hb_dq_0[*] io_hb_rwds_0}]
set_input_delay -clock hb_ck_fwd -clock_fall -add_delay -max  0.250 [get_ports {io_hb_dq_0[*] io_hb_rwds_0}]
set_input_delay -clock hb_ck_fwd -clock_fall -add_delay -min -0.250 [get_ports {io_hb_dq_0[*] io_hb_rwds_0}]

# Write-side: ODDRE1 output to package pin.
set_bus_skew 0.095 \
  -from [get_pins {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[*].u_oddr_dq/OQ}] \
  -to   [get_ports {io_hb_dq_0[*]}]

set_property DRIVE 6 [get_ports {io_hb_dq_0[7]}]
set_property DRIVE 6 [get_ports {io_hb_dq_0[6]}]
set_property DRIVE 6 [get_ports {io_hb_dq_0[5]}]
set_property DRIVE 6 [get_ports {io_hb_dq_0[4]}]
set_property DRIVE 6 [get_ports {io_hb_dq_0[3]}]
set_property DRIVE 6 [get_ports {io_hb_dq_0[2]}]
set_property DRIVE 6 [get_ports {io_hb_dq_0[1]}]
set_property DRIVE 6 [get_ports {io_hb_dq_0[0]}]

set_property DRIVE 8 [get_ports io_hb_rwds_0]
set_property DRIVE 8 [get_ports o_hb_ck_p_0]
set_property DRIVE 12 [get_ports o_hb_cs_n_0]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
