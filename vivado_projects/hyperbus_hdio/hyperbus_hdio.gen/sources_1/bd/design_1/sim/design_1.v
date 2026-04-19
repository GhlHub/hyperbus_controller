//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Sat Apr 18 20:52:34 2026
//Host        : YouBing running 64-bit Ubuntu 24.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=20,numReposBlks=19,numNonXlnxBlks=3,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (UART_0_rxd,
    UART_0_txd,
    clk1,
    clk2,
    clk3,
    clk4,
    clk5,
    dcm_locked,
    ext_reset_in_0,
    io_hb_dq_0,
    io_hb_rwds_0,
    o_hb_ck_n_0,
    o_hb_ck_p_0,
    o_hb_clk_ce_0,
    o_hb_cs_n_0,
    o_hb_reset_n_0,
    psclk_0,
    psdone_0,
    psen_0,
    psincdec_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0 RxD" *) (* X_INTERFACE_MODE = "Master" *) input UART_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0 TxD" *) output UART_0_txd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK1, CLK_DOMAIN design_1_clk1, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK2 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK2, CLK_DOMAIN design_1_clk2, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK3 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK3, CLK_DOMAIN design_1_clk3, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK4 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK4, CLK_DOMAIN design_1_clk4, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK5 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK5, CLK_DOMAIN design_1_clk5, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk5;
  input dcm_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.EXT_RESET_IN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.EXT_RESET_IN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ext_reset_in_0;
  inout [7:0]io_hb_dq_0;
  inout io_hb_rwds_0;
  output o_hb_ck_n_0;
  output o_hb_ck_p_0;
  output o_hb_clk_ce_0;
  output o_hb_cs_n_0;
  output o_hb_reset_n_0;
  output psclk_0;
  input psdone_0;
  output psen_0;
  output psincdec_0;

  wire UART_0_rxd;
  wire UART_0_txd;
  wire [31:0]axi_crossbar_0_M00_AXI_ARADDR;
  wire axi_crossbar_0_M00_AXI_ARREADY;
  wire [0:0]axi_crossbar_0_M00_AXI_ARVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_AWADDR;
  wire axi_crossbar_0_M00_AXI_AWREADY;
  wire [0:0]axi_crossbar_0_M00_AXI_AWVALID;
  wire [0:0]axi_crossbar_0_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_BRESP;
  wire axi_crossbar_0_M00_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_RDATA;
  wire [0:0]axi_crossbar_0_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_RRESP;
  wire axi_crossbar_0_M00_AXI_RVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_WDATA;
  wire axi_crossbar_0_M00_AXI_WREADY;
  wire [3:0]axi_crossbar_0_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_0_M00_AXI_WVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_ARADDR;
  wire axi_crossbar_0_M01_AXI_ARREADY;
  wire [1:1]axi_crossbar_0_M01_AXI_ARVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_AWADDR;
  wire axi_crossbar_0_M01_AXI_AWREADY;
  wire [1:1]axi_crossbar_0_M01_AXI_AWVALID;
  wire [1:1]axi_crossbar_0_M01_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_BRESP;
  wire axi_crossbar_0_M01_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M01_AXI_RDATA;
  wire [1:1]axi_crossbar_0_M01_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_RRESP;
  wire axi_crossbar_0_M01_AXI_RVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_WDATA;
  wire axi_crossbar_0_M01_AXI_WREADY;
  wire [7:4]axi_crossbar_0_M01_AXI_WSTRB;
  wire [1:1]axi_crossbar_0_M01_AXI_WVALID;
  wire [95:64]axi_crossbar_0_M02_AXI_ARADDR;
  wire [8:6]axi_crossbar_0_M02_AXI_ARPROT;
  wire axi_crossbar_0_M02_AXI_ARREADY;
  wire [2:2]axi_crossbar_0_M02_AXI_ARVALID;
  wire [95:64]axi_crossbar_0_M02_AXI_AWADDR;
  wire [8:6]axi_crossbar_0_M02_AXI_AWPROT;
  wire axi_crossbar_0_M02_AXI_AWREADY;
  wire [2:2]axi_crossbar_0_M02_AXI_AWVALID;
  wire [2:2]axi_crossbar_0_M02_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M02_AXI_BRESP;
  wire axi_crossbar_0_M02_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M02_AXI_RDATA;
  wire [2:2]axi_crossbar_0_M02_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M02_AXI_RRESP;
  wire axi_crossbar_0_M02_AXI_RVALID;
  wire [95:64]axi_crossbar_0_M02_AXI_WDATA;
  wire axi_crossbar_0_M02_AXI_WREADY;
  wire [11:8]axi_crossbar_0_M02_AXI_WSTRB;
  wire [2:2]axi_crossbar_0_M02_AXI_WVALID;
  wire [127:96]axi_crossbar_0_M03_AXI_ARADDR;
  wire axi_crossbar_0_M03_AXI_ARREADY;
  wire [3:3]axi_crossbar_0_M03_AXI_ARVALID;
  wire [127:96]axi_crossbar_0_M03_AXI_AWADDR;
  wire axi_crossbar_0_M03_AXI_AWREADY;
  wire [3:3]axi_crossbar_0_M03_AXI_AWVALID;
  wire [3:3]axi_crossbar_0_M03_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M03_AXI_BRESP;
  wire axi_crossbar_0_M03_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M03_AXI_RDATA;
  wire [3:3]axi_crossbar_0_M03_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M03_AXI_RRESP;
  wire axi_crossbar_0_M03_AXI_RVALID;
  wire [127:96]axi_crossbar_0_M03_AXI_WDATA;
  wire axi_crossbar_0_M03_AXI_WREADY;
  wire [15:12]axi_crossbar_0_M03_AXI_WSTRB;
  wire [3:3]axi_crossbar_0_M03_AXI_WVALID;
  wire [159:128]axi_crossbar_0_M04_AXI_ARADDR;
  wire [14:12]axi_crossbar_0_M04_AXI_ARPROT;
  wire axi_crossbar_0_M04_AXI_ARREADY;
  wire [4:4]axi_crossbar_0_M04_AXI_ARVALID;
  wire [159:128]axi_crossbar_0_M04_AXI_AWADDR;
  wire [14:12]axi_crossbar_0_M04_AXI_AWPROT;
  wire axi_crossbar_0_M04_AXI_AWREADY;
  wire [4:4]axi_crossbar_0_M04_AXI_AWVALID;
  wire [4:4]axi_crossbar_0_M04_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M04_AXI_BRESP;
  wire axi_crossbar_0_M04_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M04_AXI_RDATA;
  wire [4:4]axi_crossbar_0_M04_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M04_AXI_RRESP;
  wire axi_crossbar_0_M04_AXI_RVALID;
  wire [159:128]axi_crossbar_0_M04_AXI_WDATA;
  wire axi_crossbar_0_M04_AXI_WREADY;
  wire [19:16]axi_crossbar_0_M04_AXI_WSTRB;
  wire [4:4]axi_crossbar_0_M04_AXI_WVALID;
  wire [191:160]axi_crossbar_0_M05_AXI_ARADDR;
  wire axi_crossbar_0_M05_AXI_ARREADY;
  wire [5:5]axi_crossbar_0_M05_AXI_ARVALID;
  wire [191:160]axi_crossbar_0_M05_AXI_AWADDR;
  wire axi_crossbar_0_M05_AXI_AWREADY;
  wire [5:5]axi_crossbar_0_M05_AXI_AWVALID;
  wire [5:5]axi_crossbar_0_M05_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M05_AXI_BRESP;
  wire axi_crossbar_0_M05_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M05_AXI_RDATA;
  wire [5:5]axi_crossbar_0_M05_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M05_AXI_RRESP;
  wire axi_crossbar_0_M05_AXI_RVALID;
  wire [191:160]axi_crossbar_0_M05_AXI_WDATA;
  wire axi_crossbar_0_M05_AXI_WREADY;
  wire [23:20]axi_crossbar_0_M05_AXI_WSTRB;
  wire [5:5]axi_crossbar_0_M05_AXI_WVALID;
  wire [31:0]axi_crossbar_1_M00_AXI_ARADDR;
  wire [1:0]axi_crossbar_1_M00_AXI_ARBURST;
  wire [0:0]axi_crossbar_1_M00_AXI_ARID;
  wire [7:0]axi_crossbar_1_M00_AXI_ARLEN;
  wire axi_crossbar_1_M00_AXI_ARREADY;
  wire [2:0]axi_crossbar_1_M00_AXI_ARSIZE;
  wire [0:0]axi_crossbar_1_M00_AXI_ARVALID;
  wire [31:0]axi_crossbar_1_M00_AXI_AWADDR;
  wire [1:0]axi_crossbar_1_M00_AXI_AWBURST;
  wire [0:0]axi_crossbar_1_M00_AXI_AWID;
  wire [7:0]axi_crossbar_1_M00_AXI_AWLEN;
  wire axi_crossbar_1_M00_AXI_AWREADY;
  wire [2:0]axi_crossbar_1_M00_AXI_AWSIZE;
  wire [0:0]axi_crossbar_1_M00_AXI_AWVALID;
  wire [0:0]axi_crossbar_1_M00_AXI_BID;
  wire [0:0]axi_crossbar_1_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_1_M00_AXI_BRESP;
  wire axi_crossbar_1_M00_AXI_BVALID;
  wire [31:0]axi_crossbar_1_M00_AXI_RDATA;
  wire [0:0]axi_crossbar_1_M00_AXI_RID;
  wire axi_crossbar_1_M00_AXI_RLAST;
  wire [0:0]axi_crossbar_1_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_1_M00_AXI_RRESP;
  wire axi_crossbar_1_M00_AXI_RVALID;
  wire [31:0]axi_crossbar_1_M00_AXI_WDATA;
  wire [0:0]axi_crossbar_1_M00_AXI_WLAST;
  wire axi_crossbar_1_M00_AXI_WREADY;
  wire [3:0]axi_crossbar_1_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_1_M00_AXI_WVALID;
  wire axi_intc_0_interrupt_INTERRUPT;
  wire axi_quad_spi_0_ip2intc_irpt;
  wire axi_timer_0_interrupt;
  wire clk1;
  wire clk2;
  wire clk3;
  wire clk4;
  wire clk5;
  wire dcm_locked;
  wire e_uart_0_intr;
  wire ext_reset_in_0;
  wire [2:0]ilconcat_0_dout;
  wire [7:0]io_hb_dq_0;
  wire io_hb_rwds_0;
  wire [0:31]lmb_bram_if_cntlr_0_BRAM_PORT_ADDR;
  wire lmb_bram_if_cntlr_0_BRAM_PORT_CLK;
  wire [0:31]lmb_bram_if_cntlr_0_BRAM_PORT_DIN;
  wire [31:0]lmb_bram_if_cntlr_0_BRAM_PORT_DOUT;
  wire lmb_bram_if_cntlr_0_BRAM_PORT_EN;
  wire lmb_bram_if_cntlr_0_BRAM_PORT_RST;
  wire [0:3]lmb_bram_if_cntlr_0_BRAM_PORT_WE;
  wire mb_debug_sys_rst_1;
  wire mdm_0_MBDEBUG_0_CAPTURE;
  wire mdm_0_MBDEBUG_0_CLK;
  wire mdm_0_MBDEBUG_0_DISABLE;
  wire [0:7]mdm_0_MBDEBUG_0_REG_EN;
  wire mdm_0_MBDEBUG_0_RST;
  wire mdm_0_MBDEBUG_0_SHIFT;
  wire mdm_0_MBDEBUG_0_TDI;
  wire mdm_0_MBDEBUG_0_TDO;
  wire mdm_0_MBDEBUG_0_UPDATE;
  wire [0:31]microblaze_0_DLMB_ABUS;
  wire microblaze_0_DLMB_ADDRSTROBE;
  wire [0:3]microblaze_0_DLMB_BE;
  wire microblaze_0_DLMB_CE;
  wire [0:31]microblaze_0_DLMB_READDBUS;
  wire microblaze_0_DLMB_READSTROBE;
  wire microblaze_0_DLMB_READY;
  wire microblaze_0_DLMB_UE;
  wire microblaze_0_DLMB_WAIT;
  wire [0:31]microblaze_0_DLMB_WRITEDBUS;
  wire microblaze_0_DLMB_WRITESTROBE;
  wire [0:31]microblaze_0_ILMB_ABUS;
  wire microblaze_0_ILMB_ADDRSTROBE;
  wire microblaze_0_ILMB_CE;
  wire [0:31]microblaze_0_ILMB_READDBUS;
  wire microblaze_0_ILMB_READSTROBE;
  wire microblaze_0_ILMB_READY;
  wire microblaze_0_ILMB_UE;
  wire microblaze_0_ILMB_WAIT;
  wire [31:0]microblaze_0_M_AXI_DC_ARADDR;
  wire [1:0]microblaze_0_M_AXI_DC_ARBURST;
  wire [3:0]microblaze_0_M_AXI_DC_ARCACHE;
  wire [0:0]microblaze_0_M_AXI_DC_ARID;
  wire [7:0]microblaze_0_M_AXI_DC_ARLEN;
  wire microblaze_0_M_AXI_DC_ARLOCK;
  wire [2:0]microblaze_0_M_AXI_DC_ARPROT;
  wire [3:0]microblaze_0_M_AXI_DC_ARQOS;
  wire [0:0]microblaze_0_M_AXI_DC_ARREADY;
  wire [2:0]microblaze_0_M_AXI_DC_ARSIZE;
  wire microblaze_0_M_AXI_DC_ARVALID;
  wire [31:0]microblaze_0_M_AXI_DC_AWADDR;
  wire [1:0]microblaze_0_M_AXI_DC_AWBURST;
  wire [3:0]microblaze_0_M_AXI_DC_AWCACHE;
  wire [0:0]microblaze_0_M_AXI_DC_AWID;
  wire [7:0]microblaze_0_M_AXI_DC_AWLEN;
  wire microblaze_0_M_AXI_DC_AWLOCK;
  wire [2:0]microblaze_0_M_AXI_DC_AWPROT;
  wire [3:0]microblaze_0_M_AXI_DC_AWQOS;
  wire [0:0]microblaze_0_M_AXI_DC_AWREADY;
  wire [2:0]microblaze_0_M_AXI_DC_AWSIZE;
  wire microblaze_0_M_AXI_DC_AWVALID;
  wire [0:0]microblaze_0_M_AXI_DC_BID;
  wire microblaze_0_M_AXI_DC_BREADY;
  wire [1:0]microblaze_0_M_AXI_DC_BRESP;
  wire [0:0]microblaze_0_M_AXI_DC_BVALID;
  wire [31:0]microblaze_0_M_AXI_DC_RDATA;
  wire [0:0]microblaze_0_M_AXI_DC_RID;
  wire [0:0]microblaze_0_M_AXI_DC_RLAST;
  wire microblaze_0_M_AXI_DC_RREADY;
  wire [1:0]microblaze_0_M_AXI_DC_RRESP;
  wire [0:0]microblaze_0_M_AXI_DC_RVALID;
  wire [31:0]microblaze_0_M_AXI_DC_WDATA;
  wire microblaze_0_M_AXI_DC_WLAST;
  wire [0:0]microblaze_0_M_AXI_DC_WREADY;
  wire [3:0]microblaze_0_M_AXI_DC_WSTRB;
  wire microblaze_0_M_AXI_DC_WVALID;
  wire [31:0]microblaze_0_M_AXI_DP_ARADDR;
  wire [2:0]microblaze_0_M_AXI_DP_ARPROT;
  wire [0:0]microblaze_0_M_AXI_DP_ARREADY;
  wire microblaze_0_M_AXI_DP_ARVALID;
  wire [31:0]microblaze_0_M_AXI_DP_AWADDR;
  wire [2:0]microblaze_0_M_AXI_DP_AWPROT;
  wire [0:0]microblaze_0_M_AXI_DP_AWREADY;
  wire microblaze_0_M_AXI_DP_AWVALID;
  wire microblaze_0_M_AXI_DP_BREADY;
  wire [1:0]microblaze_0_M_AXI_DP_BRESP;
  wire [0:0]microblaze_0_M_AXI_DP_BVALID;
  wire [31:0]microblaze_0_M_AXI_DP_RDATA;
  wire microblaze_0_M_AXI_DP_RREADY;
  wire [1:0]microblaze_0_M_AXI_DP_RRESP;
  wire [0:0]microblaze_0_M_AXI_DP_RVALID;
  wire [31:0]microblaze_0_M_AXI_DP_WDATA;
  wire [0:0]microblaze_0_M_AXI_DP_WREADY;
  wire [3:0]microblaze_0_M_AXI_DP_WSTRB;
  wire microblaze_0_M_AXI_DP_WVALID;
  wire [31:0]microblaze_riscv_0_M_AXI_IC_ARADDR;
  wire [1:0]microblaze_riscv_0_M_AXI_IC_ARBURST;
  wire [3:0]microblaze_riscv_0_M_AXI_IC_ARCACHE;
  wire [0:0]microblaze_riscv_0_M_AXI_IC_ARID;
  wire [7:0]microblaze_riscv_0_M_AXI_IC_ARLEN;
  wire microblaze_riscv_0_M_AXI_IC_ARLOCK;
  wire [2:0]microblaze_riscv_0_M_AXI_IC_ARPROT;
  wire [3:0]microblaze_riscv_0_M_AXI_IC_ARQOS;
  wire [1:1]microblaze_riscv_0_M_AXI_IC_ARREADY;
  wire [2:0]microblaze_riscv_0_M_AXI_IC_ARSIZE;
  wire microblaze_riscv_0_M_AXI_IC_ARVALID;
  wire [31:0]microblaze_riscv_0_M_AXI_IC_AWADDR;
  wire [1:0]microblaze_riscv_0_M_AXI_IC_AWBURST;
  wire [3:0]microblaze_riscv_0_M_AXI_IC_AWCACHE;
  wire [0:0]microblaze_riscv_0_M_AXI_IC_AWID;
  wire [7:0]microblaze_riscv_0_M_AXI_IC_AWLEN;
  wire microblaze_riscv_0_M_AXI_IC_AWLOCK;
  wire [2:0]microblaze_riscv_0_M_AXI_IC_AWPROT;
  wire [3:0]microblaze_riscv_0_M_AXI_IC_AWQOS;
  wire [1:1]microblaze_riscv_0_M_AXI_IC_AWREADY;
  wire [2:0]microblaze_riscv_0_M_AXI_IC_AWSIZE;
  wire microblaze_riscv_0_M_AXI_IC_AWVALID;
  wire [1:1]microblaze_riscv_0_M_AXI_IC_BID;
  wire microblaze_riscv_0_M_AXI_IC_BREADY;
  wire [3:2]microblaze_riscv_0_M_AXI_IC_BRESP;
  wire [1:1]microblaze_riscv_0_M_AXI_IC_BVALID;
  wire [63:32]microblaze_riscv_0_M_AXI_IC_RDATA;
  wire [1:1]microblaze_riscv_0_M_AXI_IC_RID;
  wire [1:1]microblaze_riscv_0_M_AXI_IC_RLAST;
  wire microblaze_riscv_0_M_AXI_IC_RREADY;
  wire [3:2]microblaze_riscv_0_M_AXI_IC_RRESP;
  wire [1:1]microblaze_riscv_0_M_AXI_IC_RVALID;
  wire [31:0]microblaze_riscv_0_M_AXI_IC_WDATA;
  wire microblaze_riscv_0_M_AXI_IC_WLAST;
  wire [1:1]microblaze_riscv_0_M_AXI_IC_WREADY;
  wire [3:0]microblaze_riscv_0_M_AXI_IC_WSTRB;
  wire microblaze_riscv_0_M_AXI_IC_WVALID;
  wire o_hb_ck_n_0;
  wire o_hb_ck_p_0;
  wire o_hb_clk_ce_0;
  wire o_hb_cs_n_0;
  wire o_hb_reset_n_0;
  wire [0:0]proc_sys_reset_1_interconnect_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire psclk_0;
  wire psdone_0;
  wire psen_0;
  wire psincdec_0;
  wire [0:0]reset_gen_bus_struct_reset;
  wire reset_gen_mb_reset;
  wire [0:0]reset_gen_peripheral_aresetn;
  wire [0:0]reset_gen_peripheral_reset;
  wire [0:0]reset_gen_peripheral_reset1;
  wire [27:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire [0:0]smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [27:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire [0:0]smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire [0:0]smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire [0:0]smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire [0:0]smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire [0:0]smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [6:0]smartconnect_0_M01_AXI_ARADDR;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [6:0]smartconnect_0_M01_AXI_AWADDR;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [31:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [31:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [3:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [17:0]NLW_axi_crossbar_0_m_axi_arprot_UNCONNECTED;
  wire [17:0]NLW_axi_crossbar_0_m_axi_awprot_UNCONNECTED;

  design_1_axi_clk_wiz_phase_ct_0_0 axi_clk_wiz_phase_ct_0
       (.clk_wiz_locked(dcm_locked),
        .psclk(psclk_0),
        .psdone(psdone_0),
        .psen(psen_0),
        .psincdec(psincdec_0),
        .s_axi_aclk(clk3),
        .s_axi_araddr(axi_crossbar_0_M05_AXI_ARADDR[165:160]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(axi_crossbar_0_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_0_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M05_AXI_AWADDR[165:160]),
        .s_axi_awready(axi_crossbar_0_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_crossbar_0_M05_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_0_M05_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M05_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M05_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M05_AXI_RDATA),
        .s_axi_rready(axi_crossbar_0_M05_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M05_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M05_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M05_AXI_WDATA),
        .s_axi_wready(axi_crossbar_0_M05_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M05_AXI_WVALID));
  design_1_axi_crossbar_0_0 axi_crossbar_0
       (.aclk(clk3),
        .aresetn(proc_sys_reset_1_interconnect_aresetn),
        .m_axi_araddr({axi_crossbar_0_M05_AXI_ARADDR,axi_crossbar_0_M04_AXI_ARADDR,axi_crossbar_0_M03_AXI_ARADDR,axi_crossbar_0_M02_AXI_ARADDR,axi_crossbar_0_M01_AXI_ARADDR,axi_crossbar_0_M00_AXI_ARADDR}),
        .m_axi_arprot({axi_crossbar_0_M04_AXI_ARPROT,NLW_axi_crossbar_0_m_axi_arprot_UNCONNECTED[11:9],axi_crossbar_0_M02_AXI_ARPROT,NLW_axi_crossbar_0_m_axi_arprot_UNCONNECTED[5:0]}),
        .m_axi_arready({axi_crossbar_0_M05_AXI_ARREADY,axi_crossbar_0_M04_AXI_ARREADY,axi_crossbar_0_M03_AXI_ARREADY,axi_crossbar_0_M02_AXI_ARREADY,axi_crossbar_0_M01_AXI_ARREADY,axi_crossbar_0_M00_AXI_ARREADY}),
        .m_axi_arvalid({axi_crossbar_0_M05_AXI_ARVALID,axi_crossbar_0_M04_AXI_ARVALID,axi_crossbar_0_M03_AXI_ARVALID,axi_crossbar_0_M02_AXI_ARVALID,axi_crossbar_0_M01_AXI_ARVALID,axi_crossbar_0_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_0_M05_AXI_AWADDR,axi_crossbar_0_M04_AXI_AWADDR,axi_crossbar_0_M03_AXI_AWADDR,axi_crossbar_0_M02_AXI_AWADDR,axi_crossbar_0_M01_AXI_AWADDR,axi_crossbar_0_M00_AXI_AWADDR}),
        .m_axi_awprot({axi_crossbar_0_M04_AXI_AWPROT,NLW_axi_crossbar_0_m_axi_awprot_UNCONNECTED[11:9],axi_crossbar_0_M02_AXI_AWPROT,NLW_axi_crossbar_0_m_axi_awprot_UNCONNECTED[5:0]}),
        .m_axi_awready({axi_crossbar_0_M05_AXI_AWREADY,axi_crossbar_0_M04_AXI_AWREADY,axi_crossbar_0_M03_AXI_AWREADY,axi_crossbar_0_M02_AXI_AWREADY,axi_crossbar_0_M01_AXI_AWREADY,axi_crossbar_0_M00_AXI_AWREADY}),
        .m_axi_awvalid({axi_crossbar_0_M05_AXI_AWVALID,axi_crossbar_0_M04_AXI_AWVALID,axi_crossbar_0_M03_AXI_AWVALID,axi_crossbar_0_M02_AXI_AWVALID,axi_crossbar_0_M01_AXI_AWVALID,axi_crossbar_0_M00_AXI_AWVALID}),
        .m_axi_bready({axi_crossbar_0_M05_AXI_BREADY,axi_crossbar_0_M04_AXI_BREADY,axi_crossbar_0_M03_AXI_BREADY,axi_crossbar_0_M02_AXI_BREADY,axi_crossbar_0_M01_AXI_BREADY,axi_crossbar_0_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_0_M05_AXI_BRESP,axi_crossbar_0_M04_AXI_BRESP,axi_crossbar_0_M03_AXI_BRESP,axi_crossbar_0_M02_AXI_BRESP,axi_crossbar_0_M01_AXI_BRESP,axi_crossbar_0_M00_AXI_BRESP}),
        .m_axi_bvalid({axi_crossbar_0_M05_AXI_BVALID,axi_crossbar_0_M04_AXI_BVALID,axi_crossbar_0_M03_AXI_BVALID,axi_crossbar_0_M02_AXI_BVALID,axi_crossbar_0_M01_AXI_BVALID,axi_crossbar_0_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_0_M05_AXI_RDATA,axi_crossbar_0_M04_AXI_RDATA,axi_crossbar_0_M03_AXI_RDATA,axi_crossbar_0_M02_AXI_RDATA,axi_crossbar_0_M01_AXI_RDATA,axi_crossbar_0_M00_AXI_RDATA}),
        .m_axi_rready({axi_crossbar_0_M05_AXI_RREADY,axi_crossbar_0_M04_AXI_RREADY,axi_crossbar_0_M03_AXI_RREADY,axi_crossbar_0_M02_AXI_RREADY,axi_crossbar_0_M01_AXI_RREADY,axi_crossbar_0_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_0_M05_AXI_RRESP,axi_crossbar_0_M04_AXI_RRESP,axi_crossbar_0_M03_AXI_RRESP,axi_crossbar_0_M02_AXI_RRESP,axi_crossbar_0_M01_AXI_RRESP,axi_crossbar_0_M00_AXI_RRESP}),
        .m_axi_rvalid({axi_crossbar_0_M05_AXI_RVALID,axi_crossbar_0_M04_AXI_RVALID,axi_crossbar_0_M03_AXI_RVALID,axi_crossbar_0_M02_AXI_RVALID,axi_crossbar_0_M01_AXI_RVALID,axi_crossbar_0_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_0_M05_AXI_WDATA,axi_crossbar_0_M04_AXI_WDATA,axi_crossbar_0_M03_AXI_WDATA,axi_crossbar_0_M02_AXI_WDATA,axi_crossbar_0_M01_AXI_WDATA,axi_crossbar_0_M00_AXI_WDATA}),
        .m_axi_wready({axi_crossbar_0_M05_AXI_WREADY,axi_crossbar_0_M04_AXI_WREADY,axi_crossbar_0_M03_AXI_WREADY,axi_crossbar_0_M02_AXI_WREADY,axi_crossbar_0_M01_AXI_WREADY,axi_crossbar_0_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_0_M05_AXI_WSTRB,axi_crossbar_0_M04_AXI_WSTRB,axi_crossbar_0_M03_AXI_WSTRB,axi_crossbar_0_M02_AXI_WSTRB,axi_crossbar_0_M01_AXI_WSTRB,axi_crossbar_0_M00_AXI_WSTRB}),
        .m_axi_wvalid({axi_crossbar_0_M05_AXI_WVALID,axi_crossbar_0_M04_AXI_WVALID,axi_crossbar_0_M03_AXI_WVALID,axi_crossbar_0_M02_AXI_WVALID,axi_crossbar_0_M01_AXI_WVALID,axi_crossbar_0_M00_AXI_WVALID}),
        .s_axi_araddr(microblaze_0_M_AXI_DP_ARADDR),
        .s_axi_arprot(microblaze_0_M_AXI_DP_ARPROT),
        .s_axi_arready(microblaze_0_M_AXI_DP_ARREADY),
        .s_axi_arvalid(microblaze_0_M_AXI_DP_ARVALID),
        .s_axi_awaddr(microblaze_0_M_AXI_DP_AWADDR),
        .s_axi_awprot(microblaze_0_M_AXI_DP_AWPROT),
        .s_axi_awready(microblaze_0_M_AXI_DP_AWREADY),
        .s_axi_awvalid(microblaze_0_M_AXI_DP_AWVALID),
        .s_axi_bready(microblaze_0_M_AXI_DP_BREADY),
        .s_axi_bresp(microblaze_0_M_AXI_DP_BRESP),
        .s_axi_bvalid(microblaze_0_M_AXI_DP_BVALID),
        .s_axi_rdata(microblaze_0_M_AXI_DP_RDATA),
        .s_axi_rready(microblaze_0_M_AXI_DP_RREADY),
        .s_axi_rresp(microblaze_0_M_AXI_DP_RRESP),
        .s_axi_rvalid(microblaze_0_M_AXI_DP_RVALID),
        .s_axi_wdata(microblaze_0_M_AXI_DP_WDATA),
        .s_axi_wready(microblaze_0_M_AXI_DP_WREADY),
        .s_axi_wstrb(microblaze_0_M_AXI_DP_WSTRB),
        .s_axi_wvalid(microblaze_0_M_AXI_DP_WVALID));
  design_1_axi_crossbar_1_0 axi_crossbar_1
       (.aclk(clk3),
        .aresetn(proc_sys_reset_1_interconnect_aresetn),
        .m_axi_araddr(axi_crossbar_1_M00_AXI_ARADDR),
        .m_axi_arburst(axi_crossbar_1_M00_AXI_ARBURST),
        .m_axi_arid(axi_crossbar_1_M00_AXI_ARID),
        .m_axi_arlen(axi_crossbar_1_M00_AXI_ARLEN),
        .m_axi_arready(axi_crossbar_1_M00_AXI_ARREADY),
        .m_axi_arsize(axi_crossbar_1_M00_AXI_ARSIZE),
        .m_axi_arvalid(axi_crossbar_1_M00_AXI_ARVALID),
        .m_axi_awaddr(axi_crossbar_1_M00_AXI_AWADDR),
        .m_axi_awburst(axi_crossbar_1_M00_AXI_AWBURST),
        .m_axi_awid(axi_crossbar_1_M00_AXI_AWID),
        .m_axi_awlen(axi_crossbar_1_M00_AXI_AWLEN),
        .m_axi_awready(axi_crossbar_1_M00_AXI_AWREADY),
        .m_axi_awsize(axi_crossbar_1_M00_AXI_AWSIZE),
        .m_axi_awvalid(axi_crossbar_1_M00_AXI_AWVALID),
        .m_axi_bid(axi_crossbar_1_M00_AXI_BID),
        .m_axi_bready(axi_crossbar_1_M00_AXI_BREADY),
        .m_axi_bresp(axi_crossbar_1_M00_AXI_BRESP),
        .m_axi_bvalid(axi_crossbar_1_M00_AXI_BVALID),
        .m_axi_rdata(axi_crossbar_1_M00_AXI_RDATA),
        .m_axi_rid(axi_crossbar_1_M00_AXI_RID),
        .m_axi_rlast(axi_crossbar_1_M00_AXI_RLAST),
        .m_axi_rready(axi_crossbar_1_M00_AXI_RREADY),
        .m_axi_rresp(axi_crossbar_1_M00_AXI_RRESP),
        .m_axi_rvalid(axi_crossbar_1_M00_AXI_RVALID),
        .m_axi_wdata(axi_crossbar_1_M00_AXI_WDATA),
        .m_axi_wlast(axi_crossbar_1_M00_AXI_WLAST),
        .m_axi_wready(axi_crossbar_1_M00_AXI_WREADY),
        .m_axi_wstrb(axi_crossbar_1_M00_AXI_WSTRB),
        .m_axi_wvalid(axi_crossbar_1_M00_AXI_WVALID),
        .s_axi_araddr({microblaze_riscv_0_M_AXI_IC_ARADDR,microblaze_0_M_AXI_DC_ARADDR}),
        .s_axi_arburst({microblaze_riscv_0_M_AXI_IC_ARBURST,microblaze_0_M_AXI_DC_ARBURST}),
        .s_axi_arcache({microblaze_riscv_0_M_AXI_IC_ARCACHE,microblaze_0_M_AXI_DC_ARCACHE}),
        .s_axi_arid({microblaze_riscv_0_M_AXI_IC_ARID,microblaze_0_M_AXI_DC_ARID}),
        .s_axi_arlen({microblaze_riscv_0_M_AXI_IC_ARLEN,microblaze_0_M_AXI_DC_ARLEN}),
        .s_axi_arlock({microblaze_riscv_0_M_AXI_IC_ARLOCK,microblaze_0_M_AXI_DC_ARLOCK}),
        .s_axi_arprot({microblaze_riscv_0_M_AXI_IC_ARPROT,microblaze_0_M_AXI_DC_ARPROT}),
        .s_axi_arqos({microblaze_riscv_0_M_AXI_IC_ARQOS,microblaze_0_M_AXI_DC_ARQOS}),
        .s_axi_arready({microblaze_riscv_0_M_AXI_IC_ARREADY,microblaze_0_M_AXI_DC_ARREADY}),
        .s_axi_arsize({microblaze_riscv_0_M_AXI_IC_ARSIZE,microblaze_0_M_AXI_DC_ARSIZE}),
        .s_axi_arvalid({microblaze_riscv_0_M_AXI_IC_ARVALID,microblaze_0_M_AXI_DC_ARVALID}),
        .s_axi_awaddr({microblaze_riscv_0_M_AXI_IC_AWADDR,microblaze_0_M_AXI_DC_AWADDR}),
        .s_axi_awburst({microblaze_riscv_0_M_AXI_IC_AWBURST,microblaze_0_M_AXI_DC_AWBURST}),
        .s_axi_awcache({microblaze_riscv_0_M_AXI_IC_AWCACHE,microblaze_0_M_AXI_DC_AWCACHE}),
        .s_axi_awid({microblaze_riscv_0_M_AXI_IC_AWID,microblaze_0_M_AXI_DC_AWID}),
        .s_axi_awlen({microblaze_riscv_0_M_AXI_IC_AWLEN,microblaze_0_M_AXI_DC_AWLEN}),
        .s_axi_awlock({microblaze_riscv_0_M_AXI_IC_AWLOCK,microblaze_0_M_AXI_DC_AWLOCK}),
        .s_axi_awprot({microblaze_riscv_0_M_AXI_IC_AWPROT,microblaze_0_M_AXI_DC_AWPROT}),
        .s_axi_awqos({microblaze_riscv_0_M_AXI_IC_AWQOS,microblaze_0_M_AXI_DC_AWQOS}),
        .s_axi_awready({microblaze_riscv_0_M_AXI_IC_AWREADY,microblaze_0_M_AXI_DC_AWREADY}),
        .s_axi_awsize({microblaze_riscv_0_M_AXI_IC_AWSIZE,microblaze_0_M_AXI_DC_AWSIZE}),
        .s_axi_awvalid({microblaze_riscv_0_M_AXI_IC_AWVALID,microblaze_0_M_AXI_DC_AWVALID}),
        .s_axi_bid({microblaze_riscv_0_M_AXI_IC_BID,microblaze_0_M_AXI_DC_BID}),
        .s_axi_bready({microblaze_riscv_0_M_AXI_IC_BREADY,microblaze_0_M_AXI_DC_BREADY}),
        .s_axi_bresp({microblaze_riscv_0_M_AXI_IC_BRESP,microblaze_0_M_AXI_DC_BRESP}),
        .s_axi_bvalid({microblaze_riscv_0_M_AXI_IC_BVALID,microblaze_0_M_AXI_DC_BVALID}),
        .s_axi_rdata({microblaze_riscv_0_M_AXI_IC_RDATA,microblaze_0_M_AXI_DC_RDATA}),
        .s_axi_rid({microblaze_riscv_0_M_AXI_IC_RID,microblaze_0_M_AXI_DC_RID}),
        .s_axi_rlast({microblaze_riscv_0_M_AXI_IC_RLAST,microblaze_0_M_AXI_DC_RLAST}),
        .s_axi_rready({microblaze_riscv_0_M_AXI_IC_RREADY,microblaze_0_M_AXI_DC_RREADY}),
        .s_axi_rresp({microblaze_riscv_0_M_AXI_IC_RRESP,microblaze_0_M_AXI_DC_RRESP}),
        .s_axi_rvalid({microblaze_riscv_0_M_AXI_IC_RVALID,microblaze_0_M_AXI_DC_RVALID}),
        .s_axi_wdata({microblaze_riscv_0_M_AXI_IC_WDATA,microblaze_0_M_AXI_DC_WDATA}),
        .s_axi_wlast({microblaze_riscv_0_M_AXI_IC_WLAST,microblaze_0_M_AXI_DC_WLAST}),
        .s_axi_wready({microblaze_riscv_0_M_AXI_IC_WREADY,microblaze_0_M_AXI_DC_WREADY}),
        .s_axi_wstrb({microblaze_riscv_0_M_AXI_IC_WSTRB,microblaze_0_M_AXI_DC_WSTRB}),
        .s_axi_wvalid({microblaze_riscv_0_M_AXI_IC_WVALID,microblaze_0_M_AXI_DC_WVALID}));
  design_1_axi_intc_0_0 axi_intc_0
       (.intr(ilconcat_0_dout),
        .irq(axi_intc_0_interrupt_INTERRUPT),
        .s_axi_aclk(clk3),
        .s_axi_araddr(axi_crossbar_0_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(axi_crossbar_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_crossbar_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_crossbar_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M00_AXI_RDATA),
        .s_axi_rready(axi_crossbar_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M00_AXI_WDATA),
        .s_axi_wready(axi_crossbar_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M00_AXI_WVALID));
  design_1_axi_quad_spi_0_0 axi_quad_spi_0
       (.ext_spi_clk(clk3),
        .gsr(1'b0),
        .gts(1'b0),
        .ip2intc_irpt(axi_quad_spi_0_ip2intc_irpt),
        .keyclearb(1'b0),
        .s_axi_aclk(clk3),
        .s_axi_araddr(smartconnect_0_M01_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(smartconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M01_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M01_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M01_AXI_WVALID),
        .usrcclkts(1'b0),
        .usrdoneo(1'b1),
        .usrdonets(1'b0));
  design_1_axi_timer_0_0 axi_timer_0
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_0_interrupt),
        .s_axi_aclk(clk3),
        .s_axi_araddr(axi_crossbar_0_M03_AXI_ARADDR[100:96]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(axi_crossbar_0_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_0_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M03_AXI_AWADDR[100:96]),
        .s_axi_awready(axi_crossbar_0_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_crossbar_0_M03_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_0_M03_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M03_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M03_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M03_AXI_RDATA),
        .s_axi_rready(axi_crossbar_0_M03_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M03_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M03_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M03_AXI_WDATA),
        .s_axi_wready(axi_crossbar_0_M03_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M03_AXI_WVALID));
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[0],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[1],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[2],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[3],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[4],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[5],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[6],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[7],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[8],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[9],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[10],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[11],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[12],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[13],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[14],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[15],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[16],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[17],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[18],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[19],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[20],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[21],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[22],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[23],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[24],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[25],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[26],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[27],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[28],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[29],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[30],lmb_bram_if_cntlr_0_BRAM_PORT_ADDR[31]}),
        .clka(lmb_bram_if_cntlr_0_BRAM_PORT_CLK),
        .dina({lmb_bram_if_cntlr_0_BRAM_PORT_DIN[0],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[1],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[2],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[3],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[4],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[5],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[6],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[7],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[8],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[9],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[10],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[11],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[12],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[13],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[14],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[15],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[16],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[17],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[18],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[19],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[20],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[21],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[22],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[23],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[24],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[25],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[26],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[27],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[28],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[29],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[30],lmb_bram_if_cntlr_0_BRAM_PORT_DIN[31]}),
        .douta(lmb_bram_if_cntlr_0_BRAM_PORT_DOUT),
        .ena(lmb_bram_if_cntlr_0_BRAM_PORT_EN),
        .rsta(lmb_bram_if_cntlr_0_BRAM_PORT_RST),
        .wea({lmb_bram_if_cntlr_0_BRAM_PORT_WE[0],lmb_bram_if_cntlr_0_BRAM_PORT_WE[1],lmb_bram_if_cntlr_0_BRAM_PORT_WE[2],lmb_bram_if_cntlr_0_BRAM_PORT_WE[3]}));
  design_1_e_uart_0_0 e_uart_0
       (.intr(e_uart_0_intr),
        .rxd(UART_0_rxd),
        .s00_axi_aclk(clk3),
        .s00_axi_araddr(axi_crossbar_0_M02_AXI_ARADDR[69:64]),
        .s00_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s00_axi_arprot(axi_crossbar_0_M02_AXI_ARPROT),
        .s00_axi_arready(axi_crossbar_0_M02_AXI_ARREADY),
        .s00_axi_arvalid(axi_crossbar_0_M02_AXI_ARVALID),
        .s00_axi_awaddr(axi_crossbar_0_M02_AXI_AWADDR[69:64]),
        .s00_axi_awprot(axi_crossbar_0_M02_AXI_AWPROT),
        .s00_axi_awready(axi_crossbar_0_M02_AXI_AWREADY),
        .s00_axi_awvalid(axi_crossbar_0_M02_AXI_AWVALID),
        .s00_axi_bready(axi_crossbar_0_M02_AXI_BREADY),
        .s00_axi_bresp(axi_crossbar_0_M02_AXI_BRESP),
        .s00_axi_bvalid(axi_crossbar_0_M02_AXI_BVALID),
        .s00_axi_rdata(axi_crossbar_0_M02_AXI_RDATA),
        .s00_axi_rready(axi_crossbar_0_M02_AXI_RREADY),
        .s00_axi_rresp(axi_crossbar_0_M02_AXI_RRESP),
        .s00_axi_rvalid(axi_crossbar_0_M02_AXI_RVALID),
        .s00_axi_wdata(axi_crossbar_0_M02_AXI_WDATA),
        .s00_axi_wready(axi_crossbar_0_M02_AXI_WREADY),
        .s00_axi_wstrb(axi_crossbar_0_M02_AXI_WSTRB),
        .s00_axi_wvalid(axi_crossbar_0_M02_AXI_WVALID),
        .txd(UART_0_txd));
  design_1_hyperbus_controller_0_0 hyperbus_controller_0
       (.i_axi_aclk(clk3),
        .i_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .i_hb_clk_200(clk1),
        .i_hb_clk_200_gated(clk5),
        .i_hb_clk_200_samp_90(clk2),
        .i_hb_rstn(reset_gen_peripheral_aresetn),
        .i_iddre1_rst(reset_gen_peripheral_reset1),
        .i_idelayctrl_rst(reset_gen_peripheral_reset),
        .io_hb_dq(io_hb_dq_0),
        .io_hb_rwds(io_hb_rwds_0),
        .o_hb_ck_n(o_hb_ck_n_0),
        .o_hb_ck_p(o_hb_ck_p_0),
        .o_hb_clk_ce(o_hb_clk_ce_0),
        .o_hb_cs_n(o_hb_cs_n_0),
        .o_hb_reset_n(o_hb_reset_n_0),
        .s_axi_araddr(axi_crossbar_1_M00_AXI_ARADDR),
        .s_axi_arburst(axi_crossbar_1_M00_AXI_ARBURST),
        .s_axi_arid(axi_crossbar_1_M00_AXI_ARID),
        .s_axi_arlen(axi_crossbar_1_M00_AXI_ARLEN),
        .s_axi_arready(axi_crossbar_1_M00_AXI_ARREADY),
        .s_axi_arsize(axi_crossbar_1_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_crossbar_1_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_1_M00_AXI_AWADDR),
        .s_axi_awburst(axi_crossbar_1_M00_AXI_AWBURST),
        .s_axi_awid(axi_crossbar_1_M00_AXI_AWID),
        .s_axi_awlen(axi_crossbar_1_M00_AXI_AWLEN),
        .s_axi_awready(axi_crossbar_1_M00_AXI_AWREADY),
        .s_axi_awsize(axi_crossbar_1_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_crossbar_1_M00_AXI_AWVALID),
        .s_axi_bid(axi_crossbar_1_M00_AXI_BID),
        .s_axi_bready(axi_crossbar_1_M00_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_1_M00_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_1_M00_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_1_M00_AXI_RDATA),
        .s_axi_rid(axi_crossbar_1_M00_AXI_RID),
        .s_axi_rlast(axi_crossbar_1_M00_AXI_RLAST),
        .s_axi_rready(axi_crossbar_1_M00_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_1_M00_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_1_M00_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_1_M00_AXI_WDATA),
        .s_axi_wlast(axi_crossbar_1_M00_AXI_WLAST),
        .s_axi_wready(axi_crossbar_1_M00_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_1_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_1_M00_AXI_WVALID),
        .s_axil_araddr(axi_crossbar_0_M01_AXI_ARADDR[47:32]),
        .s_axil_arready(axi_crossbar_0_M01_AXI_ARREADY),
        .s_axil_arvalid(axi_crossbar_0_M01_AXI_ARVALID),
        .s_axil_awaddr(axi_crossbar_0_M01_AXI_AWADDR[47:32]),
        .s_axil_awready(axi_crossbar_0_M01_AXI_AWREADY),
        .s_axil_awvalid(axi_crossbar_0_M01_AXI_AWVALID),
        .s_axil_bready(axi_crossbar_0_M01_AXI_BREADY),
        .s_axil_bresp(axi_crossbar_0_M01_AXI_BRESP),
        .s_axil_bvalid(axi_crossbar_0_M01_AXI_BVALID),
        .s_axil_rdata(axi_crossbar_0_M01_AXI_RDATA),
        .s_axil_rready(axi_crossbar_0_M01_AXI_RREADY),
        .s_axil_rresp(axi_crossbar_0_M01_AXI_RRESP),
        .s_axil_rvalid(axi_crossbar_0_M01_AXI_RVALID),
        .s_axil_wdata(axi_crossbar_0_M01_AXI_WDATA),
        .s_axil_wready(axi_crossbar_0_M01_AXI_WREADY),
        .s_axil_wstrb(axi_crossbar_0_M01_AXI_WSTRB),
        .s_axil_wvalid(axi_crossbar_0_M01_AXI_WVALID));
  assign ilconcat_0_dout = {axi_quad_spi_0_ip2intc_irpt, axi_timer_0_interrupt, e_uart_0_intr};
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > design_1 blk_mem_gen_0" *) 
  (* KEEP_HIERARCHY = "YES" *) 
  design_1_lmb_bram_if_cntlr_0_0 lmb_bram_if_cntlr_0
       (.BRAM_Addr_A(lmb_bram_if_cntlr_0_BRAM_PORT_ADDR),
        .BRAM_Clk_A(lmb_bram_if_cntlr_0_BRAM_PORT_CLK),
        .BRAM_Din_A({lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[31],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[30],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[29],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[28],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[27],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[26],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[25],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[24],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[23],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[22],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[21],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[20],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[19],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[18],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[17],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[16],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[15],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[14],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[13],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[12],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[11],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[10],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[9],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[8],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[7],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[6],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[5],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[4],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[3],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[2],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[1],lmb_bram_if_cntlr_0_BRAM_PORT_DOUT[0]}),
        .BRAM_Dout_A(lmb_bram_if_cntlr_0_BRAM_PORT_DIN),
        .BRAM_EN_A(lmb_bram_if_cntlr_0_BRAM_PORT_EN),
        .BRAM_Rst_A(lmb_bram_if_cntlr_0_BRAM_PORT_RST),
        .BRAM_WEN_A(lmb_bram_if_cntlr_0_BRAM_PORT_WE),
        .LMB1_ABus(microblaze_0_ILMB_ABUS),
        .LMB1_AddrStrobe(microblaze_0_ILMB_ADDRSTROBE),
        .LMB1_BE({1'b0,1'b0,1'b0,1'b0}),
        .LMB1_ReadStrobe(microblaze_0_ILMB_READSTROBE),
        .LMB1_WriteDBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB1_WriteStrobe(1'b0),
        .LMB_ABus(microblaze_0_DLMB_ABUS),
        .LMB_AddrStrobe(microblaze_0_DLMB_ADDRSTROBE),
        .LMB_BE(microblaze_0_DLMB_BE),
        .LMB_Clk(clk3),
        .LMB_ReadStrobe(microblaze_0_DLMB_READSTROBE),
        .LMB_Rst(reset_gen_bus_struct_reset),
        .LMB_WriteDBus(microblaze_0_DLMB_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_DLMB_WRITESTROBE),
        .Sl1_CE(microblaze_0_ILMB_CE),
        .Sl1_DBus(microblaze_0_ILMB_READDBUS),
        .Sl1_Ready(microblaze_0_ILMB_READY),
        .Sl1_UE(microblaze_0_ILMB_UE),
        .Sl1_Wait(microblaze_0_ILMB_WAIT),
        .Sl_CE(microblaze_0_DLMB_CE),
        .Sl_DBus(microblaze_0_DLMB_READDBUS),
        .Sl_Ready(microblaze_0_DLMB_READY),
        .Sl_UE(microblaze_0_DLMB_UE),
        .Sl_Wait(microblaze_0_DLMB_WAIT));
  design_1_mdm_0_0 mdm_0
       (.Dbg_Capture_0(mdm_0_MBDEBUG_0_CAPTURE),
        .Dbg_Clk_0(mdm_0_MBDEBUG_0_CLK),
        .Dbg_Disable_0(mdm_0_MBDEBUG_0_DISABLE),
        .Dbg_Reg_En_0(mdm_0_MBDEBUG_0_REG_EN),
        .Dbg_Rst_0(mdm_0_MBDEBUG_0_RST),
        .Dbg_Shift_0(mdm_0_MBDEBUG_0_SHIFT),
        .Dbg_TDI_0(mdm_0_MBDEBUG_0_TDI),
        .Dbg_TDO_0(mdm_0_MBDEBUG_0_TDO),
        .Dbg_Update_0(mdm_0_MBDEBUG_0_UPDATE),
        .Debug_SYS_Rst(mb_debug_sys_rst_1));
  (* BMM_INFO_PROCESSOR = "microblaze-le > design_1 lmb_bram_if_cntlr_0" *) 
  (* KEEP_HIERARCHY = "YES" *) 
  design_1_microblaze_0_0 microblaze_0
       (.Byte_Enable(microblaze_0_DLMB_BE),
        .Clk(clk3),
        .DCE(microblaze_0_DLMB_CE),
        .DReady(microblaze_0_DLMB_READY),
        .DUE(microblaze_0_DLMB_UE),
        .DWait(microblaze_0_DLMB_WAIT),
        .D_AS(microblaze_0_DLMB_ADDRSTROBE),
        .Data_Addr(microblaze_0_DLMB_ABUS),
        .Data_Read(microblaze_0_DLMB_READDBUS),
        .Data_Write(microblaze_0_DLMB_WRITEDBUS),
        .Dbg_Capture(mdm_0_MBDEBUG_0_CAPTURE),
        .Dbg_Clk(mdm_0_MBDEBUG_0_CLK),
        .Dbg_Disable(mdm_0_MBDEBUG_0_DISABLE),
        .Dbg_Reg_En(mdm_0_MBDEBUG_0_REG_EN),
        .Dbg_Shift(mdm_0_MBDEBUG_0_SHIFT),
        .Dbg_TDI(mdm_0_MBDEBUG_0_TDI),
        .Dbg_TDO(mdm_0_MBDEBUG_0_TDO),
        .Dbg_Update(mdm_0_MBDEBUG_0_UPDATE),
        .Debug_Rst(mdm_0_MBDEBUG_0_RST),
        .ICE(microblaze_0_ILMB_CE),
        .IFetch(microblaze_0_ILMB_READSTROBE),
        .IReady(microblaze_0_ILMB_READY),
        .IUE(microblaze_0_ILMB_UE),
        .IWAIT(microblaze_0_ILMB_WAIT),
        .I_AS(microblaze_0_ILMB_ADDRSTROBE),
        .Instr(microblaze_0_ILMB_READDBUS),
        .Instr_Addr(microblaze_0_ILMB_ABUS),
        .Interrupt(axi_intc_0_interrupt_INTERRUPT),
        .Interrupt_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_DC_ARADDR(microblaze_0_M_AXI_DC_ARADDR),
        .M_AXI_DC_ARBURST(microblaze_0_M_AXI_DC_ARBURST),
        .M_AXI_DC_ARCACHE(microblaze_0_M_AXI_DC_ARCACHE),
        .M_AXI_DC_ARID(microblaze_0_M_AXI_DC_ARID),
        .M_AXI_DC_ARLEN(microblaze_0_M_AXI_DC_ARLEN),
        .M_AXI_DC_ARLOCK(microblaze_0_M_AXI_DC_ARLOCK),
        .M_AXI_DC_ARPROT(microblaze_0_M_AXI_DC_ARPROT),
        .M_AXI_DC_ARQOS(microblaze_0_M_AXI_DC_ARQOS),
        .M_AXI_DC_ARREADY(microblaze_0_M_AXI_DC_ARREADY),
        .M_AXI_DC_ARSIZE(microblaze_0_M_AXI_DC_ARSIZE),
        .M_AXI_DC_ARVALID(microblaze_0_M_AXI_DC_ARVALID),
        .M_AXI_DC_AWADDR(microblaze_0_M_AXI_DC_AWADDR),
        .M_AXI_DC_AWBURST(microblaze_0_M_AXI_DC_AWBURST),
        .M_AXI_DC_AWCACHE(microblaze_0_M_AXI_DC_AWCACHE),
        .M_AXI_DC_AWID(microblaze_0_M_AXI_DC_AWID),
        .M_AXI_DC_AWLEN(microblaze_0_M_AXI_DC_AWLEN),
        .M_AXI_DC_AWLOCK(microblaze_0_M_AXI_DC_AWLOCK),
        .M_AXI_DC_AWPROT(microblaze_0_M_AXI_DC_AWPROT),
        .M_AXI_DC_AWQOS(microblaze_0_M_AXI_DC_AWQOS),
        .M_AXI_DC_AWREADY(microblaze_0_M_AXI_DC_AWREADY),
        .M_AXI_DC_AWSIZE(microblaze_0_M_AXI_DC_AWSIZE),
        .M_AXI_DC_AWVALID(microblaze_0_M_AXI_DC_AWVALID),
        .M_AXI_DC_BID(microblaze_0_M_AXI_DC_BID),
        .M_AXI_DC_BREADY(microblaze_0_M_AXI_DC_BREADY),
        .M_AXI_DC_BRESP(microblaze_0_M_AXI_DC_BRESP),
        .M_AXI_DC_BVALID(microblaze_0_M_AXI_DC_BVALID),
        .M_AXI_DC_RDATA(microblaze_0_M_AXI_DC_RDATA),
        .M_AXI_DC_RID(microblaze_0_M_AXI_DC_RID),
        .M_AXI_DC_RLAST(microblaze_0_M_AXI_DC_RLAST),
        .M_AXI_DC_RREADY(microblaze_0_M_AXI_DC_RREADY),
        .M_AXI_DC_RRESP(microblaze_0_M_AXI_DC_RRESP),
        .M_AXI_DC_RVALID(microblaze_0_M_AXI_DC_RVALID),
        .M_AXI_DC_WDATA(microblaze_0_M_AXI_DC_WDATA),
        .M_AXI_DC_WLAST(microblaze_0_M_AXI_DC_WLAST),
        .M_AXI_DC_WREADY(microblaze_0_M_AXI_DC_WREADY),
        .M_AXI_DC_WSTRB(microblaze_0_M_AXI_DC_WSTRB),
        .M_AXI_DC_WVALID(microblaze_0_M_AXI_DC_WVALID),
        .M_AXI_DP_ARADDR(microblaze_0_M_AXI_DP_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_0_M_AXI_DP_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_0_M_AXI_DP_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_0_M_AXI_DP_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_0_M_AXI_DP_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_0_M_AXI_DP_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_0_M_AXI_DP_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_0_M_AXI_DP_AWVALID),
        .M_AXI_DP_BREADY(microblaze_0_M_AXI_DP_BREADY),
        .M_AXI_DP_BRESP(microblaze_0_M_AXI_DP_BRESP),
        .M_AXI_DP_BVALID(microblaze_0_M_AXI_DP_BVALID),
        .M_AXI_DP_RDATA(microblaze_0_M_AXI_DP_RDATA),
        .M_AXI_DP_RREADY(microblaze_0_M_AXI_DP_RREADY),
        .M_AXI_DP_RRESP(microblaze_0_M_AXI_DP_RRESP),
        .M_AXI_DP_RVALID(microblaze_0_M_AXI_DP_RVALID),
        .M_AXI_DP_WDATA(microblaze_0_M_AXI_DP_WDATA),
        .M_AXI_DP_WREADY(microblaze_0_M_AXI_DP_WREADY),
        .M_AXI_DP_WSTRB(microblaze_0_M_AXI_DP_WSTRB),
        .M_AXI_DP_WVALID(microblaze_0_M_AXI_DP_WVALID),
        .M_AXI_IC_ARADDR(microblaze_riscv_0_M_AXI_IC_ARADDR),
        .M_AXI_IC_ARBURST(microblaze_riscv_0_M_AXI_IC_ARBURST),
        .M_AXI_IC_ARCACHE(microblaze_riscv_0_M_AXI_IC_ARCACHE),
        .M_AXI_IC_ARID(microblaze_riscv_0_M_AXI_IC_ARID),
        .M_AXI_IC_ARLEN(microblaze_riscv_0_M_AXI_IC_ARLEN),
        .M_AXI_IC_ARLOCK(microblaze_riscv_0_M_AXI_IC_ARLOCK),
        .M_AXI_IC_ARPROT(microblaze_riscv_0_M_AXI_IC_ARPROT),
        .M_AXI_IC_ARQOS(microblaze_riscv_0_M_AXI_IC_ARQOS),
        .M_AXI_IC_ARREADY(microblaze_riscv_0_M_AXI_IC_ARREADY),
        .M_AXI_IC_ARSIZE(microblaze_riscv_0_M_AXI_IC_ARSIZE),
        .M_AXI_IC_ARVALID(microblaze_riscv_0_M_AXI_IC_ARVALID),
        .M_AXI_IC_AWADDR(microblaze_riscv_0_M_AXI_IC_AWADDR),
        .M_AXI_IC_AWBURST(microblaze_riscv_0_M_AXI_IC_AWBURST),
        .M_AXI_IC_AWCACHE(microblaze_riscv_0_M_AXI_IC_AWCACHE),
        .M_AXI_IC_AWID(microblaze_riscv_0_M_AXI_IC_AWID),
        .M_AXI_IC_AWLEN(microblaze_riscv_0_M_AXI_IC_AWLEN),
        .M_AXI_IC_AWLOCK(microblaze_riscv_0_M_AXI_IC_AWLOCK),
        .M_AXI_IC_AWPROT(microblaze_riscv_0_M_AXI_IC_AWPROT),
        .M_AXI_IC_AWQOS(microblaze_riscv_0_M_AXI_IC_AWQOS),
        .M_AXI_IC_AWREADY(microblaze_riscv_0_M_AXI_IC_AWREADY),
        .M_AXI_IC_AWSIZE(microblaze_riscv_0_M_AXI_IC_AWSIZE),
        .M_AXI_IC_AWVALID(microblaze_riscv_0_M_AXI_IC_AWVALID),
        .M_AXI_IC_BID(microblaze_riscv_0_M_AXI_IC_BID),
        .M_AXI_IC_BREADY(microblaze_riscv_0_M_AXI_IC_BREADY),
        .M_AXI_IC_BRESP(microblaze_riscv_0_M_AXI_IC_BRESP),
        .M_AXI_IC_BVALID(microblaze_riscv_0_M_AXI_IC_BVALID),
        .M_AXI_IC_RDATA(microblaze_riscv_0_M_AXI_IC_RDATA),
        .M_AXI_IC_RID(microblaze_riscv_0_M_AXI_IC_RID),
        .M_AXI_IC_RLAST(microblaze_riscv_0_M_AXI_IC_RLAST),
        .M_AXI_IC_RREADY(microblaze_riscv_0_M_AXI_IC_RREADY),
        .M_AXI_IC_RRESP(microblaze_riscv_0_M_AXI_IC_RRESP),
        .M_AXI_IC_RVALID(microblaze_riscv_0_M_AXI_IC_RVALID),
        .M_AXI_IC_WDATA(microblaze_riscv_0_M_AXI_IC_WDATA),
        .M_AXI_IC_WLAST(microblaze_riscv_0_M_AXI_IC_WLAST),
        .M_AXI_IC_WREADY(microblaze_riscv_0_M_AXI_IC_WREADY),
        .M_AXI_IC_WSTRB(microblaze_riscv_0_M_AXI_IC_WSTRB),
        .M_AXI_IC_WVALID(microblaze_riscv_0_M_AXI_IC_WVALID),
        .Read_Strobe(microblaze_0_DLMB_READSTROBE),
        .Reset(reset_gen_mb_reset),
        .Write_Strobe(microblaze_0_DLMB_WRITESTROBE));
  design_1_pmcbridge_0_0 pmcbridge_0
       (.S_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .S_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .S_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .S_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .S_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .S_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .S_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .S_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .S_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .S_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .S_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .S_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .S_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .S_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .S_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .S_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .S_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .S_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .S_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .S_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .S_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .S_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .S_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .S_AXI_clk(clk3),
        .S_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .S_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .S_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .S_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .S_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .S_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .S_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .S_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .S_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .S_AXI_wvalid(smartconnect_0_M00_AXI_WVALID));
  reset_gen_imp_1MBKAOM reset_gen
       (.axi_clk(clk3),
        .axi_clk_bus_struct_reset(reset_gen_bus_struct_reset),
        .axi_clk_interconnect_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .axi_clk_peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .dcm_locked(dcm_locked),
        .ext_reset_in_0(ext_reset_in_0),
        .mb_debug_sys_rst(mb_debug_sys_rst_1),
        .mb_reset(reset_gen_mb_reset),
        .peripheral_aresetn(reset_gen_peripheral_aresetn),
        .peripheral_reset(reset_gen_peripheral_reset),
        .peripheral_reset1(reset_gen_peripheral_reset1),
        .slowest_sync_clk(clk1),
        .slowest_sync_clk1(clk4),
        .slowest_sync_clk2(clk2));
  design_1_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .S00_AXI_araddr(axi_crossbar_0_M04_AXI_ARADDR),
        .S00_AXI_arprot(axi_crossbar_0_M04_AXI_ARPROT),
        .S00_AXI_arready(axi_crossbar_0_M04_AXI_ARREADY),
        .S00_AXI_arvalid(axi_crossbar_0_M04_AXI_ARVALID),
        .S00_AXI_awaddr(axi_crossbar_0_M04_AXI_AWADDR),
        .S00_AXI_awprot(axi_crossbar_0_M04_AXI_AWPROT),
        .S00_AXI_awready(axi_crossbar_0_M04_AXI_AWREADY),
        .S00_AXI_awvalid(axi_crossbar_0_M04_AXI_AWVALID),
        .S00_AXI_bready(axi_crossbar_0_M04_AXI_BREADY),
        .S00_AXI_bresp(axi_crossbar_0_M04_AXI_BRESP),
        .S00_AXI_bvalid(axi_crossbar_0_M04_AXI_BVALID),
        .S00_AXI_rdata(axi_crossbar_0_M04_AXI_RDATA),
        .S00_AXI_rready(axi_crossbar_0_M04_AXI_RREADY),
        .S00_AXI_rresp(axi_crossbar_0_M04_AXI_RRESP),
        .S00_AXI_rvalid(axi_crossbar_0_M04_AXI_RVALID),
        .S00_AXI_wdata(axi_crossbar_0_M04_AXI_WDATA),
        .S00_AXI_wready(axi_crossbar_0_M04_AXI_WREADY),
        .S00_AXI_wstrb(axi_crossbar_0_M04_AXI_WSTRB),
        .S00_AXI_wvalid(axi_crossbar_0_M04_AXI_WVALID),
        .aclk(clk3),
        .aresetn(proc_sys_reset_1_interconnect_aresetn));
endmodule

module reset_gen_imp_1MBKAOM
   (axi_clk,
    axi_clk_bus_struct_reset,
    axi_clk_interconnect_aresetn,
    axi_clk_peripheral_aresetn,
    dcm_locked,
    ext_reset_in_0,
    mb_debug_sys_rst,
    mb_reset,
    peripheral_aresetn,
    peripheral_reset,
    peripheral_reset1,
    slowest_sync_clk,
    slowest_sync_clk1,
    slowest_sync_clk2);
  input axi_clk;
  output [0:0]axi_clk_bus_struct_reset;
  output [0:0]axi_clk_interconnect_aresetn;
  output [0:0]axi_clk_peripheral_aresetn;
  input dcm_locked;
  input ext_reset_in_0;
  input mb_debug_sys_rst;
  output mb_reset;
  output [0:0]peripheral_aresetn;
  output [0:0]peripheral_reset;
  output [0:0]peripheral_reset1;
  input slowest_sync_clk;
  input slowest_sync_clk1;
  input slowest_sync_clk2;

  wire axi_clk;
  wire [0:0]axi_clk_bus_struct_reset;
  wire [0:0]axi_clk_interconnect_aresetn;
  wire [0:0]axi_clk_peripheral_aresetn;
  wire dcm_locked;
  wire ext_reset_in_0;
  wire mb_debug_sys_rst;
  wire mb_reset;
  wire [0:0]peripheral_aresetn;
  wire [0:0]peripheral_reset;
  wire [0:0]peripheral_reset1;
  wire slowest_sync_clk;
  wire slowest_sync_clk1;
  wire slowest_sync_clk2;

  design_1_axi_clk_reset_gen_0 axi_clk_reset_gen
       (.aux_reset_in(1'b1),
        .bus_struct_reset(axi_clk_bus_struct_reset),
        .dcm_locked(dcm_locked),
        .ext_reset_in(ext_reset_in_0),
        .interconnect_aresetn(axi_clk_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(mb_reset),
        .peripheral_aresetn(axi_clk_peripheral_aresetn),
        .slowest_sync_clk(axi_clk));
  design_1_clk_300m_reset_gen_0 clk_300m_reset_gen
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked),
        .ext_reset_in(axi_clk_peripheral_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(peripheral_reset),
        .slowest_sync_clk(slowest_sync_clk1));
  design_1_hb_clk_reset_gen_0 hb_clk_reset_gen
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked),
        .ext_reset_in(axi_clk_peripheral_aresetn),
        .mb_debug_sys_rst(mb_debug_sys_rst),
        .peripheral_aresetn(peripheral_aresetn),
        .slowest_sync_clk(slowest_sync_clk));
  design_1_hb_phy_rx_clk_reset_gen_0 hb_phy_rx_clk_reset_gen
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked),
        .ext_reset_in(axi_clk_peripheral_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(peripheral_reset1),
        .slowest_sync_clk(slowest_sync_clk2));
endmodule
