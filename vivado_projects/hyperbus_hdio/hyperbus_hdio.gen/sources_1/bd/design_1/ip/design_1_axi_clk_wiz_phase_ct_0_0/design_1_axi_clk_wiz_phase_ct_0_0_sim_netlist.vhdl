-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Sun Apr 12 13:01:00 2026
-- Host        : YouBing running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /raid/work/ghl_ip/hyperbus_ai3/vivado_projects/hyperbus_hdio/hyperbus_hdio.gen/sources_1/bd/design_1/ip/design_1_axi_clk_wiz_phase_ct_0_0/design_1_axi_clk_wiz_phase_ct_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_clk_wiz_phase_ct_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcsu35p-sbvb625-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_clk_wiz_phase_ct_0_0_axi_clk_wiz_phase_ctrl is
  port (
    s_axi_bvalid_reg_0 : out STD_LOGIC;
    phase_target_onehot : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    psen : out STD_LOGIC;
    s_axi_rvalid_reg_0 : out STD_LOGIC;
    irq : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    psincdec : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    psdone : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    clk_wiz_locked : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_clk_wiz_phase_ct_0_0_axi_clk_wiz_phase_ctrl : entity is "axi_clk_wiz_phase_ctrl";
end design_1_axi_clk_wiz_phase_ct_0_0_axi_clk_wiz_phase_ctrl;

architecture STRUCTURE of design_1_axi_clk_wiz_phase_ct_0_0_axi_clk_wiz_phase_ctrl is
  signal \FSM_onehot_phase_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_phase_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_phase_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_phase_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_phase_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_phase_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_phase_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_phase_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_phase_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_phase_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_phase_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_phase_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_phase_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_phase_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_phase_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_phase_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal active_target_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \active_target_sel[2]_i_10_n_0\ : STD_LOGIC;
  signal \active_target_sel[2]_i_11_n_0\ : STD_LOGIC;
  signal \active_target_sel[2]_i_1_n_0\ : STD_LOGIC;
  signal \active_target_sel[2]_i_2_n_0\ : STD_LOGIC;
  signal \active_target_sel[2]_i_3_n_0\ : STD_LOGIC;
  signal \active_target_sel[2]_i_4_n_0\ : STD_LOGIC;
  signal \active_target_sel[2]_i_5_n_0\ : STD_LOGIC;
  signal \active_target_sel[2]_i_6_n_0\ : STD_LOGIC;
  signal \active_target_sel[2]_i_7_n_0\ : STD_LOGIC;
  signal \active_target_sel[2]_i_8_n_0\ : STD_LOGIC;
  signal \active_target_sel[2]_i_9_n_0\ : STD_LOGIC;
  signal \araddr_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \araddr_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \araddr_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \araddr_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal awaddr_pending : STD_LOGIC;
  signal awaddr_pending_i_1_n_0 : STD_LOGIC;
  signal awaddr_reg : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal awaddr_reg0 : STD_LOGIC;
  signal \awaddr_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal busy_reg_i_1_n_0 : STD_LOGIC;
  signal busy_reg_i_2_n_0 : STD_LOGIC;
  signal busy_reg_i_3_n_0 : STD_LOGIC;
  signal busy_reg_i_4_n_0 : STD_LOGIC;
  signal busy_reg_reg_n_0 : STD_LOGIC;
  signal current_value : STD_LOGIC_VECTOR ( 16 to 16 );
  signal done_sticky_i_1_n_0 : STD_LOGIC;
  signal done_sticky_i_2_n_0 : STD_LOGIC;
  signal done_sticky_i_3_n_0 : STD_LOGIC;
  signal done_sticky_reg_n_0 : STD_LOGIC;
  signal error_sticky : STD_LOGIC;
  signal error_sticky_i_1_n_0 : STD_LOGIC;
  signal error_sticky_i_2_n_0 : STD_LOGIC;
  signal error_sticky_i_3_n_0 : STD_LOGIC;
  signal error_sticky_i_4_n_0 : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal irq_enable12_out : STD_LOGIC;
  signal irq_enable_i_1_n_0 : STD_LOGIC;
  signal last_applied_steps_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \last_applied_steps_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \last_applied_steps_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \last_applied_steps_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal p_0_in0_0 : STD_LOGIC;
  signal p_0_in13_in : STD_LOGIC;
  signal p_0_in14_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal \phase_target_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase_target_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase_target_sel[2]_i_2_n_0\ : STD_LOGIC;
  signal \phase_target_sel[2]_i_3_n_0\ : STD_LOGIC;
  signal psdone_d1 : STD_LOGIC;
  signal \^psincdec\ : STD_LOGIC;
  signal psincdec_i_1_n_0 : STD_LOGIC;
  signal psincdec_i_2_n_0 : STD_LOGIC;
  signal psincdec_i_3_n_0 : STD_LOGIC;
  signal psincdec_i_4_n_0 : STD_LOGIC;
  signal s_axi_arready0 : STD_LOGIC;
  signal s_axi_awready0 : STD_LOGIC;
  signal s_axi_awready_i_1_n_0 : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_reg_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal s_axi_rresp0 : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_reg_0\ : STD_LOGIC;
  signal s_axi_wready0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal start_pulse : STD_LOGIC;
  signal start_pulse_i_1_n_0 : STD_LOGIC;
  signal \step_count_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \step_count_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \step_count_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \step_count_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal steps_remaining : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal steps_remaining0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \steps_remaining0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \steps_remaining0_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal steps_remaining1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \steps_remaining[0]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[10]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[11]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[12]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[13]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[14]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[15]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[16]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[16]_i_3_n_0\ : STD_LOGIC;
  signal \steps_remaining[16]_i_6_n_0\ : STD_LOGIC;
  signal \steps_remaining[16]_i_9_n_0\ : STD_LOGIC;
  signal \steps_remaining[17]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[18]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[19]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[1]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[20]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[21]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[22]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[23]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[24]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[24]_i_3_n_0\ : STD_LOGIC;
  signal \steps_remaining[24]_i_5_n_0\ : STD_LOGIC;
  signal \steps_remaining[24]_i_6_n_0\ : STD_LOGIC;
  signal \steps_remaining[24]_i_8_n_0\ : STD_LOGIC;
  signal \steps_remaining[24]_i_9_n_0\ : STD_LOGIC;
  signal \steps_remaining[25]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[26]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[27]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[28]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[29]_i_11_n_0\ : STD_LOGIC;
  signal \steps_remaining[29]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[29]_i_2_n_0\ : STD_LOGIC;
  signal \steps_remaining[29]_i_4_n_0\ : STD_LOGIC;
  signal \steps_remaining[29]_i_5_n_0\ : STD_LOGIC;
  signal \steps_remaining[29]_i_6_n_0\ : STD_LOGIC;
  signal \steps_remaining[29]_i_7_n_0\ : STD_LOGIC;
  signal \steps_remaining[29]_i_8_n_0\ : STD_LOGIC;
  signal \steps_remaining[29]_i_9_n_0\ : STD_LOGIC;
  signal \steps_remaining[2]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[30]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[30]_i_2_n_0\ : STD_LOGIC;
  signal \steps_remaining[31]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[31]_i_2_n_0\ : STD_LOGIC;
  signal \steps_remaining[31]_i_3_n_0\ : STD_LOGIC;
  signal \steps_remaining[31]_i_4_n_0\ : STD_LOGIC;
  signal \steps_remaining[31]_i_5_n_0\ : STD_LOGIC;
  signal \steps_remaining[3]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[4]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[5]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[6]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[7]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[8]_i_11_n_0\ : STD_LOGIC;
  signal \steps_remaining[8]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining[8]_i_5_n_0\ : STD_LOGIC;
  signal \steps_remaining[8]_i_8_n_0\ : STD_LOGIC;
  signal \steps_remaining[9]_i_1_n_0\ : STD_LOGIC;
  signal \steps_remaining_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \steps_remaining_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \steps_remaining_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \steps_remaining_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \steps_remaining_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \steps_remaining_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \steps_remaining_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \steps_remaining_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \steps_remaining_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \steps_remaining_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \steps_remaining_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \steps_remaining_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \steps_remaining_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \steps_remaining_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \steps_remaining_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \steps_remaining_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \steps_remaining_reg[29]_i_3_n_2\ : STD_LOGIC;
  signal \steps_remaining_reg[29]_i_3_n_3\ : STD_LOGIC;
  signal \steps_remaining_reg[29]_i_3_n_4\ : STD_LOGIC;
  signal \steps_remaining_reg[29]_i_3_n_5\ : STD_LOGIC;
  signal \steps_remaining_reg[29]_i_3_n_6\ : STD_LOGIC;
  signal \steps_remaining_reg[29]_i_3_n_7\ : STD_LOGIC;
  signal \steps_remaining_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \steps_remaining_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \steps_remaining_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \steps_remaining_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \steps_remaining_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \steps_remaining_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \steps_remaining_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \steps_remaining_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal wdata_pending_i_1_n_0 : STD_LOGIC;
  signal wdata_pending_i_2_n_0 : STD_LOGIC;
  signal wdata_pending_reg_n_0 : STD_LOGIC;
  signal wdata_reg0 : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \wstrb_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \wstrb_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \NLW_steps_remaining0_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_steps_remaining0_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_steps_remaining_reg[29]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_steps_remaining_reg[29]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_phase_state[1]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_phase_state[2]_i_2\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_phase_state_reg[0]\ : label is "STATE_WAIT_DONE:100,STATE_IDLE:001,STATE_ASSERT_PS:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_phase_state_reg[1]\ : label is "STATE_WAIT_DONE:100,STATE_IDLE:001,STATE_ASSERT_PS:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_phase_state_reg[2]\ : label is "STATE_WAIT_DONE:100,STATE_IDLE:001,STATE_ASSERT_PS:010";
  attribute SOFT_HLUTNM of \active_target_sel[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of busy_reg_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of done_sticky_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of done_sticky_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of error_sticky_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of error_sticky_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \last_applied_steps_reg[31]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \phase_target_onehot[0]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \phase_target_onehot[1]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \phase_target_onehot[2]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \phase_target_onehot[3]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \phase_target_onehot[4]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \phase_target_onehot[5]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \phase_target_onehot[6]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \phase_target_sel[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \phase_target_sel[2]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \phase_target_sel[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of psincdec_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata[16]_INST_0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_INST_0_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rdata[8]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_axi_rdata[9]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of s_axi_wready_i_1 : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \steps_remaining0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \steps_remaining0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \steps_remaining0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \steps_remaining0_inferred__0/i__carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \steps_remaining[30]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \steps_remaining[31]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \steps_remaining[31]_i_5\ : label is "soft_lutpair11";
  attribute ADDER_THRESHOLD of \steps_remaining_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \steps_remaining_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \steps_remaining_reg[29]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \steps_remaining_reg[8]_i_2\ : label is 35;
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  psincdec <= \^psincdec\;
  s_axi_bvalid_reg_0 <= \^s_axi_bvalid_reg_0\;
  s_axi_rvalid_reg_0 <= \^s_axi_rvalid_reg_0\;
\FSM_onehot_phase_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => psdone,
      I1 => psdone_d1,
      I2 => \FSM_onehot_phase_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_phase_state[1]_i_5_n_0\,
      I4 => \FSM_onehot_phase_state[1]_i_4_n_0\,
      I5 => \FSM_onehot_phase_state[1]_i_3_n_0\,
      O => \FSM_onehot_phase_state[0]_i_1_n_0\
    );
\FSM_onehot_phase_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDFF0000"
    )
        port map (
      I0 => \FSM_onehot_phase_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_phase_state[1]_i_3_n_0\,
      I2 => \FSM_onehot_phase_state[1]_i_4_n_0\,
      I3 => \FSM_onehot_phase_state[1]_i_5_n_0\,
      I4 => \FSM_onehot_phase_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_phase_state_reg_n_0_[0]\,
      O => \FSM_onehot_phase_state[1]_i_1_n_0\
    );
\FSM_onehot_phase_state[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => steps_remaining(3),
      I1 => steps_remaining(9),
      I2 => steps_remaining(11),
      I3 => steps_remaining(13),
      O => \FSM_onehot_phase_state[1]_i_10_n_0\
    );
\FSM_onehot_phase_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => psdone,
      I1 => psdone_d1,
      O => \FSM_onehot_phase_state[1]_i_2_n_0\
    );
\FSM_onehot_phase_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => steps_remaining(30),
      I1 => steps_remaining(20),
      I2 => steps_remaining(14),
      I3 => steps_remaining(18),
      I4 => \FSM_onehot_phase_state[1]_i_6_n_0\,
      O => \FSM_onehot_phase_state[1]_i_3_n_0\
    );
\FSM_onehot_phase_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => steps_remaining(15),
      I1 => steps_remaining(22),
      I2 => steps_remaining(10),
      I3 => steps_remaining(4),
      I4 => \FSM_onehot_phase_state[1]_i_7_n_0\,
      O => \FSM_onehot_phase_state[1]_i_4_n_0\
    );
\FSM_onehot_phase_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \FSM_onehot_phase_state[1]_i_8_n_0\,
      I1 => \FSM_onehot_phase_state[1]_i_9_n_0\,
      I2 => \FSM_onehot_phase_state[1]_i_10_n_0\,
      I3 => steps_remaining(17),
      I4 => steps_remaining(19),
      I5 => steps_remaining(23),
      O => \FSM_onehot_phase_state[1]_i_5_n_0\
    );
\FSM_onehot_phase_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => steps_remaining(31),
      I1 => steps_remaining(24),
      I2 => steps_remaining(6),
      I3 => steps_remaining(12),
      O => \FSM_onehot_phase_state[1]_i_6_n_0\
    );
\FSM_onehot_phase_state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => steps_remaining(16),
      I1 => steps_remaining(7),
      I2 => steps_remaining(2),
      I3 => steps_remaining(8),
      O => \FSM_onehot_phase_state[1]_i_7_n_0\
    );
\FSM_onehot_phase_state[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => steps_remaining(21),
      I1 => steps_remaining(25),
      I2 => steps_remaining(26),
      I3 => steps_remaining(5),
      O => \FSM_onehot_phase_state[1]_i_8_n_0\
    );
\FSM_onehot_phase_state[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => steps_remaining(27),
      I1 => steps_remaining(28),
      I2 => steps_remaining(29),
      I3 => steps_remaining(1),
      O => \FSM_onehot_phase_state[1]_i_9_n_0\
    );
\FSM_onehot_phase_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE000FFFF"
    )
        port map (
      I0 => \FSM_onehot_phase_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_phase_state_reg_n_0_[2]\,
      I2 => psincdec_i_2_n_0,
      I3 => \active_target_sel[2]_i_1_n_0\,
      I4 => \FSM_onehot_phase_state[2]_i_2_n_0\,
      I5 => \FSM_onehot_phase_state_reg_n_0_[1]\,
      O => \FSM_onehot_phase_state[2]_i_1_n_0\
    );
\FSM_onehot_phase_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \FSM_onehot_phase_state_reg_n_0_[2]\,
      I1 => psdone_d1,
      I2 => psdone,
      O => \FSM_onehot_phase_state[2]_i_2_n_0\
    );
\FSM_onehot_phase_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_phase_state[2]_i_1_n_0\,
      D => \FSM_onehot_phase_state[0]_i_1_n_0\,
      Q => \FSM_onehot_phase_state_reg_n_0_[0]\,
      S => s_axi_awready_i_1_n_0
    );
\FSM_onehot_phase_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_phase_state[2]_i_1_n_0\,
      D => \FSM_onehot_phase_state[1]_i_1_n_0\,
      Q => \FSM_onehot_phase_state_reg_n_0_[1]\,
      R => s_axi_awready_i_1_n_0
    );
\FSM_onehot_phase_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_phase_state[2]_i_1_n_0\,
      D => \FSM_onehot_phase_state_reg_n_0_[1]\,
      Q => \FSM_onehot_phase_state_reg_n_0_[2]\,
      R => s_axi_awready_i_1_n_0
    );
\active_target_sel[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55545555"
    )
        port map (
      I0 => \active_target_sel[2]_i_2_n_0\,
      I1 => \active_target_sel[2]_i_3_n_0\,
      I2 => \active_target_sel[2]_i_4_n_0\,
      I3 => \active_target_sel[2]_i_5_n_0\,
      I4 => \active_target_sel[2]_i_6_n_0\,
      O => \active_target_sel[2]_i_1_n_0\
    );
\active_target_sel[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(9),
      I1 => sel0(8),
      I2 => sel0(11),
      I3 => sel0(10),
      O => \active_target_sel[2]_i_10_n_0\
    );
\active_target_sel[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(4),
      I2 => sel0(7),
      I3 => sel0(6),
      O => \active_target_sel[2]_i_11_n_0\
    );
\active_target_sel[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBBBBBFFFFFFFF"
    )
        port map (
      I0 => busy_reg_reg_n_0,
      I1 => clk_wiz_locked,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => start_pulse,
      O => \active_target_sel[2]_i_2_n_0\
    );
\active_target_sel[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => sel0(30),
      I1 => sel0(31),
      I2 => sel0(12),
      I3 => sel0(13),
      I4 => \active_target_sel[2]_i_7_n_0\,
      O => \active_target_sel[2]_i_3_n_0\
    );
\active_target_sel[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(25),
      I1 => sel0(24),
      I2 => sel0(15),
      I3 => sel0(14),
      O => \active_target_sel[2]_i_4_n_0\
    );
\active_target_sel[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(27),
      I1 => sel0(26),
      I2 => sel0(1),
      I3 => sel0(0),
      O => \active_target_sel[2]_i_5_n_0\
    );
\active_target_sel[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \active_target_sel[2]_i_8_n_0\,
      I1 => \active_target_sel[2]_i_9_n_0\,
      I2 => \active_target_sel[2]_i_10_n_0\,
      I3 => \active_target_sel[2]_i_11_n_0\,
      O => \active_target_sel[2]_i_6_n_0\
    );
\active_target_sel[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(29),
      I1 => sel0(28),
      I2 => sel0(3),
      I3 => sel0(2),
      O => \active_target_sel[2]_i_7_n_0\
    );
\active_target_sel[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(23),
      I1 => sel0(22),
      I2 => sel0(17),
      I3 => sel0(16),
      O => \active_target_sel[2]_i_8_n_0\
    );
\active_target_sel[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sel0(19),
      I1 => sel0(18),
      I2 => sel0(21),
      I3 => sel0(20),
      O => \active_target_sel[2]_i_9_n_0\
    );
\active_target_sel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => \^q\(0),
      Q => active_target_sel(0),
      R => s_axi_awready_i_1_n_0
    );
\active_target_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => \^q\(1),
      Q => active_target_sel(1),
      R => s_axi_awready_i_1_n_0
    );
\active_target_sel_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => \^q\(2),
      Q => active_target_sel(2),
      R => s_axi_awready_i_1_n_0
    );
\araddr_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_rvalid_reg_0\,
      O => s_axi_rresp0
    );
\araddr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_rresp0,
      D => s_axi_araddr(0),
      Q => \araddr_reg_reg_n_0_[2]\,
      R => s_axi_awready_i_1_n_0
    );
\araddr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_rresp0,
      D => s_axi_araddr(1),
      Q => \araddr_reg_reg_n_0_[3]\,
      R => s_axi_awready_i_1_n_0
    );
\araddr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_rresp0,
      D => s_axi_araddr(2),
      Q => \araddr_reg_reg_n_0_[4]\,
      R => s_axi_awready_i_1_n_0
    );
\araddr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_rresp0,
      D => s_axi_araddr(3),
      Q => \araddr_reg_reg_n_0_[5]\,
      R => s_axi_awready_i_1_n_0
    );
awaddr_pending_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => awaddr_pending,
      O => awaddr_pending_i_1_n_0
    );
awaddr_pending_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => awaddr_pending_i_1_n_0,
      Q => awaddr_pending,
      R => wdata_pending_i_1_n_0
    );
\awaddr_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => awaddr_pending,
      O => awaddr_reg0
    );
\awaddr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => awaddr_reg0,
      D => s_axi_awaddr(0),
      Q => awaddr_reg(2),
      R => s_axi_awready_i_1_n_0
    );
\awaddr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => awaddr_reg0,
      D => s_axi_awaddr(1),
      Q => awaddr_reg(3),
      R => s_axi_awready_i_1_n_0
    );
\awaddr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => awaddr_reg0,
      D => s_axi_awaddr(2),
      Q => p_0_in0,
      R => s_axi_awready_i_1_n_0
    );
\awaddr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => awaddr_reg0,
      D => s_axi_awaddr(3),
      Q => \awaddr_reg_reg_n_0_[5]\,
      R => s_axi_awready_i_1_n_0
    );
busy_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8FFA8A8A800"
    )
        port map (
      I0 => start_pulse,
      I1 => \FSM_onehot_phase_state[1]_i_1_n_0\,
      I2 => \FSM_onehot_phase_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_phase_state[0]_i_1_n_0\,
      I4 => busy_reg_i_2_n_0,
      I5 => busy_reg_reg_n_0,
      O => busy_reg_i_1_n_0
    );
busy_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000045454505"
    )
        port map (
      I0 => \active_target_sel[2]_i_2_n_0\,
      I1 => busy_reg_i_3_n_0,
      I2 => \active_target_sel[2]_i_6_n_0\,
      I3 => psincdec_i_3_n_0,
      I4 => \last_applied_steps_reg[31]_i_3_n_0\,
      I5 => done_sticky_i_2_n_0,
      O => busy_reg_i_2_n_0
    );
busy_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \active_target_sel[2]_i_7_n_0\,
      I1 => busy_reg_i_4_n_0,
      I2 => sel0(31),
      I3 => sel0(30),
      I4 => \active_target_sel[2]_i_4_n_0\,
      I5 => \active_target_sel[2]_i_5_n_0\,
      O => busy_reg_i_3_n_0
    );
busy_reg_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(12),
      I1 => sel0(13),
      O => busy_reg_i_4_n_0
    );
busy_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => busy_reg_i_1_n_0,
      Q => busy_reg_reg_n_0,
      R => s_axi_awready_i_1_n_0
    );
done_sticky_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEFFFFF2220"
    )
        port map (
      I0 => \last_applied_steps_reg[31]_i_2_n_0\,
      I1 => done_sticky_i_2_n_0,
      I2 => \active_target_sel[2]_i_1_n_0\,
      I3 => done_sticky_i_3_n_0,
      I4 => \FSM_onehot_phase_state[0]_i_1_n_0\,
      I5 => done_sticky_reg_n_0,
      O => done_sticky_i_1_n_0
    );
done_sticky_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \FSM_onehot_phase_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_phase_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_phase_state_reg_n_0_[2]\,
      O => done_sticky_i_2_n_0
    );
done_sticky_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => p_0_in14_in,
      I1 => awaddr_reg(2),
      I2 => awaddr_reg(3),
      I3 => \wstrb_reg_reg_n_0_[0]\,
      I4 => \phase_target_sel[2]_i_3_n_0\,
      O => done_sticky_i_3_n_0
    );
done_sticky_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => done_sticky_i_1_n_0,
      Q => done_sticky_reg_n_0,
      R => s_axi_awready_i_1_n_0
    );
error_sticky_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBBBFFF00000"
    )
        port map (
      I0 => error_sticky_i_2_n_0,
      I1 => p_0_in13_in,
      I2 => error_sticky_i_3_n_0,
      I3 => error_sticky_i_4_n_0,
      I4 => start_pulse,
      I5 => error_sticky,
      O => error_sticky_i_1_n_0
    );
error_sticky_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \phase_target_sel[2]_i_3_n_0\,
      I1 => \wstrb_reg_reg_n_0_[0]\,
      I2 => awaddr_reg(3),
      I3 => awaddr_reg(2),
      O => error_sticky_i_2_n_0
    );
error_sticky_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF80FF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => clk_wiz_locked,
      I4 => busy_reg_reg_n_0,
      O => error_sticky_i_3_n_0
    );
error_sticky_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \active_target_sel[2]_i_6_n_0\,
      I1 => \active_target_sel[2]_i_5_n_0\,
      I2 => \active_target_sel[2]_i_4_n_0\,
      I3 => \active_target_sel[2]_i_3_n_0\,
      O => error_sticky_i_4_n_0
    );
error_sticky_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => error_sticky_i_1_n_0,
      Q => error_sticky,
      R => s_axi_awready_i_1_n_0
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(8),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(24),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(16),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(31),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(7),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(15),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(30),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(23),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(14),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(6),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(29),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(22),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(13),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(5),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(28),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(21),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(12),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(4),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(27),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(20),
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(11),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(3),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(26),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(19),
      O => \i__carry_i_6__2_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(10),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(2),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(25),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_7__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(18),
      O => \i__carry_i_7__2_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(9),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(1),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steps_remaining(17),
      O => \i__carry_i_8__1_n_0\
    );
irq_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => current_value(16),
      I1 => done_sticky_reg_n_0,
      I2 => error_sticky,
      O => irq
    );
irq_enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => \wdata_reg_reg_n_0_[16]\,
      I1 => p_0_in0_0,
      I2 => awaddr_reg(2),
      I3 => awaddr_reg(3),
      I4 => \phase_target_sel[2]_i_3_n_0\,
      I5 => current_value(16),
      O => irq_enable_i_1_n_0
    );
irq_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irq_enable_i_1_n_0,
      Q => current_value(16),
      R => s_axi_awready_i_1_n_0
    );
\last_applied_steps_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \last_applied_steps_reg[31]_i_2_n_0\,
      I1 => s_axi_aresetn,
      O => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \active_target_sel[2]_i_6_n_0\,
      I1 => \last_applied_steps_reg[31]_i_3_n_0\,
      I2 => psincdec_i_3_n_0,
      I3 => \active_target_sel[2]_i_2_n_0\,
      O => \last_applied_steps_reg[31]_i_2_n_0\
    );
\last_applied_steps_reg[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \active_target_sel[2]_i_5_n_0\,
      I1 => sel0(28),
      I2 => sel0(29),
      I3 => sel0(12),
      I4 => sel0(13),
      O => \last_applied_steps_reg[31]_i_3_n_0\
    );
\last_applied_steps_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(0),
      Q => last_applied_steps_reg(0),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(10),
      Q => last_applied_steps_reg(10),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(11),
      Q => last_applied_steps_reg(11),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(12),
      Q => last_applied_steps_reg(12),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(13),
      Q => last_applied_steps_reg(13),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(14),
      Q => last_applied_steps_reg(14),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(15),
      Q => last_applied_steps_reg(15),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(16),
      Q => last_applied_steps_reg(16),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(17),
      Q => last_applied_steps_reg(17),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(18),
      Q => last_applied_steps_reg(18),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(19),
      Q => last_applied_steps_reg(19),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(1),
      Q => last_applied_steps_reg(1),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(20),
      Q => last_applied_steps_reg(20),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(21),
      Q => last_applied_steps_reg(21),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(22),
      Q => last_applied_steps_reg(22),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(23),
      Q => last_applied_steps_reg(23),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(24),
      Q => last_applied_steps_reg(24),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(25),
      Q => last_applied_steps_reg(25),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(26),
      Q => last_applied_steps_reg(26),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(27),
      Q => last_applied_steps_reg(27),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(28),
      Q => last_applied_steps_reg(28),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(29),
      Q => last_applied_steps_reg(29),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(2),
      Q => last_applied_steps_reg(2),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(30),
      Q => last_applied_steps_reg(30),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(31),
      Q => last_applied_steps_reg(31),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(3),
      Q => last_applied_steps_reg(3),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(4),
      Q => last_applied_steps_reg(4),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(5),
      Q => last_applied_steps_reg(5),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(6),
      Q => last_applied_steps_reg(6),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(7),
      Q => last_applied_steps_reg(7),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(8),
      Q => last_applied_steps_reg(8),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\last_applied_steps_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \active_target_sel[2]_i_1_n_0\,
      D => sel0(9),
      Q => last_applied_steps_reg(9),
      R => \last_applied_steps_reg[31]_i_1_n_0\
    );
\phase_target_onehot[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => phase_target_onehot(0)
    );
\phase_target_onehot[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => phase_target_onehot(1)
    );
\phase_target_onehot[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => phase_target_onehot(2)
    );
\phase_target_onehot[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => phase_target_onehot(3)
    );
\phase_target_onehot[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => phase_target_onehot(4)
    );
\phase_target_onehot[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => phase_target_onehot(5)
    );
\phase_target_onehot[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => phase_target_onehot(6)
    );
\phase_target_sel[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wdata_reg_reg_n_0_[8]\,
      I1 => p_2_in,
      I2 => \^q\(0),
      O => \phase_target_sel[0]_i_1_n_0\
    );
\phase_target_sel[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wdata_reg_reg_n_0_[9]\,
      I1 => p_2_in,
      I2 => \^q\(1),
      O => \phase_target_sel[1]_i_1_n_0\
    );
\phase_target_sel[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => awaddr_reg(2),
      I1 => awaddr_reg(3),
      I2 => \phase_target_sel[2]_i_3_n_0\,
      O => irq_enable12_out
    );
\phase_target_sel[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wdata_reg_reg_n_0_[10]\,
      I1 => p_2_in,
      I2 => \^q\(2),
      O => \phase_target_sel[2]_i_2_n_0\
    );
\phase_target_sel[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => \awaddr_reg_reg_n_0_[5]\,
      I1 => p_0_in0,
      I2 => \^s_axi_bvalid_reg_0\,
      I3 => wdata_pending_reg_n_0,
      I4 => awaddr_pending,
      O => \phase_target_sel[2]_i_3_n_0\
    );
\phase_target_sel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => irq_enable12_out,
      D => \phase_target_sel[0]_i_1_n_0\,
      Q => \^q\(0),
      R => s_axi_awready_i_1_n_0
    );
\phase_target_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => irq_enable12_out,
      D => \phase_target_sel[1]_i_1_n_0\,
      Q => \^q\(1),
      R => s_axi_awready_i_1_n_0
    );
\phase_target_sel_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => irq_enable12_out,
      D => \phase_target_sel[2]_i_2_n_0\,
      Q => \^q\(2),
      R => s_axi_awready_i_1_n_0
    );
psdone_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => psdone,
      Q => psdone_d1,
      R => s_axi_awready_i_1_n_0
    );
psen_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_phase_state_reg_n_0_[1]\,
      Q => psen,
      R => s_axi_awready_i_1_n_0
    );
psincdec_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
        port map (
      I0 => sel0(31),
      I1 => psincdec_i_2_n_0,
      I2 => \active_target_sel[2]_i_1_n_0\,
      I3 => \^psincdec\,
      O => psincdec_i_1_n_0
    );
psincdec_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => psincdec_i_3_n_0,
      I1 => \active_target_sel[2]_i_5_n_0\,
      I2 => psincdec_i_4_n_0,
      I3 => sel0(12),
      I4 => sel0(13),
      I5 => \active_target_sel[2]_i_6_n_0\,
      O => psincdec_i_2_n_0
    );
psincdec_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \active_target_sel[2]_i_4_n_0\,
      I1 => sel0(31),
      I2 => sel0(30),
      I3 => sel0(2),
      I4 => sel0(3),
      O => psincdec_i_3_n_0
    );
psincdec_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(28),
      I1 => sel0(29),
      O => psincdec_i_4_n_0
    );
psincdec_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => psincdec_i_1_n_0,
      Q => \^psincdec\,
      S => s_axi_awready_i_1_n_0
    );
s_axi_arready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      O => s_axi_arready0
    );
s_axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_arready0,
      Q => s_axi_arready,
      R => s_axi_awready_i_1_n_0
    );
s_axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => s_axi_awready_i_1_n_0
    );
s_axi_awready_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => awaddr_pending,
      O => s_axi_awready0
    );
s_axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_awready0,
      Q => s_axi_awready,
      R => s_axi_awready_i_1_n_0
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C00000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => wdata_pending_reg_n_0,
      I2 => awaddr_pending,
      I3 => \^s_axi_bvalid_reg_0\,
      I4 => s_axi_aresetn,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid_reg_0\,
      R => '0'
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001F0010"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => \araddr_reg_reg_n_0_[3]\,
      I2 => \araddr_reg_reg_n_0_[4]\,
      I3 => \araddr_reg_reg_n_0_[5]\,
      I4 => \s_axi_rdata[0]_INST_0_i_1_n_0\,
      O => s_axi_rdata(0)
    );
\s_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => last_applied_steps_reg(0),
      I1 => sel0(0),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => busy_reg_reg_n_0,
      I4 => \araddr_reg_reg_n_0_[2]\,
      O => \s_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \s_axi_rdata[10]_INST_0_i_1_n_0\,
      I1 => \araddr_reg_reg_n_0_[5]\,
      I2 => \araddr_reg_reg_n_0_[4]\,
      O => s_axi_rdata(10)
    );
\s_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => last_applied_steps_reg(10),
      I1 => sel0(10),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => active_target_sel(2),
      I4 => \araddr_reg_reg_n_0_[2]\,
      I5 => \^q\(2),
      O => \s_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => sel0(11),
      I1 => \araddr_reg_reg_n_0_[2]\,
      I2 => last_applied_steps_reg(11),
      I3 => \araddr_reg_reg_n_0_[3]\,
      I4 => \araddr_reg_reg_n_0_[4]\,
      I5 => \araddr_reg_reg_n_0_[5]\,
      O => s_axi_rdata(11)
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => sel0(12),
      I1 => \araddr_reg_reg_n_0_[2]\,
      I2 => last_applied_steps_reg(12),
      I3 => \araddr_reg_reg_n_0_[3]\,
      I4 => \araddr_reg_reg_n_0_[4]\,
      I5 => \araddr_reg_reg_n_0_[5]\,
      O => s_axi_rdata(12)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => sel0(13),
      I1 => \araddr_reg_reg_n_0_[2]\,
      I2 => last_applied_steps_reg(13),
      I3 => \araddr_reg_reg_n_0_[3]\,
      I4 => \araddr_reg_reg_n_0_[4]\,
      I5 => \araddr_reg_reg_n_0_[5]\,
      O => s_axi_rdata(13)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => sel0(14),
      I1 => \araddr_reg_reg_n_0_[2]\,
      I2 => last_applied_steps_reg(14),
      I3 => \araddr_reg_reg_n_0_[3]\,
      I4 => \araddr_reg_reg_n_0_[4]\,
      I5 => \araddr_reg_reg_n_0_[5]\,
      O => s_axi_rdata(14)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => sel0(15),
      I1 => \araddr_reg_reg_n_0_[2]\,
      I2 => last_applied_steps_reg(15),
      I3 => \araddr_reg_reg_n_0_[3]\,
      I4 => \araddr_reg_reg_n_0_[4]\,
      I5 => \araddr_reg_reg_n_0_[5]\,
      O => s_axi_rdata(15)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBBBBBAABB"
    )
        port map (
      I0 => \s_axi_rdata[16]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[16]_INST_0_i_2_n_0\,
      I2 => last_applied_steps_reg(16),
      I3 => \araddr_reg_reg_n_0_[3]\,
      I4 => sel0(16),
      I5 => \araddr_reg_reg_n_0_[2]\,
      O => s_axi_rdata(16)
    );
\s_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[3]\,
      I1 => \araddr_reg_reg_n_0_[4]\,
      I2 => \araddr_reg_reg_n_0_[5]\,
      I3 => \araddr_reg_reg_n_0_[2]\,
      O => \s_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s_axi_rdata[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEFEFEEEFEF"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[5]\,
      I1 => \araddr_reg_reg_n_0_[4]\,
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => \araddr_reg_reg_n_0_[2]\,
      I4 => current_value(16),
      I5 => steps_remaining(0),
      O => \s_axi_rdata[16]_INST_0_i_2_n_0\
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => steps_remaining(1),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(17),
      I4 => last_applied_steps_reg(17),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(17)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => steps_remaining(2),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(18),
      I4 => last_applied_steps_reg(18),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(18)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => steps_remaining(3),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(19),
      I4 => last_applied_steps_reg(19),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(19)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001F0010"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => \araddr_reg_reg_n_0_[3]\,
      I2 => \araddr_reg_reg_n_0_[4]\,
      I3 => \araddr_reg_reg_n_0_[5]\,
      I4 => \s_axi_rdata[1]_INST_0_i_1_n_0\,
      O => s_axi_rdata(1)
    );
\s_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => last_applied_steps_reg(1),
      I1 => sel0(1),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => done_sticky_reg_n_0,
      I4 => \araddr_reg_reg_n_0_[2]\,
      O => \s_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => steps_remaining(4),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(20),
      I4 => last_applied_steps_reg(20),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(20)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => steps_remaining(5),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(21),
      I4 => last_applied_steps_reg(21),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(21)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => steps_remaining(6),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(22),
      I4 => last_applied_steps_reg(22),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(22)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => steps_remaining(7),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(23),
      I4 => last_applied_steps_reg(23),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(23)
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => steps_remaining(8),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(24),
      I4 => last_applied_steps_reg(24),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(24)
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => steps_remaining(9),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(25),
      I4 => last_applied_steps_reg(25),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(25)
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => steps_remaining(10),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(26),
      I4 => last_applied_steps_reg(26),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(26)
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => steps_remaining(11),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(27),
      I4 => last_applied_steps_reg(27),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(27)
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => steps_remaining(12),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(28),
      I4 => last_applied_steps_reg(28),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(28)
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => steps_remaining(13),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(29),
      I4 => last_applied_steps_reg(29),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(29)
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001F0010"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => \araddr_reg_reg_n_0_[3]\,
      I2 => \araddr_reg_reg_n_0_[4]\,
      I3 => \araddr_reg_reg_n_0_[5]\,
      I4 => \s_axi_rdata[2]_INST_0_i_1_n_0\,
      O => s_axi_rdata(2)
    );
\s_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => last_applied_steps_reg(2),
      I1 => sel0(2),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => error_sticky,
      I4 => \araddr_reg_reg_n_0_[2]\,
      O => \s_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => steps_remaining(14),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(30),
      I4 => last_applied_steps_reg(30),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(30)
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => steps_remaining(15),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(31),
      I4 => last_applied_steps_reg(31),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(31)
    );
\s_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[4]\,
      I1 => \araddr_reg_reg_n_0_[5]\,
      O => \s_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => clk_wiz_locked,
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(3),
      I4 => last_applied_steps_reg(3),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(3)
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => \araddr_reg_reg_n_0_[2]\,
      I1 => psdone,
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(4),
      I4 => last_applied_steps_reg(4),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(4)
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
        port map (
      I0 => \^psincdec\,
      I1 => \araddr_reg_reg_n_0_[2]\,
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => sel0(5),
      I4 => last_applied_steps_reg(5),
      I5 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s_axi_rdata(5)
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => sel0(6),
      I1 => \araddr_reg_reg_n_0_[2]\,
      I2 => last_applied_steps_reg(6),
      I3 => \araddr_reg_reg_n_0_[3]\,
      I4 => \araddr_reg_reg_n_0_[4]\,
      I5 => \araddr_reg_reg_n_0_[5]\,
      O => s_axi_rdata(6)
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => sel0(7),
      I1 => \araddr_reg_reg_n_0_[2]\,
      I2 => last_applied_steps_reg(7),
      I3 => \araddr_reg_reg_n_0_[3]\,
      I4 => \araddr_reg_reg_n_0_[4]\,
      I5 => \araddr_reg_reg_n_0_[5]\,
      O => s_axi_rdata(7)
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \s_axi_rdata[8]_INST_0_i_1_n_0\,
      I1 => \araddr_reg_reg_n_0_[5]\,
      I2 => \araddr_reg_reg_n_0_[4]\,
      O => s_axi_rdata(8)
    );
\s_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => last_applied_steps_reg(8),
      I1 => sel0(8),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => active_target_sel(0),
      I4 => \araddr_reg_reg_n_0_[2]\,
      I5 => \^q\(0),
      O => \s_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \s_axi_rdata[9]_INST_0_i_1_n_0\,
      I1 => \araddr_reg_reg_n_0_[5]\,
      I2 => \araddr_reg_reg_n_0_[4]\,
      O => s_axi_rdata(9)
    );
\s_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => last_applied_steps_reg(9),
      I1 => sel0(9),
      I2 => \araddr_reg_reg_n_0_[3]\,
      I3 => active_target_sel(1),
      I4 => \araddr_reg_reg_n_0_[2]\,
      I5 => \^q\(1),
      O => \s_axi_rdata[9]_INST_0_i_1_n_0\
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C00"
    )
        port map (
      I0 => s_axi_rready,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => s_axi_aresetn,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid_reg_0\,
      R => '0'
    );
s_axi_wready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wdata_pending_reg_n_0,
      O => s_axi_wready0
    );
s_axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_wready0,
      Q => s_axi_wready,
      R => s_axi_awready_i_1_n_0
    );
start_pulse_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \phase_target_sel[2]_i_3_n_0\,
      I1 => awaddr_reg(3),
      I2 => awaddr_reg(2),
      I3 => s_axi_aresetn,
      I4 => \wstrb_reg_reg_n_0_[0]\,
      I5 => \wdata_reg_reg_n_0_[0]\,
      O => start_pulse_i_1_n_0
    );
start_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start_pulse_i_1_n_0,
      Q => start_pulse,
      R => '0'
    );
\step_count_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => awaddr_reg(2),
      I1 => awaddr_reg(3),
      I2 => p_2_in,
      I3 => \phase_target_sel[2]_i_3_n_0\,
      O => \step_count_reg[15]_i_1_n_0\
    );
\step_count_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => awaddr_reg(2),
      I1 => awaddr_reg(3),
      I2 => p_0_in0_0,
      I3 => \phase_target_sel[2]_i_3_n_0\,
      O => \step_count_reg[23]_i_1_n_0\
    );
\step_count_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => awaddr_reg(2),
      I1 => awaddr_reg(3),
      I2 => \wstrb_reg_reg_n_0_[3]\,
      I3 => \phase_target_sel[2]_i_3_n_0\,
      O => \step_count_reg[31]_i_1_n_0\
    );
\step_count_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \phase_target_sel[2]_i_3_n_0\,
      I1 => \wstrb_reg_reg_n_0_[0]\,
      I2 => awaddr_reg(3),
      I3 => awaddr_reg(2),
      O => \step_count_reg[7]_i_1_n_0\
    );
\step_count_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[7]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[0]\,
      Q => sel0(0),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[15]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[10]\,
      Q => sel0(10),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[15]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[11]\,
      Q => sel0(11),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[15]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[12]\,
      Q => sel0(12),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[15]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[13]\,
      Q => sel0(13),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[15]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[14]\,
      Q => sel0(14),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[15]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[15]\,
      Q => sel0(15),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[23]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[16]\,
      Q => sel0(16),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[23]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[17]\,
      Q => sel0(17),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[23]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[18]\,
      Q => sel0(18),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[23]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[19]\,
      Q => sel0(19),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[7]_i_1_n_0\,
      D => p_0_in14_in,
      Q => sel0(1),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[23]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[20]\,
      Q => sel0(20),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[23]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[21]\,
      Q => sel0(21),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[23]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[22]\,
      Q => sel0(22),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[23]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[23]\,
      Q => sel0(23),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[31]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[24]\,
      Q => sel0(24),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[31]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[25]\,
      Q => sel0(25),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[31]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[26]\,
      Q => sel0(26),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[31]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[27]\,
      Q => sel0(27),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[31]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[28]\,
      Q => sel0(28),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[31]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[29]\,
      Q => sel0(29),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[7]_i_1_n_0\,
      D => p_0_in13_in,
      Q => sel0(2),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[31]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[30]\,
      Q => sel0(30),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[31]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[31]\,
      Q => sel0(31),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[7]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[3]\,
      Q => sel0(3),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[7]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[4]\,
      Q => sel0(4),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[7]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[5]\,
      Q => sel0(5),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[7]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[6]\,
      Q => sel0(6),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[7]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[7]\,
      Q => sel0(7),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[15]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[8]\,
      Q => sel0(8),
      R => s_axi_awready_i_1_n_0
    );
\step_count_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \step_count_reg[15]_i_1_n_0\,
      D => \wdata_reg_reg_n_0_[9]\,
      Q => sel0(9),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining0_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => steps_remaining(0),
      CI_TOP => '0',
      CO(7) => \steps_remaining0_inferred__0/i__carry_n_0\,
      CO(6) => \steps_remaining0_inferred__0/i__carry_n_1\,
      CO(5) => \steps_remaining0_inferred__0/i__carry_n_2\,
      CO(4) => \steps_remaining0_inferred__0/i__carry_n_3\,
      CO(3) => \steps_remaining0_inferred__0/i__carry_n_4\,
      CO(2) => \steps_remaining0_inferred__0/i__carry_n_5\,
      CO(1) => \steps_remaining0_inferred__0/i__carry_n_6\,
      CO(0) => \steps_remaining0_inferred__0/i__carry_n_7\,
      DI(7 downto 0) => steps_remaining(8 downto 1),
      O(7 downto 0) => steps_remaining0(8 downto 1),
      S(7) => \i__carry_i_1_n_0\,
      S(6) => \i__carry_i_2_n_0\,
      S(5) => \i__carry_i_3__0_n_0\,
      S(4) => \i__carry_i_4__0_n_0\,
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\steps_remaining0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \steps_remaining0_inferred__0/i__carry_n_0\,
      CI_TOP => '0',
      CO(7) => \steps_remaining0_inferred__0/i__carry__0_n_0\,
      CO(6) => \steps_remaining0_inferred__0/i__carry__0_n_1\,
      CO(5) => \steps_remaining0_inferred__0/i__carry__0_n_2\,
      CO(4) => \steps_remaining0_inferred__0/i__carry__0_n_3\,
      CO(3) => \steps_remaining0_inferred__0/i__carry__0_n_4\,
      CO(2) => \steps_remaining0_inferred__0/i__carry__0_n_5\,
      CO(1) => \steps_remaining0_inferred__0/i__carry__0_n_6\,
      CO(0) => \steps_remaining0_inferred__0/i__carry__0_n_7\,
      DI(7 downto 0) => steps_remaining(16 downto 9),
      O(7 downto 0) => steps_remaining0(16 downto 9),
      S(7) => \i__carry_i_1__1_n_0\,
      S(6) => \i__carry_i_2__0_n_0\,
      S(5) => \i__carry_i_3_n_0\,
      S(4) => \i__carry_i_4_n_0\,
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\steps_remaining0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \steps_remaining0_inferred__0/i__carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \steps_remaining0_inferred__0/i__carry__1_n_0\,
      CO(6) => \steps_remaining0_inferred__0/i__carry__1_n_1\,
      CO(5) => \steps_remaining0_inferred__0/i__carry__1_n_2\,
      CO(4) => \steps_remaining0_inferred__0/i__carry__1_n_3\,
      CO(3) => \steps_remaining0_inferred__0/i__carry__1_n_4\,
      CO(2) => \steps_remaining0_inferred__0/i__carry__1_n_5\,
      CO(1) => \steps_remaining0_inferred__0/i__carry__1_n_6\,
      CO(0) => \steps_remaining0_inferred__0/i__carry__1_n_7\,
      DI(7 downto 0) => steps_remaining(24 downto 17),
      O(7 downto 0) => steps_remaining0(24 downto 17),
      S(7) => \i__carry_i_1__0_n_0\,
      S(6) => \i__carry_i_2__2_n_0\,
      S(5) => \i__carry_i_3__2_n_0\,
      S(4) => \i__carry_i_4__2_n_0\,
      S(3) => \i__carry_i_5__2_n_0\,
      S(2) => \i__carry_i_6__2_n_0\,
      S(1) => \i__carry_i_7__2_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\steps_remaining0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \steps_remaining0_inferred__0/i__carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_steps_remaining0_inferred__0/i__carry__2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \steps_remaining0_inferred__0/i__carry__2_n_2\,
      CO(4) => \steps_remaining0_inferred__0/i__carry__2_n_3\,
      CO(3) => \steps_remaining0_inferred__0/i__carry__2_n_4\,
      CO(2) => \steps_remaining0_inferred__0/i__carry__2_n_5\,
      CO(1) => \steps_remaining0_inferred__0/i__carry__2_n_6\,
      CO(0) => \steps_remaining0_inferred__0/i__carry__2_n_7\,
      DI(7 downto 6) => B"00",
      DI(5 downto 0) => steps_remaining(30 downto 25),
      O(7) => \NLW_steps_remaining0_inferred__0/i__carry__2_O_UNCONNECTED\(7),
      O(6 downto 0) => steps_remaining0(31 downto 25),
      S(7) => '0',
      S(6) => \i__carry_i_1__2_n_0\,
      S(5) => \i__carry_i_2__1_n_0\,
      S(4) => \i__carry_i_3__1_n_0\,
      S(3) => \i__carry_i_4__1_n_0\,
      S(2) => \i__carry_i_5__1_n_0\,
      S(1) => \i__carry_i_6__1_n_0\,
      S(0) => \i__carry_i_7__1_n_0\
    );
\steps_remaining[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1010"
    )
        port map (
      I0 => steps_remaining(0),
      I1 => \FSM_onehot_phase_state[2]_i_2_n_0\,
      I2 => \steps_remaining[31]_i_3_n_0\,
      I3 => \steps_remaining[29]_i_2_n_0\,
      I4 => sel0(0),
      O => \steps_remaining[0]_i_1_n_0\
    );
\steps_remaining[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(10),
      I2 => sel0(31),
      I3 => sel0(10),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(10),
      O => \steps_remaining[10]_i_1_n_0\
    );
\steps_remaining[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(11),
      I2 => sel0(31),
      I3 => sel0(11),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(11),
      O => \steps_remaining[11]_i_1_n_0\
    );
\steps_remaining[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(12),
      I2 => sel0(31),
      I3 => sel0(12),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(12),
      O => \steps_remaining[12]_i_1_n_0\
    );
\steps_remaining[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(13),
      I2 => sel0(31),
      I3 => sel0(13),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(13),
      O => \steps_remaining[13]_i_1_n_0\
    );
\steps_remaining[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(14),
      I2 => sel0(31),
      I3 => sel0(14),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(14),
      O => \steps_remaining[14]_i_1_n_0\
    );
\steps_remaining[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(15),
      I2 => sel0(31),
      I3 => sel0(15),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(15),
      O => \steps_remaining[15]_i_1_n_0\
    );
\steps_remaining[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \steps_remaining[29]_i_4_n_0\,
      I1 => steps_remaining0(16),
      I2 => \steps_remaining[29]_i_2_n_0\,
      I3 => steps_remaining1(16),
      I4 => sel0(31),
      I5 => sel0(16),
      O => \steps_remaining[16]_i_1_n_0\
    );
\steps_remaining[16]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(9),
      O => p_0_in(9)
    );
\steps_remaining[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(16),
      O => \steps_remaining[16]_i_3_n_0\
    );
\steps_remaining[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(15),
      O => p_0_in(15)
    );
\steps_remaining[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(14),
      O => p_0_in(14)
    );
\steps_remaining[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(13),
      O => \steps_remaining[16]_i_6_n_0\
    );
\steps_remaining[16]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(12),
      O => p_0_in(12)
    );
\steps_remaining[16]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(11),
      O => p_0_in(11)
    );
\steps_remaining[16]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(10),
      O => \steps_remaining[16]_i_9_n_0\
    );
\steps_remaining[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(17),
      I2 => sel0(31),
      I3 => sel0(17),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(17),
      O => \steps_remaining[17]_i_1_n_0\
    );
\steps_remaining[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(18),
      I2 => sel0(31),
      I3 => sel0(18),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(18),
      O => \steps_remaining[18]_i_1_n_0\
    );
\steps_remaining[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(19),
      I2 => sel0(31),
      I3 => sel0(19),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(19),
      O => \steps_remaining[19]_i_1_n_0\
    );
\steps_remaining[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(1),
      I2 => sel0(31),
      I3 => sel0(1),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(1),
      O => \steps_remaining[1]_i_1_n_0\
    );
\steps_remaining[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(20),
      I2 => sel0(31),
      I3 => sel0(20),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(20),
      O => \steps_remaining[20]_i_1_n_0\
    );
\steps_remaining[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(21),
      I2 => sel0(31),
      I3 => sel0(21),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(21),
      O => \steps_remaining[21]_i_1_n_0\
    );
\steps_remaining[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(22),
      I2 => sel0(31),
      I3 => sel0(22),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(22),
      O => \steps_remaining[22]_i_1_n_0\
    );
\steps_remaining[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(23),
      I2 => sel0(31),
      I3 => sel0(23),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(23),
      O => \steps_remaining[23]_i_1_n_0\
    );
\steps_remaining[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(24),
      I2 => sel0(31),
      I3 => sel0(24),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(24),
      O => \steps_remaining[24]_i_1_n_0\
    );
\steps_remaining[24]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(17),
      O => p_0_in(17)
    );
\steps_remaining[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(24),
      O => \steps_remaining[24]_i_3_n_0\
    );
\steps_remaining[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(23),
      O => p_0_in(23)
    );
\steps_remaining[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(22),
      O => \steps_remaining[24]_i_5_n_0\
    );
\steps_remaining[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(21),
      O => \steps_remaining[24]_i_6_n_0\
    );
\steps_remaining[24]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(20),
      O => p_0_in(20)
    );
\steps_remaining[24]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(19),
      O => \steps_remaining[24]_i_8_n_0\
    );
\steps_remaining[24]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(18),
      O => \steps_remaining[24]_i_9_n_0\
    );
\steps_remaining[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(25),
      I2 => sel0(31),
      I3 => sel0(25),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(25),
      O => \steps_remaining[25]_i_1_n_0\
    );
\steps_remaining[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(26),
      I2 => sel0(31),
      I3 => sel0(26),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(26),
      O => \steps_remaining[26]_i_1_n_0\
    );
\steps_remaining[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(27),
      I2 => sel0(31),
      I3 => sel0(27),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(27),
      O => \steps_remaining[27]_i_1_n_0\
    );
\steps_remaining[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(28),
      I2 => sel0(31),
      I3 => sel0(28),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(28),
      O => \steps_remaining[28]_i_1_n_0\
    );
\steps_remaining[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(29),
      I2 => sel0(31),
      I3 => sel0(29),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(29),
      O => \steps_remaining[29]_i_1_n_0\
    );
\steps_remaining[29]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(26),
      O => p_0_in(26)
    );
\steps_remaining[29]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(25),
      O => \steps_remaining[29]_i_11_n_0\
    );
\steps_remaining[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101111"
    )
        port map (
      I0 => \FSM_onehot_phase_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_phase_state_reg_n_0_[0]\,
      I2 => psdone,
      I3 => psdone_d1,
      I4 => \FSM_onehot_phase_state_reg_n_0_[2]\,
      O => \steps_remaining[29]_i_2_n_0\
    );
\steps_remaining[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFDFDFDFFFDF"
    )
        port map (
      I0 => psdone,
      I1 => psdone_d1,
      I2 => \FSM_onehot_phase_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_phase_state[1]_i_5_n_0\,
      I4 => \FSM_onehot_phase_state[1]_i_4_n_0\,
      I5 => \FSM_onehot_phase_state[1]_i_3_n_0\,
      O => \steps_remaining[29]_i_4_n_0\
    );
\steps_remaining[29]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(31),
      O => \steps_remaining[29]_i_5_n_0\
    );
\steps_remaining[29]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(30),
      O => \steps_remaining[29]_i_6_n_0\
    );
\steps_remaining[29]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(29),
      O => \steps_remaining[29]_i_7_n_0\
    );
\steps_remaining[29]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(28),
      O => \steps_remaining[29]_i_8_n_0\
    );
\steps_remaining[29]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(27),
      O => \steps_remaining[29]_i_9_n_0\
    );
\steps_remaining[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(2),
      I2 => sel0(31),
      I3 => sel0(2),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(2),
      O => \steps_remaining[2]_i_1_n_0\
    );
\steps_remaining[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => psdone,
      I1 => psdone_d1,
      I2 => \FSM_onehot_phase_state_reg_n_0_[2]\,
      I3 => steps_remaining0(30),
      I4 => \steps_remaining[31]_i_3_n_0\,
      I5 => \steps_remaining[30]_i_2_n_0\,
      O => \steps_remaining[30]_i_1_n_0\
    );
\steps_remaining[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => sel0(30),
      I1 => sel0(31),
      I2 => steps_remaining1(30),
      I3 => \steps_remaining[29]_i_2_n_0\,
      O => \steps_remaining[30]_i_2_n_0\
    );
\steps_remaining[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE000000FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_phase_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_phase_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_phase_state_reg_n_0_[2]\,
      I3 => psincdec_i_2_n_0,
      I4 => \active_target_sel[2]_i_1_n_0\,
      I5 => \FSM_onehot_phase_state[2]_i_2_n_0\,
      O => \steps_remaining[31]_i_1_n_0\
    );
\steps_remaining[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F00000F8F0F0F0"
    )
        port map (
      I0 => steps_remaining0(31),
      I1 => \steps_remaining[31]_i_3_n_0\,
      I2 => \steps_remaining[31]_i_4_n_0\,
      I3 => \FSM_onehot_phase_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_phase_state_reg_n_0_[2]\,
      I5 => \steps_remaining[31]_i_5_n_0\,
      O => \steps_remaining[31]_i_2_n_0\
    );
\steps_remaining[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \FSM_onehot_phase_state[1]_i_3_n_0\,
      I1 => \FSM_onehot_phase_state[1]_i_4_n_0\,
      I2 => \FSM_onehot_phase_state[1]_i_5_n_0\,
      O => \steps_remaining[31]_i_3_n_0\
    );
\steps_remaining[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(31),
      I1 => steps_remaining1(31),
      O => \steps_remaining[31]_i_4_n_0\
    );
\steps_remaining[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_phase_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_phase_state_reg_n_0_[1]\,
      O => \steps_remaining[31]_i_5_n_0\
    );
\steps_remaining[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(3),
      I2 => sel0(31),
      I3 => sel0(3),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(3),
      O => \steps_remaining[3]_i_1_n_0\
    );
\steps_remaining[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(4),
      I2 => sel0(31),
      I3 => sel0(4),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(4),
      O => \steps_remaining[4]_i_1_n_0\
    );
\steps_remaining[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(5),
      I2 => sel0(31),
      I3 => sel0(5),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(5),
      O => \steps_remaining[5]_i_1_n_0\
    );
\steps_remaining[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(6),
      I2 => sel0(31),
      I3 => sel0(6),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(6),
      O => \steps_remaining[6]_i_1_n_0\
    );
\steps_remaining[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(7),
      I2 => sel0(31),
      I3 => sel0(7),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(7),
      O => \steps_remaining[7]_i_1_n_0\
    );
\steps_remaining[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(8),
      I2 => sel0(31),
      I3 => sel0(8),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(8),
      O => \steps_remaining[8]_i_1_n_0\
    );
\steps_remaining[8]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(2),
      O => p_0_in(2)
    );
\steps_remaining[8]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(1),
      O => \steps_remaining[8]_i_11_n_0\
    );
\steps_remaining[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(0),
      O => p_0_in(0)
    );
\steps_remaining[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(8),
      O => p_0_in(8)
    );
\steps_remaining[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(7),
      O => \steps_remaining[8]_i_5_n_0\
    );
\steps_remaining[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(6),
      O => p_0_in(6)
    );
\steps_remaining[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(5),
      O => p_0_in(5)
    );
\steps_remaining[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(4),
      O => \steps_remaining[8]_i_8_n_0\
    );
\steps_remaining[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(3),
      O => p_0_in(3)
    );
\steps_remaining[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \steps_remaining[29]_i_2_n_0\,
      I1 => steps_remaining1(9),
      I2 => sel0(31),
      I3 => sel0(9),
      I4 => \steps_remaining[29]_i_4_n_0\,
      I5 => steps_remaining0(9),
      O => \steps_remaining[9]_i_1_n_0\
    );
\steps_remaining_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[0]_i_1_n_0\,
      Q => steps_remaining(0),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[10]_i_1_n_0\,
      Q => steps_remaining(10),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[11]_i_1_n_0\,
      Q => steps_remaining(11),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[12]_i_1_n_0\,
      Q => steps_remaining(12),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[13]_i_1_n_0\,
      Q => steps_remaining(13),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[14]_i_1_n_0\,
      Q => steps_remaining(14),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[15]_i_1_n_0\,
      Q => steps_remaining(15),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[16]_i_1_n_0\,
      Q => steps_remaining(16),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[16]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \steps_remaining_reg[8]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \steps_remaining_reg[16]_i_2_n_0\,
      CO(6) => \steps_remaining_reg[16]_i_2_n_1\,
      CO(5) => \steps_remaining_reg[16]_i_2_n_2\,
      CO(4) => \steps_remaining_reg[16]_i_2_n_3\,
      CO(3) => \steps_remaining_reg[16]_i_2_n_4\,
      CO(2) => \steps_remaining_reg[16]_i_2_n_5\,
      CO(1) => \steps_remaining_reg[16]_i_2_n_6\,
      CO(0) => \steps_remaining_reg[16]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => steps_remaining1(16 downto 9),
      S(7) => \steps_remaining[16]_i_3_n_0\,
      S(6 downto 5) => p_0_in(15 downto 14),
      S(4) => \steps_remaining[16]_i_6_n_0\,
      S(3 downto 2) => p_0_in(12 downto 11),
      S(1) => \steps_remaining[16]_i_9_n_0\,
      S(0) => p_0_in(9)
    );
\steps_remaining_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[17]_i_1_n_0\,
      Q => steps_remaining(17),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[18]_i_1_n_0\,
      Q => steps_remaining(18),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[19]_i_1_n_0\,
      Q => steps_remaining(19),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[1]_i_1_n_0\,
      Q => steps_remaining(1),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[20]_i_1_n_0\,
      Q => steps_remaining(20),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[21]_i_1_n_0\,
      Q => steps_remaining(21),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[22]_i_1_n_0\,
      Q => steps_remaining(22),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[23]_i_1_n_0\,
      Q => steps_remaining(23),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[24]_i_1_n_0\,
      Q => steps_remaining(24),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[24]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \steps_remaining_reg[16]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \steps_remaining_reg[24]_i_2_n_0\,
      CO(6) => \steps_remaining_reg[24]_i_2_n_1\,
      CO(5) => \steps_remaining_reg[24]_i_2_n_2\,
      CO(4) => \steps_remaining_reg[24]_i_2_n_3\,
      CO(3) => \steps_remaining_reg[24]_i_2_n_4\,
      CO(2) => \steps_remaining_reg[24]_i_2_n_5\,
      CO(1) => \steps_remaining_reg[24]_i_2_n_6\,
      CO(0) => \steps_remaining_reg[24]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => steps_remaining1(24 downto 17),
      S(7) => \steps_remaining[24]_i_3_n_0\,
      S(6) => p_0_in(23),
      S(5) => \steps_remaining[24]_i_5_n_0\,
      S(4) => \steps_remaining[24]_i_6_n_0\,
      S(3) => p_0_in(20),
      S(2) => \steps_remaining[24]_i_8_n_0\,
      S(1) => \steps_remaining[24]_i_9_n_0\,
      S(0) => p_0_in(17)
    );
\steps_remaining_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[25]_i_1_n_0\,
      Q => steps_remaining(25),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[26]_i_1_n_0\,
      Q => steps_remaining(26),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[27]_i_1_n_0\,
      Q => steps_remaining(27),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[28]_i_1_n_0\,
      Q => steps_remaining(28),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[29]_i_1_n_0\,
      Q => steps_remaining(29),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[29]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \steps_remaining_reg[24]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_steps_remaining_reg[29]_i_3_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \steps_remaining_reg[29]_i_3_n_2\,
      CO(4) => \steps_remaining_reg[29]_i_3_n_3\,
      CO(3) => \steps_remaining_reg[29]_i_3_n_4\,
      CO(2) => \steps_remaining_reg[29]_i_3_n_5\,
      CO(1) => \steps_remaining_reg[29]_i_3_n_6\,
      CO(0) => \steps_remaining_reg[29]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_steps_remaining_reg[29]_i_3_O_UNCONNECTED\(7),
      O(6 downto 0) => steps_remaining1(31 downto 25),
      S(7) => '0',
      S(6) => \steps_remaining[29]_i_5_n_0\,
      S(5) => \steps_remaining[29]_i_6_n_0\,
      S(4) => \steps_remaining[29]_i_7_n_0\,
      S(3) => \steps_remaining[29]_i_8_n_0\,
      S(2) => \steps_remaining[29]_i_9_n_0\,
      S(1) => p_0_in(26),
      S(0) => \steps_remaining[29]_i_11_n_0\
    );
\steps_remaining_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[2]_i_1_n_0\,
      Q => steps_remaining(2),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[30]_i_1_n_0\,
      Q => steps_remaining(30),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[31]_i_2_n_0\,
      Q => steps_remaining(31),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[3]_i_1_n_0\,
      Q => steps_remaining(3),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[4]_i_1_n_0\,
      Q => steps_remaining(4),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[5]_i_1_n_0\,
      Q => steps_remaining(5),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[6]_i_1_n_0\,
      Q => steps_remaining(6),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[7]_i_1_n_0\,
      Q => steps_remaining(7),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[8]_i_1_n_0\,
      Q => steps_remaining(8),
      R => s_axi_awready_i_1_n_0
    );
\steps_remaining_reg[8]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => p_0_in(0),
      CI_TOP => '0',
      CO(7) => \steps_remaining_reg[8]_i_2_n_0\,
      CO(6) => \steps_remaining_reg[8]_i_2_n_1\,
      CO(5) => \steps_remaining_reg[8]_i_2_n_2\,
      CO(4) => \steps_remaining_reg[8]_i_2_n_3\,
      CO(3) => \steps_remaining_reg[8]_i_2_n_4\,
      CO(2) => \steps_remaining_reg[8]_i_2_n_5\,
      CO(1) => \steps_remaining_reg[8]_i_2_n_6\,
      CO(0) => \steps_remaining_reg[8]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => steps_remaining1(8 downto 1),
      S(7) => p_0_in(8),
      S(6) => \steps_remaining[8]_i_5_n_0\,
      S(5 downto 4) => p_0_in(6 downto 5),
      S(3) => \steps_remaining[8]_i_8_n_0\,
      S(2 downto 1) => p_0_in(3 downto 2),
      S(0) => \steps_remaining[8]_i_11_n_0\
    );
\steps_remaining_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \steps_remaining[31]_i_1_n_0\,
      D => \steps_remaining[9]_i_1_n_0\,
      Q => steps_remaining(9),
      R => s_axi_awready_i_1_n_0
    );
wdata_pending_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => \^s_axi_bvalid_reg_0\,
      I1 => wdata_pending_reg_n_0,
      I2 => awaddr_pending,
      I3 => s_axi_aresetn,
      O => wdata_pending_i_1_n_0
    );
wdata_pending_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => wdata_pending_reg_n_0,
      O => wdata_pending_i_2_n_0
    );
wdata_pending_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => wdata_pending_i_2_n_0,
      Q => wdata_pending_reg_n_0,
      R => wdata_pending_i_1_n_0
    );
\wdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(0),
      Q => \wdata_reg_reg_n_0_[0]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(10),
      Q => \wdata_reg_reg_n_0_[10]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(11),
      Q => \wdata_reg_reg_n_0_[11]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(12),
      Q => \wdata_reg_reg_n_0_[12]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(13),
      Q => \wdata_reg_reg_n_0_[13]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(14),
      Q => \wdata_reg_reg_n_0_[14]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(15),
      Q => \wdata_reg_reg_n_0_[15]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(16),
      Q => \wdata_reg_reg_n_0_[16]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(17),
      Q => \wdata_reg_reg_n_0_[17]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(18),
      Q => \wdata_reg_reg_n_0_[18]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(19),
      Q => \wdata_reg_reg_n_0_[19]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(1),
      Q => p_0_in14_in,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(20),
      Q => \wdata_reg_reg_n_0_[20]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(21),
      Q => \wdata_reg_reg_n_0_[21]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(22),
      Q => \wdata_reg_reg_n_0_[22]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(23),
      Q => \wdata_reg_reg_n_0_[23]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(24),
      Q => \wdata_reg_reg_n_0_[24]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(25),
      Q => \wdata_reg_reg_n_0_[25]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(26),
      Q => \wdata_reg_reg_n_0_[26]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(27),
      Q => \wdata_reg_reg_n_0_[27]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(28),
      Q => \wdata_reg_reg_n_0_[28]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(29),
      Q => \wdata_reg_reg_n_0_[29]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(2),
      Q => p_0_in13_in,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(30),
      Q => \wdata_reg_reg_n_0_[30]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(31),
      Q => \wdata_reg_reg_n_0_[31]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(3),
      Q => \wdata_reg_reg_n_0_[3]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(4),
      Q => \wdata_reg_reg_n_0_[4]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(5),
      Q => \wdata_reg_reg_n_0_[5]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(6),
      Q => \wdata_reg_reg_n_0_[6]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(7),
      Q => \wdata_reg_reg_n_0_[7]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(8),
      Q => \wdata_reg_reg_n_0_[8]\,
      R => s_axi_awready_i_1_n_0
    );
\wdata_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wdata(9),
      Q => \wdata_reg_reg_n_0_[9]\,
      R => s_axi_awready_i_1_n_0
    );
\wstrb_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => wdata_pending_reg_n_0,
      O => wdata_reg0
    );
\wstrb_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wstrb(0),
      Q => \wstrb_reg_reg_n_0_[0]\,
      R => s_axi_awready_i_1_n_0
    );
\wstrb_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wstrb(1),
      Q => p_2_in,
      R => s_axi_awready_i_1_n_0
    );
\wstrb_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wstrb(2),
      Q => p_0_in0_0,
      R => s_axi_awready_i_1_n_0
    );
\wstrb_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wdata_reg0,
      D => s_axi_wstrb(3),
      Q => \wstrb_reg_reg_n_0_[3]\,
      R => s_axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_clk_wiz_phase_ct_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    clk_wiz_locked : in STD_LOGIC;
    psdone : in STD_LOGIC;
    psclk : out STD_LOGIC;
    psen : out STD_LOGIC;
    psincdec : out STD_LOGIC;
    phase_target_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    phase_target_onehot : out STD_LOGIC_VECTOR ( 6 downto 0 );
    irq : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi_clk_wiz_phase_ct_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_clk_wiz_phase_ct_0_0 : entity is "design_1_axi_clk_wiz_phase_ct_0_0,axi_clk_wiz_phase_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axi_clk_wiz_phase_ct_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axi_clk_wiz_phase_ct_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axi_clk_wiz_phase_ct_0_0 : entity is "axi_clk_wiz_phase_ctrl,Vivado 2025.2";
end design_1_axi_clk_wiz_phase_ct_0_0;

architecture STRUCTURE of design_1_axi_clk_wiz_phase_ct_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_aclk\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of irq : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_MODE of s_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_MODE of s_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_MODE of s_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_awaddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  \^s_axi_aclk\ <= s_axi_aclk;
  psclk <= \^s_axi_aclk\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_axi_clk_wiz_phase_ct_0_0_axi_clk_wiz_phase_ctrl
     port map (
      Q(2 downto 0) => phase_target_sel(2 downto 0),
      clk_wiz_locked => clk_wiz_locked,
      irq => irq,
      phase_target_onehot(6 downto 0) => phase_target_onehot(6 downto 0),
      psdone => psdone,
      psen => psen,
      psincdec => psincdec,
      s_axi_aclk => \^s_axi_aclk\,
      s_axi_araddr(3 downto 0) => s_axi_araddr(5 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(5 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_reg_0 => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_reg_0 => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
