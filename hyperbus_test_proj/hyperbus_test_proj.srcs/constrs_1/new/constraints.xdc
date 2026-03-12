# HyperBus controller constraints
#
# This file was re-created after the previous constraints file was missing.
# Add/adjust board-specific clocks, pin LOCs, and interface timing constraints here.

# Example primary clocks (edit to match your top-level ports):
# create_clock -name i_axi_aclk   -period 20.000 [get_ports i_axi_aclk]
# create_clock -name i_hb_clk_200 -period 5.000  [get_ports i_hb_clk_200]
# create_clock -name i_ref_clk300 -period 3.333  [get_ports i_ref_clk300]

# Example generated clock for forwarded HyperBus clock path:
# create_generated_clock -name hb_ck_p_0_gen \
#   -source [get_pins u_oddr_ck/Q] \
#   [get_ports o_hb_ck_p_0]

# Example HyperBus output timing constraints (uncomment and tune as needed):
# set_output_delay -clock [get_clocks hb_ck_p_0_gen] -max 1.85 [get_ports {io_hb_dq[*]}]
# set_output_delay -clock [get_clocks hb_ck_p_0_gen] -max 1.65 [get_ports {io_hb_rwds}]

# Example IOB packing hints:
# set_property IOB TRUE [get_ports {o_hb_ck_p_0}]
# set_property IOB TRUE [get_ports {io_hb_dq[*]}]
