# HyperBus controller constraints
#
# This file was re-created after the previous constraints file was missing.
# Add/adjust board-specific clocks, pin LOCs, and interface timing constraints here.

# Example primary clocks (edit to match your top-level ports):
create_clock -name i_axi_aclk   -period 20.000 [get_ports i_axi_aclk]
create_clock -name i_hb_clk_200 -period 5.000  [get_ports i_hb_clk_200]
create_clock -name i_ref_clk300 -period 3.333  [get_ports i_ref_clk300]

# Example generated clock for forwarded HyperBus clock path:
create_generated_clock -name hb_ck_p_0_gen -source [get_pins u_oddr_ck/Q] [get_ports o_hb_ck_p_0]

# Example HyperBus output timing constraints (uncomment and tune as needed):
set_output_delay -clock [get_clocks hb_ck_p_0_gen] -max 1.85 [get_ports {io_hb_dq[*]}]
set_output_delay -clock [get_clocks hb_ck_p_0_gen] -max 1.65 [get_ports {io_hb_rwds}]

# Example IOB packing hints:
set_property IOB TRUE [get_ports {o_hb_ck_p_0}]
set_property IOB TRUE [get_ports {io_hb_dq[*]}]




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
