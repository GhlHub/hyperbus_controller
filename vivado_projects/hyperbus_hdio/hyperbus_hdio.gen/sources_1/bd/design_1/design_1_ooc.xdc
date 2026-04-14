################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name clk1 -period 5 [get_ports clk1]
create_clock -name clk2 -period 5 [get_ports clk2]
create_clock -name clk3 -period 20 [get_ports clk3]
create_clock -name clk4 -period 3.333 [get_ports clk4]
create_clock -name clk5 -period 5 [get_ports clk5]

################################################################################