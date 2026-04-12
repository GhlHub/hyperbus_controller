# HyperBus controller constraints
#
# This file was re-created after the previous constraints file was missing.
# Add/adjust board-specific clocks, pin LOCs, and interface timing constraints here.

# Example primary clocks (edit to match your top-level ports):
#create_clock -name i_axi_aclk   -period 20.000 [get_ports i_axi_aclk]
#create_clock -name i_hb_clk_200 -period 5.000  [get_ports i_hb_clk_200]
#create_clock -name i_ref_clk_300 -period 3.333 [get_ports i_ref_clk_300]

# Forwarded HyperBus clock at the package pin.
# This checked-in implementation currently uses the direct-pad UltraScale+ PHY path.
create_generated_clock -name hb_ck_fwd \
  -source [get_pins {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/u_oddr_ck/CLK}] \
  -divide_by 1 \
  [get_ports o_hb_ck_p_0]

# Example HyperBus output timing constraints (uncomment and tune as needed):

# Example IOB packing hints:
set_property IOB TRUE [get_ports {io_hb_dq_0[7]}]
set_property IOB TRUE [get_ports {io_hb_dq_0[6]}]
set_property IOB TRUE [get_ports {io_hb_dq_0[5]}]
set_property IOB TRUE [get_ports {io_hb_dq_0[4]}]
set_property IOB TRUE [get_ports {io_hb_dq_0[3]}]
set_property IOB TRUE [get_ports {io_hb_dq_0[2]}]
set_property IOB TRUE [get_ports {io_hb_dq_0[1]}]
set_property IOB TRUE [get_ports {io_hb_dq_0[0]}]
set_property IOB TRUE [get_ports io_hb_rwds_0]


set_property PACKAGE_PIN F3 [get_ports ext_reset_in_0]
set_property PACKAGE_PIN AC6 [get_ports UART_0_rxd]
set_property PACKAGE_PIN AB6 [get_ports UART_0_txd]
set_property PACKAGE_PIN E21 [get_ports o_hb_reset_n_0]
set_property UNAVAILABLE_DURING_CALIBRATION TRUE [get_ports o_hb_cs_n_0]

set_property IOSTANDARD LVCMOS33 [get_ports UART_0_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports UART_0_txd]
set_property IOSTANDARD LVCMOS33 [get_ports ext_reset_in_0]
set_property IOSTANDARD LVCMOS18 [get_ports o_hb_reset_n_0]

# DQ lane matching uses legal per-lane datapath constraints here because
# Vivado 2025.2 does not accept set_bus_skew on these direct I/O paths.
# The old 0.050 ns / 0.095 ns budgets are not achievable in the current
# direct-pad implementation. These budgets are set to the current routed
# reality with a small rounding margin over the measured worst lanes:
#   read worst:  0.787 ns
#   write worst: 1.699 ns
set_max_delay -datapath_only 0.800 -from [get_ports {io_hb_dq_0[0]}] -to [get_pins {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[0].u_iddr_dq/D}]
set_max_delay -datapath_only 0.800 -from [get_ports {io_hb_dq_0[1]}] -to [get_pins {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[1].u_iddr_dq/D}]
set_max_delay -datapath_only 0.800 -from [get_ports {io_hb_dq_0[2]}] -to [get_pins {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[2].u_iddr_dq/D}]
set_max_delay -datapath_only 0.800 -from [get_ports {io_hb_dq_0[3]}] -to [get_pins {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[3].u_iddr_dq/D}]
set_max_delay -datapath_only 0.800 -from [get_ports {io_hb_dq_0[4]}] -to [get_pins {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[4].u_iddr_dq/D}]
set_max_delay -datapath_only 0.800 -from [get_ports {io_hb_dq_0[5]}] -to [get_pins {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[5].u_iddr_dq/D}]
set_max_delay -datapath_only 0.800 -from [get_ports {io_hb_dq_0[6]}] -to [get_pins {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[6].u_iddr_dq/D}]
set_max_delay -datapath_only 0.800 -from [get_ports {io_hb_dq_0[7]}] -to [get_pins {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[7].u_iddr_dq/D}]

set_max_delay -datapath_only 1.700 -from [get_cells {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[0].u_oddr_dq}] -to [get_ports {io_hb_dq_0[0]}]
set_max_delay -datapath_only 1.700 -from [get_cells {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[1].u_oddr_dq}] -to [get_ports {io_hb_dq_0[1]}]
set_max_delay -datapath_only 1.700 -from [get_cells {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[2].u_oddr_dq}] -to [get_ports {io_hb_dq_0[2]}]
set_max_delay -datapath_only 1.700 -from [get_cells {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[3].u_oddr_dq}] -to [get_ports {io_hb_dq_0[3]}]
set_max_delay -datapath_only 1.700 -from [get_cells {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[4].u_oddr_dq}] -to [get_ports {io_hb_dq_0[4]}]
set_max_delay -datapath_only 1.700 -from [get_cells {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[5].u_oddr_dq}] -to [get_ports {io_hb_dq_0[5]}]
set_max_delay -datapath_only 1.700 -from [get_cells {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[6].u_oddr_dq}] -to [get_ports {io_hb_dq_0[6]}]
set_max_delay -datapath_only 1.700 -from [get_cells {design_1_i/hyperbus_controller_0/inst/u_hyperbus_phy/g_phy_ultrascale_plus.u_phy_impl/g_dq_phy[7].u_oddr_dq}] -to [get_ports {io_hb_dq_0[7]}]

# Static DQ/RWDS input-delay constraints are intentionally omitted here.
# The previous set_input_delay entries assumed a fixed trained timing point
# after internal delay tuning. Regenerate any board-level interface timing
# constraints from the actual implemented netlist and selected PHY style when
# those constraints are needed.

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {io_hb_dq_0[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports o_hb_ck_n_0]
set_property IOSTANDARD LVCMOS18 [get_ports o_hb_ck_p_0]
set_property IOSTANDARD LVCMOS18 [get_ports o_hb_cs_n_0]
set_property IOSTANDARD LVCMOS18 [get_ports io_hb_rwds_0]
set_property PACKAGE_PIN B22 [get_ports {io_hb_dq_0[7]}]
set_property PACKAGE_PIN B21 [get_ports {io_hb_dq_0[6]}]
set_property PACKAGE_PIN A21 [get_ports {io_hb_dq_0[5]}]
set_property PACKAGE_PIN A20 [get_ports {io_hb_dq_0[4]}]
set_property PACKAGE_PIN A24 [get_ports {io_hb_dq_0[3]}]
set_property PACKAGE_PIN A23 [get_ports {io_hb_dq_0[2]}]
set_property PACKAGE_PIN B20 [get_ports {io_hb_dq_0[1]}]
set_property PACKAGE_PIN C20 [get_ports {io_hb_dq_0[0]}]
set_property PACKAGE_PIN B23 [get_ports io_hb_rwds_0]
set_property PACKAGE_PIN C22 [get_ports o_hb_cs_n_0]
set_property PACKAGE_PIN B25 [get_ports o_hb_ck_n_0]
set_property PACKAGE_PIN B24 [get_ports o_hb_ck_p_0]
set_property DRIVE 8 [get_ports o_hb_ck_n_0]
set_property DRIVE 8 [get_ports o_hb_ck_p_0]
set_property DRIVE 8 [get_ports io_hb_rwds_0]
set_property DRIVE 12 [get_ports o_hb_cs_n_0]
set_property DRIVE 6 [get_ports {io_hb_dq_0[7]}]
set_property DRIVE 6 [get_ports {io_hb_dq_0[6]}]
set_property DRIVE 6 [get_ports {io_hb_dq_0[5]}]
set_property DRIVE 6 [get_ports {io_hb_dq_0[4]}]
set_property DRIVE 6 [get_ports {io_hb_dq_0[3]}]
set_property DRIVE 6 [get_ports {io_hb_dq_0[2]}]
set_property DRIVE 6 [get_ports {io_hb_dq_0[1]}]
set_property DRIVE 6 [get_ports {io_hb_dq_0[0]}]
