// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sat Apr 11 13:56:46 2026
// Host        : YouBing running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_pmcbridge_0_0 -prefix
//               design_1_pmcbridge_0_0_ design_1_pmcbridge_0_0_stub.v
// Design      : design_1_pmcbridge_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcsu35p-sbvb625-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_pmcbridge_0_0,pmcbridge_v1_0_0,{}" *) (* CORE_GENERATION_INFO = "design_1_pmcbridge_0_0,pmcbridge_v1_0_0,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=pmcbridge,x_ipVersion=1.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "pmcbridge_v1_0_0,Vivado 2025.2" *) 
module design_1_pmcbridge_0_0(S_AXI_arburst, S_AXI_arcache, S_AXI_arlen, 
  S_AXI_arlock, S_AXI_arprot, S_AXI_arqos, S_AXI_arready, S_AXI_arsize, S_AXI_arvalid, 
  S_AXI_awaddr, S_AXI_awburst, S_AXI_awcache, S_AXI_awlen, S_AXI_awlock, S_AXI_awprot, 
  S_AXI_awqos, S_AXI_awready, S_AXI_awsize, S_AXI_awvalid, S_AXI_bready, S_AXI_bresp, 
  S_AXI_bvalid, S_AXI_rdata, S_AXI_rlast, S_AXI_rready, S_AXI_rresp, S_AXI_rvalid, S_AXI_wdata, 
  S_AXI_wlast, S_AXI_wready, S_AXI_wstrb, S_AXI_wvalid, S_AXI_araddr, S_AXI_clk)
/* synthesis syn_black_box black_box_pad_pin="S_AXI_arburst[1:0],S_AXI_arcache[3:0],S_AXI_arlen[7:0],S_AXI_arlock[0:0],S_AXI_arprot[2:0],S_AXI_arqos[3:0],S_AXI_arready[0:0],S_AXI_arsize[2:0],S_AXI_arvalid[0:0],S_AXI_awaddr[27:0],S_AXI_awburst[1:0],S_AXI_awcache[3:0],S_AXI_awlen[7:0],S_AXI_awlock[0:0],S_AXI_awprot[2:0],S_AXI_awqos[3:0],S_AXI_awready[0:0],S_AXI_awsize[2:0],S_AXI_awvalid[0:0],S_AXI_bready[0:0],S_AXI_bresp[1:0],S_AXI_bvalid[0:0],S_AXI_rdata[31:0],S_AXI_rlast[0:0],S_AXI_rready[0:0],S_AXI_rresp[1:0],S_AXI_rvalid[0:0],S_AXI_wdata[31:0],S_AXI_wlast[0:0],S_AXI_wready[0:0],S_AXI_wstrb[3:0],S_AXI_wvalid[0:0],S_AXI_araddr[27:0]" */
/* synthesis syn_force_seq_prim="S_AXI_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, SUPPORTS_NARROW_BURST 1, HAS_BURST 0, NUM_WRITE_OUTSTANDING 32, NUM_READ_OUTSTANDING 32, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 28, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [1:0]S_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]S_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]S_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]S_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]S_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output [0:0]S_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]S_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input [0:0]S_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [27:0]S_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]S_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]S_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]S_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]S_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]S_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output [0:0]S_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]S_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input [0:0]S_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input [0:0]S_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output [0:0]S_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output [0:0]S_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input [0:0]S_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output [0:0]S_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input [0:0]S_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output [0:0]S_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input [0:0]S_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [27:0]S_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_clk, ASSOCIATED_BUSIF S_AXI, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input S_AXI_clk /* synthesis syn_isclock = 1 */;
endmodule
