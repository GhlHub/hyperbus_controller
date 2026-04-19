// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Apr 19 15:12:19 2026
// Host        : YouBing running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /raid/work/ghl_ip/hyperbus_controller/vivado_projects/hyperbus_test_proj/hyperbus_test_proj.gen/sources_1/bd/design_1/ip/design_1_hyperbus_controller_0_0/design_1_hyperbus_controller_0_0_stub.v
// Design      : design_1_hyperbus_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcsu35p-sbvb625-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_hyperbus_controller_0_0,hyperbus_controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "hyperbus_controller,Vivado 2025.2" *) 
module design_1_hyperbus_controller_0_0(i_axi_aclk, i_axi_aresetn, i_hb_clk_200, 
  i_hb_clk_200_gated, i_ref_clk_300, i_idelayctrl_rst, i_hb_clk_200_samp_90, i_iddre1_rst, 
  i_hb_rstn, s_axi_awaddr, s_axi_awid, s_axi_awlen, s_axi_awsize, s_axi_awburst, s_axi_awvalid, 
  s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wlast, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bid, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arid, s_axi_arlen, 
  s_axi_arsize, s_axi_arburst, s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rid, 
  s_axi_rresp, s_axi_rlast, s_axi_rvalid, s_axi_rready, s_axil_awaddr, s_axil_awvalid, 
  s_axil_awready, s_axil_wdata, s_axil_wstrb, s_axil_wvalid, s_axil_wready, s_axil_bresp, 
  s_axil_bvalid, s_axil_bready, s_axil_araddr, s_axil_arvalid, s_axil_arready, s_axil_rdata, 
  s_axil_rresp, s_axil_rvalid, s_axil_rready, o_hb_cs_n, o_hb_clk_ce, o_hb_ck_p, o_hb_ck_n, 
  io_hb_rwds, io_hb_dq, o_hb_reset_n, o_dbg_dq_q1_dly, o_dbg_dq_q2_dly, o_dbg_rwds_q1_dly, 
  o_dbg_rwds_q2_dly, o_dbg_dq_o_d1, o_dbg_dq_o_d2, o_dbg_rwds_o_d1, o_dbg_rwds_o_d2, 
  o_dbg_i_dq_t, o_dbg_i_rwds_t, o_dbg_hb_cs_n_q, o_dbg_rd_fifo_din, o_dbg_rd_fifo_wr_en, 
  o_dbg_last_read_word32, o_dbg_rd_half)
/* synthesis syn_black_box black_box_pad_pin="i_axi_aresetn,i_idelayctrl_rst,i_iddre1_rst,i_hb_rstn,s_axi_awaddr[31:0],s_axi_awid[0:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bid[0:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arid[0:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rid[0:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,s_axi_rready,s_axil_awaddr[15:0],s_axil_awvalid,s_axil_awready,s_axil_wdata[31:0],s_axil_wstrb[3:0],s_axil_wvalid,s_axil_wready,s_axil_bresp[1:0],s_axil_bvalid,s_axil_bready,s_axil_araddr[15:0],s_axil_arvalid,s_axil_arready,s_axil_rdata[31:0],s_axil_rresp[1:0],s_axil_rvalid,s_axil_rready,o_hb_cs_n,o_hb_clk_ce,o_hb_ck_p,o_hb_ck_n,io_hb_rwds,io_hb_dq[7:0],o_hb_reset_n,o_dbg_dq_q1_dly[7:0],o_dbg_dq_q2_dly[7:0],o_dbg_rwds_q1_dly,o_dbg_rwds_q2_dly,o_dbg_dq_o_d1[7:0],o_dbg_dq_o_d2[7:0],o_dbg_rwds_o_d1,o_dbg_rwds_o_d2,o_dbg_i_dq_t[7:0],o_dbg_i_rwds_t,o_dbg_hb_cs_n_q,o_dbg_rd_fifo_din[31:0],o_dbg_rd_fifo_wr_en,o_dbg_last_read_word32[31:0],o_dbg_rd_half" */
/* synthesis syn_force_seq_prim="i_axi_aclk" */
/* synthesis syn_force_seq_prim="i_hb_clk_200" */
/* synthesis syn_force_seq_prim="i_hb_clk_200_gated" */
/* synthesis syn_force_seq_prim="i_ref_clk_300" */
/* synthesis syn_force_seq_prim="i_hb_clk_200_samp_90" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_axi_aclk, ASSOCIATED_RESET i_axi_aresetn, ASSOCIATED_BUSIF s_axi:s_axil, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input i_axi_aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_axi_aresetn;
  input i_hb_clk_200 /* synthesis syn_isclock = 1 */;
  input i_hb_clk_200_gated /* synthesis syn_isclock = 1 */;
  input i_ref_clk_300 /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_idelayctrl_rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_idelayctrl_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input i_idelayctrl_rst;
  input i_hb_clk_200_samp_90 /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_iddre1_rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_iddre1_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input i_iddre1_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_hb_rstn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_hb_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_hb_rstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, PROTOCOL AXI4, FREQ_HZ 50000000, DATA_WIDTH 32, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWID" *) input [0:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BID" *) output [0:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARID" *) input [0:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RID" *) output [0:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axil, PROTOCOL AXI4LITE, FREQ_HZ 50000000, DATA_WIDTH 32, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [15:0]s_axil_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWVALID" *) input s_axil_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWREADY" *) output s_axil_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WDATA" *) input [31:0]s_axil_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WSTRB" *) input [3:0]s_axil_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WVALID" *) input s_axil_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WREADY" *) output s_axil_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BRESP" *) output [1:0]s_axil_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BVALID" *) output s_axil_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BREADY" *) input s_axil_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARADDR" *) input [15:0]s_axil_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARVALID" *) input s_axil_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARREADY" *) output s_axil_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RDATA" *) output [31:0]s_axil_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RRESP" *) output [1:0]s_axil_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RVALID" *) output s_axil_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RREADY" *) input s_axil_rready;
  output o_hb_cs_n;
  output o_hb_clk_ce;
  output o_hb_ck_p;
  output o_hb_ck_n;
  inout io_hb_rwds;
  inout [7:0]io_hb_dq;
  output o_hb_reset_n;
  output [7:0]o_dbg_dq_q1_dly;
  output [7:0]o_dbg_dq_q2_dly;
  output o_dbg_rwds_q1_dly;
  output o_dbg_rwds_q2_dly;
  output [7:0]o_dbg_dq_o_d1;
  output [7:0]o_dbg_dq_o_d2;
  output o_dbg_rwds_o_d1;
  output o_dbg_rwds_o_d2;
  output [7:0]o_dbg_i_dq_t;
  output o_dbg_i_rwds_t;
  output o_dbg_hb_cs_n_q;
  output [31:0]o_dbg_rd_fifo_din;
  output o_dbg_rd_fifo_wr_en;
  output [31:0]o_dbg_last_read_word32;
  output o_dbg_rd_half;
endmodule
