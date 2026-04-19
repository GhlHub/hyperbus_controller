// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sat Apr 18 20:47:20 2026
// Host        : YouBing running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /raid/work/ghl_ip/hyperbus_controller/vivado_projects/hyperbus_test_proj/hyperbus_test_proj.gen/sources_1/bd/design_1/ip/design_1_e_uart_0_0/design_1_e_uart_0_0_sim_netlist.v
// Design      : design_1_e_uart_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcsu35p-sbvb625-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_e_uart_0_0,e_uart,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "e_uart,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_e_uart_0_0
   (txd,
    rxd,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    intr,
    int_status);
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART TxD" *) (* X_INTERFACE_MODE = "master" *) output txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART RxD" *) input rxd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [5:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 intr INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME intr, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output intr;
  output [4:0]int_status;

  wire \<const0> ;
  wire [4:0]int_status;
  wire intr;
  wire rxd;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire txd;
  wire [1:0]NLW_inst_s00_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s00_axi_rresp_UNCONNECTED;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S00_AXI_ADDR_WIDTH = "6" *) 
  (* C_S00_AXI_DATA_WIDTH = "32" *) 
  design_1_e_uart_0_0_e_uart inst
       (.int_status(int_status),
        .intr(intr),
        .rxd(rxd),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr({s00_axi_araddr[5:2],1'b0,1'b0}),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arprot({1'b0,1'b0,1'b0}),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr({s00_axi_awaddr[5:2],1'b0,1'b0}),
        .s00_axi_awprot({1'b0,1'b0,1'b0}),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bresp(NLW_inst_s00_axi_bresp_UNCONNECTED[1:0]),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rresp(NLW_inst_s00_axi_rresp_UNCONNECTED[1:0]),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .txd(txd));
endmodule

(* C_S00_AXI_ADDR_WIDTH = "6" *) (* C_S00_AXI_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "e_uart" *) 
module design_1_e_uart_0_0_e_uart
   (txd,
    rxd,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    intr,
    int_status);
  output txd;
  input rxd;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [5:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [5:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  output intr;
  output [4:0]int_status;

  wire \<const0> ;
  wire [12:0]baud_clk_cnt;
  wire [10:10]byte_time_cntr;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_1;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_100;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_101;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_85;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_86;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_88;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_99;
  wire [4:0]int_status;
  wire intr;
  wire [9:0]over_sample_clk_cnt;
  wire [10:0]rx_byte_count;
  wire [7:0]rx_byte_host;
  wire rx_byte_host_rd;
  wire rx_empty;
  wire rx_en;
  wire [10:0]rx_int_holdoff_byte_cnt;
  wire [10:0]rx_int_holdoff_byte_time_cnt;
  wire rx_time_coal_intr_clr;
  wire rxd;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [4:0]slv_reg5;
  wire [10:0]tx_byte_count;
  wire [7:0]tx_byte_host;
  wire tx_byte_host_dv;
  wire tx_en;
  wire txd;
  wire [3:3]\uart_rx/p_0_in ;
  wire uart_top_n_35;
  wire uart_top_n_38;
  wire uart_top_n_40;
  wire [3:3]\uart_tx/p_0_in ;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_e_uart_0_0_e_uart_slave_lite_v1_0_S00_AXI e_uart_slave_lite_v1_0_S00_AXI_inst
       (.D(rx_byte_host),
        .Q(slv_reg5),
        .S(e_uart_slave_lite_v1_0_S00_AXI_inst_n_99),
        .SR(\uart_tx/p_0_in ),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_bvalid_reg_0(s00_axi_bvalid),
        .axi_rvalid_reg_0(s00_axi_rvalid),
        .byte_time_cntr_en2_carry(byte_time_cntr),
        .data_count(rx_byte_count),
        .\dv_inhibit_cntr_reg[4] (uart_top_n_38),
        .int_status({int_status[3],int_status[1:0]}),
        .intr(intr),
        .intr_reg_0(uart_top_n_40),
        .p_0_in(\uart_rx/p_0_in ),
        .rd_en(rx_byte_host_rd),
        .rx_empty(rx_empty),
        .rx_samples_reg_s_2(uart_top_n_35),
        .rx_time_coal_intr_clr(rx_time_coal_intr_clr),
        .rx_time_coal_intr_clr_reg_0(e_uart_slave_lite_v1_0_S00_AXI_inst_n_88),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(e_uart_slave_lite_v1_0_S00_AXI_inst_n_85),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_rdata(s00_axi_rdata),
        .\s00_axi_rdata[10] (tx_byte_count),
        .s00_axi_rdata_4_sp_1(int_status[4]),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg10_reg[26]_0 ({rx_int_holdoff_byte_cnt,rx_int_holdoff_byte_time_cnt}),
        .\slv_reg10_reg[26]_1 (e_uart_slave_lite_v1_0_S00_AXI_inst_n_100),
        .\slv_reg6_reg[1]_0 ({rx_en,tx_en}),
        .\slv_reg6_reg[1]_1 (e_uart_slave_lite_v1_0_S00_AXI_inst_n_86),
        .\slv_reg6_reg[1]_2 (e_uart_slave_lite_v1_0_S00_AXI_inst_n_101),
        .\slv_reg8_reg[12]_0 (baud_clk_cnt),
        .\slv_reg9_reg[9]_0 (over_sample_clk_cnt),
        .srst(e_uart_slave_lite_v1_0_S00_AXI_inst_n_1),
        .\tx_byte_host_reg[7]_0 (tx_byte_host),
        .wr_en(tx_byte_host_dv));
  design_1_e_uart_0_0_uart_top uart_top
       (.\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (tx_byte_host),
        .Q(byte_time_cntr),
        .S(e_uart_slave_lite_v1_0_S00_AXI_inst_n_99),
        .SR(\uart_tx/p_0_in ),
        .\byte_time_cntr_reg[0] (e_uart_slave_lite_v1_0_S00_AXI_inst_n_88),
        .\clk_cntr_reg[11] (baud_clk_cnt),
        .\count_reg[10] (rx_byte_count),
        .data_count(tx_byte_count),
        .dout(rx_byte_host),
        .\dv_inhibit_cntr_reg[4] (uart_top_n_38),
        .\dv_inhibit_cntr_reg[4]_0 (e_uart_slave_lite_v1_0_S00_AXI_inst_n_86),
        .\en_dly_reg[0] ({rx_en,tx_en}),
        .int_status(int_status),
        .intr_reg(slv_reg5),
        .p_0_in(\uart_rx/p_0_in ),
        .rd_en(rx_byte_host_rd),
        .rx_byte_cnt_coal_intr1_carry({rx_int_holdoff_byte_cnt,rx_int_holdoff_byte_time_cnt}),
        .rx_byte_cnt_coal_intr_reg(e_uart_slave_lite_v1_0_S00_AXI_inst_n_100),
        .rx_empty(rx_empty),
        .rx_samples_reg_s_2(e_uart_slave_lite_v1_0_S00_AXI_inst_n_101),
        .rx_time_coal_intr_clr(rx_time_coal_intr_clr),
        .rxd(rxd),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\sample_clk_cntr_reg[8] (uart_top_n_35),
        .\sample_clk_cntr_reg[9] (over_sample_clk_cnt),
        .\slv_reg5_reg[2] (uart_top_n_40),
        .srst(e_uart_slave_lite_v1_0_S00_AXI_inst_n_1),
        .\tx_bit_cntr_reg[2] (e_uart_slave_lite_v1_0_S00_AXI_inst_n_85),
        .txd(txd),
        .wr_en(tx_byte_host_dv));
endmodule

(* ORIG_REF_NAME = "e_uart_slave_lite_v1_0_S00_AXI" *) 
module design_1_e_uart_0_0_e_uart_slave_lite_v1_0_S00_AXI
   (s00_axi_wready,
    srst,
    s00_axi_awready,
    intr,
    rd_en,
    axi_bvalid_reg_0,
    rx_time_coal_intr_clr,
    wr_en,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    s00_axi_rdata,
    Q,
    \slv_reg8_reg[12]_0 ,
    \slv_reg10_reg[26]_0 ,
    SR,
    \slv_reg6_reg[1]_0 ,
    s00_axi_aresetn_0,
    \slv_reg6_reg[1]_1 ,
    p_0_in,
    rx_time_coal_intr_clr_reg_0,
    \slv_reg9_reg[9]_0 ,
    S,
    \slv_reg10_reg[26]_1 ,
    \slv_reg6_reg[1]_2 ,
    \tx_byte_host_reg[7]_0 ,
    s00_axi_aclk,
    intr_reg_0,
    s00_axi_aresetn,
    D,
    s00_axi_rdata_4_sp_1,
    int_status,
    rx_empty,
    data_count,
    \s00_axi_rdata[10] ,
    s00_axi_arvalid,
    s00_axi_rready,
    \dv_inhibit_cntr_reg[4] ,
    byte_time_cntr_en2_carry,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    rx_samples_reg_s_2,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_wdata,
    s00_axi_araddr);
  output s00_axi_wready;
  output srst;
  output s00_axi_awready;
  output intr;
  output rd_en;
  output axi_bvalid_reg_0;
  output rx_time_coal_intr_clr;
  output wr_en;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output [31:0]s00_axi_rdata;
  output [4:0]Q;
  output [12:0]\slv_reg8_reg[12]_0 ;
  output [21:0]\slv_reg10_reg[26]_0 ;
  output [0:0]SR;
  output [1:0]\slv_reg6_reg[1]_0 ;
  output s00_axi_aresetn_0;
  output \slv_reg6_reg[1]_1 ;
  output [0:0]p_0_in;
  output [0:0]rx_time_coal_intr_clr_reg_0;
  output [9:0]\slv_reg9_reg[9]_0 ;
  output [0:0]S;
  output [0:0]\slv_reg10_reg[26]_1 ;
  output \slv_reg6_reg[1]_2 ;
  output [7:0]\tx_byte_host_reg[7]_0 ;
  input s00_axi_aclk;
  input intr_reg_0;
  input s00_axi_aresetn;
  input [7:0]D;
  input s00_axi_rdata_4_sp_1;
  input [2:0]int_status;
  input rx_empty;
  input [10:0]data_count;
  input [10:0]\s00_axi_rdata[10] ;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input \dv_inhibit_cntr_reg[4] ;
  input [0:0]byte_time_cntr_en2_carry;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input rx_samples_reg_s_2;
  input [3:0]s00_axi_awaddr;
  input [3:0]s00_axi_wstrb;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;

  wire [7:0]D;
  wire \FSM_onehot_read_state[1]_i_1_n_0 ;
  wire \FSM_onehot_read_state[2]_i_1_n_0 ;
  wire \FSM_onehot_read_state[3]_i_1_n_0 ;
  wire \FSM_onehot_read_state[3]_i_2_n_0 ;
  wire \FSM_onehot_read_state_reg_n_0_[0] ;
  wire \FSM_onehot_read_state_reg_n_0_[1] ;
  wire \FSM_onehot_read_state_reg_n_0_[2] ;
  wire \FSM_onehot_read_state_reg_n_0_[3] ;
  wire [4:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire \axi_araddr[5]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_i_2_n_0;
  wire axi_arready_reg_0;
  wire axi_awaddr0;
  wire axi_awaddr_valid;
  wire axi_awaddr_valid_i_1_n_0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_reg_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_i_2_n_0;
  wire axi_rvalid_i_3_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wdata0;
  wire \axi_wdata_reg_n_0_[0] ;
  wire \axi_wdata_reg_n_0_[10] ;
  wire \axi_wdata_reg_n_0_[11] ;
  wire \axi_wdata_reg_n_0_[12] ;
  wire \axi_wdata_reg_n_0_[13] ;
  wire \axi_wdata_reg_n_0_[14] ;
  wire \axi_wdata_reg_n_0_[15] ;
  wire \axi_wdata_reg_n_0_[16] ;
  wire \axi_wdata_reg_n_0_[17] ;
  wire \axi_wdata_reg_n_0_[18] ;
  wire \axi_wdata_reg_n_0_[19] ;
  wire \axi_wdata_reg_n_0_[1] ;
  wire \axi_wdata_reg_n_0_[20] ;
  wire \axi_wdata_reg_n_0_[21] ;
  wire \axi_wdata_reg_n_0_[22] ;
  wire \axi_wdata_reg_n_0_[23] ;
  wire \axi_wdata_reg_n_0_[24] ;
  wire \axi_wdata_reg_n_0_[25] ;
  wire \axi_wdata_reg_n_0_[26] ;
  wire \axi_wdata_reg_n_0_[27] ;
  wire \axi_wdata_reg_n_0_[28] ;
  wire \axi_wdata_reg_n_0_[29] ;
  wire \axi_wdata_reg_n_0_[2] ;
  wire \axi_wdata_reg_n_0_[30] ;
  wire \axi_wdata_reg_n_0_[31] ;
  wire \axi_wdata_reg_n_0_[3] ;
  wire \axi_wdata_reg_n_0_[5] ;
  wire \axi_wdata_reg_n_0_[6] ;
  wire \axi_wdata_reg_n_0_[7] ;
  wire \axi_wdata_reg_n_0_[8] ;
  wire \axi_wdata_reg_n_0_[9] ;
  wire axi_wdata_valid;
  wire axi_wdata_valid_i_2_n_0;
  wire axi_wdata_valid_reg_n_0;
  wire axi_wready0;
  wire \axi_wstrb_reg_n_0_[2] ;
  wire \axi_wstrb_reg_n_0_[3] ;
  wire [1:0]byte_cntr;
  wire \byte_cntr[0]_i_1_n_0 ;
  wire \byte_cntr[1]_i_1_n_0 ;
  wire \byte_cntr[1]_i_2_n_0 ;
  wire [0:0]byte_time_cntr_en2_carry;
  wire [10:0]data_count;
  wire \dv_inhibit_cntr_reg[4] ;
  wire [2:0]int_status;
  wire intr;
  wire intr_reg_0;
  wire \is_reg0_wr[0]_i_2_n_0 ;
  wire \is_reg0_wr_reg_n_0_[0] ;
  wire \is_reg0_wr_reg_n_0_[1] ;
  wire [0:0]is_reg1_wr;
  wire \is_reg1_wr[0]_i_1_n_0 ;
  wire \is_reg1_wr_reg_n_0_[0] ;
  wire \is_reg1_wr_reg_n_0_[1] ;
  wire is_reg3;
  wire is_reg3_prev;
  wire [0:0]p_0_in;
  wire p_0_in0;
  wire p_0_in4_in;
  wire [3:0]p_0_in_0;
  wire p_1_in;
  wire [12:7]p_1_in__0;
  wire [1:0]rd_byte_cntr;
  wire \rd_byte_cntr[0]_i_1_n_0 ;
  wire \rd_byte_cntr[1]_i_1_n_0 ;
  wire \rd_byte_cntr[1]_i_2_n_0 ;
  wire \rd_byte_cntr[1]_i_3_n_0 ;
  wire rd_en;
  wire rx_byte_host_rd_i_1_n_0;
  wire rx_byte_host_rd_i_2_n_0;
  wire rx_byte_host_rd_i_3_n_0;
  wire rx_byte_host_rd_i_4_n_0;
  wire rx_byte_host_rd_i_5_n_0;
  wire rx_empty;
  wire rx_samples_reg_s_2;
  wire rx_time_coal_intr_clr;
  wire rx_time_coal_intr_clr_i_1_n_0;
  wire rx_time_coal_intr_clr_i_2_n_0;
  wire [0:0]rx_time_coal_intr_clr_reg_0;
  wire [31:0]rx_word_host;
  wire [31:7]rx_word_host0_in;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_4_n_0 ;
  wire [10:0]\s00_axi_rdata[10] ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_2_n_0 ;
  wire s00_axi_rdata_4_sn_1;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg10[10]_i_1_n_0 ;
  wire \slv_reg10[23]_i_1_n_0 ;
  wire \slv_reg10[26]_i_1_n_0 ;
  wire \slv_reg10[7]_i_1_n_0 ;
  wire [21:0]\slv_reg10_reg[26]_0 ;
  wire [0:0]\slv_reg10_reg[26]_1 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire \slv_reg5[4]_i_1_n_0 ;
  wire \slv_reg6[1]_i_1_n_0 ;
  wire [1:0]\slv_reg6_reg[1]_0 ;
  wire \slv_reg6_reg[1]_1 ;
  wire \slv_reg6_reg[1]_2 ;
  wire [12:0]\slv_reg8_reg[12]_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire \slv_reg9[9]_i_1_n_0 ;
  wire [9:0]\slv_reg9_reg[9]_0 ;
  wire slv_reg_wren;
  wire srst;
  wire \tx_byte_host[0]_i_1_n_0 ;
  wire \tx_byte_host[0]_i_2_n_0 ;
  wire \tx_byte_host[1]_i_1_n_0 ;
  wire \tx_byte_host[1]_i_2_n_0 ;
  wire \tx_byte_host[2]_i_1_n_0 ;
  wire \tx_byte_host[2]_i_2_n_0 ;
  wire \tx_byte_host[3]_i_1_n_0 ;
  wire \tx_byte_host[3]_i_2_n_0 ;
  wire \tx_byte_host[4]_i_1_n_0 ;
  wire \tx_byte_host[4]_i_2_n_0 ;
  wire \tx_byte_host[5]_i_1_n_0 ;
  wire \tx_byte_host[5]_i_2_n_0 ;
  wire \tx_byte_host[6]_i_1_n_0 ;
  wire \tx_byte_host[6]_i_2_n_0 ;
  wire \tx_byte_host[7]_i_1_n_0 ;
  wire \tx_byte_host[7]_i_2_n_0 ;
  wire tx_byte_host_dv_i_1_n_0;
  wire [7:0]\tx_byte_host_reg[7]_0 ;
  wire word_rd_active;
  wire word_rd_active_i_1_n_0;
  wire word_wr_active__0;
  wire word_wr_active_i_1_n_0;
  wire wr_en;
  wire [3:0]write_index;

  assign s00_axi_rdata_4_sn_1 = s00_axi_rdata_4_sp_1;
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFF70)) 
    \FSM_onehot_read_state[1]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I3(axi_arready_i_2_n_0),
        .O(\FSM_onehot_read_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_read_state[2]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .O(\FSM_onehot_read_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_read_state[3]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I3(axi_rvalid_i_2_n_0),
        .O(\FSM_onehot_read_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFF70)) 
    \FSM_onehot_read_state[3]_i_2 
       (.I0(s00_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_read_state_reg_n_0_[2] ),
        .O(\FSM_onehot_read_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:0001,Raddr_Latched:0100,Rdata:1000,Raddr:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_read_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_read_state[3]_i_1_n_0 ),
        .D(1'b0),
        .Q(\FSM_onehot_read_state_reg_n_0_[0] ),
        .S(srst));
  (* FSM_ENCODED_STATES = "Idle:0001,Raddr_Latched:0100,Rdata:1000,Raddr:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_read_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_read_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_read_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_read_state_reg_n_0_[1] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "Idle:0001,Raddr_Latched:0100,Rdata:1000,Raddr:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_read_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_read_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_read_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_read_state_reg_n_0_[2] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "Idle:0001,Raddr_Latched:0100,Rdata:1000,Raddr:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_read_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_read_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_read_state[3]_i_2_n_0 ),
        .Q(\FSM_onehot_read_state_reg_n_0_[3] ),
        .R(srst));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(\slv_reg6_reg[1]_0 [0]),
        .I1(s00_axi_aresetn),
        .O(SR));
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_araddr[5]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I3(s00_axi_aresetn),
        .O(\axi_araddr[5]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[0]),
        .Q(p_0_in_0[0]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[1]),
        .Q(p_0_in_0[1]),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[2]),
        .Q(p_0_in_0[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[3]),
        .Q(p_0_in_0[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF2A)) 
    axi_arready_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I3(axi_arready_i_2_n_0),
        .O(axi_arready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    axi_arready_i_2
       (.I0(\FSM_onehot_read_state_reg_n_0_[0] ),
        .I1(s00_axi_rready),
        .I2(axi_rvalid_reg_0),
        .I3(\FSM_onehot_read_state_reg_n_0_[3] ),
        .O(axi_arready_i_2_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(srst));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awaddr[5]_i_1 
       (.I0(s00_axi_awready),
        .I1(s00_axi_awvalid),
        .O(axi_awaddr0));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr0),
        .D(s00_axi_awaddr[0]),
        .Q(write_index[0]),
        .R(srst));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr0),
        .D(s00_axi_awaddr[1]),
        .Q(write_index[1]),
        .R(srst));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr0),
        .D(s00_axi_awaddr[2]),
        .Q(write_index[2]),
        .R(srst));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr0),
        .D(s00_axi_awaddr[3]),
        .Q(write_index[3]),
        .R(srst));
  LUT3 #(
    .INIT(8'hF8)) 
    axi_awaddr_valid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_awready),
        .I2(axi_awaddr_valid),
        .O(axi_awaddr_valid_i_1_n_0));
  FDRE axi_awaddr_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr_valid_i_1_n_0),
        .Q(axi_awaddr_valid),
        .R(axi_wdata_valid));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(srst));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    axi_awready_i_2
       (.I0(axi_bvalid_reg_0),
        .I1(axi_awaddr_valid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(srst));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h55C0)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(axi_awaddr_valid),
        .I2(axi_wdata_valid_reg_n_0),
        .I3(axi_bvalid_reg_0),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid_reg_0),
        .R(srst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF4C)) 
    axi_rvalid_i_1
       (.I0(s00_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I3(axi_rvalid_i_2_n_0),
        .O(axi_rvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEFEFEF00000000)) 
    axi_rvalid_i_2
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[2]),
        .I2(axi_rvalid_i_3_n_0),
        .I3(rd_byte_cntr[1]),
        .I4(rd_byte_cntr[0]),
        .I5(\FSM_onehot_read_state_reg_n_0_[2] ),
        .O(axi_rvalid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axi_rvalid_i_3
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .O(axi_rvalid_i_3_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(srst));
  FDRE \axi_wdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[0]),
        .Q(\axi_wdata_reg_n_0_[0] ),
        .R(srst));
  FDRE \axi_wdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[10]),
        .Q(\axi_wdata_reg_n_0_[10] ),
        .R(srst));
  FDRE \axi_wdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[11]),
        .Q(\axi_wdata_reg_n_0_[11] ),
        .R(srst));
  FDRE \axi_wdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[12]),
        .Q(\axi_wdata_reg_n_0_[12] ),
        .R(srst));
  FDRE \axi_wdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[13]),
        .Q(\axi_wdata_reg_n_0_[13] ),
        .R(srst));
  FDRE \axi_wdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[14]),
        .Q(\axi_wdata_reg_n_0_[14] ),
        .R(srst));
  FDRE \axi_wdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[15]),
        .Q(\axi_wdata_reg_n_0_[15] ),
        .R(srst));
  FDRE \axi_wdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[16]),
        .Q(\axi_wdata_reg_n_0_[16] ),
        .R(srst));
  FDRE \axi_wdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[17]),
        .Q(\axi_wdata_reg_n_0_[17] ),
        .R(srst));
  FDRE \axi_wdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[18]),
        .Q(\axi_wdata_reg_n_0_[18] ),
        .R(srst));
  FDRE \axi_wdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[19]),
        .Q(\axi_wdata_reg_n_0_[19] ),
        .R(srst));
  FDRE \axi_wdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[1]),
        .Q(\axi_wdata_reg_n_0_[1] ),
        .R(srst));
  FDRE \axi_wdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[20]),
        .Q(\axi_wdata_reg_n_0_[20] ),
        .R(srst));
  FDRE \axi_wdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[21]),
        .Q(\axi_wdata_reg_n_0_[21] ),
        .R(srst));
  FDRE \axi_wdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[22]),
        .Q(\axi_wdata_reg_n_0_[22] ),
        .R(srst));
  FDRE \axi_wdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[23]),
        .Q(\axi_wdata_reg_n_0_[23] ),
        .R(srst));
  FDRE \axi_wdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[24]),
        .Q(\axi_wdata_reg_n_0_[24] ),
        .R(srst));
  FDRE \axi_wdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[25]),
        .Q(\axi_wdata_reg_n_0_[25] ),
        .R(srst));
  FDRE \axi_wdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[26]),
        .Q(\axi_wdata_reg_n_0_[26] ),
        .R(srst));
  FDRE \axi_wdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[27]),
        .Q(\axi_wdata_reg_n_0_[27] ),
        .R(srst));
  FDRE \axi_wdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[28]),
        .Q(\axi_wdata_reg_n_0_[28] ),
        .R(srst));
  FDRE \axi_wdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[29]),
        .Q(\axi_wdata_reg_n_0_[29] ),
        .R(srst));
  FDRE \axi_wdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[2]),
        .Q(\axi_wdata_reg_n_0_[2] ),
        .R(srst));
  FDRE \axi_wdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[30]),
        .Q(\axi_wdata_reg_n_0_[30] ),
        .R(srst));
  FDRE \axi_wdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[31]),
        .Q(\axi_wdata_reg_n_0_[31] ),
        .R(srst));
  FDRE \axi_wdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[3]),
        .Q(\axi_wdata_reg_n_0_[3] ),
        .R(srst));
  FDRE \axi_wdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[4]),
        .Q(p_0_in4_in),
        .R(srst));
  FDRE \axi_wdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[5]),
        .Q(\axi_wdata_reg_n_0_[5] ),
        .R(srst));
  FDRE \axi_wdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[6]),
        .Q(\axi_wdata_reg_n_0_[6] ),
        .R(srst));
  FDRE \axi_wdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[7]),
        .Q(\axi_wdata_reg_n_0_[7] ),
        .R(srst));
  FDRE \axi_wdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[8]),
        .Q(\axi_wdata_reg_n_0_[8] ),
        .R(srst));
  FDRE \axi_wdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[9]),
        .Q(\axi_wdata_reg_n_0_[9] ),
        .R(srst));
  LUT4 #(
    .INIT(16'h08FF)) 
    axi_wdata_valid_i_1
       (.I0(axi_awaddr_valid),
        .I1(axi_wdata_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_aresetn),
        .O(axi_wdata_valid));
  LUT3 #(
    .INIT(8'hF8)) 
    axi_wdata_valid_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wready),
        .I2(axi_wdata_valid_reg_n_0),
        .O(axi_wdata_valid_i_2_n_0));
  FDRE axi_wdata_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_valid_i_2_n_0),
        .Q(axi_wdata_valid_reg_n_0),
        .R(axi_wdata_valid));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    axi_wready_i_1
       (.I0(axi_bvalid_reg_0),
        .I1(axi_wdata_valid_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(srst));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_wstrb[3]_i_1 
       (.I0(s00_axi_wready),
        .I1(s00_axi_wvalid),
        .O(axi_wdata0));
  FDRE \axi_wstrb_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wstrb[0]),
        .Q(p_1_in),
        .R(srst));
  FDRE \axi_wstrb_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wstrb[1]),
        .Q(p_0_in0),
        .R(srst));
  FDRE \axi_wstrb_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wstrb[2]),
        .Q(\axi_wstrb_reg_n_0_[2] ),
        .R(srst));
  FDRE \axi_wstrb_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wstrb[3]),
        .Q(\axi_wstrb_reg_n_0_[3] ),
        .R(srst));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \byte_cntr[0]_i_1 
       (.I0(byte_cntr[0]),
        .I1(s00_axi_aresetn),
        .I2(\is_reg1_wr_reg_n_0_[1] ),
        .I3(\is_reg1_wr_reg_n_0_[0] ),
        .O(\byte_cntr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFFFFFEAFFEAFF)) 
    \byte_cntr[1]_i_1 
       (.I0(word_wr_active__0),
        .I1(byte_cntr[1]),
        .I2(byte_cntr[0]),
        .I3(s00_axi_aresetn),
        .I4(\is_reg1_wr_reg_n_0_[1] ),
        .I5(\is_reg1_wr_reg_n_0_[0] ),
        .O(\byte_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h008A8A00)) 
    \byte_cntr[1]_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\is_reg1_wr_reg_n_0_[1] ),
        .I2(\is_reg1_wr_reg_n_0_[0] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .O(\byte_cntr[1]_i_2_n_0 ));
  FDRE \byte_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\byte_cntr[1]_i_1_n_0 ),
        .D(\byte_cntr[0]_i_1_n_0 ),
        .Q(byte_cntr[0]),
        .R(1'b0));
  FDRE \byte_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\byte_cntr[1]_i_1_n_0 ),
        .D(\byte_cntr[1]_i_2_n_0 ),
        .Q(byte_cntr[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \byte_time_cntr[10]_i_1 
       (.I0(rx_time_coal_intr_clr),
        .I1(s00_axi_aresetn),
        .O(rx_time_coal_intr_clr_reg_0));
  LUT2 #(
    .INIT(4'h9)) 
    byte_time_cntr_en2_carry_i_7
       (.I0(\slv_reg10_reg[26]_0 [10]),
        .I1(byte_time_cntr_en2_carry),
        .O(S));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dv_inhibit_cntr[4]_i_2 
       (.I0(\slv_reg6_reg[1]_0 [1]),
        .I1(s00_axi_aresetn),
        .I2(\dv_inhibit_cntr_reg[4] ),
        .O(\slv_reg6_reg[1]_1 ));
  FDRE intr_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(intr_reg_0),
        .Q(intr),
        .R(srst));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \is_reg0_wr[0]_i_1 
       (.I0(axi_awaddr_valid),
        .I1(axi_wdata_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_aresetn),
        .O(is_reg1_wr));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \is_reg0_wr[0]_i_2 
       (.I0(write_index[3]),
        .I1(write_index[0]),
        .I2(write_index[2]),
        .I3(write_index[1]),
        .O(\is_reg0_wr[0]_i_2_n_0 ));
  FDRE \is_reg0_wr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\is_reg0_wr[0]_i_2_n_0 ),
        .Q(\is_reg0_wr_reg_n_0_[0] ),
        .R(is_reg1_wr));
  FDRE \is_reg0_wr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\is_reg0_wr_reg_n_0_[0] ),
        .Q(\is_reg0_wr_reg_n_0_[1] ),
        .R(srst));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \is_reg1_wr[0]_i_1 
       (.I0(write_index[3]),
        .I1(write_index[0]),
        .I2(write_index[2]),
        .I3(write_index[1]),
        .O(\is_reg1_wr[0]_i_1_n_0 ));
  FDRE \is_reg1_wr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\is_reg1_wr[0]_i_1_n_0 ),
        .Q(\is_reg1_wr_reg_n_0_[0] ),
        .R(is_reg1_wr));
  FDRE \is_reg1_wr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\is_reg1_wr_reg_n_0_[0] ),
        .Q(\is_reg1_wr_reg_n_0_[1] ),
        .R(srst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    is_reg3_prev_i_1
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[2]),
        .I2(\FSM_onehot_read_state_reg_n_0_[2] ),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .O(is_reg3));
  FDRE is_reg3_prev_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(is_reg3),
        .Q(is_reg3_prev),
        .R(srst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \rd_byte_cntr[0]_i_1 
       (.I0(\rd_byte_cntr[1]_i_3_n_0 ),
        .I1(rd_byte_cntr[0]),
        .I2(s00_axi_aresetn),
        .O(\rd_byte_cntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEFFFF)) 
    \rd_byte_cntr[1]_i_1 
       (.I0(word_rd_active),
        .I1(\rd_byte_cntr[1]_i_3_n_0 ),
        .I2(rd_byte_cntr[0]),
        .I3(rd_byte_cntr[1]),
        .I4(s00_axi_aresetn),
        .O(\rd_byte_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h14FF)) 
    \rd_byte_cntr[1]_i_2 
       (.I0(\rd_byte_cntr[1]_i_3_n_0 ),
        .I1(rd_byte_cntr[0]),
        .I2(rd_byte_cntr[1]),
        .I3(s00_axi_aresetn),
        .O(\rd_byte_cntr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \rd_byte_cntr[1]_i_3 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(\FSM_onehot_read_state_reg_n_0_[2] ),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[3]),
        .I5(is_reg3_prev),
        .O(\rd_byte_cntr[1]_i_3_n_0 ));
  FDRE \rd_byte_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\rd_byte_cntr[1]_i_1_n_0 ),
        .D(\rd_byte_cntr[0]_i_1_n_0 ),
        .Q(rd_byte_cntr[0]),
        .R(1'b0));
  FDRE \rd_byte_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\rd_byte_cntr[1]_i_1_n_0 ),
        .D(\rd_byte_cntr[1]_i_2_n_0 ),
        .Q(rd_byte_cntr[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    rx_byte_cnt_coal_intr1_carry_i_7
       (.I0(\slv_reg10_reg[26]_0 [21]),
        .I1(data_count[10]),
        .O(\slv_reg10_reg[26]_1 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEAEFFAEAE)) 
    rx_byte_host_rd_i_1
       (.I0(\rd_byte_cntr[1]_i_3_n_0 ),
        .I1(word_rd_active),
        .I2(rx_byte_host_rd_i_2_n_0),
        .I3(rx_byte_host_rd_i_3_n_0),
        .I4(rx_byte_host_rd_i_4_n_0),
        .I5(rx_byte_host_rd_i_5_n_0),
        .O(rx_byte_host_rd_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rx_byte_host_rd_i_2
       (.I0(rd_byte_cntr[1]),
        .I1(rd_byte_cntr[0]),
        .O(rx_byte_host_rd_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    rx_byte_host_rd_i_3
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .O(rx_byte_host_rd_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rx_byte_host_rd_i_4
       (.I0(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_rready),
        .O(rx_byte_host_rd_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rx_byte_host_rd_i_5
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[2]),
        .O(rx_byte_host_rd_i_5_n_0));
  FDRE rx_byte_host_rd_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_byte_host_rd_i_1_n_0),
        .Q(rd_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    rx_time_coal_intr_clr_i_1
       (.I0(slv_reg_wren),
        .I1(write_index[1]),
        .I2(p_0_in4_in),
        .I3(s00_axi_aresetn),
        .I4(write_index[2]),
        .I5(rx_time_coal_intr_clr_i_2_n_0),
        .O(rx_time_coal_intr_clr_i_1_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    rx_time_coal_intr_clr_i_2
       (.I0(write_index[0]),
        .I1(write_index[3]),
        .I2(p_1_in),
        .O(rx_time_coal_intr_clr_i_2_n_0));
  FDRE rx_time_coal_intr_clr_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_time_coal_intr_clr_i_1_n_0),
        .Q(rx_time_coal_intr_clr),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \rx_word_host[15]_i_1 
       (.I0(rd_byte_cntr[1]),
        .I1(rd_byte_cntr[0]),
        .I2(word_rd_active),
        .O(rx_word_host0_in[15]));
  LUT3 #(
    .INIT(8'h40)) 
    \rx_word_host[23]_i_1 
       (.I0(rd_byte_cntr[0]),
        .I1(rd_byte_cntr[1]),
        .I2(word_rd_active),
        .O(rx_word_host0_in[23]));
  LUT3 #(
    .INIT(8'h80)) 
    \rx_word_host[31]_i_1 
       (.I0(rd_byte_cntr[0]),
        .I1(rd_byte_cntr[1]),
        .I2(word_rd_active),
        .O(rx_word_host0_in[31]));
  LUT3 #(
    .INIT(8'h10)) 
    \rx_word_host[7]_i_1 
       (.I0(rd_byte_cntr[0]),
        .I1(rd_byte_cntr[1]),
        .I2(word_rd_active),
        .O(rx_word_host0_in[7]));
  FDRE \rx_word_host_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[0]),
        .Q(rx_word_host[0]),
        .R(srst));
  FDRE \rx_word_host_reg[10] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[2]),
        .Q(rx_word_host[10]),
        .R(srst));
  FDRE \rx_word_host_reg[11] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[3]),
        .Q(rx_word_host[11]),
        .R(srst));
  FDRE \rx_word_host_reg[12] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[4]),
        .Q(rx_word_host[12]),
        .R(srst));
  FDRE \rx_word_host_reg[13] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[5]),
        .Q(rx_word_host[13]),
        .R(srst));
  FDRE \rx_word_host_reg[14] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[6]),
        .Q(rx_word_host[14]),
        .R(srst));
  FDRE \rx_word_host_reg[15] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[7]),
        .Q(rx_word_host[15]),
        .R(srst));
  FDRE \rx_word_host_reg[16] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[0]),
        .Q(rx_word_host[16]),
        .R(srst));
  FDRE \rx_word_host_reg[17] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[1]),
        .Q(rx_word_host[17]),
        .R(srst));
  FDRE \rx_word_host_reg[18] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[2]),
        .Q(rx_word_host[18]),
        .R(srst));
  FDRE \rx_word_host_reg[19] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[3]),
        .Q(rx_word_host[19]),
        .R(srst));
  FDRE \rx_word_host_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[1]),
        .Q(rx_word_host[1]),
        .R(srst));
  FDRE \rx_word_host_reg[20] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[4]),
        .Q(rx_word_host[20]),
        .R(srst));
  FDRE \rx_word_host_reg[21] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[5]),
        .Q(rx_word_host[21]),
        .R(srst));
  FDRE \rx_word_host_reg[22] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[6]),
        .Q(rx_word_host[22]),
        .R(srst));
  FDRE \rx_word_host_reg[23] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[7]),
        .Q(rx_word_host[23]),
        .R(srst));
  FDRE \rx_word_host_reg[24] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[0]),
        .Q(rx_word_host[24]),
        .R(srst));
  FDRE \rx_word_host_reg[25] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[1]),
        .Q(rx_word_host[25]),
        .R(srst));
  FDRE \rx_word_host_reg[26] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[2]),
        .Q(rx_word_host[26]),
        .R(srst));
  FDRE \rx_word_host_reg[27] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[3]),
        .Q(rx_word_host[27]),
        .R(srst));
  FDRE \rx_word_host_reg[28] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[4]),
        .Q(rx_word_host[28]),
        .R(srst));
  FDRE \rx_word_host_reg[29] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[5]),
        .Q(rx_word_host[29]),
        .R(srst));
  FDRE \rx_word_host_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[2]),
        .Q(rx_word_host[2]),
        .R(srst));
  FDRE \rx_word_host_reg[30] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[6]),
        .Q(rx_word_host[30]),
        .R(srst));
  FDRE \rx_word_host_reg[31] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[7]),
        .Q(rx_word_host[31]),
        .R(srst));
  FDRE \rx_word_host_reg[3] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[3]),
        .Q(rx_word_host[3]),
        .R(srst));
  FDRE \rx_word_host_reg[4] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[4]),
        .Q(rx_word_host[4]),
        .R(srst));
  FDRE \rx_word_host_reg[5] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[5]),
        .Q(rx_word_host[5]),
        .R(srst));
  FDRE \rx_word_host_reg[6] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[6]),
        .Q(rx_word_host[6]),
        .R(srst));
  FDRE \rx_word_host_reg[7] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[7]),
        .Q(rx_word_host[7]),
        .R(srst));
  FDRE \rx_word_host_reg[8] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[0]),
        .Q(rx_word_host[8]),
        .R(srst));
  FDRE \rx_word_host_reg[9] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[1]),
        .Q(rx_word_host[9]),
        .R(srst));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[2]),
        .I2(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .I3(p_0_in_0[3]),
        .I4(\s00_axi_rdata[0]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(D[0]),
        .I1(rx_word_host[0]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[0] ),
        .I5(\slv_reg1_reg_n_0_[0] ),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(int_status[0]),
        .I1(Q[0]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\slv_reg6_reg[1]_0 [0]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAAAAAFAAAAAAA)) 
    \s00_axi_rdata[0]_INST_0_i_3 
       (.I0(\s00_axi_rdata[0]_INST_0_i_4_n_0 ),
        .I1(data_count[0]),
        .I2(\s00_axi_rdata[10] [0]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[0]_INST_0_i_4 
       (.I0(\slv_reg10_reg[26]_0 [0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [0]),
        .I4(\slv_reg8_reg[12]_0 [0]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[10] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .I3(rx_word_host[10]),
        .I4(p_0_in_0[3]),
        .I5(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFC0804000)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .I3(\s00_axi_rdata[10] [10]),
        .I4(data_count[10]),
        .I5(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00002320)) 
    \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(\slv_reg10_reg[26]_0 [10]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(\slv_reg8_reg[12]_0 [10]),
        .I4(p_0_in_0[2]),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00EAEA)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(\slv_reg1_reg_n_0_[11] ),
        .I1(\slv_reg8_reg[12]_0 [11]),
        .I2(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I3(rx_word_host[11]),
        .I4(p_0_in_0[1]),
        .I5(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'h0000C0C0FF00EAEA)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(\slv_reg1_reg_n_0_[12] ),
        .I1(\slv_reg8_reg[12]_0 [12]),
        .I2(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I3(rx_word_host[12]),
        .I4(p_0_in_0[1]),
        .I5(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[0]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[0]),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(rx_word_host[13]),
        .I1(\slv_reg1_reg_n_0_[13] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(rx_word_host[14]),
        .I1(\slv_reg1_reg_n_0_[14] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(rx_word_host[15]),
        .I1(\slv_reg1_reg_n_0_[15] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[16] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [11]),
        .I4(rx_word_host[16]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[17] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [12]),
        .I4(rx_word_host[17]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[18] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [13]),
        .I4(rx_word_host[18]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[19] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [14]),
        .I4(rx_word_host[19]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[2]),
        .I2(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .I3(p_0_in_0[3]),
        .I4(\s00_axi_rdata[1]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(D[1]),
        .I1(rx_word_host[1]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[1] ),
        .I5(\slv_reg1_reg_n_0_[1] ),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(int_status[1]),
        .I1(Q[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\slv_reg6_reg[1]_0 [1]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAAAAAFAAAAAAA)) 
    \s00_axi_rdata[1]_INST_0_i_3 
       (.I0(\s00_axi_rdata[1]_INST_0_i_4_n_0 ),
        .I1(data_count[1]),
        .I2(\s00_axi_rdata[10] [1]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\s00_axi_rdata[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[1]_INST_0_i_4 
       (.I0(\slv_reg10_reg[26]_0 [1]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [1]),
        .I4(\slv_reg8_reg[12]_0 [1]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[20] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [15]),
        .I4(rx_word_host[20]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[21] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [16]),
        .I4(rx_word_host[21]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[22] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [17]),
        .I4(rx_word_host[22]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[23] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [18]),
        .I4(rx_word_host[23]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[24] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [19]),
        .I4(rx_word_host[24]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[25] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [20]),
        .I4(rx_word_host[25]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[26] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [21]),
        .I4(rx_word_host[26]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \s00_axi_rdata[26]_INST_0_i_2 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[2]),
        .O(\s00_axi_rdata[26]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s00_axi_rdata[26]_INST_0_i_3 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[2]),
        .O(\s00_axi_rdata[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(rx_word_host[27]),
        .I1(\slv_reg1_reg_n_0_[27] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(rx_word_host[28]),
        .I1(\slv_reg1_reg_n_0_[28] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(rx_word_host[29]),
        .I1(\slv_reg1_reg_n_0_[29] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(s00_axi_rdata[29]));
  MUXF7 \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[2]),
        .S(p_0_in_0[3]));
  LUT6 #(
    .INIT(64'h00F3AAAA0003AAAA)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(\s00_axi_rdata[2]_INST_0_i_3_n_0 ),
        .I1(rx_empty),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(Q[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEEAAAAAAAAAA)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(\s00_axi_rdata[2]_INST_0_i_4_n_0 ),
        .I1(\s00_axi_rdata[10] [2]),
        .I2(data_count[2]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[2]_INST_0_i_3 
       (.I0(D[2]),
        .I1(rx_word_host[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[2] ),
        .I5(\slv_reg1_reg_n_0_[2] ),
        .O(\s00_axi_rdata[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[2]_INST_0_i_4 
       (.I0(\slv_reg10_reg[26]_0 [2]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [2]),
        .I4(\slv_reg8_reg[12]_0 [2]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(rx_word_host[30]),
        .I1(\slv_reg1_reg_n_0_[30] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(intr),
        .I4(p_0_in_0[3]),
        .I5(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'h1101100000000000)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[1]),
        .I3(rx_word_host[31]),
        .I4(\slv_reg1_reg_n_0_[31] ),
        .I5(p_0_in_0[0]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[3]),
        .S(p_0_in_0[3]));
  LUT6 #(
    .INIT(64'h00FCAAAA000CAAAA)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(\s00_axi_rdata[3]_INST_0_i_3_n_0 ),
        .I1(int_status[2]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(Q[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEEAAAAAAAAAA)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(\s00_axi_rdata[3]_INST_0_i_4_n_0 ),
        .I1(\s00_axi_rdata[10] [3]),
        .I2(data_count[3]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[3]_INST_0_i_3 
       (.I0(D[3]),
        .I1(rx_word_host[3]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[3] ),
        .I5(\slv_reg1_reg_n_0_[3] ),
        .O(\s00_axi_rdata[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[3]_INST_0_i_4 
       (.I0(\slv_reg10_reg[26]_0 [3]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [3]),
        .I4(\slv_reg8_reg[12]_0 [3]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[3]_INST_0_i_4_n_0 ));
  MUXF7 \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[4]),
        .S(p_0_in_0[3]));
  LUT6 #(
    .INIT(64'h00FCAAAA000CAAAA)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(\s00_axi_rdata[4]_INST_0_i_3_n_0 ),
        .I1(s00_axi_rdata_4_sn_1),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(Q[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEEAAAAAAAAAA)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(\s00_axi_rdata[4]_INST_0_i_4_n_0 ),
        .I1(\s00_axi_rdata[10] [4]),
        .I2(data_count[4]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[4]_INST_0_i_3 
       (.I0(D[4]),
        .I1(rx_word_host[4]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[4] ),
        .I5(\slv_reg1_reg_n_0_[4] ),
        .O(\s00_axi_rdata[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[4]_INST_0_i_4 
       (.I0(\slv_reg10_reg[26]_0 [4]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [4]),
        .I4(\slv_reg8_reg[12]_0 [4]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[4]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8B88)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hFAAAEEAAAAAAAAAA)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(\s00_axi_rdata[5]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[10] [5]),
        .I2(data_count[5]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(D[5]),
        .I1(rx_word_host[5]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[5] ),
        .I5(\slv_reg1_reg_n_0_[5] ),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[5]_INST_0_i_3 
       (.I0(\slv_reg10_reg[26]_0 [5]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [5]),
        .I4(\slv_reg8_reg[12]_0 [5]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[5]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8B88)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hEEAAAAAAFAAAAAAA)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(\s00_axi_rdata[6]_INST_0_i_3_n_0 ),
        .I1(data_count[6]),
        .I2(\s00_axi_rdata[10] [6]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(D[6]),
        .I1(rx_word_host[6]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[6] ),
        .I5(\slv_reg1_reg_n_0_[6] ),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[6]_INST_0_i_3 
       (.I0(\slv_reg10_reg[26]_0 [6]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [6]),
        .I4(\slv_reg8_reg[12]_0 [6]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8B88)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hEEAAAAAAFAAAAAAA)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(\s00_axi_rdata[7]_INST_0_i_3_n_0 ),
        .I1(data_count[7]),
        .I2(\s00_axi_rdata[10] [7]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[7]_INST_0_i_2 
       (.I0(D[7]),
        .I1(rx_word_host[7]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[7] ),
        .I5(\slv_reg1_reg_n_0_[7] ),
        .O(\s00_axi_rdata[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[7]_INST_0_i_3 
       (.I0(\slv_reg10_reg[26]_0 [7]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [7]),
        .I4(\slv_reg8_reg[12]_0 [7]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[8] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .I3(rx_word_host[8]),
        .I4(p_0_in_0[3]),
        .I5(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hEEAAAAAAFAAAAAAA)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .I1(data_count[8]),
        .I2(\s00_axi_rdata[10] [8]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(\slv_reg10_reg[26]_0 [8]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [8]),
        .I4(\slv_reg8_reg[12]_0 [8]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[9] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .I3(rx_word_host[9]),
        .I4(p_0_in_0[3]),
        .I5(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hEEAAAAAAFAAAAAAA)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .I1(data_count[9]),
        .I2(\s00_axi_rdata[10] [9]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(\slv_reg10_reg[26]_0 [9]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [9]),
        .I4(\slv_reg8_reg[12]_0 [9]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sample_clk_cntr[9]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\slv_reg6_reg[1]_0 [1]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \slv_reg0[7]_i_1 
       (.I0(write_index[1]),
        .I1(write_index[2]),
        .I2(write_index[0]),
        .I3(write_index[3]),
        .I4(slv_reg_wren),
        .I5(p_1_in),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[0] ),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(srst));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[1] ),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(srst));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[2] ),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(srst));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[3] ),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(srst));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(p_0_in4_in),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(srst));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[5] ),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(srst));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[6] ),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(srst));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[7] ),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(srst));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg10[10]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in0),
        .I2(write_index[3]),
        .I3(write_index[2]),
        .I4(write_index[1]),
        .I5(write_index[0]),
        .O(\slv_reg10[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg10[23]_i_1 
       (.I0(\axi_wstrb_reg_n_0_[2] ),
        .I1(slv_reg_wren),
        .I2(write_index[3]),
        .I3(write_index[2]),
        .I4(write_index[1]),
        .I5(write_index[0]),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg10[26]_i_1 
       (.I0(\axi_wstrb_reg_n_0_[3] ),
        .I1(slv_reg_wren),
        .I2(write_index[3]),
        .I3(write_index[2]),
        .I4(write_index[1]),
        .I5(write_index[0]),
        .O(\slv_reg10[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg10[7]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_1_in),
        .I2(write_index[3]),
        .I3(write_index[2]),
        .I4(write_index[1]),
        .I5(write_index[0]),
        .O(\slv_reg10[7]_i_1_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[0] ),
        .Q(\slv_reg10_reg[26]_0 [0]),
        .R(srst));
  FDRE \slv_reg10_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[10]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[10] ),
        .Q(\slv_reg10_reg[26]_0 [10]),
        .R(srst));
  FDRE \slv_reg10_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[16] ),
        .Q(\slv_reg10_reg[26]_0 [11]),
        .R(srst));
  FDRE \slv_reg10_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[17] ),
        .Q(\slv_reg10_reg[26]_0 [12]),
        .R(srst));
  FDRE \slv_reg10_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[18] ),
        .Q(\slv_reg10_reg[26]_0 [13]),
        .R(srst));
  FDRE \slv_reg10_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[19] ),
        .Q(\slv_reg10_reg[26]_0 [14]),
        .R(srst));
  FDRE \slv_reg10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[1] ),
        .Q(\slv_reg10_reg[26]_0 [1]),
        .R(srst));
  FDRE \slv_reg10_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[20] ),
        .Q(\slv_reg10_reg[26]_0 [15]),
        .R(srst));
  FDRE \slv_reg10_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[21] ),
        .Q(\slv_reg10_reg[26]_0 [16]),
        .R(srst));
  FDRE \slv_reg10_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[22] ),
        .Q(\slv_reg10_reg[26]_0 [17]),
        .R(srst));
  FDRE \slv_reg10_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[23] ),
        .Q(\slv_reg10_reg[26]_0 [18]),
        .R(srst));
  FDRE \slv_reg10_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[26]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[24] ),
        .Q(\slv_reg10_reg[26]_0 [19]),
        .R(srst));
  FDRE \slv_reg10_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[26]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[25] ),
        .Q(\slv_reg10_reg[26]_0 [20]),
        .R(srst));
  FDRE \slv_reg10_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[26]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[26] ),
        .Q(\slv_reg10_reg[26]_0 [21]),
        .R(srst));
  FDRE \slv_reg10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[2] ),
        .Q(\slv_reg10_reg[26]_0 [2]),
        .R(srst));
  FDRE \slv_reg10_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[3] ),
        .Q(\slv_reg10_reg[26]_0 [3]),
        .R(srst));
  FDRE \slv_reg10_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(p_0_in4_in),
        .Q(\slv_reg10_reg[26]_0 [4]),
        .R(srst));
  FDRE \slv_reg10_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[5] ),
        .Q(\slv_reg10_reg[26]_0 [5]),
        .R(srst));
  FDRE \slv_reg10_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[6] ),
        .Q(\slv_reg10_reg[26]_0 [6]),
        .R(srst));
  FDRE \slv_reg10_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[7] ),
        .Q(\slv_reg10_reg[26]_0 [7]),
        .R(srst));
  FDRE \slv_reg10_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[10]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[8] ),
        .Q(\slv_reg10_reg[26]_0 [8]),
        .R(srst));
  FDRE \slv_reg10_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[10]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[9] ),
        .Q(\slv_reg10_reg[26]_0 [9]),
        .R(srst));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \slv_reg1[15]_i_1 
       (.I0(write_index[1]),
        .I1(write_index[2]),
        .I2(write_index[0]),
        .I3(write_index[3]),
        .I4(slv_reg_wren),
        .I5(p_0_in0),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \slv_reg1[23]_i_1 
       (.I0(\axi_wstrb_reg_n_0_[2] ),
        .I1(slv_reg_wren),
        .I2(write_index[1]),
        .I3(write_index[2]),
        .I4(write_index[0]),
        .I5(write_index[3]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \slv_reg1[31]_i_1 
       (.I0(\axi_wstrb_reg_n_0_[3] ),
        .I1(slv_reg_wren),
        .I2(write_index[1]),
        .I3(write_index[2]),
        .I4(write_index[0]),
        .I5(write_index[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \slv_reg1[7]_i_1 
       (.I0(write_index[1]),
        .I1(write_index[2]),
        .I2(write_index[0]),
        .I3(write_index[3]),
        .I4(slv_reg_wren),
        .I5(p_1_in),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[0] ),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(srst));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[10] ),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(srst));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[11] ),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(srst));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[12] ),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(srst));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[13] ),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(srst));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[14] ),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(srst));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[15] ),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(srst));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[16] ),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(srst));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[17] ),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(srst));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[18] ),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(srst));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[19] ),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(srst));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[1] ),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(srst));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[20] ),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(srst));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[21] ),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(srst));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[22] ),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(srst));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[23] ),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(srst));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[24] ),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(srst));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[25] ),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(srst));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[26] ),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(srst));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[27] ),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(srst));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[28] ),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(srst));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[29] ),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(srst));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[2] ),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(srst));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[30] ),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(srst));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[31] ),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(srst));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[3] ),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(srst));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(p_0_in4_in),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(srst));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[5] ),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(srst));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[6] ),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(srst));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[7] ),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(srst));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[8] ),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(srst));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[9] ),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(srst));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \slv_reg5[4]_i_1 
       (.I0(p_1_in),
        .I1(write_index[3]),
        .I2(write_index[1]),
        .I3(write_index[2]),
        .I4(write_index[0]),
        .I5(slv_reg_wren),
        .O(\slv_reg5[4]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[4]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(srst));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[4]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(srst));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[4]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(srst));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[4]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(srst));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[4]_i_1_n_0 ),
        .D(p_0_in4_in),
        .Q(Q[4]),
        .R(srst));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[1]_i_1 
       (.I0(slv_reg_wren),
        .I1(write_index[1]),
        .I2(write_index[2]),
        .I3(p_1_in),
        .I4(write_index[3]),
        .I5(write_index[0]),
        .O(\slv_reg6[1]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[1]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[0] ),
        .Q(\slv_reg6_reg[1]_0 [0]),
        .R(srst));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[1]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[1] ),
        .Q(\slv_reg6_reg[1]_0 [1]),
        .R(srst));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \slv_reg8[12]_i_1 
       (.I0(write_index[1]),
        .I1(write_index[2]),
        .I2(write_index[3]),
        .I3(write_index[0]),
        .I4(slv_reg_wren),
        .I5(p_0_in0),
        .O(p_1_in__0[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \slv_reg8[12]_i_2 
       (.I0(axi_bvalid_reg_0),
        .I1(axi_wdata_valid_reg_n_0),
        .I2(axi_awaddr_valid),
        .O(slv_reg_wren));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \slv_reg8[7]_i_1 
       (.I0(write_index[1]),
        .I1(write_index[2]),
        .I2(write_index[3]),
        .I3(write_index[0]),
        .I4(slv_reg_wren),
        .I5(p_1_in),
        .O(p_1_in__0[7]));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(\axi_wdata_reg_n_0_[0] ),
        .Q(\slv_reg8_reg[12]_0 [0]),
        .R(srst));
  FDRE \slv_reg8_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[12]),
        .D(\axi_wdata_reg_n_0_[10] ),
        .Q(\slv_reg8_reg[12]_0 [10]),
        .R(srst));
  FDRE \slv_reg8_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[12]),
        .D(\axi_wdata_reg_n_0_[11] ),
        .Q(\slv_reg8_reg[12]_0 [11]),
        .R(srst));
  FDRE \slv_reg8_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[12]),
        .D(\axi_wdata_reg_n_0_[12] ),
        .Q(\slv_reg8_reg[12]_0 [12]),
        .R(srst));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(\axi_wdata_reg_n_0_[1] ),
        .Q(\slv_reg8_reg[12]_0 [1]),
        .R(srst));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(\axi_wdata_reg_n_0_[2] ),
        .Q(\slv_reg8_reg[12]_0 [2]),
        .R(srst));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(\axi_wdata_reg_n_0_[3] ),
        .Q(\slv_reg8_reg[12]_0 [3]),
        .R(srst));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(p_0_in4_in),
        .Q(\slv_reg8_reg[12]_0 [4]),
        .R(srst));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(\axi_wdata_reg_n_0_[5] ),
        .Q(\slv_reg8_reg[12]_0 [5]),
        .R(srst));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(\axi_wdata_reg_n_0_[6] ),
        .Q(\slv_reg8_reg[12]_0 [6]),
        .R(srst));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(\axi_wdata_reg_n_0_[7] ),
        .Q(\slv_reg8_reg[12]_0 [7]),
        .R(srst));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[12]),
        .D(\axi_wdata_reg_n_0_[8] ),
        .Q(\slv_reg8_reg[12]_0 [8]),
        .R(srst));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[12]),
        .D(\axi_wdata_reg_n_0_[9] ),
        .Q(\slv_reg8_reg[12]_0 [9]),
        .R(srst));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \slv_reg9[7]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_1_in),
        .I2(write_index[1]),
        .I3(write_index[2]),
        .I4(write_index[0]),
        .I5(write_index[3]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \slv_reg9[9]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in0),
        .I2(write_index[1]),
        .I3(write_index[2]),
        .I4(write_index[0]),
        .I5(write_index[3]),
        .O(\slv_reg9[9]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[0] ),
        .Q(\slv_reg9_reg[9]_0 [0]),
        .R(srst));
  FDRE \slv_reg9_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[1] ),
        .Q(\slv_reg9_reg[9]_0 [1]),
        .R(srst));
  FDRE \slv_reg9_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[2] ),
        .Q(\slv_reg9_reg[9]_0 [2]),
        .R(srst));
  FDRE \slv_reg9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[3] ),
        .Q(\slv_reg9_reg[9]_0 [3]),
        .R(srst));
  FDRE \slv_reg9_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(p_0_in4_in),
        .Q(\slv_reg9_reg[9]_0 [4]),
        .R(srst));
  FDRE \slv_reg9_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[5] ),
        .Q(\slv_reg9_reg[9]_0 [5]),
        .R(srst));
  FDRE \slv_reg9_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[6] ),
        .Q(\slv_reg9_reg[9]_0 [6]),
        .R(srst));
  FDRE \slv_reg9_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[7] ),
        .Q(\slv_reg9_reg[9]_0 [7]),
        .R(srst));
  FDRE \slv_reg9_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[9]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[8] ),
        .Q(\slv_reg9_reg[9]_0 [8]),
        .R(srst));
  FDRE \slv_reg9_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[9]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[9] ),
        .Q(\slv_reg9_reg[9]_0 [9]),
        .R(srst));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[0]_i_1 
       (.I0(\slv_reg0_reg_n_0_[0] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[0]_i_2_n_0 ),
        .O(\tx_byte_host[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \tx_byte_host[0]_i_2 
       (.I0(\slv_reg1_reg_n_0_[8] ),
        .I1(\slv_reg1_reg_n_0_[0] ),
        .I2(\slv_reg1_reg_n_0_[24] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[16] ),
        .O(\tx_byte_host[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[1]_i_1 
       (.I0(\slv_reg0_reg_n_0_[1] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[1]_i_2_n_0 ),
        .O(\tx_byte_host[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \tx_byte_host[1]_i_2 
       (.I0(\slv_reg1_reg_n_0_[25] ),
        .I1(\slv_reg1_reg_n_0_[17] ),
        .I2(\slv_reg1_reg_n_0_[9] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[1] ),
        .O(\tx_byte_host[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[2]_i_1 
       (.I0(\slv_reg0_reg_n_0_[2] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[2]_i_2_n_0 ),
        .O(\tx_byte_host[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \tx_byte_host[2]_i_2 
       (.I0(\slv_reg1_reg_n_0_[10] ),
        .I1(\slv_reg1_reg_n_0_[2] ),
        .I2(\slv_reg1_reg_n_0_[26] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[18] ),
        .O(\tx_byte_host[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[3]_i_1 
       (.I0(\slv_reg0_reg_n_0_[3] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[3]_i_2_n_0 ),
        .O(\tx_byte_host[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \tx_byte_host[3]_i_2 
       (.I0(\slv_reg1_reg_n_0_[27] ),
        .I1(\slv_reg1_reg_n_0_[19] ),
        .I2(\slv_reg1_reg_n_0_[3] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[11] ),
        .O(\tx_byte_host[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[4]_i_1 
       (.I0(\slv_reg0_reg_n_0_[4] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[4]_i_2_n_0 ),
        .O(\tx_byte_host[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \tx_byte_host[4]_i_2 
       (.I0(\slv_reg1_reg_n_0_[28] ),
        .I1(\slv_reg1_reg_n_0_[20] ),
        .I2(\slv_reg1_reg_n_0_[12] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[4] ),
        .O(\tx_byte_host[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[5]_i_1 
       (.I0(\slv_reg0_reg_n_0_[5] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[5]_i_2_n_0 ),
        .O(\tx_byte_host[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \tx_byte_host[5]_i_2 
       (.I0(\slv_reg1_reg_n_0_[29] ),
        .I1(\slv_reg1_reg_n_0_[21] ),
        .I2(\slv_reg1_reg_n_0_[13] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[5] ),
        .O(\tx_byte_host[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[6]_i_1 
       (.I0(\slv_reg0_reg_n_0_[6] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[6]_i_2_n_0 ),
        .O(\tx_byte_host[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \tx_byte_host[6]_i_2 
       (.I0(\slv_reg1_reg_n_0_[30] ),
        .I1(\slv_reg1_reg_n_0_[22] ),
        .I2(\slv_reg1_reg_n_0_[6] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[14] ),
        .O(\tx_byte_host[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[7]_i_1 
       (.I0(\slv_reg0_reg_n_0_[7] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[7]_i_2_n_0 ),
        .O(\tx_byte_host[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \tx_byte_host[7]_i_2 
       (.I0(\slv_reg1_reg_n_0_[23] ),
        .I1(\slv_reg1_reg_n_0_[31] ),
        .I2(\slv_reg1_reg_n_0_[15] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[7] ),
        .O(\tx_byte_host[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    tx_byte_host_dv_i_1
       (.I0(word_wr_active__0),
        .I1(\is_reg0_wr_reg_n_0_[1] ),
        .I2(\is_reg0_wr_reg_n_0_[0] ),
        .O(tx_byte_host_dv_i_1_n_0));
  FDRE tx_byte_host_dv_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(tx_byte_host_dv_i_1_n_0),
        .Q(wr_en),
        .R(1'b0));
  FDRE \tx_byte_host_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[0]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \tx_byte_host_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[1]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \tx_byte_host_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[2]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \tx_byte_host_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[3]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \tx_byte_host_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[4]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \tx_byte_host_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[5]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \tx_byte_host_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[6]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \tx_byte_host_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[7]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    txd_i_2
       (.I0(s00_axi_aresetn),
        .I1(\slv_reg6_reg[1]_0 [0]),
        .O(s00_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \uart_rx/rx_samples[44]_i_1 
       (.I0(\slv_reg6_reg[1]_0 [1]),
        .I1(s00_axi_aresetn),
        .I2(rx_samples_reg_s_2),
        .O(\slv_reg6_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA2AAA00)) 
    word_rd_active_i_1
       (.I0(s00_axi_aresetn),
        .I1(rd_byte_cntr[1]),
        .I2(rd_byte_cntr[0]),
        .I3(\rd_byte_cntr[1]_i_3_n_0 ),
        .I4(word_rd_active),
        .O(word_rd_active_i_1_n_0));
  FDRE word_rd_active_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(word_rd_active_i_1_n_0),
        .Q(word_rd_active),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0C00AE00AE00AE00)) 
    word_wr_active_i_1
       (.I0(word_wr_active__0),
        .I1(\is_reg1_wr_reg_n_0_[0] ),
        .I2(\is_reg1_wr_reg_n_0_[1] ),
        .I3(s00_axi_aresetn),
        .I4(byte_cntr[0]),
        .I5(byte_cntr[1]),
        .O(word_wr_active_i_1_n_0));
  FDRE word_wr_active_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(word_wr_active_i_1_n_0),
        .Q(word_wr_active__0),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_14,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_generator_0" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
module design_1_e_uart_0_0_fifo_generator_0
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    almost_empty,
    valid,
    data_count,
    wr_rst_busy,
    rd_rst_busy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* X_INTERFACE_MODE = "slave core_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [7:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY" *) output almost_empty;
  output valid;
  output [10:0]data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire \<const0> ;
  wire almost_empty;
  wire clk;
  wire [10:0]data_count;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire rd_en;
  wire srst;
  wire valid;
  wire wr_en;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_full_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

  assign full = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "11" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "spartanuplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "1" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "1" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1022" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_e_uart_0_0_fifo_generator_v13_2_14__2 U0
       (.almost_empty(almost_empty),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(data_count),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(NLW_U0_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_14,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_generator_0" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
module design_1_e_uart_0_0_fifo_generator_0__xdcDup__1
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    almost_empty,
    valid,
    data_count,
    wr_rst_busy,
    rd_rst_busy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* X_INTERFACE_MODE = "slave core_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [7:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY" *) output almost_empty;
  output valid;
  output [10:0]data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire \<const0> ;
  wire clk;
  wire [10:0]data_count;
  wire [7:0]din;
  wire [7:0]dout;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_empty_UNCONNECTED;
  wire NLW_U0_full_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign valid = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "11" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "spartanuplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "1" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "1" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1022" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_e_uart_0_0_fifo_generator_v13_2_14 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(data_count),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(NLW_U0_empty_UNCONNECTED),
        .full(NLW_U0_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "int_holdoff" *) 
module design_1_e_uart_0_0_int_holdoff
   (int_status,
    Q,
    \slv_reg5_reg[2] ,
    \count_reg[6] ,
    \count_reg[10] ,
    srst,
    rx_empty_d1_reg_0,
    s00_axi_aclk,
    S,
    rx_byte_cnt_coal_intr_reg_0,
    rx_time_coal_intr_clr,
    s00_axi_aresetn,
    rx_byte_cnt_coal_intr1_carry_0,
    rx_byte_cnt_coal_intr_reg_1,
    intr_reg,
    intr_reg_0,
    \bit_times_elapsed_reg[3]_0 ,
    \byte_time_cntr_reg[0]_0 );
  output [1:0]int_status;
  output [0:0]Q;
  output \slv_reg5_reg[2] ;
  output \count_reg[6] ;
  output \count_reg[10] ;
  input srst;
  input rx_empty_d1_reg_0;
  input s00_axi_aclk;
  input [0:0]S;
  input [0:0]rx_byte_cnt_coal_intr_reg_0;
  input rx_time_coal_intr_clr;
  input s00_axi_aresetn;
  input [21:0]rx_byte_cnt_coal_intr1_carry_0;
  input [10:0]rx_byte_cnt_coal_intr_reg_1;
  input [4:0]intr_reg;
  input [1:0]intr_reg_0;
  input [12:0]\bit_times_elapsed_reg[3]_0 ;
  input [0:0]\byte_time_cntr_reg[0]_0 ;

  wire [0:0]Q;
  wire [0:0]S;
  wire [12:0]bit_time_cntr;
  wire \bit_time_cntr[0]_i_1_n_0 ;
  wire \bit_time_cntr[10]_i_1_n_0 ;
  wire \bit_time_cntr[10]_i_2_n_0 ;
  wire \bit_time_cntr[11]_i_1_n_0 ;
  wire \bit_time_cntr[12]_i_1_n_0 ;
  wire \bit_time_cntr[12]_i_2_n_0 ;
  wire \bit_time_cntr[1]_i_1_n_0 ;
  wire \bit_time_cntr[2]_i_1_n_0 ;
  wire \bit_time_cntr[3]_i_1_n_0 ;
  wire \bit_time_cntr[4]_i_1_n_0 ;
  wire \bit_time_cntr[4]_i_2_n_0 ;
  wire \bit_time_cntr[5]_i_1_n_0 ;
  wire \bit_time_cntr[5]_i_2_n_0 ;
  wire \bit_time_cntr[6]_i_1_n_0 ;
  wire \bit_time_cntr[7]_i_1_n_0 ;
  wire \bit_time_cntr[8]_i_1_n_0 ;
  wire \bit_time_cntr[8]_i_2_n_0 ;
  wire \bit_time_cntr[9]_i_1_n_0 ;
  wire \bit_time_cntr[9]_i_2_n_0 ;
  wire \bit_times_elapsed[0]_i_1_n_0 ;
  wire \bit_times_elapsed[1]_i_1_n_0 ;
  wire \bit_times_elapsed[2]_i_1_n_0 ;
  wire \bit_times_elapsed[3]_i_1_n_0 ;
  wire \bit_times_elapsed[3]_i_2_n_0 ;
  wire \bit_times_elapsed[3]_i_3_n_0 ;
  wire \bit_times_elapsed[3]_i_4_n_0 ;
  wire \bit_times_elapsed[3]_i_5_n_0 ;
  wire \bit_times_elapsed[3]_i_6_n_0 ;
  wire \bit_times_elapsed[3]_i_7_n_0 ;
  wire \bit_times_elapsed[3]_i_8_n_0 ;
  wire \bit_times_elapsed[3]_i_9_n_0 ;
  wire [12:0]\bit_times_elapsed_reg[3]_0 ;
  wire \bit_times_elapsed_reg_n_0_[0] ;
  wire \bit_times_elapsed_reg_n_0_[1] ;
  wire \bit_times_elapsed_reg_n_0_[2] ;
  wire \bit_times_elapsed_reg_n_0_[3] ;
  wire [9:0]byte_time_cntr;
  wire \byte_time_cntr[0]_i_1_n_0 ;
  wire \byte_time_cntr[10]_i_3_n_0 ;
  wire \byte_time_cntr[10]_i_4_n_0 ;
  wire \byte_time_cntr[10]_i_5_n_0 ;
  wire \byte_time_cntr[1]_i_1_n_0 ;
  wire \byte_time_cntr[2]_i_1_n_0 ;
  wire \byte_time_cntr[3]_i_1_n_0 ;
  wire \byte_time_cntr[4]_i_1_n_0 ;
  wire \byte_time_cntr[4]_i_2_n_0 ;
  wire \byte_time_cntr[5]_i_1_n_0 ;
  wire \byte_time_cntr[5]_i_2_n_0 ;
  wire \byte_time_cntr[6]_i_1_n_0 ;
  wire \byte_time_cntr[7]_i_1_n_0 ;
  wire \byte_time_cntr[8]_i_1_n_0 ;
  wire \byte_time_cntr[8]_i_2_n_0 ;
  wire \byte_time_cntr[9]_i_1_n_0 ;
  wire [0:0]byte_time_cntr_0;
  wire byte_time_cntr_en2;
  wire byte_time_cntr_en2_carry_i_10_n_0;
  wire byte_time_cntr_en2_carry_i_11_n_0;
  wire byte_time_cntr_en2_carry_i_12_n_0;
  wire byte_time_cntr_en2_carry_i_1_n_0;
  wire byte_time_cntr_en2_carry_i_2_n_0;
  wire byte_time_cntr_en2_carry_i_3_n_0;
  wire byte_time_cntr_en2_carry_i_4_n_0;
  wire byte_time_cntr_en2_carry_i_5_n_0;
  wire byte_time_cntr_en2_carry_i_6_n_0;
  wire byte_time_cntr_en2_carry_i_8_n_0;
  wire byte_time_cntr_en2_carry_i_9_n_0;
  wire byte_time_cntr_en2_carry_n_3;
  wire byte_time_cntr_en2_carry_n_4;
  wire byte_time_cntr_en2_carry_n_5;
  wire byte_time_cntr_en2_carry_n_6;
  wire byte_time_cntr_en2_carry_n_7;
  wire byte_time_cntr_en_i_1_n_0;
  wire byte_time_cntr_en_i_2_n_0;
  wire byte_time_cntr_en_reg_n_0;
  wire [0:0]\byte_time_cntr_reg[0]_0 ;
  wire \count_reg[10] ;
  wire \count_reg[6] ;
  wire [1:0]int_status;
  wire intr_i_2_n_0;
  wire [4:0]intr_reg;
  wire [1:0]intr_reg_0;
  wire rx_byte_cnt_coal_intr0;
  wire rx_byte_cnt_coal_intr1;
  wire [21:0]rx_byte_cnt_coal_intr1_carry_0;
  wire rx_byte_cnt_coal_intr1_carry_i_10_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_11_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_12_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_1_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_2_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_3_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_4_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_5_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_6_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_8_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_9_n_0;
  wire rx_byte_cnt_coal_intr1_carry_n_3;
  wire rx_byte_cnt_coal_intr1_carry_n_4;
  wire rx_byte_cnt_coal_intr1_carry_n_5;
  wire rx_byte_cnt_coal_intr1_carry_n_6;
  wire rx_byte_cnt_coal_intr1_carry_n_7;
  wire [0:0]rx_byte_cnt_coal_intr_reg_0;
  wire [10:0]rx_byte_cnt_coal_intr_reg_1;
  wire rx_empty_d1;
  wire rx_empty_d1_reg_0;
  wire rx_time_coal_intr_clr;
  wire rx_time_coal_intr_i_1_n_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \slv_reg5_reg[2] ;
  wire srst;
  wire [7:6]NLW_byte_time_cntr_en2_carry_CO_UNCONNECTED;
  wire [7:0]NLW_byte_time_cntr_en2_carry_O_UNCONNECTED;
  wire [7:6]NLW_rx_byte_cnt_coal_intr1_carry_CO_UNCONNECTED;
  wire [7:0]NLW_rx_byte_cnt_coal_intr1_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \bit_time_cntr[0]_i_1 
       (.I0(\bit_times_elapsed[3]_i_3_n_0 ),
        .I1(s00_axi_aresetn),
        .I2(bit_time_cntr[0]),
        .O(\bit_time_cntr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2010)) 
    \bit_time_cntr[10]_i_1 
       (.I0(\bit_time_cntr[10]_i_2_n_0 ),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(bit_time_cntr[10]),
        .O(\bit_time_cntr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \bit_time_cntr[10]_i_2 
       (.I0(bit_time_cntr[8]),
        .I1(bit_time_cntr[6]),
        .I2(\bit_time_cntr[8]_i_2_n_0 ),
        .I3(bit_time_cntr[7]),
        .I4(bit_time_cntr[9]),
        .O(\bit_time_cntr[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \bit_time_cntr[11]_i_1 
       (.I0(\bit_time_cntr[12]_i_2_n_0 ),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(bit_time_cntr[11]),
        .O(\bit_time_cntr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h07000800)) 
    \bit_time_cntr[12]_i_1 
       (.I0(bit_time_cntr[11]),
        .I1(\bit_time_cntr[12]_i_2_n_0 ),
        .I2(\bit_times_elapsed[3]_i_3_n_0 ),
        .I3(s00_axi_aresetn),
        .I4(bit_time_cntr[12]),
        .O(\bit_time_cntr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \bit_time_cntr[12]_i_2 
       (.I0(bit_time_cntr[10]),
        .I1(bit_time_cntr[9]),
        .I2(bit_time_cntr[7]),
        .I3(\bit_time_cntr[8]_i_2_n_0 ),
        .I4(bit_time_cntr[6]),
        .I5(bit_time_cntr[8]),
        .O(\bit_time_cntr[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \bit_time_cntr[1]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(bit_time_cntr[0]),
        .I3(bit_time_cntr[1]),
        .O(\bit_time_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \bit_time_cntr[2]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(bit_time_cntr[1]),
        .I3(bit_time_cntr[0]),
        .I4(bit_time_cntr[2]),
        .O(\bit_time_cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0222222220000000)) 
    \bit_time_cntr[3]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(bit_time_cntr[2]),
        .I3(bit_time_cntr[0]),
        .I4(bit_time_cntr[1]),
        .I5(bit_time_cntr[3]),
        .O(\bit_time_cntr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h2002)) 
    \bit_time_cntr[4]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(\bit_time_cntr[4]_i_2_n_0 ),
        .I3(bit_time_cntr[4]),
        .O(\bit_time_cntr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bit_time_cntr[4]_i_2 
       (.I0(bit_time_cntr[2]),
        .I1(bit_time_cntr[0]),
        .I2(bit_time_cntr[1]),
        .I3(bit_time_cntr[3]),
        .O(\bit_time_cntr[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2010)) 
    \bit_time_cntr[5]_i_1 
       (.I0(\bit_time_cntr[5]_i_2_n_0 ),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(bit_time_cntr[5]),
        .O(\bit_time_cntr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bit_time_cntr[5]_i_2 
       (.I0(bit_time_cntr[3]),
        .I1(bit_time_cntr[1]),
        .I2(bit_time_cntr[0]),
        .I3(bit_time_cntr[2]),
        .I4(bit_time_cntr[4]),
        .O(\bit_time_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h2010)) 
    \bit_time_cntr[6]_i_1 
       (.I0(\bit_time_cntr[8]_i_2_n_0 ),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(bit_time_cntr[6]),
        .O(\bit_time_cntr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h0B000400)) 
    \bit_time_cntr[7]_i_1 
       (.I0(\bit_time_cntr[8]_i_2_n_0 ),
        .I1(bit_time_cntr[6]),
        .I2(\bit_times_elapsed[3]_i_3_n_0 ),
        .I3(s00_axi_aresetn),
        .I4(bit_time_cntr[7]),
        .O(\bit_time_cntr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00DF000000200000)) 
    \bit_time_cntr[8]_i_1 
       (.I0(bit_time_cntr[6]),
        .I1(\bit_time_cntr[8]_i_2_n_0 ),
        .I2(bit_time_cntr[7]),
        .I3(\bit_times_elapsed[3]_i_3_n_0 ),
        .I4(s00_axi_aresetn),
        .I5(bit_time_cntr[8]),
        .O(\bit_time_cntr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bit_time_cntr[8]_i_2 
       (.I0(bit_time_cntr[4]),
        .I1(bit_time_cntr[2]),
        .I2(bit_time_cntr[0]),
        .I3(bit_time_cntr[1]),
        .I4(bit_time_cntr[3]),
        .I5(bit_time_cntr[5]),
        .O(\bit_time_cntr[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2010)) 
    \bit_time_cntr[9]_i_1 
       (.I0(\bit_time_cntr[9]_i_2_n_0 ),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(bit_time_cntr[9]),
        .O(\bit_time_cntr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \bit_time_cntr[9]_i_2 
       (.I0(bit_time_cntr[7]),
        .I1(\bit_time_cntr[8]_i_2_n_0 ),
        .I2(bit_time_cntr[6]),
        .I3(bit_time_cntr[8]),
        .O(\bit_time_cntr[9]_i_2_n_0 ));
  FDRE \bit_time_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[0]_i_1_n_0 ),
        .Q(bit_time_cntr[0]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[10]_i_1_n_0 ),
        .Q(bit_time_cntr[10]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[11]_i_1_n_0 ),
        .Q(bit_time_cntr[11]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[12]_i_1_n_0 ),
        .Q(bit_time_cntr[12]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[1]_i_1_n_0 ),
        .Q(bit_time_cntr[1]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[2]_i_1_n_0 ),
        .Q(bit_time_cntr[2]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[3]_i_1_n_0 ),
        .Q(bit_time_cntr[3]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[4]_i_1_n_0 ),
        .Q(bit_time_cntr[4]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[5]_i_1_n_0 ),
        .Q(bit_time_cntr[5]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[6]_i_1_n_0 ),
        .Q(bit_time_cntr[6]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[7]_i_1_n_0 ),
        .Q(bit_time_cntr[7]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[8]_i_1_n_0 ),
        .Q(bit_time_cntr[8]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[9]_i_1_n_0 ),
        .Q(bit_time_cntr[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \bit_times_elapsed[0]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(\bit_times_elapsed_reg_n_0_[0] ),
        .O(\bit_times_elapsed[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \bit_times_elapsed[1]_i_1 
       (.I0(\bit_times_elapsed[3]_i_3_n_0 ),
        .I1(s00_axi_aresetn),
        .I2(\bit_times_elapsed_reg_n_0_[0] ),
        .I3(\bit_times_elapsed_reg_n_0_[1] ),
        .O(\bit_times_elapsed[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h08808080)) 
    \bit_times_elapsed[2]_i_1 
       (.I0(\bit_times_elapsed[3]_i_3_n_0 ),
        .I1(s00_axi_aresetn),
        .I2(\bit_times_elapsed_reg_n_0_[2] ),
        .I3(\bit_times_elapsed_reg_n_0_[1] ),
        .I4(\bit_times_elapsed_reg_n_0_[0] ),
        .O(\bit_times_elapsed[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA9AAAAAFFFFFFFF)) 
    \bit_times_elapsed[3]_i_1 
       (.I0(\bit_times_elapsed[3]_i_3_n_0 ),
        .I1(\bit_times_elapsed_reg_n_0_[1] ),
        .I2(\bit_times_elapsed_reg_n_0_[0] ),
        .I3(\bit_times_elapsed_reg_n_0_[2] ),
        .I4(\bit_times_elapsed_reg_n_0_[3] ),
        .I5(s00_axi_aresetn),
        .O(\bit_times_elapsed[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888880000000)) 
    \bit_times_elapsed[3]_i_2 
       (.I0(\bit_times_elapsed[3]_i_3_n_0 ),
        .I1(s00_axi_aresetn),
        .I2(\bit_times_elapsed_reg_n_0_[0] ),
        .I3(\bit_times_elapsed_reg_n_0_[1] ),
        .I4(\bit_times_elapsed_reg_n_0_[2] ),
        .I5(\bit_times_elapsed_reg_n_0_[3] ),
        .O(\bit_times_elapsed[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0041)) 
    \bit_times_elapsed[3]_i_3 
       (.I0(\bit_times_elapsed[3]_i_4_n_0 ),
        .I1(bit_time_cntr[12]),
        .I2(\bit_times_elapsed_reg[3]_0 [12]),
        .I3(\bit_times_elapsed[3]_i_5_n_0 ),
        .O(\bit_times_elapsed[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \bit_times_elapsed[3]_i_4 
       (.I0(\bit_times_elapsed[3]_i_6_n_0 ),
        .I1(bit_time_cntr[0]),
        .I2(\bit_times_elapsed_reg[3]_0 [0]),
        .I3(bit_time_cntr[5]),
        .I4(\bit_times_elapsed_reg[3]_0 [5]),
        .I5(\bit_times_elapsed[3]_i_7_n_0 ),
        .O(\bit_times_elapsed[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \bit_times_elapsed[3]_i_5 
       (.I0(\bit_times_elapsed[3]_i_8_n_0 ),
        .I1(bit_time_cntr[6]),
        .I2(\bit_times_elapsed_reg[3]_0 [6]),
        .I3(bit_time_cntr[10]),
        .I4(\bit_times_elapsed_reg[3]_0 [10]),
        .I5(\bit_times_elapsed[3]_i_9_n_0 ),
        .O(\bit_times_elapsed[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \bit_times_elapsed[3]_i_6 
       (.I0(bit_time_cntr[4]),
        .I1(\bit_times_elapsed_reg[3]_0 [4]),
        .I2(bit_time_cntr[3]),
        .I3(\bit_times_elapsed_reg[3]_0 [3]),
        .O(\bit_times_elapsed[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \bit_times_elapsed[3]_i_7 
       (.I0(bit_time_cntr[1]),
        .I1(\bit_times_elapsed_reg[3]_0 [1]),
        .I2(bit_time_cntr[2]),
        .I3(\bit_times_elapsed_reg[3]_0 [2]),
        .O(\bit_times_elapsed[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \bit_times_elapsed[3]_i_8 
       (.I0(bit_time_cntr[11]),
        .I1(\bit_times_elapsed_reg[3]_0 [11]),
        .I2(bit_time_cntr[9]),
        .I3(\bit_times_elapsed_reg[3]_0 [9]),
        .O(\bit_times_elapsed[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \bit_times_elapsed[3]_i_9 
       (.I0(bit_time_cntr[8]),
        .I1(\bit_times_elapsed_reg[3]_0 [8]),
        .I2(bit_time_cntr[7]),
        .I3(\bit_times_elapsed_reg[3]_0 [7]),
        .O(\bit_times_elapsed[3]_i_9_n_0 ));
  FDRE \bit_times_elapsed_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\bit_times_elapsed[3]_i_1_n_0 ),
        .D(\bit_times_elapsed[0]_i_1_n_0 ),
        .Q(\bit_times_elapsed_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \bit_times_elapsed_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\bit_times_elapsed[3]_i_1_n_0 ),
        .D(\bit_times_elapsed[1]_i_1_n_0 ),
        .Q(\bit_times_elapsed_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \bit_times_elapsed_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\bit_times_elapsed[3]_i_1_n_0 ),
        .D(\bit_times_elapsed[2]_i_1_n_0 ),
        .Q(\bit_times_elapsed_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \bit_times_elapsed_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\bit_times_elapsed[3]_i_1_n_0 ),
        .D(\bit_times_elapsed[3]_i_2_n_0 ),
        .Q(\bit_times_elapsed_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \byte_time_cntr[0]_i_1 
       (.I0(byte_time_cntr[0]),
        .I1(rx_empty_d1_reg_0),
        .I2(rx_empty_d1),
        .O(\byte_time_cntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h080F0F08)) 
    \byte_time_cntr[10]_i_2 
       (.I0(\byte_time_cntr[10]_i_4_n_0 ),
        .I1(byte_time_cntr_en_reg_n_0),
        .I2(int_status[1]),
        .I3(rx_empty_d1),
        .I4(rx_empty_d1_reg_0),
        .O(byte_time_cntr_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h90099090)) 
    \byte_time_cntr[10]_i_3 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(Q),
        .I3(\byte_time_cntr[10]_i_5_n_0 ),
        .I4(byte_time_cntr[9]),
        .O(\byte_time_cntr[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \byte_time_cntr[10]_i_4 
       (.I0(\bit_times_elapsed_reg_n_0_[1] ),
        .I1(\bit_times_elapsed_reg_n_0_[0] ),
        .I2(\bit_times_elapsed_reg_n_0_[2] ),
        .I3(\bit_times_elapsed_reg_n_0_[3] ),
        .O(\byte_time_cntr[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \byte_time_cntr[10]_i_5 
       (.I0(byte_time_cntr[7]),
        .I1(\byte_time_cntr[8]_i_2_n_0 ),
        .I2(byte_time_cntr[6]),
        .I3(byte_time_cntr[8]),
        .O(\byte_time_cntr[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0990)) 
    \byte_time_cntr[1]_i_1 
       (.I0(rx_empty_d1),
        .I1(rx_empty_d1_reg_0),
        .I2(byte_time_cntr[0]),
        .I3(byte_time_cntr[1]),
        .O(\byte_time_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h09909090)) 
    \byte_time_cntr[2]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[2]),
        .I3(byte_time_cntr[1]),
        .I4(byte_time_cntr[0]),
        .O(\byte_time_cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0990909090909090)) 
    \byte_time_cntr[3]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[3]),
        .I3(byte_time_cntr[2]),
        .I4(byte_time_cntr[0]),
        .I5(byte_time_cntr[1]),
        .O(\byte_time_cntr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \byte_time_cntr[4]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[4]),
        .I3(\byte_time_cntr[4]_i_2_n_0 ),
        .O(\byte_time_cntr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \byte_time_cntr[4]_i_2 
       (.I0(byte_time_cntr[2]),
        .I1(byte_time_cntr[0]),
        .I2(byte_time_cntr[1]),
        .I3(byte_time_cntr[3]),
        .O(\byte_time_cntr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \byte_time_cntr[5]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[5]),
        .I3(\byte_time_cntr[5]_i_2_n_0 ),
        .O(\byte_time_cntr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \byte_time_cntr[5]_i_2 
       (.I0(byte_time_cntr[3]),
        .I1(byte_time_cntr[1]),
        .I2(byte_time_cntr[0]),
        .I3(byte_time_cntr[2]),
        .I4(byte_time_cntr[4]),
        .O(\byte_time_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \byte_time_cntr[6]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[6]),
        .I3(\byte_time_cntr[8]_i_2_n_0 ),
        .O(\byte_time_cntr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h90900990)) 
    \byte_time_cntr[7]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[7]),
        .I3(byte_time_cntr[6]),
        .I4(\byte_time_cntr[8]_i_2_n_0 ),
        .O(\byte_time_cntr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9090099090909090)) 
    \byte_time_cntr[8]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[8]),
        .I3(byte_time_cntr[7]),
        .I4(\byte_time_cntr[8]_i_2_n_0 ),
        .I5(byte_time_cntr[6]),
        .O(\byte_time_cntr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \byte_time_cntr[8]_i_2 
       (.I0(byte_time_cntr[4]),
        .I1(byte_time_cntr[2]),
        .I2(byte_time_cntr[0]),
        .I3(byte_time_cntr[1]),
        .I4(byte_time_cntr[3]),
        .I5(byte_time_cntr[5]),
        .O(\byte_time_cntr[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \byte_time_cntr[9]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[9]),
        .I3(\byte_time_cntr[10]_i_5_n_0 ),
        .O(\byte_time_cntr[9]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 byte_time_cntr_en2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_byte_time_cntr_en2_carry_CO_UNCONNECTED[7:6],byte_time_cntr_en2,byte_time_cntr_en2_carry_n_3,byte_time_cntr_en2_carry_n_4,byte_time_cntr_en2_carry_n_5,byte_time_cntr_en2_carry_n_6,byte_time_cntr_en2_carry_n_7}),
        .DI({1'b0,1'b0,byte_time_cntr_en2_carry_i_1_n_0,byte_time_cntr_en2_carry_i_2_n_0,byte_time_cntr_en2_carry_i_3_n_0,byte_time_cntr_en2_carry_i_4_n_0,byte_time_cntr_en2_carry_i_5_n_0,byte_time_cntr_en2_carry_i_6_n_0}),
        .O(NLW_byte_time_cntr_en2_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,S,byte_time_cntr_en2_carry_i_8_n_0,byte_time_cntr_en2_carry_i_9_n_0,byte_time_cntr_en2_carry_i_10_n_0,byte_time_cntr_en2_carry_i_11_n_0,byte_time_cntr_en2_carry_i_12_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    byte_time_cntr_en2_carry_i_1
       (.I0(Q),
        .I1(rx_byte_cnt_coal_intr1_carry_0[10]),
        .O(byte_time_cntr_en2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    byte_time_cntr_en2_carry_i_10
       (.I0(byte_time_cntr[5]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[5]),
        .I2(byte_time_cntr[4]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[4]),
        .O(byte_time_cntr_en2_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    byte_time_cntr_en2_carry_i_11
       (.I0(byte_time_cntr[3]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[3]),
        .I2(byte_time_cntr[2]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[2]),
        .O(byte_time_cntr_en2_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    byte_time_cntr_en2_carry_i_12
       (.I0(byte_time_cntr[1]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[1]),
        .I2(byte_time_cntr[0]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[0]),
        .O(byte_time_cntr_en2_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    byte_time_cntr_en2_carry_i_2
       (.I0(byte_time_cntr[8]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[8]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[9]),
        .I3(byte_time_cntr[9]),
        .O(byte_time_cntr_en2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    byte_time_cntr_en2_carry_i_3
       (.I0(byte_time_cntr[6]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[6]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[7]),
        .I3(byte_time_cntr[7]),
        .O(byte_time_cntr_en2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    byte_time_cntr_en2_carry_i_4
       (.I0(byte_time_cntr[4]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[4]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[5]),
        .I3(byte_time_cntr[5]),
        .O(byte_time_cntr_en2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    byte_time_cntr_en2_carry_i_5
       (.I0(byte_time_cntr[2]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[2]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[3]),
        .I3(byte_time_cntr[3]),
        .O(byte_time_cntr_en2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    byte_time_cntr_en2_carry_i_6
       (.I0(byte_time_cntr[0]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[0]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[1]),
        .I3(byte_time_cntr[1]),
        .O(byte_time_cntr_en2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    byte_time_cntr_en2_carry_i_8
       (.I0(byte_time_cntr[9]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[9]),
        .I2(byte_time_cntr[8]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[8]),
        .O(byte_time_cntr_en2_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    byte_time_cntr_en2_carry_i_9
       (.I0(byte_time_cntr[7]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[7]),
        .I2(byte_time_cntr[6]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[6]),
        .O(byte_time_cntr_en2_carry_i_9_n_0));
  LUT3 #(
    .INIT(8'hA2)) 
    byte_time_cntr_en_i_1
       (.I0(byte_time_cntr_en_i_2_n_0),
        .I1(int_status[1]),
        .I2(rx_time_coal_intr_clr),
        .O(byte_time_cntr_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h323B323200000000)) 
    byte_time_cntr_en_i_2
       (.I0(rx_empty_d1),
        .I1(rx_empty_d1_reg_0),
        .I2(rx_time_coal_intr_clr),
        .I3(byte_time_cntr_en2),
        .I4(byte_time_cntr_en_reg_n_0),
        .I5(s00_axi_aresetn),
        .O(byte_time_cntr_en_i_2_n_0));
  FDRE byte_time_cntr_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(byte_time_cntr_en_i_1_n_0),
        .Q(byte_time_cntr_en_reg_n_0),
        .R(1'b0));
  FDRE \byte_time_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[0]_i_1_n_0 ),
        .Q(byte_time_cntr[0]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[10]_i_3_n_0 ),
        .Q(Q),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[1]_i_1_n_0 ),
        .Q(byte_time_cntr[1]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[2]_i_1_n_0 ),
        .Q(byte_time_cntr[2]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[3]_i_1_n_0 ),
        .Q(byte_time_cntr[3]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[4]_i_1_n_0 ),
        .Q(byte_time_cntr[4]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[5]_i_1_n_0 ),
        .Q(byte_time_cntr[5]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[6]_i_1_n_0 ),
        .Q(byte_time_cntr[6]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[7]_i_1_n_0 ),
        .Q(byte_time_cntr[7]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[8]_i_1_n_0 ),
        .Q(byte_time_cntr[8]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[9]_i_1_n_0 ),
        .Q(byte_time_cntr[9]),
        .R(\byte_time_cntr_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    intr_i_1
       (.I0(intr_i_2_n_0),
        .I1(intr_reg[2]),
        .I2(rx_empty_d1_reg_0),
        .I3(intr_reg[3]),
        .I4(int_status[0]),
        .O(\slv_reg5_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    intr_i_2
       (.I0(int_status[1]),
        .I1(intr_reg[4]),
        .I2(intr_reg[0]),
        .I3(intr_reg_0[0]),
        .I4(intr_reg_0[1]),
        .I5(intr_reg[1]),
        .O(intr_i_2_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 rx_byte_cnt_coal_intr1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_rx_byte_cnt_coal_intr1_carry_CO_UNCONNECTED[7:6],rx_byte_cnt_coal_intr1,rx_byte_cnt_coal_intr1_carry_n_3,rx_byte_cnt_coal_intr1_carry_n_4,rx_byte_cnt_coal_intr1_carry_n_5,rx_byte_cnt_coal_intr1_carry_n_6,rx_byte_cnt_coal_intr1_carry_n_7}),
        .DI({1'b0,1'b0,rx_byte_cnt_coal_intr1_carry_i_1_n_0,rx_byte_cnt_coal_intr1_carry_i_2_n_0,rx_byte_cnt_coal_intr1_carry_i_3_n_0,rx_byte_cnt_coal_intr1_carry_i_4_n_0,rx_byte_cnt_coal_intr1_carry_i_5_n_0,rx_byte_cnt_coal_intr1_carry_i_6_n_0}),
        .O(NLW_rx_byte_cnt_coal_intr1_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,rx_byte_cnt_coal_intr_reg_0,rx_byte_cnt_coal_intr1_carry_i_8_n_0,rx_byte_cnt_coal_intr1_carry_i_9_n_0,rx_byte_cnt_coal_intr1_carry_i_10_n_0,rx_byte_cnt_coal_intr1_carry_i_11_n_0,rx_byte_cnt_coal_intr1_carry_i_12_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    rx_byte_cnt_coal_intr1_carry_i_1
       (.I0(rx_byte_cnt_coal_intr_reg_1[10]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[21]),
        .O(rx_byte_cnt_coal_intr1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_byte_cnt_coal_intr1_carry_i_10
       (.I0(rx_byte_cnt_coal_intr_reg_1[5]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[16]),
        .I2(rx_byte_cnt_coal_intr_reg_1[4]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[15]),
        .O(rx_byte_cnt_coal_intr1_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_byte_cnt_coal_intr1_carry_i_11
       (.I0(rx_byte_cnt_coal_intr_reg_1[3]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[14]),
        .I2(rx_byte_cnt_coal_intr_reg_1[2]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[13]),
        .O(rx_byte_cnt_coal_intr1_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_byte_cnt_coal_intr1_carry_i_12
       (.I0(rx_byte_cnt_coal_intr_reg_1[1]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[12]),
        .I2(rx_byte_cnt_coal_intr_reg_1[0]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[11]),
        .O(rx_byte_cnt_coal_intr1_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rx_byte_cnt_coal_intr1_carry_i_2
       (.I0(rx_byte_cnt_coal_intr_reg_1[8]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[19]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[20]),
        .I3(rx_byte_cnt_coal_intr_reg_1[9]),
        .O(rx_byte_cnt_coal_intr1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rx_byte_cnt_coal_intr1_carry_i_3
       (.I0(rx_byte_cnt_coal_intr_reg_1[6]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[17]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[18]),
        .I3(rx_byte_cnt_coal_intr_reg_1[7]),
        .O(rx_byte_cnt_coal_intr1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rx_byte_cnt_coal_intr1_carry_i_4
       (.I0(rx_byte_cnt_coal_intr_reg_1[4]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[15]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[16]),
        .I3(rx_byte_cnt_coal_intr_reg_1[5]),
        .O(rx_byte_cnt_coal_intr1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rx_byte_cnt_coal_intr1_carry_i_5
       (.I0(rx_byte_cnt_coal_intr_reg_1[2]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[13]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[14]),
        .I3(rx_byte_cnt_coal_intr_reg_1[3]),
        .O(rx_byte_cnt_coal_intr1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rx_byte_cnt_coal_intr1_carry_i_6
       (.I0(rx_byte_cnt_coal_intr_reg_1[0]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[11]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[12]),
        .I3(rx_byte_cnt_coal_intr_reg_1[1]),
        .O(rx_byte_cnt_coal_intr1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_byte_cnt_coal_intr1_carry_i_8
       (.I0(rx_byte_cnt_coal_intr_reg_1[9]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[20]),
        .I2(rx_byte_cnt_coal_intr_reg_1[8]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[19]),
        .O(rx_byte_cnt_coal_intr1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_byte_cnt_coal_intr1_carry_i_9
       (.I0(rx_byte_cnt_coal_intr_reg_1[7]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[18]),
        .I2(rx_byte_cnt_coal_intr_reg_1[6]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[17]),
        .O(rx_byte_cnt_coal_intr1_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF700000000)) 
    rx_byte_cnt_coal_intr_i_1
       (.I0(\count_reg[6] ),
        .I1(\count_reg[10] ),
        .I2(rx_byte_cnt_coal_intr_reg_1[0]),
        .I3(rx_byte_cnt_coal_intr_reg_1[1]),
        .I4(rx_byte_cnt_coal_intr_reg_1[2]),
        .I5(rx_byte_cnt_coal_intr1),
        .O(rx_byte_cnt_coal_intr0));
  LUT4 #(
    .INIT(16'h0001)) 
    rx_byte_cnt_coal_intr_i_2
       (.I0(rx_byte_cnt_coal_intr_reg_1[6]),
        .I1(rx_byte_cnt_coal_intr_reg_1[5]),
        .I2(rx_byte_cnt_coal_intr_reg_1[4]),
        .I3(rx_byte_cnt_coal_intr_reg_1[3]),
        .O(\count_reg[6] ));
  LUT4 #(
    .INIT(16'h0001)) 
    rx_byte_cnt_coal_intr_i_3
       (.I0(rx_byte_cnt_coal_intr_reg_1[10]),
        .I1(rx_byte_cnt_coal_intr_reg_1[9]),
        .I2(rx_byte_cnt_coal_intr_reg_1[8]),
        .I3(rx_byte_cnt_coal_intr_reg_1[7]),
        .O(\count_reg[10] ));
  FDRE rx_byte_cnt_coal_intr_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_byte_cnt_coal_intr0),
        .Q(int_status[0]),
        .R(srst));
  FDSE rx_empty_d1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_empty_d1_reg_0),
        .Q(rx_empty_d1),
        .S(srst));
  LUT5 #(
    .INIT(32'h44404040)) 
    rx_time_coal_intr_i_1
       (.I0(rx_time_coal_intr_clr),
        .I1(s00_axi_aresetn),
        .I2(int_status[1]),
        .I3(byte_time_cntr_en_reg_n_0),
        .I4(byte_time_cntr_en2),
        .O(rx_time_coal_intr_i_1_n_0));
  FDRE rx_time_coal_intr_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_time_coal_intr_i_1_n_0),
        .Q(int_status[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "uart_rx" *) 
module design_1_e_uart_0_0_uart_rx
   (\sample_clk_cntr_reg[8]_0 ,
    din,
    \dv_inhibit_cntr_reg[4]_0 ,
    wr_en,
    rx_samples_reg_s_2_0,
    rxd,
    s00_axi_aclk,
    \en_dly_reg[0]_0 ,
    s00_axi_aresetn,
    \sample_clk_cntr_reg[9]_0 ,
    p_0_in,
    \dv_inhibit_cntr_reg[4]_1 ,
    srst);
  output \sample_clk_cntr_reg[8]_0 ;
  output [7:0]din;
  output \dv_inhibit_cntr_reg[4]_0 ;
  output wr_en;
  input rx_samples_reg_s_2_0;
  input rxd;
  input s00_axi_aclk;
  input [0:0]\en_dly_reg[0]_0 ;
  input s00_axi_aresetn;
  input [9:0]\sample_clk_cntr_reg[9]_0 ;
  input [0:0]p_0_in;
  input \dv_inhibit_cntr_reg[4]_1 ;
  input srst;

  wire [7:0]din;
  wire \dv_inhibit_cntr[0]_i_1_n_0 ;
  wire \dv_inhibit_cntr[1]_i_1_n_0 ;
  wire \dv_inhibit_cntr[2]_i_1_n_0 ;
  wire \dv_inhibit_cntr[3]_i_1_n_0 ;
  wire \dv_inhibit_cntr[3]_i_2_n_0 ;
  wire \dv_inhibit_cntr[4]_i_1_n_0 ;
  wire \dv_inhibit_cntr[5]_i_1_n_0 ;
  wire \dv_inhibit_cntr[5]_i_2_n_0 ;
  wire \dv_inhibit_cntr[5]_i_3_n_0 ;
  wire \dv_inhibit_cntr_reg[4]_0 ;
  wire \dv_inhibit_cntr_reg[4]_1 ;
  wire \dv_inhibit_cntr_reg_n_0_[0] ;
  wire \dv_inhibit_cntr_reg_n_0_[1] ;
  wire \dv_inhibit_cntr_reg_n_0_[2] ;
  wire \dv_inhibit_cntr_reg_n_0_[3] ;
  wire \dv_inhibit_cntr_reg_n_0_[4] ;
  wire \dv_inhibit_cntr_reg_n_0_[5] ;
  wire [1:0]en_dly;
  wire [0:0]\en_dly_reg[0]_0 ;
  wire [0:0]p_0_in;
  wire [1:0]p_1_in;
  wire \rx_samples_reg[13]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[14]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[18]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[19]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[23]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[24]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[28]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[29]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[33]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[34]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[38]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[39]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[3]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[4]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[8]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[9]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire rx_samples_reg_gate__0_n_0;
  wire rx_samples_reg_gate__1_n_0;
  wire rx_samples_reg_gate__2_n_0;
  wire rx_samples_reg_gate__3_n_0;
  wire rx_samples_reg_gate__4_n_0;
  wire rx_samples_reg_gate__5_n_0;
  wire rx_samples_reg_gate__6_n_0;
  wire rx_samples_reg_gate_n_0;
  wire \rx_samples_reg_n_0_[0] ;
  wire \rx_samples_reg_n_0_[43] ;
  wire \rx_samples_reg_n_0_[44] ;
  wire rx_samples_reg_s_0_n_0;
  wire rx_samples_reg_s_1_n_0;
  wire rx_samples_reg_s_2_0;
  wire rx_samples_reg_s_2_n_0;
  wire rx_samples_reg_s_n_0;
  wire rxd;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [9:0]sample_clk_cntr;
  wire \sample_clk_cntr[0]_i_1_n_0 ;
  wire \sample_clk_cntr[1]_i_1_n_0 ;
  wire \sample_clk_cntr[2]_i_1_n_0 ;
  wire \sample_clk_cntr[3]_i_1_n_0 ;
  wire \sample_clk_cntr[3]_i_2_n_0 ;
  wire \sample_clk_cntr[4]_i_1_n_0 ;
  wire \sample_clk_cntr[4]_i_2_n_0 ;
  wire \sample_clk_cntr[5]_i_1_n_0 ;
  wire \sample_clk_cntr[5]_i_2_n_0 ;
  wire \sample_clk_cntr[6]_i_1_n_0 ;
  wire \sample_clk_cntr[7]_i_1_n_0 ;
  wire \sample_clk_cntr[7]_i_2_n_0 ;
  wire \sample_clk_cntr[8]_i_1_n_0 ;
  wire \sample_clk_cntr[8]_i_2_n_0 ;
  wire \sample_clk_cntr[8]_i_3_n_0 ;
  wire \sample_clk_cntr[8]_i_4_n_0 ;
  wire \sample_clk_cntr[8]_i_5_n_0 ;
  wire \sample_clk_cntr[9]_i_2_n_0 ;
  wire \sample_clk_cntr[9]_i_3_n_0 ;
  wire \sample_clk_cntr_reg[8]_0 ;
  wire [9:0]\sample_clk_cntr_reg[9]_0 ;
  wire srst;
  wire wr_en;

  LUT6 #(
    .INIT(64'hFFFFFFFF000C5555)) 
    \dv_inhibit_cntr[0]_i_1 
       (.I0(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I1(\rx_samples_reg_n_0_[0] ),
        .I2(p_1_in[0]),
        .I3(p_1_in[1]),
        .I4(\dv_inhibit_cntr_reg[4]_0 ),
        .I5(p_0_in),
        .O(\dv_inhibit_cntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000008)) 
    \dv_inhibit_cntr[1]_i_1 
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\dv_inhibit_cntr_reg[4]_0 ),
        .I3(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[1] ),
        .O(\dv_inhibit_cntr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBBAAAAB)) 
    \dv_inhibit_cntr[2]_i_1 
       (.I0(\dv_inhibit_cntr[3]_i_2_n_0 ),
        .I1(\dv_inhibit_cntr_reg[4]_0 ),
        .I2(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[2] ),
        .O(\dv_inhibit_cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBAAAAAAAAB)) 
    \dv_inhibit_cntr[3]_i_1 
       (.I0(\dv_inhibit_cntr[3]_i_2_n_0 ),
        .I1(\dv_inhibit_cntr_reg[4]_0 ),
        .I2(\dv_inhibit_cntr_reg_n_0_[2] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I5(\dv_inhibit_cntr_reg_n_0_[3] ),
        .O(\dv_inhibit_cntr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h777777F777777777)) 
    \dv_inhibit_cntr[3]_i_2 
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\dv_inhibit_cntr_reg[4]_0 ),
        .I3(p_1_in[1]),
        .I4(p_1_in[0]),
        .I5(\rx_samples_reg_n_0_[0] ),
        .O(\dv_inhibit_cntr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888882)) 
    \dv_inhibit_cntr[4]_i_1 
       (.I0(\dv_inhibit_cntr_reg[4]_1 ),
        .I1(\dv_inhibit_cntr_reg_n_0_[4] ),
        .I2(\dv_inhibit_cntr_reg_n_0_[3] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I5(\dv_inhibit_cntr_reg_n_0_[2] ),
        .O(\dv_inhibit_cntr[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \dv_inhibit_cntr[5]_i_1 
       (.I0(\sample_clk_cntr_reg[8]_0 ),
        .I1(\dv_inhibit_cntr_reg[4]_0 ),
        .O(\dv_inhibit_cntr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0002FF00)) 
    \dv_inhibit_cntr[5]_i_2 
       (.I0(\rx_samples_reg_n_0_[0] ),
        .I1(p_1_in[0]),
        .I2(p_1_in[1]),
        .I3(\dv_inhibit_cntr_reg_n_0_[5] ),
        .I4(\dv_inhibit_cntr[5]_i_3_n_0 ),
        .I5(p_0_in),
        .O(\dv_inhibit_cntr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \dv_inhibit_cntr[5]_i_3 
       (.I0(\dv_inhibit_cntr_reg_n_0_[3] ),
        .I1(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I2(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[2] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[4] ),
        .O(\dv_inhibit_cntr[5]_i_3_n_0 ));
  FDRE \dv_inhibit_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[5]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[0]_i_1_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dv_inhibit_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[5]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[1]_i_1_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \dv_inhibit_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[5]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[2]_i_1_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dv_inhibit_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[5]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[3]_i_1_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \dv_inhibit_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[5]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[4]_i_1_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \dv_inhibit_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[5]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[5]_i_2_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \en_dly_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\en_dly_reg[0]_0 ),
        .Q(en_dly[0]),
        .R(srst));
  FDRE \en_dly_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(en_dly[0]),
        .Q(en_dly[1]),
        .R(srst));
  LUT4 #(
    .INIT(16'h0200)) 
    fifo_rx_i_1
       (.I0(\rx_samples_reg_n_0_[0] ),
        .I1(p_1_in[0]),
        .I2(p_1_in[1]),
        .I3(\dv_inhibit_cntr_reg[4]_0 ),
        .O(wr_en));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    fifo_rx_i_2
       (.I0(\dv_inhibit_cntr_reg_n_0_[4] ),
        .I1(\dv_inhibit_cntr_reg_n_0_[2] ),
        .I2(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[3] ),
        .I5(\dv_inhibit_cntr_reg_n_0_[5] ),
        .O(\dv_inhibit_cntr_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \rx_samples[44]_i_2 
       (.I0(p_0_in),
        .I1(sample_clk_cntr[8]),
        .I2(sample_clk_cntr[6]),
        .I3(\sample_clk_cntr[7]_i_2_n_0 ),
        .I4(sample_clk_cntr[7]),
        .I5(sample_clk_cntr[9]),
        .O(\sample_clk_cntr_reg[8]_0 ));
  FDSE \rx_samples_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(p_1_in[0]),
        .Q(\rx_samples_reg_n_0_[0] ),
        .S(rx_samples_reg_s_2_0));
  FDSE \rx_samples_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate__4_n_0),
        .Q(din[1]),
        .S(1'b0));
  FDRE \rx_samples_reg[13]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[14]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[13]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[14]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[14]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[2]),
        .Q(\rx_samples_reg[14]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate__3_n_0),
        .Q(din[2]),
        .S(1'b0));
  FDRE \rx_samples_reg[18]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[19]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[18]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[19]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[19]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[3]),
        .Q(\rx_samples_reg[19]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(p_1_in[1]),
        .Q(p_1_in[0]),
        .S(rx_samples_reg_s_2_0));
  FDSE \rx_samples_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate__2_n_0),
        .Q(din[3]),
        .S(1'b0));
  FDRE \rx_samples_reg[23]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[24]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[23]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[24]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[24]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[4]),
        .Q(\rx_samples_reg[24]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate__1_n_0),
        .Q(din[4]),
        .S(1'b0));
  FDRE \rx_samples_reg[28]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[29]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[28]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[29]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[29]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[5]),
        .Q(\rx_samples_reg[29]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate__6_n_0),
        .Q(p_1_in[1]),
        .S(1'b0));
  FDSE \rx_samples_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate__0_n_0),
        .Q(din[5]),
        .S(1'b0));
  FDRE \rx_samples_reg[33]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[34]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[33]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[34]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[34]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[6]),
        .Q(\rx_samples_reg[34]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate_n_0),
        .Q(din[6]),
        .S(1'b0));
  FDRE \rx_samples_reg[38]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[39]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[38]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[39]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[39]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[7]),
        .Q(\rx_samples_reg[39]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDRE \rx_samples_reg[3]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[4]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[3]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  FDSE \rx_samples_reg[42] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg_n_0_[43] ),
        .Q(din[7]),
        .S(rx_samples_reg_s_2_0));
  FDSE \rx_samples_reg[43] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg_n_0_[44] ),
        .Q(\rx_samples_reg_n_0_[43] ),
        .S(rx_samples_reg_s_2_0));
  FDSE \rx_samples_reg[44] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rxd),
        .Q(\rx_samples_reg_n_0_[44] ),
        .S(rx_samples_reg_s_2_0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[4]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[4]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[0]),
        .Q(\rx_samples_reg[4]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate__5_n_0),
        .Q(din[0]),
        .S(1'b0));
  FDRE \rx_samples_reg[8]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[9]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[8]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[9]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[9]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[1]),
        .Q(\rx_samples_reg[9]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[38]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate__0
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[33]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate__1
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[28]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate__2
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[23]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate__3
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[18]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate__4
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[13]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate__5
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[8]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate__6
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[3]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__6_n_0));
  FDSE rx_samples_reg_s
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(1'b0),
        .Q(rx_samples_reg_s_n_0),
        .S(rx_samples_reg_s_2_0));
  FDSE rx_samples_reg_s_0
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_s_n_0),
        .Q(rx_samples_reg_s_0_n_0),
        .S(rx_samples_reg_s_2_0));
  FDSE rx_samples_reg_s_1
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_s_0_n_0),
        .Q(rx_samples_reg_s_1_n_0),
        .S(rx_samples_reg_s_2_0));
  FDSE rx_samples_reg_s_2
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_s_1_n_0),
        .Q(rx_samples_reg_s_2_n_0),
        .S(rx_samples_reg_s_2_0));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \sample_clk_cntr[0]_i_1 
       (.I0(\sample_clk_cntr[8]_i_2_n_0 ),
        .I1(\sample_clk_cntr_reg[9]_0 [0]),
        .I2(sample_clk_cntr[0]),
        .I3(\sample_clk_cntr_reg[8]_0 ),
        .I4(en_dly[1]),
        .I5(en_dly[0]),
        .O(\sample_clk_cntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF22222F2)) 
    \sample_clk_cntr[1]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [1]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(sample_clk_cntr[0]),
        .I4(sample_clk_cntr[1]),
        .O(\sample_clk_cntr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2F222222222F2)) 
    \sample_clk_cntr[2]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [2]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(sample_clk_cntr[1]),
        .I4(sample_clk_cntr[0]),
        .I5(sample_clk_cntr[2]),
        .O(\sample_clk_cntr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF22222F2)) 
    \sample_clk_cntr[3]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [3]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(\sample_clk_cntr[3]_i_2_n_0 ),
        .I4(sample_clk_cntr[3]),
        .O(\sample_clk_cntr[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sample_clk_cntr[3]_i_2 
       (.I0(sample_clk_cntr[2]),
        .I1(sample_clk_cntr[1]),
        .I2(sample_clk_cntr[0]),
        .O(\sample_clk_cntr[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF22222F2)) 
    \sample_clk_cntr[4]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [4]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(\sample_clk_cntr[4]_i_2_n_0 ),
        .I4(sample_clk_cntr[4]),
        .O(\sample_clk_cntr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sample_clk_cntr[4]_i_2 
       (.I0(sample_clk_cntr[3]),
        .I1(sample_clk_cntr[0]),
        .I2(sample_clk_cntr[1]),
        .I3(sample_clk_cntr[2]),
        .O(\sample_clk_cntr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF22222F2)) 
    \sample_clk_cntr[5]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [5]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(\sample_clk_cntr[5]_i_2_n_0 ),
        .I4(sample_clk_cntr[5]),
        .O(\sample_clk_cntr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sample_clk_cntr[5]_i_2 
       (.I0(sample_clk_cntr[4]),
        .I1(sample_clk_cntr[2]),
        .I2(sample_clk_cntr[1]),
        .I3(sample_clk_cntr[0]),
        .I4(sample_clk_cntr[3]),
        .O(\sample_clk_cntr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF22222F2)) 
    \sample_clk_cntr[6]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [6]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(\sample_clk_cntr[7]_i_2_n_0 ),
        .I4(sample_clk_cntr[6]),
        .O(\sample_clk_cntr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2F222222222F2)) 
    \sample_clk_cntr[7]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [7]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(\sample_clk_cntr[7]_i_2_n_0 ),
        .I4(sample_clk_cntr[6]),
        .I5(sample_clk_cntr[7]),
        .O(\sample_clk_cntr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sample_clk_cntr[7]_i_2 
       (.I0(sample_clk_cntr[5]),
        .I1(sample_clk_cntr[3]),
        .I2(sample_clk_cntr[0]),
        .I3(sample_clk_cntr[1]),
        .I4(sample_clk_cntr[2]),
        .I5(sample_clk_cntr[4]),
        .O(\sample_clk_cntr[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF22222F2)) 
    \sample_clk_cntr[8]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [8]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(\sample_clk_cntr[8]_i_4_n_0 ),
        .I4(sample_clk_cntr[8]),
        .O(\sample_clk_cntr[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hD0FFFFFF)) 
    \sample_clk_cntr[8]_i_2 
       (.I0(en_dly[0]),
        .I1(en_dly[1]),
        .I2(\sample_clk_cntr[8]_i_5_n_0 ),
        .I3(\en_dly_reg[0]_0 ),
        .I4(s00_axi_aresetn),
        .O(\sample_clk_cntr[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \sample_clk_cntr[8]_i_3 
       (.I0(\sample_clk_cntr_reg[8]_0 ),
        .I1(en_dly[1]),
        .I2(en_dly[0]),
        .O(\sample_clk_cntr[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sample_clk_cntr[8]_i_4 
       (.I0(sample_clk_cntr[7]),
        .I1(\sample_clk_cntr[7]_i_2_n_0 ),
        .I2(sample_clk_cntr[6]),
        .O(\sample_clk_cntr[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sample_clk_cntr[8]_i_5 
       (.I0(sample_clk_cntr[9]),
        .I1(sample_clk_cntr[7]),
        .I2(\sample_clk_cntr[7]_i_2_n_0 ),
        .I3(sample_clk_cntr[6]),
        .I4(sample_clk_cntr[8]),
        .O(\sample_clk_cntr[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC2AAC2C2)) 
    \sample_clk_cntr[9]_i_2 
       (.I0(\sample_clk_cntr_reg[9]_0 [9]),
        .I1(sample_clk_cntr[9]),
        .I2(\sample_clk_cntr[9]_i_3_n_0 ),
        .I3(en_dly[1]),
        .I4(en_dly[0]),
        .O(\sample_clk_cntr[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sample_clk_cntr[9]_i_3 
       (.I0(sample_clk_cntr[8]),
        .I1(sample_clk_cntr[6]),
        .I2(\sample_clk_cntr[7]_i_2_n_0 ),
        .I3(sample_clk_cntr[7]),
        .O(\sample_clk_cntr[9]_i_3_n_0 ));
  FDSE \sample_clk_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[0]_i_1_n_0 ),
        .Q(sample_clk_cntr[0]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[1]_i_1_n_0 ),
        .Q(sample_clk_cntr[1]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[2]_i_1_n_0 ),
        .Q(sample_clk_cntr[2]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[3]_i_1_n_0 ),
        .Q(sample_clk_cntr[3]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[4]_i_1_n_0 ),
        .Q(sample_clk_cntr[4]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[5]_i_1_n_0 ),
        .Q(sample_clk_cntr[5]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[6]_i_1_n_0 ),
        .Q(sample_clk_cntr[6]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[7]_i_1_n_0 ),
        .Q(sample_clk_cntr[7]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[8]_i_1_n_0 ),
        .Q(sample_clk_cntr[8]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[9]_i_2_n_0 ),
        .Q(sample_clk_cntr[9]),
        .S(p_0_in));
endmodule

(* ORIG_REF_NAME = "uart_top" *) 
module design_1_e_uart_0_0_uart_top
   (int_status,
    data_count,
    dout,
    \count_reg[10] ,
    \sample_clk_cntr_reg[8] ,
    rx_empty,
    txd,
    \dv_inhibit_cntr_reg[4] ,
    Q,
    \slv_reg5_reg[2] ,
    s00_axi_aclk,
    srst,
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    wr_en,
    rd_en,
    rx_samples_reg_s_2,
    rxd,
    S,
    rx_byte_cnt_coal_intr_reg,
    \en_dly_reg[0] ,
    s00_axi_aresetn,
    rx_time_coal_intr_clr,
    \clk_cntr_reg[11] ,
    \tx_bit_cntr_reg[2] ,
    \sample_clk_cntr_reg[9] ,
    p_0_in,
    \dv_inhibit_cntr_reg[4]_0 ,
    rx_byte_cnt_coal_intr1_carry,
    intr_reg,
    SR,
    \byte_time_cntr_reg[0] );
  output [4:0]int_status;
  output [10:0]data_count;
  output [7:0]dout;
  output [10:0]\count_reg[10] ;
  output \sample_clk_cntr_reg[8] ;
  output rx_empty;
  output txd;
  output \dv_inhibit_cntr_reg[4] ;
  output [0:0]Q;
  output \slv_reg5_reg[2] ;
  input s00_axi_aclk;
  input srst;
  input [7:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input wr_en;
  input rd_en;
  input rx_samples_reg_s_2;
  input rxd;
  input [0:0]S;
  input [0:0]rx_byte_cnt_coal_intr_reg;
  input [1:0]\en_dly_reg[0] ;
  input s00_axi_aresetn;
  input rx_time_coal_intr_clr;
  input [12:0]\clk_cntr_reg[11] ;
  input \tx_bit_cntr_reg[2] ;
  input [9:0]\sample_clk_cntr_reg[9] ;
  input [0:0]p_0_in;
  input \dv_inhibit_cntr_reg[4]_0 ;
  input [21:0]rx_byte_cnt_coal_intr1_carry;
  input [4:0]intr_reg;
  input [0:0]SR;
  input [0:0]\byte_time_cntr_reg[0] ;

  wire [7:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [0:0]\byte_time_cntr_reg[0] ;
  wire [12:0]\clk_cntr_reg[11] ;
  wire [10:0]\count_reg[10] ;
  wire [10:0]data_count;
  wire [7:0]dout;
  wire \dv_inhibit_cntr_reg[4] ;
  wire \dv_inhibit_cntr_reg[4]_0 ;
  wire [1:0]\en_dly_reg[0] ;
  wire int_holdoff_n_4;
  wire int_holdoff_n_5;
  wire [4:0]int_status;
  wire [4:0]intr_reg;
  wire [0:0]p_0_in;
  wire rd_en;
  wire [7:0]rx_byte;
  wire [21:0]rx_byte_cnt_coal_intr1_carry;
  wire [0:0]rx_byte_cnt_coal_intr_reg;
  wire rx_byte_dv;
  wire rx_empty;
  wire rx_empty_i_1_n_0;
  wire rx_samples_reg_s_2;
  wire rx_time_coal_intr_clr;
  wire rxd;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \sample_clk_cntr_reg[8] ;
  wire [9:0]\sample_clk_cntr_reg[9] ;
  wire \slv_reg5_reg[2] ;
  wire srst;
  wire \tx_bit_cntr_reg[2] ;
  wire [7:0]tx_byte;
  wire tx_byte_dv;
  wire tx_byte_rd;
  wire txd;
  wire wr_en;
  wire NLW_fifo_rx_almost_empty_UNCONNECTED;
  wire NLW_fifo_rx_empty_UNCONNECTED;
  wire NLW_fifo_rx_full_UNCONNECTED;
  wire NLW_fifo_rx_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_rx_valid_UNCONNECTED;
  wire NLW_fifo_rx_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_tx_full_UNCONNECTED;
  wire NLW_fifo_tx_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_tx_wr_rst_busy_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_14,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
  design_1_e_uart_0_0_fifo_generator_0__xdcDup__1 fifo_rx
       (.almost_empty(NLW_fifo_rx_almost_empty_UNCONNECTED),
        .clk(s00_axi_aclk),
        .data_count(\count_reg[10] ),
        .din(rx_byte),
        .dout(dout),
        .empty(NLW_fifo_rx_empty_UNCONNECTED),
        .full(NLW_fifo_rx_full_UNCONNECTED),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_fifo_rx_rd_rst_busy_UNCONNECTED),
        .srst(srst),
        .valid(NLW_fifo_rx_valid_UNCONNECTED),
        .wr_en(rx_byte_dv),
        .wr_rst_busy(NLW_fifo_rx_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_14,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
  design_1_e_uart_0_0_fifo_generator_0 fifo_tx
       (.almost_empty(int_status[1]),
        .clk(s00_axi_aclk),
        .data_count(data_count),
        .din(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .dout(tx_byte),
        .empty(int_status[0]),
        .full(NLW_fifo_tx_full_UNCONNECTED),
        .rd_en(tx_byte_rd),
        .rd_rst_busy(NLW_fifo_tx_rd_rst_busy_UNCONNECTED),
        .srst(srst),
        .valid(tx_byte_dv),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_fifo_tx_wr_rst_busy_UNCONNECTED));
  design_1_e_uart_0_0_int_holdoff int_holdoff
       (.Q(Q),
        .S(S),
        .\bit_times_elapsed_reg[3]_0 (\clk_cntr_reg[11] ),
        .\byte_time_cntr_reg[0]_0 (\byte_time_cntr_reg[0] ),
        .\count_reg[10] (int_holdoff_n_5),
        .\count_reg[6] (int_holdoff_n_4),
        .int_status(int_status[4:3]),
        .intr_reg(intr_reg),
        .intr_reg_0(int_status[1:0]),
        .rx_byte_cnt_coal_intr1_carry_0(rx_byte_cnt_coal_intr1_carry),
        .rx_byte_cnt_coal_intr_reg_0(rx_byte_cnt_coal_intr_reg),
        .rx_byte_cnt_coal_intr_reg_1(\count_reg[10] ),
        .rx_empty_d1_reg_0(rx_empty),
        .rx_time_coal_intr_clr(rx_time_coal_intr_clr),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\slv_reg5_reg[2] (\slv_reg5_reg[2] ),
        .srst(srst));
  LUT1 #(
    .INIT(2'h1)) 
    \int_status[2]_INST_0 
       (.I0(rx_empty),
        .O(int_status[2]));
  LUT5 #(
    .INIT(32'h00000008)) 
    rx_empty_i_1
       (.I0(int_holdoff_n_4),
        .I1(int_holdoff_n_5),
        .I2(\count_reg[10] [0]),
        .I3(\count_reg[10] [1]),
        .I4(\count_reg[10] [2]),
        .O(rx_empty_i_1_n_0));
  FDSE rx_empty_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_empty_i_1_n_0),
        .Q(rx_empty),
        .S(srst));
  design_1_e_uart_0_0_uart_rx uart_rx
       (.din(rx_byte),
        .\dv_inhibit_cntr_reg[4]_0 (\dv_inhibit_cntr_reg[4] ),
        .\dv_inhibit_cntr_reg[4]_1 (\dv_inhibit_cntr_reg[4]_0 ),
        .\en_dly_reg[0]_0 (\en_dly_reg[0] [1]),
        .p_0_in(p_0_in),
        .rx_samples_reg_s_2_0(rx_samples_reg_s_2),
        .rxd(rxd),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\sample_clk_cntr_reg[8]_0 (\sample_clk_cntr_reg[8] ),
        .\sample_clk_cntr_reg[9]_0 (\sample_clk_cntr_reg[9] ),
        .srst(srst),
        .wr_en(rx_byte_dv));
  design_1_e_uart_0_0_uart_tx uart_tx
       (.SR(SR),
        .\clk_cntr_reg[11]_0 (\clk_cntr_reg[11] ),
        .dout(tx_byte),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\tx_bit_cntr_reg[2]_0 (\tx_bit_cntr_reg[2] ),
        .tx_byte_rd(tx_byte_rd),
        .tx_byte_rd_reg_0(\en_dly_reg[0] [0]),
        .txd(txd),
        .valid(tx_byte_dv));
endmodule

(* ORIG_REF_NAME = "uart_tx" *) 
module design_1_e_uart_0_0_uart_tx
   (tx_byte_rd,
    txd,
    s00_axi_aclk,
    \clk_cntr_reg[11]_0 ,
    tx_byte_rd_reg_0,
    s00_axi_aresetn,
    \tx_bit_cntr_reg[2]_0 ,
    valid,
    dout,
    SR);
  output tx_byte_rd;
  output txd;
  input s00_axi_aclk;
  input [12:0]\clk_cntr_reg[11]_0 ;
  input [0:0]tx_byte_rd_reg_0;
  input s00_axi_aresetn;
  input \tx_bit_cntr_reg[2]_0 ;
  input valid;
  input [7:0]dout;
  input [0:0]SR;

  wire \FSM_sequential_current_state[2]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_4_n_0 ;
  wire \FSM_sequential_current_state[2]_i_5_n_0 ;
  wire \FSM_sequential_current_state[2]_i_7_n_0 ;
  wire \FSM_sequential_current_state[2]_i_8_n_0 ;
  wire [0:0]SR;
  wire [12:0]clk_cntr;
  wire \clk_cntr[0]_i_2_n_0 ;
  wire \clk_cntr[10]_i_2_n_0 ;
  wire \clk_cntr[10]_i_3_n_0 ;
  wire \clk_cntr[11]_i_2_n_0 ;
  wire \clk_cntr[11]_i_3_n_0 ;
  wire \clk_cntr[12]_i_2_n_0 ;
  wire \clk_cntr[12]_i_3_n_0 ;
  wire \clk_cntr[12]_i_4_n_0 ;
  wire \clk_cntr[12]_i_5_n_0 ;
  wire \clk_cntr[1]_i_2_n_0 ;
  wire \clk_cntr[2]_i_2_n_0 ;
  wire \clk_cntr[3]_i_2_n_0 ;
  wire \clk_cntr[4]_i_2_n_0 ;
  wire \clk_cntr[4]_i_3_n_0 ;
  wire \clk_cntr[5]_i_2_n_0 ;
  wire \clk_cntr[5]_i_3_n_0 ;
  wire \clk_cntr[6]_i_2_n_0 ;
  wire \clk_cntr[6]_i_3_n_0 ;
  wire \clk_cntr[7]_i_2_n_0 ;
  wire \clk_cntr[8]_i_2_n_0 ;
  wire \clk_cntr[9]_i_2_n_0 ;
  wire [12:0]clk_cntr_0;
  wire [12:0]\clk_cntr_reg[11]_0 ;
  wire [2:0]current_state;
  wire [7:0]dout;
  wire [2:0]next_state;
  wire [7:0]p_1_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \tx_bit_cntr[0]_i_1_n_0 ;
  wire \tx_bit_cntr[1]_i_1_n_0 ;
  wire \tx_bit_cntr[2]_i_1_n_0 ;
  wire \tx_bit_cntr[2]_i_2_n_0 ;
  wire \tx_bit_cntr[2]_i_3_n_0 ;
  wire \tx_bit_cntr_reg[2]_0 ;
  wire \tx_bit_cntr_reg_n_0_[0] ;
  wire \tx_bit_cntr_reg_n_0_[1] ;
  wire \tx_bit_cntr_reg_n_0_[2] ;
  wire [7:1]tx_byte_q;
  wire \tx_byte_q[7]_i_1_n_0 ;
  wire \tx_byte_q_reg_n_0_[0] ;
  wire tx_byte_rd;
  wire tx_byte_rd_d;
  wire tx_byte_rd_i_1_n_0;
  wire [0:0]tx_byte_rd_reg_0;
  wire txd;
  wire txd_i_1_n_0;
  wire valid;

  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFCDFC0000)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(current_state[1]),
        .I1(\FSM_sequential_current_state[2]_i_4_n_0 ),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .I5(tx_byte_rd_d),
        .O(\FSM_sequential_current_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_current_state[2]_i_3 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(next_state[2]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_sequential_current_state[2]_i_4 
       (.I0(\tx_bit_cntr_reg_n_0_[2] ),
        .I1(\tx_bit_cntr_reg_n_0_[0] ),
        .I2(\tx_bit_cntr_reg_n_0_[1] ),
        .I3(current_state[0]),
        .I4(current_state[2]),
        .I5(current_state[1]),
        .O(\FSM_sequential_current_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_sequential_current_state[2]_i_5 
       (.I0(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I1(clk_cntr[11]),
        .I2(clk_cntr[12]),
        .I3(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .O(\FSM_sequential_current_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \FSM_sequential_current_state[2]_i_6 
       (.I0(valid),
        .I1(tx_byte_rd_reg_0),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .O(tx_byte_rd_d));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_current_state[2]_i_7 
       (.I0(clk_cntr[10]),
        .I1(clk_cntr[9]),
        .I2(clk_cntr[8]),
        .I3(clk_cntr[7]),
        .O(\FSM_sequential_current_state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_current_state[2]_i_8 
       (.I0(clk_cntr[6]),
        .I1(\clk_cntr[6]_i_3_n_0 ),
        .O(\FSM_sequential_current_state[2]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000,START:001,TX_B:010,STOP:011,DONE:100," *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .D(next_state[0]),
        .Q(current_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:000,START:001,TX_B:010,STOP:011,DONE:100," *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:000,START:001,TX_B:010,STOP:011,DONE:100," *) 
  FDRE \FSM_sequential_current_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'hF2F22222FFF22222)) 
    \clk_cntr[0]_i_1 
       (.I0(\clk_cntr_reg[11]_0 [0]),
        .I1(\clk_cntr[12]_i_2_n_0 ),
        .I2(\clk_cntr[0]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [1]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h0000FFFD)) 
    \clk_cntr[0]_i_2 
       (.I0(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I1(clk_cntr[12]),
        .I2(clk_cntr[11]),
        .I3(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I4(clk_cntr[0]),
        .O(\clk_cntr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2A22FFFF2A222A22)) 
    \clk_cntr[10]_i_1 
       (.I0(\clk_cntr[12]_i_4_n_0 ),
        .I1(\clk_cntr[10]_i_2_n_0 ),
        .I2(\clk_cntr[11]_i_3_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [11]),
        .I4(\clk_cntr[12]_i_2_n_0 ),
        .I5(\clk_cntr_reg[11]_0 [10]),
        .O(clk_cntr_0[10]));
  LUT6 #(
    .INIT(64'h000000AAFFFFFF57)) 
    \clk_cntr[10]_i_2 
       (.I0(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I1(clk_cntr[12]),
        .I2(clk_cntr[11]),
        .I3(\clk_cntr[10]_i_3_n_0 ),
        .I4(clk_cntr[9]),
        .I5(clk_cntr[10]),
        .O(\clk_cntr[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \clk_cntr[10]_i_3 
       (.I0(clk_cntr[7]),
        .I1(clk_cntr[8]),
        .O(\clk_cntr[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[11]_i_1 
       (.I0(\clk_cntr[11]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [11]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [12]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0FA7)) 
    \clk_cntr[11]_i_2 
       (.I0(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I1(clk_cntr[12]),
        .I2(clk_cntr[11]),
        .I3(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \clk_cntr[11]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I4(\clk_cntr[12]_i_5_n_0 ),
        .O(\clk_cntr[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF4FF444444444444)) 
    \clk_cntr[12]_i_1 
       (.I0(\clk_cntr[12]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [12]),
        .I2(clk_cntr[11]),
        .I3(\clk_cntr[12]_i_3_n_0 ),
        .I4(clk_cntr[12]),
        .I5(\clk_cntr[12]_i_4_n_0 ),
        .O(clk_cntr_0[12]));
  LUT6 #(
    .INIT(64'h1555FFFFFFFFFFFF)) 
    \clk_cntr[12]_i_2 
       (.I0(tx_byte_rd_d),
        .I1(next_state[1]),
        .I2(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I3(\clk_cntr[12]_i_5_n_0 ),
        .I4(tx_byte_rd_reg_0),
        .I5(s00_axi_aresetn),
        .O(\clk_cntr[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \clk_cntr[12]_i_3 
       (.I0(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I1(clk_cntr[7]),
        .I2(clk_cntr[8]),
        .I3(clk_cntr[9]),
        .I4(clk_cntr[10]),
        .O(\clk_cntr[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008080808080808)) 
    \clk_cntr[12]_i_4 
       (.I0(tx_byte_rd_reg_0),
        .I1(s00_axi_aresetn),
        .I2(tx_byte_rd_d),
        .I3(next_state[1]),
        .I4(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I5(\clk_cntr[12]_i_5_n_0 ),
        .O(\clk_cntr[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \clk_cntr[12]_i_5 
       (.I0(clk_cntr[12]),
        .I1(clk_cntr[11]),
        .I2(clk_cntr[7]),
        .I3(clk_cntr[8]),
        .I4(clk_cntr[9]),
        .I5(clk_cntr[10]),
        .O(\clk_cntr[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[1]_i_1 
       (.I0(\clk_cntr[1]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [1]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [2]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[1]));
  LUT6 #(
    .INIT(64'h66666666666666F6)) 
    \clk_cntr[1]_i_2 
       (.I0(clk_cntr[0]),
        .I1(clk_cntr[1]),
        .I2(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I3(clk_cntr[12]),
        .I4(clk_cntr[11]),
        .I5(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[2]_i_1 
       (.I0(\clk_cntr[2]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [2]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [3]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[2]));
  LUT5 #(
    .INIT(32'hFF1E1E1E)) 
    \clk_cntr[2]_i_2 
       (.I0(clk_cntr[1]),
        .I1(clk_cntr[0]),
        .I2(clk_cntr[2]),
        .I3(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I4(\clk_cntr[12]_i_5_n_0 ),
        .O(\clk_cntr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[3]_i_1 
       (.I0(\clk_cntr[3]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [3]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [4]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[3]));
  LUT6 #(
    .INIT(64'hFFFF01FE01FE01FE)) 
    \clk_cntr[3]_i_2 
       (.I0(clk_cntr[2]),
        .I1(clk_cntr[0]),
        .I2(clk_cntr[1]),
        .I3(clk_cntr[3]),
        .I4(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I5(\clk_cntr[12]_i_5_n_0 ),
        .O(\clk_cntr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[4]_i_1 
       (.I0(\clk_cntr[4]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [4]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [5]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[4]));
  LUT6 #(
    .INIT(64'h66666666666666F6)) 
    \clk_cntr[4]_i_2 
       (.I0(\clk_cntr[4]_i_3_n_0 ),
        .I1(clk_cntr[4]),
        .I2(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I3(clk_cntr[12]),
        .I4(clk_cntr[11]),
        .I5(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_cntr[4]_i_3 
       (.I0(clk_cntr[3]),
        .I1(clk_cntr[1]),
        .I2(clk_cntr[0]),
        .I3(clk_cntr[2]),
        .O(\clk_cntr[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[5]_i_1 
       (.I0(\clk_cntr[5]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [5]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [6]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[5]));
  LUT6 #(
    .INIT(64'h3C3C3C3C3C3C3C3D)) 
    \clk_cntr[5]_i_2 
       (.I0(clk_cntr[6]),
        .I1(\clk_cntr[5]_i_3_n_0 ),
        .I2(clk_cntr[5]),
        .I3(clk_cntr[12]),
        .I4(clk_cntr[11]),
        .I5(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_cntr[5]_i_3 
       (.I0(clk_cntr[4]),
        .I1(clk_cntr[2]),
        .I2(clk_cntr[0]),
        .I3(clk_cntr[1]),
        .I4(clk_cntr[3]),
        .O(\clk_cntr[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF22222F222222)) 
    \clk_cntr[6]_i_1 
       (.I0(\clk_cntr_reg[11]_0 [6]),
        .I1(\clk_cntr[12]_i_2_n_0 ),
        .I2(\clk_cntr[11]_i_3_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [7]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[6]_i_2_n_0 ),
        .O(clk_cntr_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h99999998)) 
    \clk_cntr[6]_i_2 
       (.I0(clk_cntr[6]),
        .I1(\clk_cntr[6]_i_3_n_0 ),
        .I2(clk_cntr[12]),
        .I3(clk_cntr[11]),
        .I4(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_cntr[6]_i_3 
       (.I0(clk_cntr[5]),
        .I1(clk_cntr[3]),
        .I2(clk_cntr[1]),
        .I3(clk_cntr[0]),
        .I4(clk_cntr[2]),
        .I5(clk_cntr[4]),
        .O(\clk_cntr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[7]_i_1 
       (.I0(\clk_cntr[7]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [7]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [8]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h9999999D)) 
    \clk_cntr[7]_i_2 
       (.I0(clk_cntr[7]),
        .I1(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I2(clk_cntr[12]),
        .I3(clk_cntr[11]),
        .I4(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[8]_i_1 
       (.I0(\clk_cntr[8]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [8]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [9]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[8]));
  LUT6 #(
    .INIT(64'h63636363636363F3)) 
    \clk_cntr[8]_i_2 
       (.I0(clk_cntr[7]),
        .I1(clk_cntr[8]),
        .I2(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I3(clk_cntr[12]),
        .I4(clk_cntr[11]),
        .I5(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[9]_i_1 
       (.I0(\clk_cntr[9]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [9]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [10]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[9]));
  LUT6 #(
    .INIT(64'h00AAFF5500AAFF57)) 
    \clk_cntr[9]_i_2 
       (.I0(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I1(clk_cntr[12]),
        .I2(clk_cntr[11]),
        .I3(\clk_cntr[10]_i_3_n_0 ),
        .I4(clk_cntr[9]),
        .I5(clk_cntr[10]),
        .O(\clk_cntr[9]_i_2_n_0 ));
  FDRE \clk_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[0]),
        .Q(clk_cntr[0]),
        .R(1'b0));
  FDRE \clk_cntr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[10]),
        .Q(clk_cntr[10]),
        .R(1'b0));
  FDRE \clk_cntr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[11]),
        .Q(clk_cntr[11]),
        .R(1'b0));
  FDRE \clk_cntr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[12]),
        .Q(clk_cntr[12]),
        .R(1'b0));
  FDRE \clk_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[1]),
        .Q(clk_cntr[1]),
        .R(1'b0));
  FDRE \clk_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[2]),
        .Q(clk_cntr[2]),
        .R(1'b0));
  FDRE \clk_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[3]),
        .Q(clk_cntr[3]),
        .R(1'b0));
  FDRE \clk_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[4]),
        .Q(clk_cntr[4]),
        .R(1'b0));
  FDRE \clk_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[5]),
        .Q(clk_cntr[5]),
        .R(1'b0));
  FDRE \clk_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[6]),
        .Q(clk_cntr[6]),
        .R(1'b0));
  FDRE \clk_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[7]),
        .Q(clk_cntr[7]),
        .R(1'b0));
  FDRE \clk_cntr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[8]),
        .Q(clk_cntr[8]),
        .R(1'b0));
  FDRE \clk_cntr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[9]),
        .Q(clk_cntr[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h555D555500000000)) 
    \tx_bit_cntr[0]_i_1 
       (.I0(\tx_bit_cntr_reg_n_0_[0] ),
        .I1(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(\tx_bit_cntr_reg[2]_0 ),
        .O(\tx_bit_cntr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h99F9000000000000)) 
    \tx_bit_cntr[1]_i_1 
       (.I0(\tx_bit_cntr_reg_n_0_[1] ),
        .I1(\tx_bit_cntr_reg_n_0_[0] ),
        .I2(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .I3(\tx_bit_cntr[2]_i_3_n_0 ),
        .I4(s00_axi_aresetn),
        .I5(tx_byte_rd_reg_0),
        .O(\tx_bit_cntr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h777F77F777777777)) 
    \tx_bit_cntr[2]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(tx_byte_rd_reg_0),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .I5(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .O(\tx_bit_cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE1E1FFE100000000)) 
    \tx_bit_cntr[2]_i_2 
       (.I0(\tx_bit_cntr_reg_n_0_[0] ),
        .I1(\tx_bit_cntr_reg_n_0_[1] ),
        .I2(\tx_bit_cntr_reg_n_0_[2] ),
        .I3(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .I4(\tx_bit_cntr[2]_i_3_n_0 ),
        .I5(\tx_bit_cntr_reg[2]_0 ),
        .O(\tx_bit_cntr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \tx_bit_cntr[2]_i_3 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(\tx_bit_cntr[2]_i_3_n_0 ));
  FDRE \tx_bit_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\tx_bit_cntr[2]_i_1_n_0 ),
        .D(\tx_bit_cntr[0]_i_1_n_0 ),
        .Q(\tx_bit_cntr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_bit_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\tx_bit_cntr[2]_i_1_n_0 ),
        .D(\tx_bit_cntr[1]_i_1_n_0 ),
        .Q(\tx_bit_cntr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_bit_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\tx_bit_cntr[2]_i_1_n_0 ),
        .D(\tx_bit_cntr[2]_i_2_n_0 ),
        .Q(\tx_bit_cntr_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[0]_i_1 
       (.I0(dout[0]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[1]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[1]_i_1 
       (.I0(dout[1]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[2]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[2]_i_1 
       (.I0(dout[2]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[3]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[3]_i_1 
       (.I0(dout[3]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[4]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[4]_i_1 
       (.I0(dout[4]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[5]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[5]_i_1 
       (.I0(dout[5]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[6]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[6]_i_1 
       (.I0(dout[6]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[7]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFF020000000000)) 
    \tx_byte_q[7]_i_1 
       (.I0(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(tx_byte_rd),
        .I5(\tx_bit_cntr_reg[2]_0 ),
        .O(\tx_byte_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_byte_q[7]_i_2 
       (.I0(tx_byte_rd),
        .I1(dout[7]),
        .O(p_1_in[7]));
  FDRE \tx_byte_q_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\tx_byte_q_reg_n_0_[0] ),
        .R(SR));
  FDRE \tx_byte_q_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(tx_byte_q[1]),
        .R(SR));
  FDRE \tx_byte_q_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(tx_byte_q[2]),
        .R(SR));
  FDRE \tx_byte_q_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(tx_byte_q[3]),
        .R(SR));
  FDRE \tx_byte_q_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(tx_byte_q[4]),
        .R(SR));
  FDRE \tx_byte_q_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(tx_byte_q[5]),
        .R(SR));
  FDRE \tx_byte_q_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(tx_byte_q[6]),
        .R(SR));
  FDRE \tx_byte_q_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(tx_byte_q[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    tx_byte_rd_i_1
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(valid),
        .I4(s00_axi_aresetn),
        .I5(tx_byte_rd_reg_0),
        .O(tx_byte_rd_i_1_n_0));
  FDRE tx_byte_rd_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(tx_byte_rd_i_1_n_0),
        .Q(tx_byte_rd),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFECFFFFF3200FFFF)) 
    txd_i_1
       (.I0(\tx_byte_q_reg_n_0_[0] ),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(\tx_bit_cntr_reg[2]_0 ),
        .I5(txd),
        .O(txd_i_1_n_0));
  FDRE txd_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(txd_i_1_n_0),
        .Q(txd),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 249280)
`pragma protect data_block
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
B8bQ8Oz1T7dgvFwUrbCTiJVNBA==
`pragma protect end_protected
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
