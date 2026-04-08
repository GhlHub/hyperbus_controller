// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Apr  8 03:41:27 2026
// Host        : YouBing running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /raid/work/hyperbus_controller_freertos_port/vivado_projects/hyperbus_test_proj/hyperbus_test_proj.gen/sources_1/bd/design_1/ip/design_1_util_icape3_axil_0_0/design_1_util_icape3_axil_0_0_sim_netlist.v
// Design      : design_1_util_icape3_axil_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcsu35p-sbvb625-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_util_icape3_axil_0_0,util_icape3_axil,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "util_icape3_axil,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_util_icape3_axil_0_0
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
    s_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [7:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [7:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;

  wire \<const0> ;
  wire s_axi_aclk;
  wire [7:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [7:0]s_axi_awaddr;
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

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_util_icape3_axil_0_0_util_icape3_axil inst
       (.bvalid_reg_reg_0(s_axi_bvalid),
        .rvalid_reg_reg_0(s_axi_rvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "util_icape3_axil" *) 
module design_1_util_icape3_axil_0_0_util_icape3_axil
   (s_axi_rdata,
    s_axi_awready,
    s_axi_wready,
    rvalid_reg_reg_0,
    s_axi_arready,
    bvalid_reg_reg_0,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_aclk,
    s_axi_wstrb,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_rready,
    s_axi_bready);
  output [31:0]s_axi_rdata;
  output s_axi_awready;
  output s_axi_wready;
  output rvalid_reg_reg_0;
  output s_axi_arready;
  output bvalid_reg_reg_0;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_aclk;
  input [3:0]s_axi_wstrb;
  input [7:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;
  input [7:0]s_axi_araddr;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input s_axi_rready;
  input s_axi_bready;

  wire \FSM_onehot_icap_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_icap_state_reg[2]_i_2_n_0 ;
  wire \FSM_onehot_icap_state_reg_reg_n_0_[0] ;
  wire \FSM_onehot_icap_state_reg_reg_n_0_[1] ;
  wire \FSM_onehot_icap_state_reg_reg_n_0_[2] ;
  wire \araddr_reg_reg_n_0_[0] ;
  wire \araddr_reg_reg_n_0_[1] ;
  wire \araddr_reg_reg_n_0_[2] ;
  wire \araddr_reg_reg_n_0_[3] ;
  wire \araddr_reg_reg_n_0_[4] ;
  wire \araddr_reg_reg_n_0_[5] ;
  wire \araddr_reg_reg_n_0_[6] ;
  wire \araddr_reg_reg_n_0_[7] ;
  wire araddr_valid_reg;
  wire araddr_valid_reg0;
  wire araddr_valid_reg_i_1_n_0;
  wire [3:0]awaddr_reg;
  wire \awaddr_reg[7]_i_1_n_0 ;
  wire \awaddr_reg_reg_n_0_[5] ;
  wire \awaddr_reg_reg_n_0_[6] ;
  wire \awaddr_reg_reg_n_0_[7] ;
  wire awaddr_valid_reg;
  wire awaddr_valid_reg_i_1_n_0;
  wire bvalid_reg_i_1_n_0;
  wire bvalid_reg_reg_0;
  wire icap_avail;
  wire icap_csib_reg;
  wire icap_csib_reg_i_1_n_0;
  wire icap_csib_reg_i_2_n_0;
  wire [31:0]icap_i_reg;
  wire \icap_i_reg[0]_i_1_n_0 ;
  wire \icap_i_reg[10]_i_1_n_0 ;
  wire \icap_i_reg[11]_i_1_n_0 ;
  wire \icap_i_reg[12]_i_1_n_0 ;
  wire \icap_i_reg[13]_i_1_n_0 ;
  wire \icap_i_reg[14]_i_1_n_0 ;
  wire \icap_i_reg[15]_i_1_n_0 ;
  wire \icap_i_reg[16]_i_1_n_0 ;
  wire \icap_i_reg[17]_i_1_n_0 ;
  wire \icap_i_reg[18]_i_1_n_0 ;
  wire \icap_i_reg[19]_i_1_n_0 ;
  wire \icap_i_reg[1]_i_1_n_0 ;
  wire \icap_i_reg[20]_i_1_n_0 ;
  wire \icap_i_reg[21]_i_1_n_0 ;
  wire \icap_i_reg[22]_i_1_n_0 ;
  wire \icap_i_reg[23]_i_1_n_0 ;
  wire \icap_i_reg[24]_i_1_n_0 ;
  wire \icap_i_reg[25]_i_1_n_0 ;
  wire \icap_i_reg[26]_i_1_n_0 ;
  wire \icap_i_reg[26]_i_2_n_0 ;
  wire \icap_i_reg[27]_i_1_n_0 ;
  wire \icap_i_reg[28]_i_1_n_0 ;
  wire \icap_i_reg[29]_i_1_n_0 ;
  wire \icap_i_reg[2]_i_1_n_0 ;
  wire \icap_i_reg[30]_i_1_n_0 ;
  wire \icap_i_reg[31]_i_1_n_0 ;
  wire \icap_i_reg[3]_i_1_n_0 ;
  wire \icap_i_reg[4]_i_1_n_0 ;
  wire \icap_i_reg[5]_i_1_n_0 ;
  wire \icap_i_reg[6]_i_1_n_0 ;
  wire \icap_i_reg[7]_i_1_n_0 ;
  wire \icap_i_reg[8]_i_1_n_0 ;
  wire \icap_i_reg[9]_i_1_n_0 ;
  wire icap_prdone;
  wire icap_prdone_d1_reg;
  wire icap_prerror;
  wire icap_prerror_d1_reg;
  wire [3:1]icap_word_index_reg;
  wire \icap_word_index_reg[0]_i_1_n_0 ;
  wire \icap_word_index_reg[3]_i_1_n_0 ;
  wire [3:0]index;
  wire iprog_busy_reg;
  wire iprog_busy_reg_i_1_n_0;
  wire iprog_busy_reg_reg_n_0;
  wire iprog_done_reg;
  wire iprog_done_reg0;
  wire iprog_done_reg_i_1_n_0;
  wire iprog_done_reg_i_2_n_0;
  wire iprog_error_reg;
  wire iprog_error_reg0;
  wire iprog_error_reg_i_1_n_0;
  wire iprog_error_reg_i_2_n_0;
  wire iprog_start_pulse;
  wire iprog_start_pulse_i_1_n_0;
  wire iprog_start_pulse_i_2_n_0;
  wire [31:0]iprog_wbstar_reg;
  wire p_0_in;
  wire p_0_in0;
  wire [31:7]p_1_in;
  wire [7:0]p_1_in_0;
  wire p_2_in;
  wire \rdata_reg[0]_i_1_n_0 ;
  wire \rdata_reg[10]_i_1_n_0 ;
  wire \rdata_reg[11]_i_1_n_0 ;
  wire \rdata_reg[12]_i_1_n_0 ;
  wire \rdata_reg[13]_i_1_n_0 ;
  wire \rdata_reg[14]_i_1_n_0 ;
  wire \rdata_reg[15]_i_1_n_0 ;
  wire \rdata_reg[16]_i_1_n_0 ;
  wire \rdata_reg[17]_i_1_n_0 ;
  wire \rdata_reg[18]_i_1_n_0 ;
  wire \rdata_reg[19]_i_1_n_0 ;
  wire \rdata_reg[1]_i_1_n_0 ;
  wire \rdata_reg[20]_i_1_n_0 ;
  wire \rdata_reg[21]_i_1_n_0 ;
  wire \rdata_reg[22]_i_1_n_0 ;
  wire \rdata_reg[23]_i_1_n_0 ;
  wire \rdata_reg[24]_i_1_n_0 ;
  wire \rdata_reg[25]_i_1_n_0 ;
  wire \rdata_reg[26]_i_1_n_0 ;
  wire \rdata_reg[27]_i_1_n_0 ;
  wire \rdata_reg[28]_i_1_n_0 ;
  wire \rdata_reg[29]_i_1_n_0 ;
  wire \rdata_reg[2]_i_1_n_0 ;
  wire \rdata_reg[30]_i_1_n_0 ;
  wire \rdata_reg[31]_i_1_n_0 ;
  wire \rdata_reg[31]_i_3_n_0 ;
  wire \rdata_reg[31]_i_4_n_0 ;
  wire \rdata_reg[3]_i_1_n_0 ;
  wire \rdata_reg[4]_i_1_n_0 ;
  wire \rdata_reg[5]_i_1_n_0 ;
  wire \rdata_reg[6]_i_1_n_0 ;
  wire \rdata_reg[7]_i_1_n_0 ;
  wire \rdata_reg[8]_i_1_n_0 ;
  wire \rdata_reg[9]_i_1_n_0 ;
  wire read_fire;
  wire rvalid_reg_i_1_n_0;
  wire rvalid_reg_reg_0;
  wire s_axi_aclk;
  wire [7:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [7:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]wbstar_reg;
  wire \wbstar_reg[31]_i_2_n_0 ;
  wire \wbstar_reg[31]_i_3_n_0 ;
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
  wire \wdata_reg_reg_n_0_[8] ;
  wire \wdata_reg_reg_n_0_[9] ;
  wire wdata_valid_reg;
  wire wdata_valid_reg_i_2_n_0;
  wire wdata_valid_reg_reg_n_0;
  wire \wstrb_reg[3]_i_1_n_0 ;
  wire \wstrb_reg_reg_n_0_[2] ;
  wire \wstrb_reg_reg_n_0_[3] ;
  wire [31:0]NLW_icape3_inst_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hEEEEEEEEEFEEEEEE)) 
    \FSM_onehot_icap_state_reg[2]_i_1 
       (.I0(\FSM_onehot_icap_state_reg_reg_n_0_[2] ),
        .I1(iprog_busy_reg),
        .I2(\FSM_onehot_icap_state_reg[2]_i_2_n_0 ),
        .I3(index[2]),
        .I4(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I5(index[3]),
        .O(\FSM_onehot_icap_state_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_icap_state_reg[2]_i_2 
       (.I0(index[0]),
        .I1(index[1]),
        .O(\FSM_onehot_icap_state_reg[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "ICAP_IDLE:001,ICAP_SEND:010,ICAP_HOLD:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_icap_state_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_icap_state_reg[2]_i_1_n_0 ),
        .D(\FSM_onehot_icap_state_reg_reg_n_0_[2] ),
        .Q(\FSM_onehot_icap_state_reg_reg_n_0_[0] ),
        .S(\rdata_reg[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ICAP_IDLE:001,ICAP_SEND:010,ICAP_HOLD:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_icap_state_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_icap_state_reg[2]_i_1_n_0 ),
        .D(\FSM_onehot_icap_state_reg_reg_n_0_[0] ),
        .Q(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ICAP_IDLE:001,ICAP_SEND:010,ICAP_HOLD:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_icap_state_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_icap_state_reg[2]_i_1_n_0 ),
        .D(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .Q(\FSM_onehot_icap_state_reg_reg_n_0_[2] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \araddr_reg[7]_i_1 
       (.I0(rvalid_reg_reg_0),
        .I1(s_axi_arvalid),
        .I2(araddr_valid_reg),
        .O(araddr_valid_reg0));
  FDRE \araddr_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_valid_reg0),
        .D(s_axi_araddr[0]),
        .Q(\araddr_reg_reg_n_0_[0] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \araddr_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_valid_reg0),
        .D(s_axi_araddr[1]),
        .Q(\araddr_reg_reg_n_0_[1] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \araddr_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_valid_reg0),
        .D(s_axi_araddr[2]),
        .Q(\araddr_reg_reg_n_0_[2] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \araddr_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(araddr_valid_reg0),
        .D(s_axi_araddr[3]),
        .Q(\araddr_reg_reg_n_0_[3] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \araddr_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(araddr_valid_reg0),
        .D(s_axi_araddr[4]),
        .Q(\araddr_reg_reg_n_0_[4] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \araddr_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(araddr_valid_reg0),
        .D(s_axi_araddr[5]),
        .Q(\araddr_reg_reg_n_0_[5] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \araddr_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(araddr_valid_reg0),
        .D(s_axi_araddr[6]),
        .Q(\araddr_reg_reg_n_0_[6] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \araddr_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(araddr_valid_reg0),
        .D(s_axi_araddr[7]),
        .Q(\araddr_reg_reg_n_0_[7] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hC008)) 
    araddr_valid_reg_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_aresetn),
        .I2(araddr_valid_reg),
        .I3(rvalid_reg_reg_0),
        .O(araddr_valid_reg_i_1_n_0));
  FDRE araddr_valid_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_valid_reg_i_1_n_0),
        .Q(araddr_valid_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr_reg[7]_i_1 
       (.I0(s_axi_awvalid),
        .I1(awaddr_valid_reg),
        .O(\awaddr_reg[7]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\awaddr_reg[7]_i_1_n_0 ),
        .D(s_axi_awaddr[0]),
        .Q(awaddr_reg[0]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\awaddr_reg[7]_i_1_n_0 ),
        .D(s_axi_awaddr[1]),
        .Q(awaddr_reg[1]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\awaddr_reg[7]_i_1_n_0 ),
        .D(s_axi_awaddr[2]),
        .Q(awaddr_reg[2]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\awaddr_reg[7]_i_1_n_0 ),
        .D(s_axi_awaddr[3]),
        .Q(awaddr_reg[3]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\awaddr_reg[7]_i_1_n_0 ),
        .D(s_axi_awaddr[4]),
        .Q(p_0_in0),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\awaddr_reg[7]_i_1_n_0 ),
        .D(s_axi_awaddr[5]),
        .Q(\awaddr_reg_reg_n_0_[5] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\awaddr_reg[7]_i_1_n_0 ),
        .D(s_axi_awaddr[6]),
        .Q(\awaddr_reg_reg_n_0_[6] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\awaddr_reg[7]_i_1_n_0 ),
        .D(s_axi_awaddr[7]),
        .Q(\awaddr_reg_reg_n_0_[7] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    awaddr_valid_reg_i_1
       (.I0(s_axi_awvalid),
        .I1(awaddr_valid_reg),
        .O(awaddr_valid_reg_i_1_n_0));
  FDRE awaddr_valid_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(awaddr_valid_reg_i_1_n_0),
        .Q(awaddr_valid_reg),
        .R(wdata_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00F08080)) 
    bvalid_reg_i_1
       (.I0(awaddr_valid_reg),
        .I1(wdata_valid_reg_reg_n_0),
        .I2(s_axi_aresetn),
        .I3(s_axi_bready),
        .I4(bvalid_reg_reg_0),
        .O(bvalid_reg_i_1_n_0));
  FDRE bvalid_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bvalid_reg_i_1_n_0),
        .Q(bvalid_reg_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    icap_csib_reg_i_1
       (.I0(\FSM_onehot_icap_state_reg_reg_n_0_[2] ),
        .I1(\FSM_onehot_icap_state_reg_reg_n_0_[0] ),
        .I2(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .O(icap_csib_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    icap_csib_reg_i_2
       (.I0(\FSM_onehot_icap_state_reg_reg_n_0_[0] ),
        .I1(\FSM_onehot_icap_state_reg_reg_n_0_[2] ),
        .O(icap_csib_reg_i_2_n_0));
  FDSE icap_csib_reg_reg
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(icap_csib_reg_i_2_n_0),
        .Q(icap_csib_reg),
        .S(\rdata_reg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B00)) 
    \icap_i_reg[0]_i_1 
       (.I0(iprog_wbstar_reg[7]),
        .I1(index[2]),
        .I2(index[1]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[3]),
        .I5(index[0]),
        .O(\icap_i_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B00)) 
    \icap_i_reg[10]_i_1 
       (.I0(iprog_wbstar_reg[13]),
        .I1(index[2]),
        .I2(index[1]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[3]),
        .I5(index[0]),
        .O(\icap_i_reg[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    \icap_i_reg[11]_i_1 
       (.I0(iprog_wbstar_reg[12]),
        .I1(index[0]),
        .I2(index[2]),
        .I3(index[3]),
        .I4(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I5(index[1]),
        .O(\icap_i_reg[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B00)) 
    \icap_i_reg[12]_i_1 
       (.I0(iprog_wbstar_reg[11]),
        .I1(index[2]),
        .I2(index[1]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[3]),
        .I5(index[0]),
        .O(\icap_i_reg[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    \icap_i_reg[13]_i_1 
       (.I0(iprog_wbstar_reg[10]),
        .I1(index[0]),
        .I2(index[2]),
        .I3(index[3]),
        .I4(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I5(index[1]),
        .O(\icap_i_reg[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B00)) 
    \icap_i_reg[14]_i_1 
       (.I0(iprog_wbstar_reg[9]),
        .I1(index[2]),
        .I2(index[1]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[3]),
        .I5(index[0]),
        .O(\icap_i_reg[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    \icap_i_reg[15]_i_1 
       (.I0(iprog_wbstar_reg[8]),
        .I1(index[0]),
        .I2(index[2]),
        .I3(index[3]),
        .I4(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I5(index[1]),
        .O(\icap_i_reg[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    \icap_i_reg[16]_i_1 
       (.I0(iprog_wbstar_reg[23]),
        .I1(index[0]),
        .I2(index[2]),
        .I3(index[3]),
        .I4(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I5(index[1]),
        .O(\icap_i_reg[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B00)) 
    \icap_i_reg[17]_i_1 
       (.I0(iprog_wbstar_reg[22]),
        .I1(index[2]),
        .I2(index[1]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[3]),
        .I5(index[0]),
        .O(\icap_i_reg[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B00)) 
    \icap_i_reg[18]_i_1 
       (.I0(iprog_wbstar_reg[21]),
        .I1(index[2]),
        .I2(index[1]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[3]),
        .I5(index[0]),
        .O(\icap_i_reg[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    \icap_i_reg[19]_i_1 
       (.I0(iprog_wbstar_reg[20]),
        .I1(index[0]),
        .I2(index[2]),
        .I3(index[3]),
        .I4(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I5(index[1]),
        .O(\icap_i_reg[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    \icap_i_reg[1]_i_1 
       (.I0(iprog_wbstar_reg[6]),
        .I1(index[0]),
        .I2(index[2]),
        .I3(index[3]),
        .I4(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I5(index[1]),
        .O(\icap_i_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    \icap_i_reg[20]_i_1 
       (.I0(iprog_wbstar_reg[19]),
        .I1(index[0]),
        .I2(index[2]),
        .I3(index[3]),
        .I4(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I5(index[1]),
        .O(\icap_i_reg[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B00)) 
    \icap_i_reg[21]_i_1 
       (.I0(iprog_wbstar_reg[18]),
        .I1(index[2]),
        .I2(index[1]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[3]),
        .I5(index[0]),
        .O(\icap_i_reg[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000002000C000300)) 
    \icap_i_reg[22]_i_1 
       (.I0(iprog_wbstar_reg[17]),
        .I1(index[0]),
        .I2(index[3]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[1]),
        .I5(index[2]),
        .O(\icap_i_reg[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    \icap_i_reg[23]_i_1 
       (.I0(iprog_wbstar_reg[16]),
        .I1(index[0]),
        .I2(index[2]),
        .I3(index[3]),
        .I4(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I5(index[1]),
        .O(\icap_i_reg[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    \icap_i_reg[24]_i_1 
       (.I0(iprog_wbstar_reg[31]),
        .I1(index[0]),
        .I2(index[2]),
        .I3(index[3]),
        .I4(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I5(index[1]),
        .O(\icap_i_reg[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B00)) 
    \icap_i_reg[25]_i_1 
       (.I0(iprog_wbstar_reg[30]),
        .I1(index[2]),
        .I2(index[1]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[3]),
        .I5(index[0]),
        .O(\icap_i_reg[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBAFF00FF00)) 
    \icap_i_reg[26]_i_1 
       (.I0(\icap_i_reg[26]_i_2_n_0 ),
        .I1(index[1]),
        .I2(iprog_wbstar_reg[29]),
        .I3(icap_csib_reg_i_2_n_0),
        .I4(index[3]),
        .I5(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .O(\icap_i_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \icap_i_reg[26]_i_2 
       (.I0(index[0]),
        .I1(index[2]),
        .O(\icap_i_reg[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00003C0000000B00)) 
    \icap_i_reg[27]_i_1 
       (.I0(iprog_wbstar_reg[28]),
        .I1(index[2]),
        .I2(index[1]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[3]),
        .I5(index[0]),
        .O(\icap_i_reg[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    \icap_i_reg[28]_i_1 
       (.I0(iprog_wbstar_reg[27]),
        .I1(index[0]),
        .I2(index[2]),
        .I3(index[3]),
        .I4(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I5(index[1]),
        .O(\icap_i_reg[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B00)) 
    \icap_i_reg[29]_i_1 
       (.I0(iprog_wbstar_reg[26]),
        .I1(index[2]),
        .I2(index[1]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[3]),
        .I5(index[0]),
        .O(\icap_i_reg[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    \icap_i_reg[2]_i_1 
       (.I0(iprog_wbstar_reg[5]),
        .I1(index[0]),
        .I2(index[2]),
        .I3(index[3]),
        .I4(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I5(index[1]),
        .O(\icap_i_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    \icap_i_reg[30]_i_1 
       (.I0(iprog_wbstar_reg[25]),
        .I1(index[0]),
        .I2(index[2]),
        .I3(index[3]),
        .I4(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I5(index[1]),
        .O(\icap_i_reg[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B00)) 
    \icap_i_reg[31]_i_1 
       (.I0(iprog_wbstar_reg[24]),
        .I1(index[2]),
        .I2(index[1]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[3]),
        .I5(index[0]),
        .O(\icap_i_reg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B00)) 
    \icap_i_reg[3]_i_1 
       (.I0(iprog_wbstar_reg[4]),
        .I1(index[2]),
        .I2(index[1]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[3]),
        .I5(index[0]),
        .O(\icap_i_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000500)) 
    \icap_i_reg[4]_i_1 
       (.I0(index[1]),
        .I1(iprog_wbstar_reg[3]),
        .I2(index[3]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[2]),
        .I5(index[0]),
        .O(\icap_i_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000005000E000500)) 
    \icap_i_reg[5]_i_1 
       (.I0(index[1]),
        .I1(iprog_wbstar_reg[2]),
        .I2(index[3]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[2]),
        .I5(index[0]),
        .O(\icap_i_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000005000E000500)) 
    \icap_i_reg[6]_i_1 
       (.I0(index[1]),
        .I1(iprog_wbstar_reg[1]),
        .I2(index[3]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[2]),
        .I5(index[0]),
        .O(\icap_i_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h05000A000E000500)) 
    \icap_i_reg[7]_i_1 
       (.I0(index[1]),
        .I1(iprog_wbstar_reg[0]),
        .I2(index[3]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[2]),
        .I5(index[0]),
        .O(\icap_i_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0000000D00)) 
    \icap_i_reg[8]_i_1 
       (.I0(index[2]),
        .I1(iprog_wbstar_reg[15]),
        .I2(index[1]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[3]),
        .I5(index[0]),
        .O(\icap_i_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    \icap_i_reg[9]_i_1 
       (.I0(iprog_wbstar_reg[14]),
        .I1(index[0]),
        .I2(index[2]),
        .I3(index[3]),
        .I4(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I5(index[1]),
        .O(\icap_i_reg[9]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[0]_i_1_n_0 ),
        .Q(icap_i_reg[0]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[10]_i_1_n_0 ),
        .Q(icap_i_reg[10]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[11]_i_1_n_0 ),
        .Q(icap_i_reg[11]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[12]_i_1_n_0 ),
        .Q(icap_i_reg[12]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[13]_i_1_n_0 ),
        .Q(icap_i_reg[13]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[14]_i_1_n_0 ),
        .Q(icap_i_reg[14]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[15]_i_1_n_0 ),
        .Q(icap_i_reg[15]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[16]_i_1_n_0 ),
        .Q(icap_i_reg[16]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[17]_i_1_n_0 ),
        .Q(icap_i_reg[17]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[18]_i_1_n_0 ),
        .Q(icap_i_reg[18]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[19]_i_1_n_0 ),
        .Q(icap_i_reg[19]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[1]_i_1_n_0 ),
        .Q(icap_i_reg[1]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[20]_i_1_n_0 ),
        .Q(icap_i_reg[20]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[21]_i_1_n_0 ),
        .Q(icap_i_reg[21]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[22]_i_1_n_0 ),
        .Q(icap_i_reg[22]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[23]_i_1_n_0 ),
        .Q(icap_i_reg[23]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[24]_i_1_n_0 ),
        .Q(icap_i_reg[24]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[25]_i_1_n_0 ),
        .Q(icap_i_reg[25]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDSE \icap_i_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[26]_i_1_n_0 ),
        .Q(icap_i_reg[26]),
        .S(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[27]_i_1_n_0 ),
        .Q(icap_i_reg[27]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[28]_i_1_n_0 ),
        .Q(icap_i_reg[28]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[29]_i_1_n_0 ),
        .Q(icap_i_reg[29]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[2]_i_1_n_0 ),
        .Q(icap_i_reg[2]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[30]_i_1_n_0 ),
        .Q(icap_i_reg[30]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[31]_i_1_n_0 ),
        .Q(icap_i_reg[31]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[3]_i_1_n_0 ),
        .Q(icap_i_reg[3]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[4]_i_1_n_0 ),
        .Q(icap_i_reg[4]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[5]_i_1_n_0 ),
        .Q(icap_i_reg[5]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[6]_i_1_n_0 ),
        .Q(icap_i_reg[6]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[7]_i_1_n_0 ),
        .Q(icap_i_reg[7]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[8]_i_1_n_0 ),
        .Q(icap_i_reg[8]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_i_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(icap_csib_reg_i_1_n_0),
        .D(\icap_i_reg[9]_i_1_n_0 ),
        .Q(icap_i_reg[9]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE icap_prdone_d1_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(icap_prdone),
        .Q(icap_prdone_d1_reg),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE icap_prerror_d1_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(icap_prerror),
        .Q(icap_prerror_d1_reg),
        .R(\rdata_reg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \icap_word_index_reg[0]_i_1 
       (.I0(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I1(index[0]),
        .O(\icap_word_index_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \icap_word_index_reg[1]_i_1 
       (.I0(index[0]),
        .I1(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I2(index[1]),
        .O(icap_word_index_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \icap_word_index_reg[2]_i_1 
       (.I0(index[0]),
        .I1(index[1]),
        .I2(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I3(index[2]),
        .O(icap_word_index_reg[2]));
  LUT6 #(
    .INIT(64'hEAFAFAFAFAFAFAFA)) 
    \icap_word_index_reg[3]_i_1 
       (.I0(\FSM_onehot_icap_state_reg_reg_n_0_[0] ),
        .I1(index[3]),
        .I2(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I3(index[1]),
        .I4(index[0]),
        .I5(index[2]),
        .O(\icap_word_index_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \icap_word_index_reg[3]_i_2 
       (.I0(index[1]),
        .I1(index[0]),
        .I2(index[2]),
        .I3(\FSM_onehot_icap_state_reg_reg_n_0_[1] ),
        .I4(index[3]),
        .O(icap_word_index_reg[3]));
  FDRE \icap_word_index_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\icap_word_index_reg[3]_i_1_n_0 ),
        .D(\icap_word_index_reg[0]_i_1_n_0 ),
        .Q(index[0]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_word_index_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\icap_word_index_reg[3]_i_1_n_0 ),
        .D(icap_word_index_reg[1]),
        .Q(index[1]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_word_index_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\icap_word_index_reg[3]_i_1_n_0 ),
        .D(icap_word_index_reg[2]),
        .Q(index[2]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \icap_word_index_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\icap_word_index_reg[3]_i_1_n_0 ),
        .D(icap_word_index_reg[3]),
        .Q(index[3]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ICAPE3 #(
    .DEVICE_ID(32'h04E80093),
    .ICAP_AUTO_SWITCH("DISABLE"),
    .SIM_CFG_FILE_NAME("NONE")) 
    icape3_inst
       (.AVAIL(icap_avail),
        .CLK(s_axi_aclk),
        .CSIB(icap_csib_reg),
        .I(icap_i_reg),
        .O(NLW_icape3_inst_O_UNCONNECTED[31:0]),
        .PRDONE(icap_prdone),
        .PRERROR(icap_prerror),
        .RDWRB(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8B88)) 
    iprog_busy_reg_i_1
       (.I0(iprog_start_pulse),
        .I1(\FSM_onehot_icap_state_reg_reg_n_0_[0] ),
        .I2(\FSM_onehot_icap_state_reg_reg_n_0_[2] ),
        .I3(iprog_busy_reg_reg_n_0),
        .O(iprog_busy_reg_i_1_n_0));
  FDRE iprog_busy_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iprog_busy_reg_i_1_n_0),
        .Q(iprog_busy_reg_reg_n_0),
        .R(\rdata_reg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF7FFF00FF00)) 
    iprog_done_reg_i_1
       (.I0(iprog_done_reg_i_2_n_0),
        .I1(\wbstar_reg[31]_i_2_n_0 ),
        .I2(\wbstar_reg[31]_i_3_n_0 ),
        .I3(iprog_done_reg0),
        .I4(iprog_start_pulse),
        .I5(iprog_done_reg),
        .O(iprog_done_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    iprog_done_reg_i_2
       (.I0(awaddr_reg[3]),
        .I1(p_1_in_0[1]),
        .I2(p_0_in),
        .O(iprog_done_reg_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    iprog_done_reg_i_3
       (.I0(icap_prdone),
        .I1(icap_prdone_d1_reg),
        .O(iprog_done_reg0));
  FDRE iprog_done_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iprog_done_reg_i_1_n_0),
        .Q(iprog_done_reg),
        .R(\rdata_reg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF7FFF00FF00)) 
    iprog_error_reg_i_1
       (.I0(iprog_error_reg_i_2_n_0),
        .I1(\wbstar_reg[31]_i_2_n_0 ),
        .I2(\wbstar_reg[31]_i_3_n_0 ),
        .I3(iprog_error_reg0),
        .I4(iprog_start_pulse),
        .I5(iprog_error_reg),
        .O(iprog_error_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    iprog_error_reg_i_2
       (.I0(awaddr_reg[3]),
        .I1(p_1_in_0[2]),
        .I2(p_0_in),
        .O(iprog_error_reg_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    iprog_error_reg_i_3
       (.I0(icap_prerror),
        .I1(icap_prerror_d1_reg),
        .O(iprog_error_reg0));
  FDRE iprog_error_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iprog_error_reg_i_1_n_0),
        .Q(iprog_error_reg),
        .R(\rdata_reg[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    iprog_start_pulse_i_1
       (.I0(iprog_start_pulse_i_2_n_0),
        .I1(iprog_busy_reg_reg_n_0),
        .I2(\wbstar_reg[31]_i_3_n_0 ),
        .I3(\wbstar_reg[31]_i_2_n_0 ),
        .O(iprog_start_pulse_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    iprog_start_pulse_i_2
       (.I0(p_1_in_0[0]),
        .I1(p_0_in),
        .I2(awaddr_reg[3]),
        .I3(s_axi_aresetn),
        .O(iprog_start_pulse_i_2_n_0));
  FDRE iprog_start_pulse_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iprog_start_pulse_i_1_n_0),
        .Q(iprog_start_pulse),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \iprog_wbstar_reg[31]_i_1 
       (.I0(\FSM_onehot_icap_state_reg_reg_n_0_[0] ),
        .I1(iprog_start_pulse),
        .O(iprog_busy_reg));
  FDRE \iprog_wbstar_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[0]),
        .Q(iprog_wbstar_reg[0]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[10]),
        .Q(iprog_wbstar_reg[10]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[11]),
        .Q(iprog_wbstar_reg[11]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[12]),
        .Q(iprog_wbstar_reg[12]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[13]),
        .Q(iprog_wbstar_reg[13]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[14]),
        .Q(iprog_wbstar_reg[14]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[15]),
        .Q(iprog_wbstar_reg[15]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[16]),
        .Q(iprog_wbstar_reg[16]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[17]),
        .Q(iprog_wbstar_reg[17]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[18]),
        .Q(iprog_wbstar_reg[18]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[19]),
        .Q(iprog_wbstar_reg[19]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[1]),
        .Q(iprog_wbstar_reg[1]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[20]),
        .Q(iprog_wbstar_reg[20]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[21]),
        .Q(iprog_wbstar_reg[21]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[22]),
        .Q(iprog_wbstar_reg[22]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[23]),
        .Q(iprog_wbstar_reg[23]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[24]),
        .Q(iprog_wbstar_reg[24]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[25]),
        .Q(iprog_wbstar_reg[25]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[26]),
        .Q(iprog_wbstar_reg[26]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[27]),
        .Q(iprog_wbstar_reg[27]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[28]),
        .Q(iprog_wbstar_reg[28]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[29]),
        .Q(iprog_wbstar_reg[29]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[2]),
        .Q(iprog_wbstar_reg[2]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[30]),
        .Q(iprog_wbstar_reg[30]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[31]),
        .Q(iprog_wbstar_reg[31]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[3]),
        .Q(iprog_wbstar_reg[3]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[4]),
        .Q(iprog_wbstar_reg[4]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[5]),
        .Q(iprog_wbstar_reg[5]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[6]),
        .Q(iprog_wbstar_reg[6]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[7]),
        .Q(iprog_wbstar_reg[7]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[8]),
        .Q(iprog_wbstar_reg[8]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \iprog_wbstar_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(iprog_busy_reg),
        .D(wbstar_reg[9]),
        .Q(iprog_wbstar_reg[9]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFA002200)) 
    \rdata_reg[0]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\FSM_onehot_icap_state_reg_reg_n_0_[0] ),
        .I2(wbstar_reg[0]),
        .I3(\rdata_reg[31]_i_4_n_0 ),
        .I4(\araddr_reg_reg_n_0_[3] ),
        .O(\rdata_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[10]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[10]),
        .O(\rdata_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[11]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[11]),
        .O(\rdata_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \rdata_reg[12]_i_1 
       (.I0(wbstar_reg[12]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(\rdata_reg[31]_i_4_n_0 ),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .O(\rdata_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[13]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[13]),
        .O(\rdata_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \rdata_reg[14]_i_1 
       (.I0(wbstar_reg[14]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(\rdata_reg[31]_i_4_n_0 ),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .O(\rdata_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[15]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[15]),
        .O(\rdata_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \rdata_reg[16]_i_1 
       (.I0(wbstar_reg[16]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(\rdata_reg[31]_i_4_n_0 ),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .O(\rdata_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \rdata_reg[17]_i_1 
       (.I0(wbstar_reg[17]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(\rdata_reg[31]_i_4_n_0 ),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .O(\rdata_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[18]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[18]),
        .O(\rdata_reg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[19]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[19]),
        .O(\rdata_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \rdata_reg[1]_i_1 
       (.I0(wbstar_reg[1]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(\rdata_reg[31]_i_4_n_0 ),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .O(\rdata_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[20]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[20]),
        .O(\rdata_reg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[21]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[21]),
        .O(\rdata_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \rdata_reg[22]_i_1 
       (.I0(wbstar_reg[22]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(\rdata_reg[31]_i_4_n_0 ),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .O(\rdata_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[23]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[23]),
        .O(\rdata_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \rdata_reg[24]_i_1 
       (.I0(wbstar_reg[24]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(\rdata_reg[31]_i_4_n_0 ),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .O(\rdata_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[25]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[25]),
        .O(\rdata_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[26]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[26]),
        .O(\rdata_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \rdata_reg[27]_i_1 
       (.I0(wbstar_reg[27]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(\rdata_reg[31]_i_4_n_0 ),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .O(\rdata_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[28]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[28]),
        .O(\rdata_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[29]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[29]),
        .O(\rdata_reg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[2]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[2]),
        .O(\rdata_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \rdata_reg[30]_i_1 
       (.I0(wbstar_reg[30]),
        .I1(\araddr_reg_reg_n_0_[2] ),
        .I2(\rdata_reg[31]_i_4_n_0 ),
        .I3(\araddr_reg_reg_n_0_[3] ),
        .O(\rdata_reg[30]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rdata_reg[31]_i_1 
       (.I0(s_axi_aresetn),
        .O(\rdata_reg[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rdata_reg[31]_i_2 
       (.I0(araddr_valid_reg),
        .I1(rvalid_reg_reg_0),
        .O(read_fire));
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[31]_i_3 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[31]),
        .O(\rdata_reg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rdata_reg[31]_i_4 
       (.I0(\araddr_reg_reg_n_0_[4] ),
        .I1(\araddr_reg_reg_n_0_[5] ),
        .I2(\araddr_reg_reg_n_0_[6] ),
        .I3(\araddr_reg_reg_n_0_[7] ),
        .I4(\araddr_reg_reg_n_0_[1] ),
        .I5(\araddr_reg_reg_n_0_[0] ),
        .O(\rdata_reg[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rdata_reg[3]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(\rdata_reg[31]_i_4_n_0 ),
        .I2(\araddr_reg_reg_n_0_[3] ),
        .I3(wbstar_reg[3]),
        .O(\rdata_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFA008800)) 
    \rdata_reg[4]_i_1 
       (.I0(\araddr_reg_reg_n_0_[2] ),
        .I1(iprog_busy_reg_reg_n_0),
        .I2(wbstar_reg[4]),
        .I3(\rdata_reg[31]_i_4_n_0 ),
        .I4(\araddr_reg_reg_n_0_[3] ),
        .O(\rdata_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFA008800)) 
    \rdata_reg[5]_i_1 
       (.I0(\araddr_reg_reg_n_0_[3] ),
        .I1(wbstar_reg[5]),
        .I2(iprog_done_reg),
        .I3(\rdata_reg[31]_i_4_n_0 ),
        .I4(\araddr_reg_reg_n_0_[2] ),
        .O(\rdata_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A00C000)) 
    \rdata_reg[6]_i_1 
       (.I0(wbstar_reg[6]),
        .I1(iprog_error_reg),
        .I2(\araddr_reg_reg_n_0_[2] ),
        .I3(\rdata_reg[31]_i_4_n_0 ),
        .I4(\araddr_reg_reg_n_0_[3] ),
        .O(\rdata_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A00C000)) 
    \rdata_reg[7]_i_1 
       (.I0(wbstar_reg[7]),
        .I1(icap_prdone),
        .I2(\araddr_reg_reg_n_0_[2] ),
        .I3(\rdata_reg[31]_i_4_n_0 ),
        .I4(\araddr_reg_reg_n_0_[3] ),
        .O(\rdata_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A00C000)) 
    \rdata_reg[8]_i_1 
       (.I0(wbstar_reg[8]),
        .I1(icap_prerror),
        .I2(\araddr_reg_reg_n_0_[2] ),
        .I3(\rdata_reg[31]_i_4_n_0 ),
        .I4(\araddr_reg_reg_n_0_[3] ),
        .O(\rdata_reg[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A00C000)) 
    \rdata_reg[9]_i_1 
       (.I0(wbstar_reg[9]),
        .I1(icap_avail),
        .I2(\araddr_reg_reg_n_0_[2] ),
        .I3(\rdata_reg[31]_i_4_n_0 ),
        .I4(\araddr_reg_reg_n_0_[3] ),
        .O(\rdata_reg[9]_i_1_n_0 ));
  FDRE \rdata_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[1]_i_1_n_0 ),
        .Q(s_axi_rdata[1]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[31]_i_3_n_0 ),
        .Q(s_axi_rdata[31]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \rdata_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(read_fire),
        .D(\rdata_reg[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0C88)) 
    rvalid_reg_i_1
       (.I0(araddr_valid_reg),
        .I1(s_axi_aresetn),
        .I2(s_axi_rready),
        .I3(rvalid_reg_reg_0),
        .O(rvalid_reg_i_1_n_0));
  FDRE rvalid_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rvalid_reg_i_1_n_0),
        .Q(rvalid_reg_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_arready_INST_0
       (.I0(araddr_valid_reg),
        .I1(rvalid_reg_reg_0),
        .O(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_awready_INST_0
       (.I0(awaddr_valid_reg),
        .O(s_axi_awready));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_wready_INST_0
       (.I0(wdata_valid_reg_reg_n_0),
        .O(s_axi_wready));
  LUT5 #(
    .INIT(32'h00800000)) 
    \wbstar_reg[15]_i_1 
       (.I0(awaddr_reg[3]),
        .I1(\wbstar_reg[31]_i_2_n_0 ),
        .I2(\wbstar_reg[31]_i_3_n_0 ),
        .I3(iprog_busy_reg_reg_n_0),
        .I4(p_2_in),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \wbstar_reg[23]_i_1 
       (.I0(awaddr_reg[3]),
        .I1(\wbstar_reg[31]_i_2_n_0 ),
        .I2(\wbstar_reg[31]_i_3_n_0 ),
        .I3(iprog_busy_reg_reg_n_0),
        .I4(\wstrb_reg_reg_n_0_[2] ),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \wbstar_reg[31]_i_1 
       (.I0(awaddr_reg[3]),
        .I1(\wbstar_reg[31]_i_2_n_0 ),
        .I2(\wbstar_reg[31]_i_3_n_0 ),
        .I3(iprog_busy_reg_reg_n_0),
        .I4(\wstrb_reg_reg_n_0_[3] ),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h0001)) 
    \wbstar_reg[31]_i_2 
       (.I0(\awaddr_reg_reg_n_0_[6] ),
        .I1(\awaddr_reg_reg_n_0_[5] ),
        .I2(p_0_in0),
        .I3(awaddr_reg[2]),
        .O(\wbstar_reg[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \wbstar_reg[31]_i_3 
       (.I0(\awaddr_reg_reg_n_0_[7] ),
        .I1(wdata_valid_reg_reg_n_0),
        .I2(awaddr_valid_reg),
        .I3(bvalid_reg_reg_0),
        .I4(awaddr_reg[1]),
        .I5(awaddr_reg[0]),
        .O(\wbstar_reg[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \wbstar_reg[7]_i_1 
       (.I0(awaddr_reg[3]),
        .I1(\wbstar_reg[31]_i_2_n_0 ),
        .I2(\wbstar_reg[31]_i_3_n_0 ),
        .I3(iprog_busy_reg_reg_n_0),
        .I4(p_0_in),
        .O(p_1_in[7]));
  FDRE \wbstar_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(p_1_in_0[0]),
        .Q(wbstar_reg[0]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(\wdata_reg_reg_n_0_[10] ),
        .Q(wbstar_reg[10]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(\wdata_reg_reg_n_0_[11] ),
        .Q(wbstar_reg[11]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(\wdata_reg_reg_n_0_[12] ),
        .Q(wbstar_reg[12]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(\wdata_reg_reg_n_0_[13] ),
        .Q(wbstar_reg[13]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(\wdata_reg_reg_n_0_[14] ),
        .Q(wbstar_reg[14]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(\wdata_reg_reg_n_0_[15] ),
        .Q(wbstar_reg[15]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[16] ),
        .Q(wbstar_reg[16]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[17] ),
        .Q(wbstar_reg[17]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[18] ),
        .Q(wbstar_reg[18]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[19] ),
        .Q(wbstar_reg[19]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(p_1_in_0[1]),
        .Q(wbstar_reg[1]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[20] ),
        .Q(wbstar_reg[20]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[21] ),
        .Q(wbstar_reg[21]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[22] ),
        .Q(wbstar_reg[22]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[23] ),
        .Q(wbstar_reg[23]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[24] ),
        .Q(wbstar_reg[24]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[25] ),
        .Q(wbstar_reg[25]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[26] ),
        .Q(wbstar_reg[26]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[27] ),
        .Q(wbstar_reg[27]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[28] ),
        .Q(wbstar_reg[28]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[29] ),
        .Q(wbstar_reg[29]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(p_1_in_0[2]),
        .Q(wbstar_reg[2]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[30] ),
        .Q(wbstar_reg[30]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[31] ),
        .Q(wbstar_reg[31]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(p_1_in_0[3]),
        .Q(wbstar_reg[3]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(p_1_in_0[4]),
        .Q(wbstar_reg[4]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(p_1_in_0[5]),
        .Q(wbstar_reg[5]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(p_1_in_0[6]),
        .Q(wbstar_reg[6]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(p_1_in_0[7]),
        .Q(wbstar_reg[7]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(\wdata_reg_reg_n_0_[8] ),
        .Q(wbstar_reg[8]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wbstar_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(\wdata_reg_reg_n_0_[9] ),
        .Q(wbstar_reg[9]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(p_1_in_0[0]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\wdata_reg_reg_n_0_[10] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\wdata_reg_reg_n_0_[11] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\wdata_reg_reg_n_0_[12] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\wdata_reg_reg_n_0_[13] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\wdata_reg_reg_n_0_[14] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\wdata_reg_reg_n_0_[15] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\wdata_reg_reg_n_0_[16] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\wdata_reg_reg_n_0_[17] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\wdata_reg_reg_n_0_[18] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\wdata_reg_reg_n_0_[19] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(p_1_in_0[1]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\wdata_reg_reg_n_0_[20] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\wdata_reg_reg_n_0_[21] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\wdata_reg_reg_n_0_[22] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\wdata_reg_reg_n_0_[23] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\wdata_reg_reg_n_0_[24] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\wdata_reg_reg_n_0_[25] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\wdata_reg_reg_n_0_[26] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\wdata_reg_reg_n_0_[27] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\wdata_reg_reg_n_0_[28] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\wdata_reg_reg_n_0_[29] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(p_1_in_0[2]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\wdata_reg_reg_n_0_[30] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\wdata_reg_reg_n_0_[31] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(p_1_in_0[3]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(p_1_in_0[4]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(p_1_in_0[5]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(p_1_in_0[6]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(p_1_in_0[7]),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\wdata_reg_reg_n_0_[8] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wdata_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\wdata_reg_reg_n_0_[9] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h40FF)) 
    wdata_valid_reg_i_1
       (.I0(bvalid_reg_reg_0),
        .I1(awaddr_valid_reg),
        .I2(wdata_valid_reg_reg_n_0),
        .I3(s_axi_aresetn),
        .O(wdata_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    wdata_valid_reg_i_2
       (.I0(s_axi_wvalid),
        .I1(wdata_valid_reg_reg_n_0),
        .O(wdata_valid_reg_i_2_n_0));
  FDRE wdata_valid_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wdata_valid_reg_i_2_n_0),
        .Q(wdata_valid_reg_reg_n_0),
        .R(wdata_valid_reg));
  LUT2 #(
    .INIT(4'h2)) 
    \wstrb_reg[3]_i_1 
       (.I0(s_axi_wvalid),
        .I1(wdata_valid_reg_reg_n_0),
        .O(\wstrb_reg[3]_i_1_n_0 ));
  FDRE \wstrb_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wstrb[0]),
        .Q(p_0_in),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wstrb_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wstrb[1]),
        .Q(p_2_in),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wstrb_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wstrb[2]),
        .Q(\wstrb_reg_reg_n_0_[2] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
  FDRE \wstrb_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\wstrb_reg[3]_i_1_n_0 ),
        .D(s_axi_wstrb[3]),
        .Q(\wstrb_reg_reg_n_0_[3] ),
        .R(\rdata_reg[31]_i_1_n_0 ));
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
