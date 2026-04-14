// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Apr 12 13:01:00 2026
// Host        : YouBing running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /raid/work/ghl_ip/hyperbus_ai3/vivado_projects/hyperbus_hdio/hyperbus_hdio.gen/sources_1/bd/design_1/ip/design_1_axi_clk_wiz_phase_ct_0_0/design_1_axi_clk_wiz_phase_ct_0_0_sim_netlist.v
// Design      : design_1_axi_clk_wiz_phase_ct_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcsu35p-sbvb625-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_clk_wiz_phase_ct_0_0,axi_clk_wiz_phase_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi_clk_wiz_phase_ctrl,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_axi_clk_wiz_phase_ct_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    clk_wiz_locked,
    psdone,
    psclk,
    psen,
    psincdec,
    phase_target_sel,
    phase_target_onehot,
    irq);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [5:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  input clk_wiz_locked;
  input psdone;
  output psclk;
  output psen;
  output psincdec;
  output [2:0]phase_target_sel;
  output [6:0]phase_target_onehot;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;

  wire \<const0> ;
  wire clk_wiz_locked;
  wire irq;
  wire [6:0]phase_target_onehot;
  wire [2:0]phase_target_sel;
  wire psdone;
  wire psen;
  wire psincdec;
  wire s_axi_aclk;
  wire [5:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign psclk = s_axi_aclk;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axi_clk_wiz_phase_ct_0_0_axi_clk_wiz_phase_ctrl inst
       (.Q(phase_target_sel),
        .clk_wiz_locked(clk_wiz_locked),
        .irq(irq),
        .phase_target_onehot(phase_target_onehot),
        .psdone(psdone),
        .psen(psen),
        .psincdec(psincdec),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[5:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[5:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_reg_0(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_reg_0(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_clk_wiz_phase_ctrl" *) 
module design_1_axi_clk_wiz_phase_ct_0_0_axi_clk_wiz_phase_ctrl
   (s_axi_bvalid_reg_0,
    phase_target_onehot,
    Q,
    s_axi_awready,
    s_axi_wready,
    s_axi_arready,
    psen,
    s_axi_rvalid_reg_0,
    irq,
    s_axi_rdata,
    psincdec,
    s_axi_aresetn,
    psdone,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_rready,
    s_axi_arvalid,
    s_axi_bready,
    clk_wiz_locked);
  output s_axi_bvalid_reg_0;
  output [6:0]phase_target_onehot;
  output [2:0]Q;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_arready;
  output psen;
  output s_axi_rvalid_reg_0;
  output irq;
  output [31:0]s_axi_rdata;
  output psincdec;
  input s_axi_aresetn;
  input psdone;
  input s_axi_aclk;
  input [3:0]s_axi_awaddr;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_araddr;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_rready;
  input s_axi_arvalid;
  input s_axi_bready;
  input clk_wiz_locked;

  wire \FSM_onehot_phase_state[0]_i_1_n_0 ;
  wire \FSM_onehot_phase_state[1]_i_10_n_0 ;
  wire \FSM_onehot_phase_state[1]_i_1_n_0 ;
  wire \FSM_onehot_phase_state[1]_i_2_n_0 ;
  wire \FSM_onehot_phase_state[1]_i_3_n_0 ;
  wire \FSM_onehot_phase_state[1]_i_4_n_0 ;
  wire \FSM_onehot_phase_state[1]_i_5_n_0 ;
  wire \FSM_onehot_phase_state[1]_i_6_n_0 ;
  wire \FSM_onehot_phase_state[1]_i_7_n_0 ;
  wire \FSM_onehot_phase_state[1]_i_8_n_0 ;
  wire \FSM_onehot_phase_state[1]_i_9_n_0 ;
  wire \FSM_onehot_phase_state[2]_i_1_n_0 ;
  wire \FSM_onehot_phase_state[2]_i_2_n_0 ;
  wire \FSM_onehot_phase_state_reg_n_0_[0] ;
  wire \FSM_onehot_phase_state_reg_n_0_[1] ;
  wire \FSM_onehot_phase_state_reg_n_0_[2] ;
  wire [2:0]Q;
  wire [2:0]active_target_sel;
  wire \active_target_sel[2]_i_10_n_0 ;
  wire \active_target_sel[2]_i_11_n_0 ;
  wire \active_target_sel[2]_i_1_n_0 ;
  wire \active_target_sel[2]_i_2_n_0 ;
  wire \active_target_sel[2]_i_3_n_0 ;
  wire \active_target_sel[2]_i_4_n_0 ;
  wire \active_target_sel[2]_i_5_n_0 ;
  wire \active_target_sel[2]_i_6_n_0 ;
  wire \active_target_sel[2]_i_7_n_0 ;
  wire \active_target_sel[2]_i_8_n_0 ;
  wire \active_target_sel[2]_i_9_n_0 ;
  wire \araddr_reg_reg_n_0_[2] ;
  wire \araddr_reg_reg_n_0_[3] ;
  wire \araddr_reg_reg_n_0_[4] ;
  wire \araddr_reg_reg_n_0_[5] ;
  wire awaddr_pending;
  wire awaddr_pending_i_1_n_0;
  wire [3:2]awaddr_reg;
  wire awaddr_reg0;
  wire \awaddr_reg_reg_n_0_[5] ;
  wire busy_reg_i_1_n_0;
  wire busy_reg_i_2_n_0;
  wire busy_reg_i_3_n_0;
  wire busy_reg_i_4_n_0;
  wire busy_reg_reg_n_0;
  wire clk_wiz_locked;
  wire [16:16]current_value;
  wire done_sticky_i_1_n_0;
  wire done_sticky_i_2_n_0;
  wire done_sticky_i_3_n_0;
  wire done_sticky_reg_n_0;
  wire error_sticky;
  wire error_sticky_i_1_n_0;
  wire error_sticky_i_2_n_0;
  wire error_sticky_i_3_n_0;
  wire error_sticky_i_4_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7__2_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8_n_0;
  wire irq;
  wire irq_enable12_out;
  wire irq_enable_i_1_n_0;
  wire [31:0]last_applied_steps_reg;
  wire \last_applied_steps_reg[31]_i_1_n_0 ;
  wire \last_applied_steps_reg[31]_i_2_n_0 ;
  wire \last_applied_steps_reg[31]_i_3_n_0 ;
  wire [26:0]p_0_in;
  wire p_0_in0;
  wire p_0_in0_0;
  wire p_0_in13_in;
  wire p_0_in14_in;
  wire p_2_in;
  wire [6:0]phase_target_onehot;
  wire \phase_target_sel[0]_i_1_n_0 ;
  wire \phase_target_sel[1]_i_1_n_0 ;
  wire \phase_target_sel[2]_i_2_n_0 ;
  wire \phase_target_sel[2]_i_3_n_0 ;
  wire psdone;
  wire psdone_d1;
  wire psen;
  wire psincdec;
  wire psincdec_i_1_n_0;
  wire psincdec_i_2_n_0;
  wire psincdec_i_3_n_0;
  wire psincdec_i_4_n_0;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arready0;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awready0;
  wire s_axi_awready_i_1_n_0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_1_n_0;
  wire s_axi_bvalid_reg_0;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[16]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire s_axi_rready;
  wire s_axi_rresp0;
  wire s_axi_rvalid_i_1_n_0;
  wire s_axi_rvalid_reg_0;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready0;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]sel0;
  wire start_pulse;
  wire start_pulse_i_1_n_0;
  wire \step_count_reg[15]_i_1_n_0 ;
  wire \step_count_reg[23]_i_1_n_0 ;
  wire \step_count_reg[31]_i_1_n_0 ;
  wire \step_count_reg[7]_i_1_n_0 ;
  wire [31:0]steps_remaining;
  wire [31:1]steps_remaining0;
  wire \steps_remaining0_inferred__0/i__carry__0_n_0 ;
  wire \steps_remaining0_inferred__0/i__carry__0_n_1 ;
  wire \steps_remaining0_inferred__0/i__carry__0_n_2 ;
  wire \steps_remaining0_inferred__0/i__carry__0_n_3 ;
  wire \steps_remaining0_inferred__0/i__carry__0_n_4 ;
  wire \steps_remaining0_inferred__0/i__carry__0_n_5 ;
  wire \steps_remaining0_inferred__0/i__carry__0_n_6 ;
  wire \steps_remaining0_inferred__0/i__carry__0_n_7 ;
  wire \steps_remaining0_inferred__0/i__carry__1_n_0 ;
  wire \steps_remaining0_inferred__0/i__carry__1_n_1 ;
  wire \steps_remaining0_inferred__0/i__carry__1_n_2 ;
  wire \steps_remaining0_inferred__0/i__carry__1_n_3 ;
  wire \steps_remaining0_inferred__0/i__carry__1_n_4 ;
  wire \steps_remaining0_inferred__0/i__carry__1_n_5 ;
  wire \steps_remaining0_inferred__0/i__carry__1_n_6 ;
  wire \steps_remaining0_inferred__0/i__carry__1_n_7 ;
  wire \steps_remaining0_inferred__0/i__carry__2_n_2 ;
  wire \steps_remaining0_inferred__0/i__carry__2_n_3 ;
  wire \steps_remaining0_inferred__0/i__carry__2_n_4 ;
  wire \steps_remaining0_inferred__0/i__carry__2_n_5 ;
  wire \steps_remaining0_inferred__0/i__carry__2_n_6 ;
  wire \steps_remaining0_inferred__0/i__carry__2_n_7 ;
  wire \steps_remaining0_inferred__0/i__carry_n_0 ;
  wire \steps_remaining0_inferred__0/i__carry_n_1 ;
  wire \steps_remaining0_inferred__0/i__carry_n_2 ;
  wire \steps_remaining0_inferred__0/i__carry_n_3 ;
  wire \steps_remaining0_inferred__0/i__carry_n_4 ;
  wire \steps_remaining0_inferred__0/i__carry_n_5 ;
  wire \steps_remaining0_inferred__0/i__carry_n_6 ;
  wire \steps_remaining0_inferred__0/i__carry_n_7 ;
  wire [31:1]steps_remaining1;
  wire \steps_remaining[0]_i_1_n_0 ;
  wire \steps_remaining[10]_i_1_n_0 ;
  wire \steps_remaining[11]_i_1_n_0 ;
  wire \steps_remaining[12]_i_1_n_0 ;
  wire \steps_remaining[13]_i_1_n_0 ;
  wire \steps_remaining[14]_i_1_n_0 ;
  wire \steps_remaining[15]_i_1_n_0 ;
  wire \steps_remaining[16]_i_1_n_0 ;
  wire \steps_remaining[16]_i_3_n_0 ;
  wire \steps_remaining[16]_i_6_n_0 ;
  wire \steps_remaining[16]_i_9_n_0 ;
  wire \steps_remaining[17]_i_1_n_0 ;
  wire \steps_remaining[18]_i_1_n_0 ;
  wire \steps_remaining[19]_i_1_n_0 ;
  wire \steps_remaining[1]_i_1_n_0 ;
  wire \steps_remaining[20]_i_1_n_0 ;
  wire \steps_remaining[21]_i_1_n_0 ;
  wire \steps_remaining[22]_i_1_n_0 ;
  wire \steps_remaining[23]_i_1_n_0 ;
  wire \steps_remaining[24]_i_1_n_0 ;
  wire \steps_remaining[24]_i_3_n_0 ;
  wire \steps_remaining[24]_i_5_n_0 ;
  wire \steps_remaining[24]_i_6_n_0 ;
  wire \steps_remaining[24]_i_8_n_0 ;
  wire \steps_remaining[24]_i_9_n_0 ;
  wire \steps_remaining[25]_i_1_n_0 ;
  wire \steps_remaining[26]_i_1_n_0 ;
  wire \steps_remaining[27]_i_1_n_0 ;
  wire \steps_remaining[28]_i_1_n_0 ;
  wire \steps_remaining[29]_i_11_n_0 ;
  wire \steps_remaining[29]_i_1_n_0 ;
  wire \steps_remaining[29]_i_2_n_0 ;
  wire \steps_remaining[29]_i_4_n_0 ;
  wire \steps_remaining[29]_i_5_n_0 ;
  wire \steps_remaining[29]_i_6_n_0 ;
  wire \steps_remaining[29]_i_7_n_0 ;
  wire \steps_remaining[29]_i_8_n_0 ;
  wire \steps_remaining[29]_i_9_n_0 ;
  wire \steps_remaining[2]_i_1_n_0 ;
  wire \steps_remaining[30]_i_1_n_0 ;
  wire \steps_remaining[30]_i_2_n_0 ;
  wire \steps_remaining[31]_i_1_n_0 ;
  wire \steps_remaining[31]_i_2_n_0 ;
  wire \steps_remaining[31]_i_3_n_0 ;
  wire \steps_remaining[31]_i_4_n_0 ;
  wire \steps_remaining[31]_i_5_n_0 ;
  wire \steps_remaining[3]_i_1_n_0 ;
  wire \steps_remaining[4]_i_1_n_0 ;
  wire \steps_remaining[5]_i_1_n_0 ;
  wire \steps_remaining[6]_i_1_n_0 ;
  wire \steps_remaining[7]_i_1_n_0 ;
  wire \steps_remaining[8]_i_11_n_0 ;
  wire \steps_remaining[8]_i_1_n_0 ;
  wire \steps_remaining[8]_i_5_n_0 ;
  wire \steps_remaining[8]_i_8_n_0 ;
  wire \steps_remaining[9]_i_1_n_0 ;
  wire \steps_remaining_reg[16]_i_2_n_0 ;
  wire \steps_remaining_reg[16]_i_2_n_1 ;
  wire \steps_remaining_reg[16]_i_2_n_2 ;
  wire \steps_remaining_reg[16]_i_2_n_3 ;
  wire \steps_remaining_reg[16]_i_2_n_4 ;
  wire \steps_remaining_reg[16]_i_2_n_5 ;
  wire \steps_remaining_reg[16]_i_2_n_6 ;
  wire \steps_remaining_reg[16]_i_2_n_7 ;
  wire \steps_remaining_reg[24]_i_2_n_0 ;
  wire \steps_remaining_reg[24]_i_2_n_1 ;
  wire \steps_remaining_reg[24]_i_2_n_2 ;
  wire \steps_remaining_reg[24]_i_2_n_3 ;
  wire \steps_remaining_reg[24]_i_2_n_4 ;
  wire \steps_remaining_reg[24]_i_2_n_5 ;
  wire \steps_remaining_reg[24]_i_2_n_6 ;
  wire \steps_remaining_reg[24]_i_2_n_7 ;
  wire \steps_remaining_reg[29]_i_3_n_2 ;
  wire \steps_remaining_reg[29]_i_3_n_3 ;
  wire \steps_remaining_reg[29]_i_3_n_4 ;
  wire \steps_remaining_reg[29]_i_3_n_5 ;
  wire \steps_remaining_reg[29]_i_3_n_6 ;
  wire \steps_remaining_reg[29]_i_3_n_7 ;
  wire \steps_remaining_reg[8]_i_2_n_0 ;
  wire \steps_remaining_reg[8]_i_2_n_1 ;
  wire \steps_remaining_reg[8]_i_2_n_2 ;
  wire \steps_remaining_reg[8]_i_2_n_3 ;
  wire \steps_remaining_reg[8]_i_2_n_4 ;
  wire \steps_remaining_reg[8]_i_2_n_5 ;
  wire \steps_remaining_reg[8]_i_2_n_6 ;
  wire \steps_remaining_reg[8]_i_2_n_7 ;
  wire wdata_pending_i_1_n_0;
  wire wdata_pending_i_2_n_0;
  wire wdata_pending_reg_n_0;
  wire wdata_reg0;
  wire \wdata_reg_reg_n_0_[0] ;
  wire \wdata_reg_reg_n_0_[10] ;
  wire \wdata_reg_reg_n_0_[11] ;
  wire \wdata_reg_reg_n_0_[12] ;
  wire \wdata_reg_reg_n_0_[13] ;
  wire \wdata_reg_reg_n_0_[14] ;
  wire \wdata_reg_reg_n_0_[15] ;
  wire \wdata_reg_reg_n_0_[16] ;
  wire \wdata_reg_reg_n_0_[17] ;
  wire \wdata_reg_reg_n_0_[18] ;
  wire \wdata_reg_reg_n_0_[19] ;
  wire \wdata_reg_reg_n_0_[20] ;
  wire \wdata_reg_reg_n_0_[21] ;
  wire \wdata_reg_reg_n_0_[22] ;
  wire \wdata_reg_reg_n_0_[23] ;
  wire \wdata_reg_reg_n_0_[24] ;
  wire \wdata_reg_reg_n_0_[25] ;
  wire \wdata_reg_reg_n_0_[26] ;
  wire \wdata_reg_reg_n_0_[27] ;
  wire \wdata_reg_reg_n_0_[28] ;
  wire \wdata_reg_reg_n_0_[29] ;
  wire \wdata_reg_reg_n_0_[30] ;
  wire \wdata_reg_reg_n_0_[31] ;
  wire \wdata_reg_reg_n_0_[3] ;
  wire \wdata_reg_reg_n_0_[4] ;
  wire \wdata_reg_reg_n_0_[5] ;
  wire \wdata_reg_reg_n_0_[6] ;
  wire \wdata_reg_reg_n_0_[7] ;
  wire \wdata_reg_reg_n_0_[8] ;
  wire \wdata_reg_reg_n_0_[9] ;
  wire \wstrb_reg_reg_n_0_[0] ;
  wire \wstrb_reg_reg_n_0_[3] ;
  wire [7:6]\NLW_steps_remaining0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [7:7]\NLW_steps_remaining0_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [7:6]\NLW_steps_remaining_reg[29]_i_3_CO_UNCONNECTED ;
  wire [7:7]\NLW_steps_remaining_reg[29]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \FSM_onehot_phase_state[0]_i_1 
       (.I0(psdone),
        .I1(psdone_d1),
        .I2(\FSM_onehot_phase_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_phase_state[1]_i_5_n_0 ),
        .I4(\FSM_onehot_phase_state[1]_i_4_n_0 ),
        .I5(\FSM_onehot_phase_state[1]_i_3_n_0 ),
        .O(\FSM_onehot_phase_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFF0000)) 
    \FSM_onehot_phase_state[1]_i_1 
       (.I0(\FSM_onehot_phase_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_phase_state[1]_i_3_n_0 ),
        .I2(\FSM_onehot_phase_state[1]_i_4_n_0 ),
        .I3(\FSM_onehot_phase_state[1]_i_5_n_0 ),
        .I4(\FSM_onehot_phase_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_phase_state_reg_n_0_[0] ),
        .O(\FSM_onehot_phase_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_phase_state[1]_i_10 
       (.I0(steps_remaining[3]),
        .I1(steps_remaining[9]),
        .I2(steps_remaining[11]),
        .I3(steps_remaining[13]),
        .O(\FSM_onehot_phase_state[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_phase_state[1]_i_2 
       (.I0(psdone),
        .I1(psdone_d1),
        .O(\FSM_onehot_phase_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_phase_state[1]_i_3 
       (.I0(steps_remaining[30]),
        .I1(steps_remaining[20]),
        .I2(steps_remaining[14]),
        .I3(steps_remaining[18]),
        .I4(\FSM_onehot_phase_state[1]_i_6_n_0 ),
        .O(\FSM_onehot_phase_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_phase_state[1]_i_4 
       (.I0(steps_remaining[15]),
        .I1(steps_remaining[22]),
        .I2(steps_remaining[10]),
        .I3(steps_remaining[4]),
        .I4(\FSM_onehot_phase_state[1]_i_7_n_0 ),
        .O(\FSM_onehot_phase_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_onehot_phase_state[1]_i_5 
       (.I0(\FSM_onehot_phase_state[1]_i_8_n_0 ),
        .I1(\FSM_onehot_phase_state[1]_i_9_n_0 ),
        .I2(\FSM_onehot_phase_state[1]_i_10_n_0 ),
        .I3(steps_remaining[17]),
        .I4(steps_remaining[19]),
        .I5(steps_remaining[23]),
        .O(\FSM_onehot_phase_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_phase_state[1]_i_6 
       (.I0(steps_remaining[31]),
        .I1(steps_remaining[24]),
        .I2(steps_remaining[6]),
        .I3(steps_remaining[12]),
        .O(\FSM_onehot_phase_state[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_phase_state[1]_i_7 
       (.I0(steps_remaining[16]),
        .I1(steps_remaining[7]),
        .I2(steps_remaining[2]),
        .I3(steps_remaining[8]),
        .O(\FSM_onehot_phase_state[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_phase_state[1]_i_8 
       (.I0(steps_remaining[21]),
        .I1(steps_remaining[25]),
        .I2(steps_remaining[26]),
        .I3(steps_remaining[5]),
        .O(\FSM_onehot_phase_state[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_phase_state[1]_i_9 
       (.I0(steps_remaining[27]),
        .I1(steps_remaining[28]),
        .I2(steps_remaining[29]),
        .I3(steps_remaining[1]),
        .O(\FSM_onehot_phase_state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE000FFFF)) 
    \FSM_onehot_phase_state[2]_i_1 
       (.I0(\FSM_onehot_phase_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_phase_state_reg_n_0_[2] ),
        .I2(psincdec_i_2_n_0),
        .I3(\active_target_sel[2]_i_1_n_0 ),
        .I4(\FSM_onehot_phase_state[2]_i_2_n_0 ),
        .I5(\FSM_onehot_phase_state_reg_n_0_[1] ),
        .O(\FSM_onehot_phase_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_onehot_phase_state[2]_i_2 
       (.I0(\FSM_onehot_phase_state_reg_n_0_[2] ),
        .I1(psdone_d1),
        .I2(psdone),
        .O(\FSM_onehot_phase_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_WAIT_DONE:100,STATE_IDLE:001,STATE_ASSERT_PS:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_phase_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_phase_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_phase_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_phase_state_reg_n_0_[0] ),
        .S(s_axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "STATE_WAIT_DONE:100,STATE_IDLE:001,STATE_ASSERT_PS:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_phase_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_phase_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_phase_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_phase_state_reg_n_0_[1] ),
        .R(s_axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "STATE_WAIT_DONE:100,STATE_IDLE:001,STATE_ASSERT_PS:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_phase_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_phase_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_phase_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_phase_state_reg_n_0_[2] ),
        .R(s_axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h55545555)) 
    \active_target_sel[2]_i_1 
       (.I0(\active_target_sel[2]_i_2_n_0 ),
        .I1(\active_target_sel[2]_i_3_n_0 ),
        .I2(\active_target_sel[2]_i_4_n_0 ),
        .I3(\active_target_sel[2]_i_5_n_0 ),
        .I4(\active_target_sel[2]_i_6_n_0 ),
        .O(\active_target_sel[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \active_target_sel[2]_i_10 
       (.I0(sel0[9]),
        .I1(sel0[8]),
        .I2(sel0[11]),
        .I3(sel0[10]),
        .O(\active_target_sel[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \active_target_sel[2]_i_11 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[7]),
        .I3(sel0[6]),
        .O(\active_target_sel[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBBBBBFFFFFFFF)) 
    \active_target_sel[2]_i_2 
       (.I0(busy_reg_reg_n_0),
        .I1(clk_wiz_locked),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(start_pulse),
        .O(\active_target_sel[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \active_target_sel[2]_i_3 
       (.I0(sel0[30]),
        .I1(sel0[31]),
        .I2(sel0[12]),
        .I3(sel0[13]),
        .I4(\active_target_sel[2]_i_7_n_0 ),
        .O(\active_target_sel[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \active_target_sel[2]_i_4 
       (.I0(sel0[25]),
        .I1(sel0[24]),
        .I2(sel0[15]),
        .I3(sel0[14]),
        .O(\active_target_sel[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \active_target_sel[2]_i_5 
       (.I0(sel0[27]),
        .I1(sel0[26]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(\active_target_sel[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \active_target_sel[2]_i_6 
       (.I0(\active_target_sel[2]_i_8_n_0 ),
        .I1(\active_target_sel[2]_i_9_n_0 ),
        .I2(\active_target_sel[2]_i_10_n_0 ),
        .I3(\active_target_sel[2]_i_11_n_0 ),
        .O(\active_target_sel[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \active_target_sel[2]_i_7 
       (.I0(sel0[29]),
        .I1(sel0[28]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(\active_target_sel[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \active_target_sel[2]_i_8 
       (.I0(sel0[23]),
        .I1(sel0[22]),
        .I2(sel0[17]),
        .I3(sel0[16]),
        .O(\active_target_sel[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \active_target_sel[2]_i_9 
       (.I0(sel0[19]),
        .I1(sel0[18]),
        .I2(sel0[21]),
        .I3(sel0[20]),
        .O(\active_target_sel[2]_i_9_n_0 ));
  FDRE \active_target_sel_reg[0] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(Q[0]),
        .Q(active_target_sel[0]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \active_target_sel_reg[1] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(Q[1]),
        .Q(active_target_sel[1]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \active_target_sel_reg[2] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(Q[2]),
        .Q(active_target_sel[2]),
        .R(s_axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr_reg[5]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid_reg_0),
        .O(s_axi_rresp0));
  FDRE \araddr_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp0),
        .D(s_axi_araddr[0]),
        .Q(\araddr_reg_reg_n_0_[2] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \araddr_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp0),
        .D(s_axi_araddr[1]),
        .Q(\araddr_reg_reg_n_0_[3] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \araddr_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp0),
        .D(s_axi_araddr[2]),
        .Q(\araddr_reg_reg_n_0_[4] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \araddr_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp0),
        .D(s_axi_araddr[3]),
        .Q(\araddr_reg_reg_n_0_[5] ),
        .R(s_axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    awaddr_pending_i_1
       (.I0(s_axi_awvalid),
        .I1(awaddr_pending),
        .O(awaddr_pending_i_1_n_0));
  FDRE awaddr_pending_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(awaddr_pending_i_1_n_0),
        .Q(awaddr_pending),
        .R(wdata_pending_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr_reg[5]_i_1 
       (.I0(s_axi_awvalid),
        .I1(awaddr_pending),
        .O(awaddr_reg0));
  FDRE \awaddr_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(awaddr_reg0),
        .D(s_axi_awaddr[0]),
        .Q(awaddr_reg[2]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \awaddr_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(awaddr_reg0),
        .D(s_axi_awaddr[1]),
        .Q(awaddr_reg[3]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \awaddr_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(awaddr_reg0),
        .D(s_axi_awaddr[2]),
        .Q(p_0_in0),
        .R(s_axi_awready_i_1_n_0));
  FDRE \awaddr_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(awaddr_reg0),
        .D(s_axi_awaddr[3]),
        .Q(\awaddr_reg_reg_n_0_[5] ),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hA8A8A8FFA8A8A800)) 
    busy_reg_i_1
       (.I0(start_pulse),
        .I1(\FSM_onehot_phase_state[1]_i_1_n_0 ),
        .I2(\FSM_onehot_phase_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_phase_state[0]_i_1_n_0 ),
        .I4(busy_reg_i_2_n_0),
        .I5(busy_reg_reg_n_0),
        .O(busy_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000045454505)) 
    busy_reg_i_2
       (.I0(\active_target_sel[2]_i_2_n_0 ),
        .I1(busy_reg_i_3_n_0),
        .I2(\active_target_sel[2]_i_6_n_0 ),
        .I3(psincdec_i_3_n_0),
        .I4(\last_applied_steps_reg[31]_i_3_n_0 ),
        .I5(done_sticky_i_2_n_0),
        .O(busy_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    busy_reg_i_3
       (.I0(\active_target_sel[2]_i_7_n_0 ),
        .I1(busy_reg_i_4_n_0),
        .I2(sel0[31]),
        .I3(sel0[30]),
        .I4(\active_target_sel[2]_i_4_n_0 ),
        .I5(\active_target_sel[2]_i_5_n_0 ),
        .O(busy_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    busy_reg_i_4
       (.I0(sel0[12]),
        .I1(sel0[13]),
        .O(busy_reg_i_4_n_0));
  FDRE busy_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(busy_reg_i_1_n_0),
        .Q(busy_reg_reg_n_0),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFEEEFFFFF2220)) 
    done_sticky_i_1
       (.I0(\last_applied_steps_reg[31]_i_2_n_0 ),
        .I1(done_sticky_i_2_n_0),
        .I2(\active_target_sel[2]_i_1_n_0 ),
        .I3(done_sticky_i_3_n_0),
        .I4(\FSM_onehot_phase_state[0]_i_1_n_0 ),
        .I5(done_sticky_reg_n_0),
        .O(done_sticky_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h01)) 
    done_sticky_i_2
       (.I0(\FSM_onehot_phase_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_phase_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_phase_state_reg_n_0_[2] ),
        .O(done_sticky_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    done_sticky_i_3
       (.I0(p_0_in14_in),
        .I1(awaddr_reg[2]),
        .I2(awaddr_reg[3]),
        .I3(\wstrb_reg_reg_n_0_[0] ),
        .I4(\phase_target_sel[2]_i_3_n_0 ),
        .O(done_sticky_i_3_n_0));
  FDRE done_sticky_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(done_sticky_i_1_n_0),
        .Q(done_sticky_reg_n_0),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFBBBBBFFF00000)) 
    error_sticky_i_1
       (.I0(error_sticky_i_2_n_0),
        .I1(p_0_in13_in),
        .I2(error_sticky_i_3_n_0),
        .I3(error_sticky_i_4_n_0),
        .I4(start_pulse),
        .I5(error_sticky),
        .O(error_sticky_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    error_sticky_i_2
       (.I0(\phase_target_sel[2]_i_3_n_0 ),
        .I1(\wstrb_reg_reg_n_0_[0] ),
        .I2(awaddr_reg[3]),
        .I3(awaddr_reg[2]),
        .O(error_sticky_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFF80FF)) 
    error_sticky_i_3
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(clk_wiz_locked),
        .I4(busy_reg_reg_n_0),
        .O(error_sticky_i_3_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    error_sticky_i_4
       (.I0(\active_target_sel[2]_i_6_n_0 ),
        .I1(\active_target_sel[2]_i_5_n_0 ),
        .I2(\active_target_sel[2]_i_4_n_0 ),
        .I3(\active_target_sel[2]_i_3_n_0 ),
        .O(error_sticky_i_4_n_0));
  FDRE error_sticky_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(error_sticky_i_1_n_0),
        .Q(error_sticky),
        .R(s_axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(steps_remaining[8]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__0
       (.I0(steps_remaining[24]),
        .O(i__carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__1
       (.I0(steps_remaining[16]),
        .O(i__carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__2
       (.I0(steps_remaining[31]),
        .O(i__carry_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(steps_remaining[7]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__0
       (.I0(steps_remaining[15]),
        .O(i__carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__1
       (.I0(steps_remaining[30]),
        .O(i__carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__2
       (.I0(steps_remaining[23]),
        .O(i__carry_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(steps_remaining[14]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__0
       (.I0(steps_remaining[6]),
        .O(i__carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__1
       (.I0(steps_remaining[29]),
        .O(i__carry_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__2
       (.I0(steps_remaining[22]),
        .O(i__carry_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(steps_remaining[13]),
        .O(i__carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__0
       (.I0(steps_remaining[5]),
        .O(i__carry_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__1
       (.I0(steps_remaining[28]),
        .O(i__carry_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__2
       (.I0(steps_remaining[21]),
        .O(i__carry_i_4__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_5
       (.I0(steps_remaining[12]),
        .O(i__carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_5__0
       (.I0(steps_remaining[4]),
        .O(i__carry_i_5__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_5__1
       (.I0(steps_remaining[27]),
        .O(i__carry_i_5__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_5__2
       (.I0(steps_remaining[20]),
        .O(i__carry_i_5__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_6
       (.I0(steps_remaining[11]),
        .O(i__carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_6__0
       (.I0(steps_remaining[3]),
        .O(i__carry_i_6__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_6__1
       (.I0(steps_remaining[26]),
        .O(i__carry_i_6__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_6__2
       (.I0(steps_remaining[19]),
        .O(i__carry_i_6__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_7
       (.I0(steps_remaining[10]),
        .O(i__carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_7__0
       (.I0(steps_remaining[2]),
        .O(i__carry_i_7__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_7__1
       (.I0(steps_remaining[25]),
        .O(i__carry_i_7__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_7__2
       (.I0(steps_remaining[18]),
        .O(i__carry_i_7__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_8
       (.I0(steps_remaining[9]),
        .O(i__carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_8__0
       (.I0(steps_remaining[1]),
        .O(i__carry_i_8__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_8__1
       (.I0(steps_remaining[17]),
        .O(i__carry_i_8__1_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    irq_INST_0
       (.I0(current_value),
        .I1(done_sticky_reg_n_0),
        .I2(error_sticky),
        .O(irq));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    irq_enable_i_1
       (.I0(\wdata_reg_reg_n_0_[16] ),
        .I1(p_0_in0_0),
        .I2(awaddr_reg[2]),
        .I3(awaddr_reg[3]),
        .I4(\phase_target_sel[2]_i_3_n_0 ),
        .I5(current_value),
        .O(irq_enable_i_1_n_0));
  FDRE irq_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irq_enable_i_1_n_0),
        .Q(current_value),
        .R(s_axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \last_applied_steps_reg[31]_i_1 
       (.I0(\last_applied_steps_reg[31]_i_2_n_0 ),
        .I1(s_axi_aresetn),
        .O(\last_applied_steps_reg[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \last_applied_steps_reg[31]_i_2 
       (.I0(\active_target_sel[2]_i_6_n_0 ),
        .I1(\last_applied_steps_reg[31]_i_3_n_0 ),
        .I2(psincdec_i_3_n_0),
        .I3(\active_target_sel[2]_i_2_n_0 ),
        .O(\last_applied_steps_reg[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \last_applied_steps_reg[31]_i_3 
       (.I0(\active_target_sel[2]_i_5_n_0 ),
        .I1(sel0[28]),
        .I2(sel0[29]),
        .I3(sel0[12]),
        .I4(sel0[13]),
        .O(\last_applied_steps_reg[31]_i_3_n_0 ));
  FDRE \last_applied_steps_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[0]),
        .Q(last_applied_steps_reg[0]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[10]),
        .Q(last_applied_steps_reg[10]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[11]),
        .Q(last_applied_steps_reg[11]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[12]),
        .Q(last_applied_steps_reg[12]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[13]),
        .Q(last_applied_steps_reg[13]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[14]),
        .Q(last_applied_steps_reg[14]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[15]),
        .Q(last_applied_steps_reg[15]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[16]),
        .Q(last_applied_steps_reg[16]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[17]),
        .Q(last_applied_steps_reg[17]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[18]),
        .Q(last_applied_steps_reg[18]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[19]),
        .Q(last_applied_steps_reg[19]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[1]),
        .Q(last_applied_steps_reg[1]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[20]),
        .Q(last_applied_steps_reg[20]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[21]),
        .Q(last_applied_steps_reg[21]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[22]),
        .Q(last_applied_steps_reg[22]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[23]),
        .Q(last_applied_steps_reg[23]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[24]),
        .Q(last_applied_steps_reg[24]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[25]),
        .Q(last_applied_steps_reg[25]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[26]),
        .Q(last_applied_steps_reg[26]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[27]),
        .Q(last_applied_steps_reg[27]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[28]),
        .Q(last_applied_steps_reg[28]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[29]),
        .Q(last_applied_steps_reg[29]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[2]),
        .Q(last_applied_steps_reg[2]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[30]),
        .Q(last_applied_steps_reg[30]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[31]),
        .Q(last_applied_steps_reg[31]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[3]),
        .Q(last_applied_steps_reg[3]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[4]),
        .Q(last_applied_steps_reg[4]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[5]),
        .Q(last_applied_steps_reg[5]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[6]),
        .Q(last_applied_steps_reg[6]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[7]),
        .Q(last_applied_steps_reg[7]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[8]),
        .Q(last_applied_steps_reg[8]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  FDRE \last_applied_steps_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(\active_target_sel[2]_i_1_n_0 ),
        .D(sel0[9]),
        .Q(last_applied_steps_reg[9]),
        .R(\last_applied_steps_reg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \phase_target_onehot[0]_INST_0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(phase_target_onehot[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \phase_target_onehot[1]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(phase_target_onehot[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \phase_target_onehot[2]_INST_0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(phase_target_onehot[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \phase_target_onehot[3]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(phase_target_onehot[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \phase_target_onehot[4]_INST_0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(phase_target_onehot[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \phase_target_onehot[5]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(phase_target_onehot[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \phase_target_onehot[6]_INST_0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(phase_target_onehot[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \phase_target_sel[0]_i_1 
       (.I0(\wdata_reg_reg_n_0_[8] ),
        .I1(p_2_in),
        .I2(Q[0]),
        .O(\phase_target_sel[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \phase_target_sel[1]_i_1 
       (.I0(\wdata_reg_reg_n_0_[9] ),
        .I1(p_2_in),
        .I2(Q[1]),
        .O(\phase_target_sel[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \phase_target_sel[2]_i_1 
       (.I0(awaddr_reg[2]),
        .I1(awaddr_reg[3]),
        .I2(\phase_target_sel[2]_i_3_n_0 ),
        .O(irq_enable12_out));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \phase_target_sel[2]_i_2 
       (.I0(\wdata_reg_reg_n_0_[10] ),
        .I1(p_2_in),
        .I2(Q[2]),
        .O(\phase_target_sel[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \phase_target_sel[2]_i_3 
       (.I0(\awaddr_reg_reg_n_0_[5] ),
        .I1(p_0_in0),
        .I2(s_axi_bvalid_reg_0),
        .I3(wdata_pending_reg_n_0),
        .I4(awaddr_pending),
        .O(\phase_target_sel[2]_i_3_n_0 ));
  FDRE \phase_target_sel_reg[0] 
       (.C(s_axi_aclk),
        .CE(irq_enable12_out),
        .D(\phase_target_sel[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \phase_target_sel_reg[1] 
       (.C(s_axi_aclk),
        .CE(irq_enable12_out),
        .D(\phase_target_sel[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \phase_target_sel_reg[2] 
       (.C(s_axi_aclk),
        .CE(irq_enable12_out),
        .D(\phase_target_sel[2]_i_2_n_0 ),
        .Q(Q[2]),
        .R(s_axi_awready_i_1_n_0));
  FDRE psdone_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(psdone),
        .Q(psdone_d1),
        .R(s_axi_awready_i_1_n_0));
  FDRE psen_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_phase_state_reg_n_0_[1] ),
        .Q(psen),
        .R(s_axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h7F40)) 
    psincdec_i_1
       (.I0(sel0[31]),
        .I1(psincdec_i_2_n_0),
        .I2(\active_target_sel[2]_i_1_n_0 ),
        .I3(psincdec),
        .O(psincdec_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    psincdec_i_2
       (.I0(psincdec_i_3_n_0),
        .I1(\active_target_sel[2]_i_5_n_0 ),
        .I2(psincdec_i_4_n_0),
        .I3(sel0[12]),
        .I4(sel0[13]),
        .I5(\active_target_sel[2]_i_6_n_0 ),
        .O(psincdec_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    psincdec_i_3
       (.I0(\active_target_sel[2]_i_4_n_0 ),
        .I1(sel0[31]),
        .I2(sel0[30]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .O(psincdec_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    psincdec_i_4
       (.I0(sel0[28]),
        .I1(sel0[29]),
        .O(psincdec_i_4_n_0));
  FDSE psincdec_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(psincdec_i_1_n_0),
        .Q(psincdec),
        .S(s_axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_arready_i_1
       (.I0(s_axi_rvalid_reg_0),
        .O(s_axi_arready0));
  FDRE s_axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_arready0),
        .Q(s_axi_arready),
        .R(s_axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_awready_i_1
       (.I0(s_axi_aresetn),
        .O(s_axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_awready_i_2
       (.I0(awaddr_pending),
        .O(s_axi_awready0));
  FDRE s_axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_awready0),
        .Q(s_axi_awready),
        .R(s_axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h55C00000)) 
    s_axi_bvalid_i_1
       (.I0(s_axi_bready),
        .I1(wdata_pending_reg_n_0),
        .I2(awaddr_pending),
        .I3(s_axi_bvalid_reg_0),
        .I4(s_axi_aresetn),
        .O(s_axi_bvalid_i_1_n_0));
  FDRE s_axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h001F0010)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\araddr_reg_reg_n_0_[3] ),
        .I2(\araddr_reg_reg_n_0_[4] ),
        .I3(\araddr_reg_reg_n_0_[5] ),
        .I4(\s_axi_rdata[0]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[0]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \s_axi_rdata[0]_INST_0_i_1 
       (.I0(last_applied_steps_reg[0]),
        .I1(sel0[0]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(busy_reg_reg_n_0),
        .I4(\araddr_reg_reg_n_0_[2] ),
        .O(\s_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(\s_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(\araddr_reg_reg_n_0_[5] ),
        .I2(\araddr_reg_reg_n_0_[4] ),
        .O(s_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[10]_INST_0_i_1 
       (.I0(last_applied_steps_reg[10]),
        .I1(sel0[10]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(active_target_sel[2]),
        .I4(\araddr_reg_reg_n_0_[2] ),
        .I5(Q[2]),
        .O(\s_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(sel0[11]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(last_applied_steps_reg[11]),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .I4(\araddr_reg_reg_n_0_[4] ),
        .I5(\araddr_reg_reg_n_0_[5] ),
        .O(s_axi_rdata[11]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(sel0[12]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(last_applied_steps_reg[12]),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .I4(\araddr_reg_reg_n_0_[4] ),
        .I5(\araddr_reg_reg_n_0_[5] ),
        .O(s_axi_rdata[12]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(sel0[13]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(last_applied_steps_reg[13]),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .I4(\araddr_reg_reg_n_0_[4] ),
        .I5(\araddr_reg_reg_n_0_[5] ),
        .O(s_axi_rdata[13]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(sel0[14]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(last_applied_steps_reg[14]),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .I4(\araddr_reg_reg_n_0_[4] ),
        .I5(\araddr_reg_reg_n_0_[5] ),
        .O(s_axi_rdata[14]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(sel0[15]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(last_applied_steps_reg[15]),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .I4(\araddr_reg_reg_n_0_[4] ),
        .I5(\araddr_reg_reg_n_0_[5] ),
        .O(s_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hBABBBABBBBBBAABB)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(\s_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(\s_axi_rdata[16]_INST_0_i_2_n_0 ),
        .I2(last_applied_steps_reg[16]),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .I4(sel0[16]),
        .I5(\araddr_reg_reg_n_0_[2] ),
        .O(s_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_axi_rdata[16]_INST_0_i_1 
       (.I0(\araddr_reg_reg_n_0_[3] ),
        .I1(\araddr_reg_reg_n_0_[4] ),
        .I2(\araddr_reg_reg_n_0_[5] ),
        .I3(\araddr_reg_reg_n_0_[2] ),
        .O(\s_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEFEFEEEFEF)) 
    \s_axi_rdata[16]_INST_0_i_2 
       (.I0(\araddr_reg_reg_n_0_[5] ),
        .I1(\araddr_reg_reg_n_0_[4] ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(\araddr_reg_reg_n_0_[2] ),
        .I4(current_value),
        .I5(steps_remaining[0]),
        .O(\s_axi_rdata[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(steps_remaining[1]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[17]),
        .I4(last_applied_steps_reg[17]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[17]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(steps_remaining[2]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[18]),
        .I4(last_applied_steps_reg[18]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[18]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(steps_remaining[3]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[19]),
        .I4(last_applied_steps_reg[19]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h001F0010)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\araddr_reg_reg_n_0_[3] ),
        .I2(\araddr_reg_reg_n_0_[4] ),
        .I3(\araddr_reg_reg_n_0_[5] ),
        .I4(\s_axi_rdata[1]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[1]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \s_axi_rdata[1]_INST_0_i_1 
       (.I0(last_applied_steps_reg[1]),
        .I1(sel0[1]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(done_sticky_reg_n_0),
        .I4(\araddr_reg_reg_n_0_[2] ),
        .O(\s_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(steps_remaining[4]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[20]),
        .I4(last_applied_steps_reg[20]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[20]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(steps_remaining[5]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[21]),
        .I4(last_applied_steps_reg[21]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[21]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(steps_remaining[6]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[22]),
        .I4(last_applied_steps_reg[22]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[22]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(steps_remaining[7]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[23]),
        .I4(last_applied_steps_reg[23]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[23]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(steps_remaining[8]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[24]),
        .I4(last_applied_steps_reg[24]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[24]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(steps_remaining[9]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[25]),
        .I4(last_applied_steps_reg[25]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[25]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(steps_remaining[10]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[26]),
        .I4(last_applied_steps_reg[26]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[26]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(steps_remaining[11]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[27]),
        .I4(last_applied_steps_reg[27]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[27]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(steps_remaining[12]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[28]),
        .I4(last_applied_steps_reg[28]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[28]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(steps_remaining[13]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[29]),
        .I4(last_applied_steps_reg[29]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[29]));
  LUT5 #(
    .INIT(32'h001F0010)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\araddr_reg_reg_n_0_[3] ),
        .I2(\araddr_reg_reg_n_0_[4] ),
        .I3(\araddr_reg_reg_n_0_[5] ),
        .I4(\s_axi_rdata[2]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \s_axi_rdata[2]_INST_0_i_1 
       (.I0(last_applied_steps_reg[2]),
        .I1(sel0[2]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(error_sticky),
        .I4(\araddr_reg_reg_n_0_[2] ),
        .O(\s_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(steps_remaining[14]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[30]),
        .I4(last_applied_steps_reg[30]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[30]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(steps_remaining[15]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[31]),
        .I4(last_applied_steps_reg[31]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[31]_INST_0_i_1 
       (.I0(\araddr_reg_reg_n_0_[4] ),
        .I1(\araddr_reg_reg_n_0_[5] ),
        .O(\s_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(clk_wiz_locked),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[3]),
        .I4(last_applied_steps_reg[3]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[3]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(psdone),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[4]),
        .I4(last_applied_steps_reg[4]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[4]));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(psincdec),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(sel0[5]),
        .I4(last_applied_steps_reg[5]),
        .I5(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[5]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(sel0[6]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(last_applied_steps_reg[6]),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .I4(\araddr_reg_reg_n_0_[4] ),
        .I5(\araddr_reg_reg_n_0_[5] ),
        .O(s_axi_rdata[6]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(sel0[7]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(last_applied_steps_reg[7]),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .I4(\araddr_reg_reg_n_0_[4] ),
        .I5(\araddr_reg_reg_n_0_[5] ),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(\s_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(\araddr_reg_reg_n_0_[5] ),
        .I2(\araddr_reg_reg_n_0_[4] ),
        .O(s_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[8]_INST_0_i_1 
       (.I0(last_applied_steps_reg[8]),
        .I1(sel0[8]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(active_target_sel[0]),
        .I4(\araddr_reg_reg_n_0_[2] ),
        .I5(Q[0]),
        .O(\s_axi_rdata[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(\s_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\araddr_reg_reg_n_0_[5] ),
        .I2(\araddr_reg_reg_n_0_[4] ),
        .O(s_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[9]_INST_0_i_1 
       (.I0(last_applied_steps_reg[9]),
        .I1(sel0[9]),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(active_target_sel[1]),
        .I4(\araddr_reg_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(\s_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5C00)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_rready),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(s_axi_aresetn),
        .O(s_axi_rvalid_i_1_n_0));
  FDRE s_axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_wready_i_1
       (.I0(wdata_pending_reg_n_0),
        .O(s_axi_wready0));
  FDRE s_axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wready0),
        .Q(s_axi_wready),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    start_pulse_i_1
       (.I0(\phase_target_sel[2]_i_3_n_0 ),
        .I1(awaddr_reg[3]),
        .I2(awaddr_reg[2]),
        .I3(s_axi_aresetn),
        .I4(\wstrb_reg_reg_n_0_[0] ),
        .I5(\wdata_reg_reg_n_0_[0] ),
        .O(start_pulse_i_1_n_0));
  FDRE start_pulse_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start_pulse_i_1_n_0),
        .Q(start_pulse),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0040)) 
    \step_count_reg[15]_i_1 
       (.I0(awaddr_reg[2]),
        .I1(awaddr_reg[3]),
        .I2(p_2_in),
        .I3(\phase_target_sel[2]_i_3_n_0 ),
        .O(\step_count_reg[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \step_count_reg[23]_i_1 
       (.I0(awaddr_reg[2]),
        .I1(awaddr_reg[3]),
        .I2(p_0_in0_0),
        .I3(\phase_target_sel[2]_i_3_n_0 ),
        .O(\step_count_reg[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \step_count_reg[31]_i_1 
       (.I0(awaddr_reg[2]),
        .I1(awaddr_reg[3]),
        .I2(\wstrb_reg_reg_n_0_[3] ),
        .I3(\phase_target_sel[2]_i_3_n_0 ),
        .O(\step_count_reg[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \step_count_reg[7]_i_1 
       (.I0(\phase_target_sel[2]_i_3_n_0 ),
        .I1(\wstrb_reg_reg_n_0_[0] ),
        .I2(awaddr_reg[3]),
        .I3(awaddr_reg[2]),
        .O(\step_count_reg[7]_i_1_n_0 ));
  FDRE \step_count_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[7]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[0] ),
        .Q(sel0[0]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[15]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[10] ),
        .Q(sel0[10]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[15]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[11] ),
        .Q(sel0[11]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[15]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[12] ),
        .Q(sel0[12]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[15]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[13] ),
        .Q(sel0[13]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[15]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[14] ),
        .Q(sel0[14]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[15]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[15] ),
        .Q(sel0[15]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[23]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[16] ),
        .Q(sel0[16]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[23]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[17] ),
        .Q(sel0[17]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[23]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[18] ),
        .Q(sel0[18]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[23]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[19] ),
        .Q(sel0[19]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[7]_i_1_n_0 ),
        .D(p_0_in14_in),
        .Q(sel0[1]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[23]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[20] ),
        .Q(sel0[20]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[23]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[21] ),
        .Q(sel0[21]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[23]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[22] ),
        .Q(sel0[22]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[23]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[23] ),
        .Q(sel0[23]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[31]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[24] ),
        .Q(sel0[24]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[31]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[25] ),
        .Q(sel0[25]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[31]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[26] ),
        .Q(sel0[26]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[31]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[27] ),
        .Q(sel0[27]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[31]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[28] ),
        .Q(sel0[28]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[31]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[29] ),
        .Q(sel0[29]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[7]_i_1_n_0 ),
        .D(p_0_in13_in),
        .Q(sel0[2]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[31]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[30] ),
        .Q(sel0[30]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[31]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[31] ),
        .Q(sel0[31]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[7]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[3] ),
        .Q(sel0[3]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[7]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[4] ),
        .Q(sel0[4]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[7]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[5] ),
        .Q(sel0[5]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[7]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[6] ),
        .Q(sel0[6]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[7]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[7] ),
        .Q(sel0[7]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[15]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[8] ),
        .Q(sel0[8]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \step_count_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(\step_count_reg[15]_i_1_n_0 ),
        .D(\wdata_reg_reg_n_0_[9] ),
        .Q(sel0[9]),
        .R(s_axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \steps_remaining0_inferred__0/i__carry 
       (.CI(steps_remaining[0]),
        .CI_TOP(1'b0),
        .CO({\steps_remaining0_inferred__0/i__carry_n_0 ,\steps_remaining0_inferred__0/i__carry_n_1 ,\steps_remaining0_inferred__0/i__carry_n_2 ,\steps_remaining0_inferred__0/i__carry_n_3 ,\steps_remaining0_inferred__0/i__carry_n_4 ,\steps_remaining0_inferred__0/i__carry_n_5 ,\steps_remaining0_inferred__0/i__carry_n_6 ,\steps_remaining0_inferred__0/i__carry_n_7 }),
        .DI(steps_remaining[8:1]),
        .O(steps_remaining0[8:1]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0,i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \steps_remaining0_inferred__0/i__carry__0 
       (.CI(\steps_remaining0_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\steps_remaining0_inferred__0/i__carry__0_n_0 ,\steps_remaining0_inferred__0/i__carry__0_n_1 ,\steps_remaining0_inferred__0/i__carry__0_n_2 ,\steps_remaining0_inferred__0/i__carry__0_n_3 ,\steps_remaining0_inferred__0/i__carry__0_n_4 ,\steps_remaining0_inferred__0/i__carry__0_n_5 ,\steps_remaining0_inferred__0/i__carry__0_n_6 ,\steps_remaining0_inferred__0/i__carry__0_n_7 }),
        .DI(steps_remaining[16:9]),
        .O(steps_remaining0[16:9]),
        .S({i__carry_i_1__1_n_0,i__carry_i_2__0_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \steps_remaining0_inferred__0/i__carry__1 
       (.CI(\steps_remaining0_inferred__0/i__carry__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\steps_remaining0_inferred__0/i__carry__1_n_0 ,\steps_remaining0_inferred__0/i__carry__1_n_1 ,\steps_remaining0_inferred__0/i__carry__1_n_2 ,\steps_remaining0_inferred__0/i__carry__1_n_3 ,\steps_remaining0_inferred__0/i__carry__1_n_4 ,\steps_remaining0_inferred__0/i__carry__1_n_5 ,\steps_remaining0_inferred__0/i__carry__1_n_6 ,\steps_remaining0_inferred__0/i__carry__1_n_7 }),
        .DI(steps_remaining[24:17]),
        .O(steps_remaining0[24:17]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0,i__carry_i_5__2_n_0,i__carry_i_6__2_n_0,i__carry_i_7__2_n_0,i__carry_i_8__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \steps_remaining0_inferred__0/i__carry__2 
       (.CI(\steps_remaining0_inferred__0/i__carry__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_steps_remaining0_inferred__0/i__carry__2_CO_UNCONNECTED [7:6],\steps_remaining0_inferred__0/i__carry__2_n_2 ,\steps_remaining0_inferred__0/i__carry__2_n_3 ,\steps_remaining0_inferred__0/i__carry__2_n_4 ,\steps_remaining0_inferred__0/i__carry__2_n_5 ,\steps_remaining0_inferred__0/i__carry__2_n_6 ,\steps_remaining0_inferred__0/i__carry__2_n_7 }),
        .DI({1'b0,1'b0,steps_remaining[30:25]}),
        .O({\NLW_steps_remaining0_inferred__0/i__carry__2_O_UNCONNECTED [7],steps_remaining0[31:25]}),
        .S({1'b0,i__carry_i_1__2_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0,i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0}));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \steps_remaining[0]_i_1 
       (.I0(steps_remaining[0]),
        .I1(\FSM_onehot_phase_state[2]_i_2_n_0 ),
        .I2(\steps_remaining[31]_i_3_n_0 ),
        .I3(\steps_remaining[29]_i_2_n_0 ),
        .I4(sel0[0]),
        .O(\steps_remaining[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[10]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[10]),
        .I2(sel0[31]),
        .I3(sel0[10]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[10]),
        .O(\steps_remaining[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[11]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[11]),
        .I2(sel0[31]),
        .I3(sel0[11]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[11]),
        .O(\steps_remaining[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[12]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[12]),
        .I2(sel0[31]),
        .I3(sel0[12]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[12]),
        .O(\steps_remaining[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[13]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[13]),
        .I2(sel0[31]),
        .I3(sel0[13]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[13]),
        .O(\steps_remaining[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[14]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[14]),
        .I2(sel0[31]),
        .I3(sel0[14]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[14]),
        .O(\steps_remaining[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[15]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[15]),
        .I2(sel0[31]),
        .I3(sel0[15]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[15]),
        .O(\steps_remaining[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \steps_remaining[16]_i_1 
       (.I0(\steps_remaining[29]_i_4_n_0 ),
        .I1(steps_remaining0[16]),
        .I2(\steps_remaining[29]_i_2_n_0 ),
        .I3(steps_remaining1[16]),
        .I4(sel0[31]),
        .I5(sel0[16]),
        .O(\steps_remaining[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[16]_i_10 
       (.I0(sel0[9]),
        .O(p_0_in[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[16]_i_3 
       (.I0(sel0[16]),
        .O(\steps_remaining[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[16]_i_4 
       (.I0(sel0[15]),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[16]_i_5 
       (.I0(sel0[14]),
        .O(p_0_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[16]_i_6 
       (.I0(sel0[13]),
        .O(\steps_remaining[16]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[16]_i_7 
       (.I0(sel0[12]),
        .O(p_0_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[16]_i_8 
       (.I0(sel0[11]),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[16]_i_9 
       (.I0(sel0[10]),
        .O(\steps_remaining[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[17]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[17]),
        .I2(sel0[31]),
        .I3(sel0[17]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[17]),
        .O(\steps_remaining[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[18]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[18]),
        .I2(sel0[31]),
        .I3(sel0[18]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[18]),
        .O(\steps_remaining[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[19]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[19]),
        .I2(sel0[31]),
        .I3(sel0[19]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[19]),
        .O(\steps_remaining[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[1]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[1]),
        .I2(sel0[31]),
        .I3(sel0[1]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[1]),
        .O(\steps_remaining[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[20]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[20]),
        .I2(sel0[31]),
        .I3(sel0[20]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[20]),
        .O(\steps_remaining[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[21]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[21]),
        .I2(sel0[31]),
        .I3(sel0[21]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[21]),
        .O(\steps_remaining[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[22]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[22]),
        .I2(sel0[31]),
        .I3(sel0[22]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[22]),
        .O(\steps_remaining[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[23]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[23]),
        .I2(sel0[31]),
        .I3(sel0[23]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[23]),
        .O(\steps_remaining[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[24]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[24]),
        .I2(sel0[31]),
        .I3(sel0[24]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[24]),
        .O(\steps_remaining[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[24]_i_10 
       (.I0(sel0[17]),
        .O(p_0_in[17]));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[24]_i_3 
       (.I0(sel0[24]),
        .O(\steps_remaining[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[24]_i_4 
       (.I0(sel0[23]),
        .O(p_0_in[23]));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[24]_i_5 
       (.I0(sel0[22]),
        .O(\steps_remaining[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[24]_i_6 
       (.I0(sel0[21]),
        .O(\steps_remaining[24]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[24]_i_7 
       (.I0(sel0[20]),
        .O(p_0_in[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[24]_i_8 
       (.I0(sel0[19]),
        .O(\steps_remaining[24]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[24]_i_9 
       (.I0(sel0[18]),
        .O(\steps_remaining[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[25]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[25]),
        .I2(sel0[31]),
        .I3(sel0[25]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[25]),
        .O(\steps_remaining[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[26]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[26]),
        .I2(sel0[31]),
        .I3(sel0[26]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[26]),
        .O(\steps_remaining[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[27]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[27]),
        .I2(sel0[31]),
        .I3(sel0[27]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[27]),
        .O(\steps_remaining[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[28]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[28]),
        .I2(sel0[31]),
        .I3(sel0[28]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[28]),
        .O(\steps_remaining[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[29]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[29]),
        .I2(sel0[31]),
        .I3(sel0[29]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[29]),
        .O(\steps_remaining[29]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[29]_i_10 
       (.I0(sel0[26]),
        .O(p_0_in[26]));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[29]_i_11 
       (.I0(sel0[25]),
        .O(\steps_remaining[29]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00101111)) 
    \steps_remaining[29]_i_2 
       (.I0(\FSM_onehot_phase_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_phase_state_reg_n_0_[0] ),
        .I2(psdone),
        .I3(psdone_d1),
        .I4(\FSM_onehot_phase_state_reg_n_0_[2] ),
        .O(\steps_remaining[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDFDFDFDFFFDF)) 
    \steps_remaining[29]_i_4 
       (.I0(psdone),
        .I1(psdone_d1),
        .I2(\FSM_onehot_phase_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_phase_state[1]_i_5_n_0 ),
        .I4(\FSM_onehot_phase_state[1]_i_4_n_0 ),
        .I5(\FSM_onehot_phase_state[1]_i_3_n_0 ),
        .O(\steps_remaining[29]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[29]_i_5 
       (.I0(sel0[31]),
        .O(\steps_remaining[29]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[29]_i_6 
       (.I0(sel0[30]),
        .O(\steps_remaining[29]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[29]_i_7 
       (.I0(sel0[29]),
        .O(\steps_remaining[29]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[29]_i_8 
       (.I0(sel0[28]),
        .O(\steps_remaining[29]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[29]_i_9 
       (.I0(sel0[27]),
        .O(\steps_remaining[29]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[2]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[2]),
        .I2(sel0[31]),
        .I3(sel0[2]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[2]),
        .O(\steps_remaining[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \steps_remaining[30]_i_1 
       (.I0(psdone),
        .I1(psdone_d1),
        .I2(\FSM_onehot_phase_state_reg_n_0_[2] ),
        .I3(steps_remaining0[30]),
        .I4(\steps_remaining[31]_i_3_n_0 ),
        .I5(\steps_remaining[30]_i_2_n_0 ),
        .O(\steps_remaining[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \steps_remaining[30]_i_2 
       (.I0(sel0[30]),
        .I1(sel0[31]),
        .I2(steps_remaining1[30]),
        .I3(\steps_remaining[29]_i_2_n_0 ),
        .O(\steps_remaining[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFE000000FFFFFFFF)) 
    \steps_remaining[31]_i_1 
       (.I0(\FSM_onehot_phase_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_phase_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_phase_state_reg_n_0_[2] ),
        .I3(psincdec_i_2_n_0),
        .I4(\active_target_sel[2]_i_1_n_0 ),
        .I5(\FSM_onehot_phase_state[2]_i_2_n_0 ),
        .O(\steps_remaining[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F00000F8F0F0F0)) 
    \steps_remaining[31]_i_2 
       (.I0(steps_remaining0[31]),
        .I1(\steps_remaining[31]_i_3_n_0 ),
        .I2(\steps_remaining[31]_i_4_n_0 ),
        .I3(\FSM_onehot_phase_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_phase_state_reg_n_0_[2] ),
        .I5(\steps_remaining[31]_i_5_n_0 ),
        .O(\steps_remaining[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \steps_remaining[31]_i_3 
       (.I0(\FSM_onehot_phase_state[1]_i_3_n_0 ),
        .I1(\FSM_onehot_phase_state[1]_i_4_n_0 ),
        .I2(\FSM_onehot_phase_state[1]_i_5_n_0 ),
        .O(\steps_remaining[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \steps_remaining[31]_i_4 
       (.I0(sel0[31]),
        .I1(steps_remaining1[31]),
        .O(\steps_remaining[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \steps_remaining[31]_i_5 
       (.I0(\FSM_onehot_phase_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_phase_state_reg_n_0_[1] ),
        .O(\steps_remaining[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[3]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[3]),
        .I2(sel0[31]),
        .I3(sel0[3]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[3]),
        .O(\steps_remaining[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[4]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[4]),
        .I2(sel0[31]),
        .I3(sel0[4]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[4]),
        .O(\steps_remaining[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[5]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[5]),
        .I2(sel0[31]),
        .I3(sel0[5]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[5]),
        .O(\steps_remaining[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[6]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[6]),
        .I2(sel0[31]),
        .I3(sel0[6]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[6]),
        .O(\steps_remaining[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[7]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[7]),
        .I2(sel0[31]),
        .I3(sel0[7]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[7]),
        .O(\steps_remaining[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[8]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[8]),
        .I2(sel0[31]),
        .I3(sel0[8]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[8]),
        .O(\steps_remaining[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[8]_i_10 
       (.I0(sel0[2]),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[8]_i_11 
       (.I0(sel0[1]),
        .O(\steps_remaining[8]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[8]_i_3 
       (.I0(sel0[0]),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[8]_i_4 
       (.I0(sel0[8]),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[8]_i_5 
       (.I0(sel0[7]),
        .O(\steps_remaining[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[8]_i_6 
       (.I0(sel0[6]),
        .O(p_0_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[8]_i_7 
       (.I0(sel0[5]),
        .O(p_0_in[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[8]_i_8 
       (.I0(sel0[4]),
        .O(\steps_remaining[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \steps_remaining[8]_i_9 
       (.I0(sel0[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \steps_remaining[9]_i_1 
       (.I0(\steps_remaining[29]_i_2_n_0 ),
        .I1(steps_remaining1[9]),
        .I2(sel0[31]),
        .I3(sel0[9]),
        .I4(\steps_remaining[29]_i_4_n_0 ),
        .I5(steps_remaining0[9]),
        .O(\steps_remaining[9]_i_1_n_0 ));
  FDRE \steps_remaining_reg[0] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[0]_i_1_n_0 ),
        .Q(steps_remaining[0]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[10] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[10]_i_1_n_0 ),
        .Q(steps_remaining[10]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[11] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[11]_i_1_n_0 ),
        .Q(steps_remaining[11]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[12] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[12]_i_1_n_0 ),
        .Q(steps_remaining[12]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[13] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[13]_i_1_n_0 ),
        .Q(steps_remaining[13]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[14] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[14]_i_1_n_0 ),
        .Q(steps_remaining[14]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[15] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[15]_i_1_n_0 ),
        .Q(steps_remaining[15]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[16] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[16]_i_1_n_0 ),
        .Q(steps_remaining[16]),
        .R(s_axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \steps_remaining_reg[16]_i_2 
       (.CI(\steps_remaining_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\steps_remaining_reg[16]_i_2_n_0 ,\steps_remaining_reg[16]_i_2_n_1 ,\steps_remaining_reg[16]_i_2_n_2 ,\steps_remaining_reg[16]_i_2_n_3 ,\steps_remaining_reg[16]_i_2_n_4 ,\steps_remaining_reg[16]_i_2_n_5 ,\steps_remaining_reg[16]_i_2_n_6 ,\steps_remaining_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(steps_remaining1[16:9]),
        .S({\steps_remaining[16]_i_3_n_0 ,p_0_in[15:14],\steps_remaining[16]_i_6_n_0 ,p_0_in[12:11],\steps_remaining[16]_i_9_n_0 ,p_0_in[9]}));
  FDRE \steps_remaining_reg[17] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[17]_i_1_n_0 ),
        .Q(steps_remaining[17]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[18] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[18]_i_1_n_0 ),
        .Q(steps_remaining[18]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[19] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[19]_i_1_n_0 ),
        .Q(steps_remaining[19]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[1] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[1]_i_1_n_0 ),
        .Q(steps_remaining[1]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[20] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[20]_i_1_n_0 ),
        .Q(steps_remaining[20]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[21] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[21]_i_1_n_0 ),
        .Q(steps_remaining[21]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[22] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[22]_i_1_n_0 ),
        .Q(steps_remaining[22]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[23] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[23]_i_1_n_0 ),
        .Q(steps_remaining[23]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[24] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[24]_i_1_n_0 ),
        .Q(steps_remaining[24]),
        .R(s_axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \steps_remaining_reg[24]_i_2 
       (.CI(\steps_remaining_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\steps_remaining_reg[24]_i_2_n_0 ,\steps_remaining_reg[24]_i_2_n_1 ,\steps_remaining_reg[24]_i_2_n_2 ,\steps_remaining_reg[24]_i_2_n_3 ,\steps_remaining_reg[24]_i_2_n_4 ,\steps_remaining_reg[24]_i_2_n_5 ,\steps_remaining_reg[24]_i_2_n_6 ,\steps_remaining_reg[24]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(steps_remaining1[24:17]),
        .S({\steps_remaining[24]_i_3_n_0 ,p_0_in[23],\steps_remaining[24]_i_5_n_0 ,\steps_remaining[24]_i_6_n_0 ,p_0_in[20],\steps_remaining[24]_i_8_n_0 ,\steps_remaining[24]_i_9_n_0 ,p_0_in[17]}));
  FDRE \steps_remaining_reg[25] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[25]_i_1_n_0 ),
        .Q(steps_remaining[25]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[26] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[26]_i_1_n_0 ),
        .Q(steps_remaining[26]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[27] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[27]_i_1_n_0 ),
        .Q(steps_remaining[27]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[28] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[28]_i_1_n_0 ),
        .Q(steps_remaining[28]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[29] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[29]_i_1_n_0 ),
        .Q(steps_remaining[29]),
        .R(s_axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \steps_remaining_reg[29]_i_3 
       (.CI(\steps_remaining_reg[24]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_steps_remaining_reg[29]_i_3_CO_UNCONNECTED [7:6],\steps_remaining_reg[29]_i_3_n_2 ,\steps_remaining_reg[29]_i_3_n_3 ,\steps_remaining_reg[29]_i_3_n_4 ,\steps_remaining_reg[29]_i_3_n_5 ,\steps_remaining_reg[29]_i_3_n_6 ,\steps_remaining_reg[29]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_steps_remaining_reg[29]_i_3_O_UNCONNECTED [7],steps_remaining1[31:25]}),
        .S({1'b0,\steps_remaining[29]_i_5_n_0 ,\steps_remaining[29]_i_6_n_0 ,\steps_remaining[29]_i_7_n_0 ,\steps_remaining[29]_i_8_n_0 ,\steps_remaining[29]_i_9_n_0 ,p_0_in[26],\steps_remaining[29]_i_11_n_0 }));
  FDRE \steps_remaining_reg[2] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[2]_i_1_n_0 ),
        .Q(steps_remaining[2]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[30] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[30]_i_1_n_0 ),
        .Q(steps_remaining[30]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[31] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[31]_i_2_n_0 ),
        .Q(steps_remaining[31]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[3] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[3]_i_1_n_0 ),
        .Q(steps_remaining[3]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[4] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[4]_i_1_n_0 ),
        .Q(steps_remaining[4]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[5] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[5]_i_1_n_0 ),
        .Q(steps_remaining[5]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[6] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[6]_i_1_n_0 ),
        .Q(steps_remaining[6]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[7] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[7]_i_1_n_0 ),
        .Q(steps_remaining[7]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \steps_remaining_reg[8] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[8]_i_1_n_0 ),
        .Q(steps_remaining[8]),
        .R(s_axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \steps_remaining_reg[8]_i_2 
       (.CI(p_0_in[0]),
        .CI_TOP(1'b0),
        .CO({\steps_remaining_reg[8]_i_2_n_0 ,\steps_remaining_reg[8]_i_2_n_1 ,\steps_remaining_reg[8]_i_2_n_2 ,\steps_remaining_reg[8]_i_2_n_3 ,\steps_remaining_reg[8]_i_2_n_4 ,\steps_remaining_reg[8]_i_2_n_5 ,\steps_remaining_reg[8]_i_2_n_6 ,\steps_remaining_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(steps_remaining1[8:1]),
        .S({p_0_in[8],\steps_remaining[8]_i_5_n_0 ,p_0_in[6:5],\steps_remaining[8]_i_8_n_0 ,p_0_in[3:2],\steps_remaining[8]_i_11_n_0 }));
  FDRE \steps_remaining_reg[9] 
       (.C(s_axi_aclk),
        .CE(\steps_remaining[31]_i_1_n_0 ),
        .D(\steps_remaining[9]_i_1_n_0 ),
        .Q(steps_remaining[9]),
        .R(s_axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h40FF)) 
    wdata_pending_i_1
       (.I0(s_axi_bvalid_reg_0),
        .I1(wdata_pending_reg_n_0),
        .I2(awaddr_pending),
        .I3(s_axi_aresetn),
        .O(wdata_pending_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    wdata_pending_i_2
       (.I0(s_axi_wvalid),
        .I1(wdata_pending_reg_n_0),
        .O(wdata_pending_i_2_n_0));
  FDRE wdata_pending_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wdata_pending_i_2_n_0),
        .Q(wdata_pending_reg_n_0),
        .R(wdata_pending_i_1_n_0));
  FDRE \wdata_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[0]),
        .Q(\wdata_reg_reg_n_0_[0] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[10]),
        .Q(\wdata_reg_reg_n_0_[10] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[11]),
        .Q(\wdata_reg_reg_n_0_[11] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[12]),
        .Q(\wdata_reg_reg_n_0_[12] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[13]),
        .Q(\wdata_reg_reg_n_0_[13] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[14]),
        .Q(\wdata_reg_reg_n_0_[14] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[15]),
        .Q(\wdata_reg_reg_n_0_[15] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[16]),
        .Q(\wdata_reg_reg_n_0_[16] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[17]),
        .Q(\wdata_reg_reg_n_0_[17] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[18]),
        .Q(\wdata_reg_reg_n_0_[18] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[19]),
        .Q(\wdata_reg_reg_n_0_[19] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[1]),
        .Q(p_0_in14_in),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[20]),
        .Q(\wdata_reg_reg_n_0_[20] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[21]),
        .Q(\wdata_reg_reg_n_0_[21] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[22]),
        .Q(\wdata_reg_reg_n_0_[22] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[23]),
        .Q(\wdata_reg_reg_n_0_[23] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[24]),
        .Q(\wdata_reg_reg_n_0_[24] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[25]),
        .Q(\wdata_reg_reg_n_0_[25] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[26]),
        .Q(\wdata_reg_reg_n_0_[26] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[27]),
        .Q(\wdata_reg_reg_n_0_[27] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[28]),
        .Q(\wdata_reg_reg_n_0_[28] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[29]),
        .Q(\wdata_reg_reg_n_0_[29] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[2]),
        .Q(p_0_in13_in),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[30]),
        .Q(\wdata_reg_reg_n_0_[30] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[31]),
        .Q(\wdata_reg_reg_n_0_[31] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[3]),
        .Q(\wdata_reg_reg_n_0_[3] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[4]),
        .Q(\wdata_reg_reg_n_0_[4] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[5]),
        .Q(\wdata_reg_reg_n_0_[5] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[6]),
        .Q(\wdata_reg_reg_n_0_[6] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[7]),
        .Q(\wdata_reg_reg_n_0_[7] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[8]),
        .Q(\wdata_reg_reg_n_0_[8] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wdata_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wdata[9]),
        .Q(\wdata_reg_reg_n_0_[9] ),
        .R(s_axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \wstrb_reg[3]_i_1 
       (.I0(s_axi_wvalid),
        .I1(wdata_pending_reg_n_0),
        .O(wdata_reg0));
  FDRE \wstrb_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wstrb[0]),
        .Q(\wstrb_reg_reg_n_0_[0] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wstrb_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wstrb[1]),
        .Q(p_2_in),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wstrb_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wstrb[2]),
        .Q(p_0_in0_0),
        .R(s_axi_awready_i_1_n_0));
  FDRE \wstrb_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(wdata_reg0),
        .D(s_axi_wstrb[3]),
        .Q(\wstrb_reg_reg_n_0_[3] ),
        .R(s_axi_awready_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
