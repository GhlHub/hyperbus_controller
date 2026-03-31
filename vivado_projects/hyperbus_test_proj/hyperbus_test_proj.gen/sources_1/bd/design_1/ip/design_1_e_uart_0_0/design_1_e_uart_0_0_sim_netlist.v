// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Mar 31 04:05:07 2026
// Host        : YouBing running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /raid/work/hyperbus_controller_freertos_port/vivado_projects/hyperbus_test_proj/hyperbus_test_proj.gen/sources_1/bd/design_1/ip/design_1_e_uart_0_0/design_1_e_uart_0_0_sim_netlist.v
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
  wire [5:3]bit_time_cntr;
  wire [10:0]byte_time_cntr;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_1;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_110;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_111;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_112;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_113;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_81;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_82;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_84;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_85;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_86;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_87;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_88;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_89;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_90;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_91;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_92;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_93;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_94;
  wire [4:0]int_status;
  wire intr;
  wire [9:0]over_sample_clk_cnt;
  wire [1:0]p_0_in;
  wire [10:0]rx_byte_count;
  wire [7:0]rx_byte_host;
  wire rx_byte_host_rd;
  wire rx_empty;
  wire rx_en;
  wire [10:0]rx_int_holdoff_byte_cnt;
  wire [10:0]rx_int_holdoff_byte_time_cnt;
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
  wire [10:2]tx_byte_count;
  wire [7:0]tx_byte_host;
  wire tx_byte_host_dv;
  wire tx_en;
  wire txd;
  wire [3:3]\uart_rx/p_0_in ;
  wire uart_top_n_32;
  wire uart_top_n_33;
  wire uart_top_n_34;
  wire uart_top_n_35;
  wire uart_top_n_36;
  wire uart_top_n_37;
  wire uart_top_n_49;
  wire [3:3]\uart_tx/p_0_in ;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_e_uart_0_0_e_uart_slave_lite_v1_0_S00_AXI e_uart_slave_lite_v1_0_S00_AXI_inst
       (.D(rx_byte_host),
        .DI({e_uart_slave_lite_v1_0_S00_AXI_inst_n_85,e_uart_slave_lite_v1_0_S00_AXI_inst_n_86,e_uart_slave_lite_v1_0_S00_AXI_inst_n_87,e_uart_slave_lite_v1_0_S00_AXI_inst_n_88,e_uart_slave_lite_v1_0_S00_AXI_inst_n_89}),
        .Q(p_0_in),
        .S(e_uart_slave_lite_v1_0_S00_AXI_inst_n_111),
        .SR(e_uart_slave_lite_v1_0_S00_AXI_inst_n_1),
        .SS(\uart_rx/p_0_in ),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_bvalid_reg_0(s00_axi_bvalid),
        .axi_rvalid_reg_0(s00_axi_rvalid),
        .bit_time_cntr(bit_time_cntr),
        .byte_time_cntr(byte_time_cntr),
        .data_count({tx_byte_count[10:8],tx_byte_count[4:2]}),
        .\dv_inhibit_cntr_reg[4] (uart_top_n_37),
        .int_status({int_status[3],int_status[1:0]}),
        .intr(intr),
        .intr_reg_0(uart_top_n_49),
        .rd_en(rx_byte_host_rd),
        .rx_empty(rx_empty),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(e_uart_slave_lite_v1_0_S00_AXI_inst_n_81),
        .s00_axi_aresetn_1(e_uart_slave_lite_v1_0_S00_AXI_inst_n_84),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_rdata(s00_axi_rdata),
        .\s00_axi_rdata[10] (rx_byte_count),
        .s00_axi_rdata_0_sp_1(uart_top_n_32),
        .s00_axi_rdata_1_sp_1(uart_top_n_33),
        .s00_axi_rdata_4_sp_1(int_status[4]),
        .s00_axi_rdata_5_sp_1(uart_top_n_34),
        .s00_axi_rdata_6_sp_1(uart_top_n_35),
        .s00_axi_rdata_7_sp_1(uart_top_n_36),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg10_reg[25]_0 ({e_uart_slave_lite_v1_0_S00_AXI_inst_n_90,e_uart_slave_lite_v1_0_S00_AXI_inst_n_91,e_uart_slave_lite_v1_0_S00_AXI_inst_n_92,e_uart_slave_lite_v1_0_S00_AXI_inst_n_93,e_uart_slave_lite_v1_0_S00_AXI_inst_n_94}),
        .\slv_reg10_reg[26]_0 ({rx_int_holdoff_byte_cnt,rx_int_holdoff_byte_time_cnt}),
        .\slv_reg10_reg[26]_1 (e_uart_slave_lite_v1_0_S00_AXI_inst_n_112),
        .\slv_reg5_reg[4]_0 (slv_reg5),
        .\slv_reg6_reg[0]_0 (\uart_tx/p_0_in ),
        .\slv_reg6_reg[1]_0 ({rx_en,tx_en}),
        .\slv_reg6_reg[1]_1 (e_uart_slave_lite_v1_0_S00_AXI_inst_n_82),
        .\slv_reg6_reg[1]_2 (e_uart_slave_lite_v1_0_S00_AXI_inst_n_113),
        .\slv_reg8_reg[12]_0 (baud_clk_cnt),
        .\slv_reg8_reg[4]_0 (e_uart_slave_lite_v1_0_S00_AXI_inst_n_110),
        .\slv_reg9_reg[9]_0 (over_sample_clk_cnt),
        .\tx_byte_host_reg[7]_0 (tx_byte_host),
        .wr_en(tx_byte_host_dv));
  design_1_e_uart_0_0_uart_top uart_top
       (.\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (tx_byte_host),
        .DI({e_uart_slave_lite_v1_0_S00_AXI_inst_n_85,e_uart_slave_lite_v1_0_S00_AXI_inst_n_86,e_uart_slave_lite_v1_0_S00_AXI_inst_n_87,e_uart_slave_lite_v1_0_S00_AXI_inst_n_88,e_uart_slave_lite_v1_0_S00_AXI_inst_n_89}),
        .Q(p_0_in),
        .S(e_uart_slave_lite_v1_0_S00_AXI_inst_n_111),
        .SR(e_uart_slave_lite_v1_0_S00_AXI_inst_n_1),
        .SS(\uart_rx/p_0_in ),
        .\bit_time_cntr_reg[5] (bit_time_cntr),
        .\bit_times_elapsed_reg[3] (e_uart_slave_lite_v1_0_S00_AXI_inst_n_110),
        .byte_time_cntr(byte_time_cntr),
        .\clk_cntr_reg[11] (baud_clk_cnt),
        .\count_reg[0] (uart_top_n_32),
        .\count_reg[10] (rx_byte_count),
        .\count_reg[1] (uart_top_n_33),
        .\count_reg[5] (uart_top_n_34),
        .\count_reg[6] (uart_top_n_35),
        .\count_reg[7] (uart_top_n_36),
        .data_count({tx_byte_count[10:8],tx_byte_count[4:2]}),
        .dout(rx_byte_host),
        .\dv_inhibit_cntr_reg[0] (e_uart_slave_lite_v1_0_S00_AXI_inst_n_84),
        .\dv_inhibit_cntr_reg[4] (uart_top_n_37),
        .\dv_inhibit_cntr_reg[4]_0 (e_uart_slave_lite_v1_0_S00_AXI_inst_n_82),
        .\en_dly_reg[0] ({rx_en,tx_en}),
        .int_status(int_status),
        .intr_reg(slv_reg5),
        .rd_en(rx_byte_host_rd),
        .rx_byte_cnt_coal_intr1_carry({rx_int_holdoff_byte_cnt,rx_int_holdoff_byte_time_cnt}),
        .rx_byte_cnt_coal_intr_reg({e_uart_slave_lite_v1_0_S00_AXI_inst_n_90,e_uart_slave_lite_v1_0_S00_AXI_inst_n_91,e_uart_slave_lite_v1_0_S00_AXI_inst_n_92,e_uart_slave_lite_v1_0_S00_AXI_inst_n_93,e_uart_slave_lite_v1_0_S00_AXI_inst_n_94}),
        .rx_byte_cnt_coal_intr_reg_0(e_uart_slave_lite_v1_0_S00_AXI_inst_n_112),
        .rx_empty(rx_empty),
        .\rx_samples_reg[2] (e_uart_slave_lite_v1_0_S00_AXI_inst_n_113),
        .rx_time_coal_intr_reg(uart_top_n_49),
        .rxd(rxd),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\sample_clk_cntr_reg[9] (over_sample_clk_cnt),
        .\tx_bit_cntr_reg[2] (e_uart_slave_lite_v1_0_S00_AXI_inst_n_81),
        .\tx_byte_q_reg[0] (\uart_tx/p_0_in ),
        .txd(txd),
        .wr_en(tx_byte_host_dv));
endmodule

(* ORIG_REF_NAME = "e_uart_slave_lite_v1_0_S00_AXI" *) 
module design_1_e_uart_0_0_e_uart_slave_lite_v1_0_S00_AXI
   (s00_axi_wready,
    SR,
    s00_axi_awready,
    intr,
    rd_en,
    axi_bvalid_reg_0,
    wr_en,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    s00_axi_rdata,
    Q,
    \slv_reg10_reg[26]_0 ,
    \slv_reg8_reg[12]_0 ,
    \slv_reg6_reg[0]_0 ,
    \slv_reg6_reg[1]_0 ,
    s00_axi_aresetn_0,
    \slv_reg6_reg[1]_1 ,
    SS,
    s00_axi_aresetn_1,
    DI,
    \slv_reg10_reg[25]_0 ,
    \slv_reg9_reg[9]_0 ,
    \slv_reg5_reg[4]_0 ,
    \slv_reg8_reg[4]_0 ,
    S,
    \slv_reg10_reg[26]_1 ,
    \slv_reg6_reg[1]_2 ,
    \tx_byte_host_reg[7]_0 ,
    s00_axi_aclk,
    intr_reg_0,
    s00_axi_aresetn,
    data_count,
    \s00_axi_rdata[10] ,
    s00_axi_rdata_0_sp_1,
    s00_axi_rdata_1_sp_1,
    s00_axi_rdata_5_sp_1,
    s00_axi_rdata_6_sp_1,
    s00_axi_rdata_7_sp_1,
    s00_axi_arvalid,
    s00_axi_rready,
    \dv_inhibit_cntr_reg[4] ,
    byte_time_cntr,
    D,
    s00_axi_rdata_4_sp_1,
    int_status,
    rx_empty,
    bit_time_cntr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_wdata,
    s00_axi_araddr);
  output s00_axi_wready;
  output [0:0]SR;
  output s00_axi_awready;
  output intr;
  output rd_en;
  output axi_bvalid_reg_0;
  output wr_en;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output [31:0]s00_axi_rdata;
  output [1:0]Q;
  output [21:0]\slv_reg10_reg[26]_0 ;
  output [12:0]\slv_reg8_reg[12]_0 ;
  output [0:0]\slv_reg6_reg[0]_0 ;
  output [1:0]\slv_reg6_reg[1]_0 ;
  output s00_axi_aresetn_0;
  output \slv_reg6_reg[1]_1 ;
  output [0:0]SS;
  output s00_axi_aresetn_1;
  output [4:0]DI;
  output [4:0]\slv_reg10_reg[25]_0 ;
  output [9:0]\slv_reg9_reg[9]_0 ;
  output [4:0]\slv_reg5_reg[4]_0 ;
  output \slv_reg8_reg[4]_0 ;
  output [0:0]S;
  output [0:0]\slv_reg10_reg[26]_1 ;
  output \slv_reg6_reg[1]_2 ;
  output [7:0]\tx_byte_host_reg[7]_0 ;
  input s00_axi_aclk;
  input intr_reg_0;
  input s00_axi_aresetn;
  input [5:0]data_count;
  input [10:0]\s00_axi_rdata[10] ;
  input s00_axi_rdata_0_sp_1;
  input s00_axi_rdata_1_sp_1;
  input s00_axi_rdata_5_sp_1;
  input s00_axi_rdata_6_sp_1;
  input s00_axi_rdata_7_sp_1;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input \dv_inhibit_cntr_reg[4] ;
  input [10:0]byte_time_cntr;
  input [7:0]D;
  input s00_axi_rdata_4_sp_1;
  input [2:0]int_status;
  input rx_empty;
  input [2:0]bit_time_cntr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_awaddr;
  input [3:0]s00_axi_wstrb;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;

  wire [7:0]D;
  wire [4:0]DI;
  wire \FSM_onehot_read_state[1]_i_1_n_0 ;
  wire \FSM_onehot_read_state[2]_i_1_n_0 ;
  wire \FSM_onehot_read_state[3]_i_1_n_0 ;
  wire \FSM_onehot_read_state[3]_i_2_n_0 ;
  wire \FSM_onehot_read_state_reg_n_0_[0] ;
  wire \FSM_onehot_read_state_reg_n_0_[1] ;
  wire \FSM_onehot_read_state_reg_n_0_[2] ;
  wire \FSM_onehot_read_state_reg_n_0_[3] ;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [0:0]SS;
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
  wire [31:0]axi_wdata;
  wire axi_wdata0;
  wire axi_wdata_valid_i_1_n_0;
  wire axi_wdata_valid_i_2_n_0;
  wire axi_wdata_valid_reg_n_0;
  wire axi_wready0;
  wire \axi_wstrb_reg_n_0_[0] ;
  wire \axi_wstrb_reg_n_0_[2] ;
  wire \axi_wstrb_reg_n_0_[3] ;
  wire [2:0]bit_time_cntr;
  wire [1:0]byte_cntr;
  wire \byte_cntr[0]_i_1_n_0 ;
  wire \byte_cntr[1]_i_1_n_0 ;
  wire \byte_cntr[1]_i_2_n_0 ;
  wire [10:0]byte_time_cntr;
  wire [5:0]data_count;
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
  wire [3:2]p_0_in;
  wire p_0_in0;
  wire [12:7]p_1_in;
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
  wire [31:0]rx_word_host;
  wire [31:7]rx_word_host0_in;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire s00_axi_aresetn_1;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_4_n_0 ;
  wire [10:0]\s00_axi_rdata[10] ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
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
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_2_n_0 ;
  wire s00_axi_rdata_0_sn_1;
  wire s00_axi_rdata_1_sn_1;
  wire s00_axi_rdata_4_sn_1;
  wire s00_axi_rdata_5_sn_1;
  wire s00_axi_rdata_6_sn_1;
  wire s00_axi_rdata_7_sn_1;
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
  wire [4:0]\slv_reg10_reg[25]_0 ;
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
  wire [4:0]\slv_reg5_reg[4]_0 ;
  wire \slv_reg6[1]_i_1_n_0 ;
  wire [0:0]\slv_reg6_reg[0]_0 ;
  wire [1:0]\slv_reg6_reg[1]_0 ;
  wire \slv_reg6_reg[1]_1 ;
  wire \slv_reg6_reg[1]_2 ;
  wire [12:0]\slv_reg8_reg[12]_0 ;
  wire \slv_reg8_reg[4]_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire \slv_reg9[9]_i_1_n_0 ;
  wire [9:0]\slv_reg9_reg[9]_0 ;
  wire slv_reg_wren;
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

  assign s00_axi_rdata_0_sn_1 = s00_axi_rdata_0_sp_1;
  assign s00_axi_rdata_1_sn_1 = s00_axi_rdata_1_sp_1;
  assign s00_axi_rdata_4_sn_1 = s00_axi_rdata_4_sp_1;
  assign s00_axi_rdata_5_sn_1 = s00_axi_rdata_5_sp_1;
  assign s00_axi_rdata_6_sn_1 = s00_axi_rdata_6_sp_1;
  assign s00_axi_rdata_7_sn_1 = s00_axi_rdata_7_sp_1;
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    \FSM_onehot_read_state[1]_i_1 
       (.I0(axi_arready_i_2_n_0),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(\FSM_onehot_read_state_reg_n_0_[1] ),
        .O(\FSM_onehot_read_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_read_state[2]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_arvalid),
        .O(\FSM_onehot_read_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_read_state[3]_i_1 
       (.I0(axi_rvalid_i_2_n_0),
        .I1(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_read_state_reg_n_0_[0] ),
        .O(\FSM_onehot_read_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    \FSM_onehot_read_state[3]_i_2 
       (.I0(\FSM_onehot_read_state_reg_n_0_[2] ),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_rready),
        .I3(\FSM_onehot_read_state_reg_n_0_[3] ),
        .O(\FSM_onehot_read_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:0001,Raddr_Latched:0100,Rdata:1000,Raddr:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_read_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_read_state[3]_i_1_n_0 ),
        .D(1'b0),
        .Q(\FSM_onehot_read_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "Idle:0001,Raddr_Latched:0100,Rdata:1000,Raddr:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_read_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_read_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_read_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_read_state_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "Idle:0001,Raddr_Latched:0100,Rdata:1000,Raddr:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_read_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_read_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_read_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_read_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "Idle:0001,Raddr_Latched:0100,Rdata:1000,Raddr:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_read_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_read_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_read_state[3]_i_2_n_0 ),
        .Q(\FSM_onehot_read_state_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(\slv_reg6_reg[1]_0 [0]),
        .I1(s00_axi_aresetn),
        .O(\slv_reg6_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_araddr[5]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I3(s00_axi_aresetn),
        .O(\axi_araddr[5]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[2]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[3]),
        .Q(p_0_in[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF4C)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I3(axi_arready_i_2_n_0),
        .O(axi_arready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    axi_arready_i_2
       (.I0(\FSM_onehot_read_state_reg_n_0_[0] ),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_rready),
        .I3(\FSM_onehot_read_state_reg_n_0_[3] ),
        .O(axi_arready_i_2_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(SR));
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
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr0),
        .D(s00_axi_awaddr[1]),
        .Q(write_index[1]),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr0),
        .D(s00_axi_awaddr[2]),
        .Q(write_index[2]),
        .R(SR));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr0),
        .D(s00_axi_awaddr[3]),
        .Q(write_index[3]),
        .R(SR));
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
        .R(axi_wdata_valid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
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
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_bvalid_i_1
       (.I0(axi_wdata_valid_reg_n_0),
        .I1(axi_awaddr_valid),
        .I2(s00_axi_bready),
        .I3(axi_bvalid_reg_0),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF2A)) 
    axi_rvalid_i_1
       (.I0(axi_rvalid_reg_0),
        .I1(s00_axi_rready),
        .I2(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I3(axi_rvalid_i_2_n_0),
        .O(axi_rvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFF80000)) 
    axi_rvalid_i_2
       (.I0(rd_byte_cntr[0]),
        .I1(rd_byte_cntr[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\FSM_onehot_read_state_reg_n_0_[2] ),
        .I5(axi_rvalid_i_3_n_0),
        .O(axi_rvalid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    axi_rvalid_i_3
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(axi_rvalid_i_3_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(SR));
  FDRE \axi_wdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[0]),
        .Q(axi_wdata[0]),
        .R(SR));
  FDRE \axi_wdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[10]),
        .Q(axi_wdata[10]),
        .R(SR));
  FDRE \axi_wdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[11]),
        .Q(axi_wdata[11]),
        .R(SR));
  FDRE \axi_wdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[12]),
        .Q(axi_wdata[12]),
        .R(SR));
  FDRE \axi_wdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[13]),
        .Q(axi_wdata[13]),
        .R(SR));
  FDRE \axi_wdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[14]),
        .Q(axi_wdata[14]),
        .R(SR));
  FDRE \axi_wdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[15]),
        .Q(axi_wdata[15]),
        .R(SR));
  FDRE \axi_wdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[16]),
        .Q(axi_wdata[16]),
        .R(SR));
  FDRE \axi_wdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[17]),
        .Q(axi_wdata[17]),
        .R(SR));
  FDRE \axi_wdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[18]),
        .Q(axi_wdata[18]),
        .R(SR));
  FDRE \axi_wdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[19]),
        .Q(axi_wdata[19]),
        .R(SR));
  FDRE \axi_wdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[1]),
        .Q(axi_wdata[1]),
        .R(SR));
  FDRE \axi_wdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[20]),
        .Q(axi_wdata[20]),
        .R(SR));
  FDRE \axi_wdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[21]),
        .Q(axi_wdata[21]),
        .R(SR));
  FDRE \axi_wdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[22]),
        .Q(axi_wdata[22]),
        .R(SR));
  FDRE \axi_wdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[23]),
        .Q(axi_wdata[23]),
        .R(SR));
  FDRE \axi_wdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[24]),
        .Q(axi_wdata[24]),
        .R(SR));
  FDRE \axi_wdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[25]),
        .Q(axi_wdata[25]),
        .R(SR));
  FDRE \axi_wdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[26]),
        .Q(axi_wdata[26]),
        .R(SR));
  FDRE \axi_wdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[27]),
        .Q(axi_wdata[27]),
        .R(SR));
  FDRE \axi_wdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[28]),
        .Q(axi_wdata[28]),
        .R(SR));
  FDRE \axi_wdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[29]),
        .Q(axi_wdata[29]),
        .R(SR));
  FDRE \axi_wdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[2]),
        .Q(axi_wdata[2]),
        .R(SR));
  FDRE \axi_wdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[30]),
        .Q(axi_wdata[30]),
        .R(SR));
  FDRE \axi_wdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[31]),
        .Q(axi_wdata[31]),
        .R(SR));
  FDRE \axi_wdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[3]),
        .Q(axi_wdata[3]),
        .R(SR));
  FDRE \axi_wdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[4]),
        .Q(axi_wdata[4]),
        .R(SR));
  FDRE \axi_wdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[5]),
        .Q(axi_wdata[5]),
        .R(SR));
  FDRE \axi_wdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[6]),
        .Q(axi_wdata[6]),
        .R(SR));
  FDRE \axi_wdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[7]),
        .Q(axi_wdata[7]),
        .R(SR));
  FDRE \axi_wdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[8]),
        .Q(axi_wdata[8]),
        .R(SR));
  FDRE \axi_wdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[9]),
        .Q(axi_wdata[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h40FF)) 
    axi_wdata_valid_i_1
       (.I0(axi_bvalid_reg_0),
        .I1(axi_wdata_valid_reg_n_0),
        .I2(axi_awaddr_valid),
        .I3(s00_axi_aresetn),
        .O(axi_wdata_valid_i_1_n_0));
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
        .R(axi_wdata_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    axi_wready_i_1
       (.I0(axi_wdata_valid_reg_n_0),
        .I1(axi_bvalid_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(SR));
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
        .Q(\axi_wstrb_reg_n_0_[0] ),
        .R(SR));
  FDRE \axi_wstrb_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wstrb[1]),
        .Q(p_0_in0),
        .R(SR));
  FDRE \axi_wstrb_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wstrb[2]),
        .Q(\axi_wstrb_reg_n_0_[2] ),
        .R(SR));
  FDRE \axi_wstrb_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wstrb[3]),
        .Q(\axi_wstrb_reg_n_0_[3] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \bit_times_elapsed[3]_i_8 
       (.I0(\slv_reg8_reg[12]_0 [4]),
        .I1(bit_time_cntr[1]),
        .I2(\slv_reg8_reg[12]_0 [5]),
        .I3(bit_time_cntr[2]),
        .I4(bit_time_cntr[0]),
        .I5(\slv_reg8_reg[12]_0 [3]),
        .O(\slv_reg8_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \byte_cntr[0]_i_1 
       (.I0(byte_cntr[0]),
        .I1(s00_axi_aresetn),
        .I2(\is_reg1_wr_reg_n_0_[0] ),
        .I3(\is_reg1_wr_reg_n_0_[1] ),
        .O(\byte_cntr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAFFFFFFFF)) 
    \byte_cntr[1]_i_1 
       (.I0(word_wr_active__0),
        .I1(byte_cntr[0]),
        .I2(byte_cntr[1]),
        .I3(\is_reg1_wr_reg_n_0_[1] ),
        .I4(\is_reg1_wr_reg_n_0_[0] ),
        .I5(s00_axi_aresetn),
        .O(\byte_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h60660000)) 
    \byte_cntr[1]_i_2 
       (.I0(byte_cntr[0]),
        .I1(byte_cntr[1]),
        .I2(\is_reg1_wr_reg_n_0_[1] ),
        .I3(\is_reg1_wr_reg_n_0_[0] ),
        .I4(s00_axi_aresetn),
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dv_inhibit_cntr[4]_i_3 
       (.I0(\slv_reg6_reg[1]_0 [1]),
        .I1(s00_axi_aresetn),
        .I2(\dv_inhibit_cntr_reg[4] ),
        .O(\slv_reg6_reg[1]_1 ));
  FDRE intr_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(intr_reg_0),
        .Q(intr),
        .R(SR));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \is_reg0_wr[0]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(axi_bvalid_reg_0),
        .I2(axi_wdata_valid_reg_n_0),
        .I3(axi_awaddr_valid),
        .O(is_reg1_wr));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \is_reg0_wr[0]_i_2 
       (.I0(write_index[0]),
        .I1(write_index[1]),
        .I2(write_index[3]),
        .I3(write_index[2]),
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
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \is_reg1_wr[0]_i_1 
       (.I0(write_index[3]),
        .I1(write_index[2]),
        .I2(write_index[1]),
        .I3(write_index[0]),
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
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    is_reg3_prev_i_1
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(\FSM_onehot_read_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(is_reg3));
  FDRE is_reg3_prev_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(is_reg3),
        .Q(is_reg3_prev),
        .R(SR));
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
        .I2(rd_byte_cntr[1]),
        .I3(rd_byte_cntr[0]),
        .I4(s00_axi_aresetn),
        .O(\rd_byte_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h06FF)) 
    \rd_byte_cntr[1]_i_2 
       (.I0(rd_byte_cntr[0]),
        .I1(rd_byte_cntr[1]),
        .I2(\rd_byte_cntr[1]_i_3_n_0 ),
        .I3(s00_axi_aresetn),
        .O(\rd_byte_cntr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \rd_byte_cntr[1]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\FSM_onehot_read_state_reg_n_0_[2] ),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
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
  LUT4 #(
    .INIT(16'h44D4)) 
    rx_byte_cnt_coal_intr1_carry_i_2
       (.I0(\slv_reg10_reg[26]_0 [20]),
        .I1(\s00_axi_rdata[10] [9]),
        .I2(\s00_axi_rdata[10] [8]),
        .I3(\slv_reg10_reg[26]_0 [19]),
        .O(\slv_reg10_reg[25]_0 [4]));
  LUT4 #(
    .INIT(16'h44D4)) 
    rx_byte_cnt_coal_intr1_carry_i_3
       (.I0(\slv_reg10_reg[26]_0 [18]),
        .I1(\s00_axi_rdata[10] [7]),
        .I2(\s00_axi_rdata[10] [6]),
        .I3(\slv_reg10_reg[26]_0 [17]),
        .O(\slv_reg10_reg[25]_0 [3]));
  LUT4 #(
    .INIT(16'h44D4)) 
    rx_byte_cnt_coal_intr1_carry_i_4
       (.I0(\slv_reg10_reg[26]_0 [16]),
        .I1(\s00_axi_rdata[10] [5]),
        .I2(\s00_axi_rdata[10] [4]),
        .I3(\slv_reg10_reg[26]_0 [15]),
        .O(\slv_reg10_reg[25]_0 [2]));
  LUT4 #(
    .INIT(16'h44D4)) 
    rx_byte_cnt_coal_intr1_carry_i_5
       (.I0(\slv_reg10_reg[26]_0 [14]),
        .I1(\s00_axi_rdata[10] [3]),
        .I2(\s00_axi_rdata[10] [2]),
        .I3(\slv_reg10_reg[26]_0 [13]),
        .O(\slv_reg10_reg[25]_0 [1]));
  LUT4 #(
    .INIT(16'h44D4)) 
    rx_byte_cnt_coal_intr1_carry_i_6
       (.I0(\slv_reg10_reg[26]_0 [12]),
        .I1(\s00_axi_rdata[10] [1]),
        .I2(\s00_axi_rdata[10] [0]),
        .I3(\slv_reg10_reg[26]_0 [11]),
        .O(\slv_reg10_reg[25]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    rx_byte_cnt_coal_intr1_carry_i_7
       (.I0(\slv_reg10_reg[26]_0 [21]),
        .I1(\s00_axi_rdata[10] [10]),
        .O(\slv_reg10_reg[26]_1 ));
  LUT6 #(
    .INIT(64'hAAEAAAEAFFFFAAEA)) 
    rx_byte_host_rd_i_1
       (.I0(\rd_byte_cntr[1]_i_3_n_0 ),
        .I1(rx_byte_host_rd_i_2_n_0),
        .I2(rx_byte_host_rd_i_3_n_0),
        .I3(rx_byte_host_rd_i_4_n_0),
        .I4(word_rd_active),
        .I5(rx_byte_host_rd_i_5_n_0),
        .O(rx_byte_host_rd_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rx_byte_host_rd_i_2
       (.I0(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I1(s00_axi_rready),
        .I2(axi_rvalid_reg_0),
        .O(rx_byte_host_rd_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rx_byte_host_rd_i_3
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(rx_byte_host_rd_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rx_byte_host_rd_i_4
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .O(rx_byte_host_rd_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rx_byte_host_rd_i_5
       (.I0(rd_byte_cntr[0]),
        .I1(rd_byte_cntr[1]),
        .O(rx_byte_host_rd_i_5_n_0));
  FDRE rx_byte_host_rd_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_byte_host_rd_i_1_n_0),
        .Q(rd_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rx_samples[44]_i_1 
       (.I0(\slv_reg6_reg[1]_0 [1]),
        .I1(s00_axi_aresetn),
        .O(\slv_reg6_reg[1]_2 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    rx_time_coal_intr1_carry_i_2
       (.I0(\slv_reg10_reg[26]_0 [9]),
        .I1(byte_time_cntr[9]),
        .I2(byte_time_cntr[8]),
        .I3(\slv_reg10_reg[26]_0 [8]),
        .O(DI[4]));
  LUT4 #(
    .INIT(16'h44D4)) 
    rx_time_coal_intr1_carry_i_3
       (.I0(\slv_reg10_reg[26]_0 [7]),
        .I1(byte_time_cntr[7]),
        .I2(byte_time_cntr[6]),
        .I3(\slv_reg10_reg[26]_0 [6]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h44D4)) 
    rx_time_coal_intr1_carry_i_4
       (.I0(\slv_reg10_reg[26]_0 [5]),
        .I1(byte_time_cntr[5]),
        .I2(byte_time_cntr[4]),
        .I3(\slv_reg10_reg[26]_0 [4]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h44D4)) 
    rx_time_coal_intr1_carry_i_5
       (.I0(\slv_reg10_reg[26]_0 [3]),
        .I1(byte_time_cntr[3]),
        .I2(byte_time_cntr[2]),
        .I3(\slv_reg10_reg[26]_0 [2]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h44D4)) 
    rx_time_coal_intr1_carry_i_6
       (.I0(\slv_reg10_reg[26]_0 [1]),
        .I1(byte_time_cntr[1]),
        .I2(byte_time_cntr[0]),
        .I3(\slv_reg10_reg[26]_0 [0]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h9)) 
    rx_time_coal_intr1_carry_i_7
       (.I0(\slv_reg10_reg[26]_0 [10]),
        .I1(byte_time_cntr[10]),
        .O(S));
  LUT3 #(
    .INIT(8'h08)) 
    \rx_word_host[15]_i_1 
       (.I0(word_rd_active),
        .I1(rd_byte_cntr[0]),
        .I2(rd_byte_cntr[1]),
        .O(rx_word_host0_in[15]));
  LUT3 #(
    .INIT(8'h08)) 
    \rx_word_host[23]_i_1 
       (.I0(word_rd_active),
        .I1(rd_byte_cntr[1]),
        .I2(rd_byte_cntr[0]),
        .O(rx_word_host0_in[23]));
  LUT3 #(
    .INIT(8'h80)) 
    \rx_word_host[31]_i_1 
       (.I0(rd_byte_cntr[1]),
        .I1(rd_byte_cntr[0]),
        .I2(word_rd_active),
        .O(rx_word_host0_in[31]));
  LUT3 #(
    .INIT(8'h10)) 
    \rx_word_host[7]_i_1 
       (.I0(rd_byte_cntr[1]),
        .I1(rd_byte_cntr[0]),
        .I2(word_rd_active),
        .O(rx_word_host0_in[7]));
  FDRE \rx_word_host_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[0]),
        .Q(rx_word_host[0]),
        .R(SR));
  FDRE \rx_word_host_reg[10] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[2]),
        .Q(rx_word_host[10]),
        .R(SR));
  FDRE \rx_word_host_reg[11] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[3]),
        .Q(rx_word_host[11]),
        .R(SR));
  FDRE \rx_word_host_reg[12] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[4]),
        .Q(rx_word_host[12]),
        .R(SR));
  FDRE \rx_word_host_reg[13] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[5]),
        .Q(rx_word_host[13]),
        .R(SR));
  FDRE \rx_word_host_reg[14] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[6]),
        .Q(rx_word_host[14]),
        .R(SR));
  FDRE \rx_word_host_reg[15] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[7]),
        .Q(rx_word_host[15]),
        .R(SR));
  FDRE \rx_word_host_reg[16] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[0]),
        .Q(rx_word_host[16]),
        .R(SR));
  FDRE \rx_word_host_reg[17] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[1]),
        .Q(rx_word_host[17]),
        .R(SR));
  FDRE \rx_word_host_reg[18] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[2]),
        .Q(rx_word_host[18]),
        .R(SR));
  FDRE \rx_word_host_reg[19] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[3]),
        .Q(rx_word_host[19]),
        .R(SR));
  FDRE \rx_word_host_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[1]),
        .Q(rx_word_host[1]),
        .R(SR));
  FDRE \rx_word_host_reg[20] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[4]),
        .Q(rx_word_host[20]),
        .R(SR));
  FDRE \rx_word_host_reg[21] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[5]),
        .Q(rx_word_host[21]),
        .R(SR));
  FDRE \rx_word_host_reg[22] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[6]),
        .Q(rx_word_host[22]),
        .R(SR));
  FDRE \rx_word_host_reg[23] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[7]),
        .Q(rx_word_host[23]),
        .R(SR));
  FDRE \rx_word_host_reg[24] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[0]),
        .Q(rx_word_host[24]),
        .R(SR));
  FDRE \rx_word_host_reg[25] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[1]),
        .Q(rx_word_host[25]),
        .R(SR));
  FDRE \rx_word_host_reg[26] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[2]),
        .Q(rx_word_host[26]),
        .R(SR));
  FDRE \rx_word_host_reg[27] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[3]),
        .Q(rx_word_host[27]),
        .R(SR));
  FDRE \rx_word_host_reg[28] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[4]),
        .Q(rx_word_host[28]),
        .R(SR));
  FDRE \rx_word_host_reg[29] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[5]),
        .Q(rx_word_host[29]),
        .R(SR));
  FDRE \rx_word_host_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[2]),
        .Q(rx_word_host[2]),
        .R(SR));
  FDRE \rx_word_host_reg[30] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[6]),
        .Q(rx_word_host[30]),
        .R(SR));
  FDRE \rx_word_host_reg[31] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[7]),
        .Q(rx_word_host[31]),
        .R(SR));
  FDRE \rx_word_host_reg[3] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[3]),
        .Q(rx_word_host[3]),
        .R(SR));
  FDRE \rx_word_host_reg[4] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[4]),
        .Q(rx_word_host[4]),
        .R(SR));
  FDRE \rx_word_host_reg[5] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[5]),
        .Q(rx_word_host[5]),
        .R(SR));
  FDRE \rx_word_host_reg[6] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[6]),
        .Q(rx_word_host[6]),
        .R(SR));
  FDRE \rx_word_host_reg[7] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[7]),
        .Q(rx_word_host[7]),
        .R(SR));
  FDRE \rx_word_host_reg[8] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[0]),
        .Q(rx_word_host[8]),
        .R(SR));
  FDRE \rx_word_host_reg[9] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[1]),
        .Q(rx_word_host[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(s00_axi_rdata_0_sn_1),
        .I1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .I2(p_0_in[3]),
        .I3(\s00_axi_rdata[0]_INST_0_i_3_n_0 ),
        .I4(p_0_in[2]),
        .I5(\s00_axi_rdata[0]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(\slv_reg9_reg[9]_0 [0]),
        .I1(Q[0]),
        .I2(\slv_reg10_reg[26]_0 [0]),
        .I3(Q[1]),
        .I4(\slv_reg8_reg[12]_0 [0]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[0]_INST_0_i_3 
       (.I0(\slv_reg5_reg[4]_0 [0]),
        .I1(Q[0]),
        .I2(\slv_reg6_reg[1]_0 [0]),
        .I3(Q[1]),
        .I4(int_status[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_4 
       (.I0(rx_word_host[0]),
        .I1(\slv_reg1_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(D[0]),
        .I4(Q[1]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(\s00_axi_rdata[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(p_0_in[3]),
        .I2(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I3(rx_word_host[10]),
        .I4(Q[1]),
        .I5(\slv_reg1_reg_n_0_[10] ),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'h737FFFFF737F0000)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(\s00_axi_rdata[10] [10]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_count[5]),
        .I4(p_0_in[2]),
        .I5(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(Q[0]),
        .I1(\slv_reg8_reg[12]_0 [10]),
        .I2(Q[1]),
        .I3(\slv_reg10_reg[26]_0 [10]),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44FF445044504450)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(rx_word_host[11]),
        .I2(\slv_reg1_reg_n_0_[11] ),
        .I3(Q[1]),
        .I4(\slv_reg8_reg[12]_0 [11]),
        .I5(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'h44FF445044504450)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(rx_word_host[12]),
        .I2(\slv_reg1_reg_n_0_[12] ),
        .I3(Q[1]),
        .I4(\slv_reg8_reg[12]_0 [12]),
        .I5(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(Q[0]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(p_0_in[3]),
        .I1(Q[0]),
        .I2(p_0_in[2]),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(\slv_reg1_reg_n_0_[13] ),
        .I1(Q[1]),
        .I2(rx_word_host[13]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(\slv_reg1_reg_n_0_[14] ),
        .I1(Q[1]),
        .I2(rx_word_host[14]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(\slv_reg1_reg_n_0_[15] ),
        .I1(Q[1]),
        .I2(rx_word_host[15]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(p_0_in[2]),
        .I2(\slv_reg10_reg[26]_0 [11]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[16]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(\slv_reg1_reg_n_0_[16] ),
        .I1(Q[1]),
        .I2(rx_word_host[16]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(p_0_in[2]),
        .I2(\slv_reg10_reg[26]_0 [12]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[17]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(\slv_reg1_reg_n_0_[17] ),
        .I1(Q[1]),
        .I2(rx_word_host[17]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(p_0_in[2]),
        .I2(\slv_reg10_reg[26]_0 [13]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[18]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(\slv_reg1_reg_n_0_[18] ),
        .I1(Q[1]),
        .I2(rx_word_host[18]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(p_0_in[2]),
        .I2(\slv_reg10_reg[26]_0 [14]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[19]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(\slv_reg1_reg_n_0_[19] ),
        .I1(Q[1]),
        .I2(rx_word_host[19]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(s00_axi_rdata_1_sn_1),
        .I1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .I2(p_0_in[3]),
        .I3(\s00_axi_rdata[1]_INST_0_i_3_n_0 ),
        .I4(p_0_in[2]),
        .I5(\s00_axi_rdata[1]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(\slv_reg9_reg[9]_0 [1]),
        .I1(Q[0]),
        .I2(\slv_reg10_reg[26]_0 [1]),
        .I3(Q[1]),
        .I4(\slv_reg8_reg[12]_0 [1]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[1]_INST_0_i_3 
       (.I0(\slv_reg5_reg[4]_0 [1]),
        .I1(Q[0]),
        .I2(\slv_reg6_reg[1]_0 [1]),
        .I3(Q[1]),
        .I4(int_status[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_4 
       (.I0(rx_word_host[1]),
        .I1(\slv_reg1_reg_n_0_[1] ),
        .I2(Q[0]),
        .I3(D[1]),
        .I4(Q[1]),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(\s00_axi_rdata[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(p_0_in[2]),
        .I2(\slv_reg10_reg[26]_0 [15]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(\slv_reg1_reg_n_0_[20] ),
        .I1(Q[1]),
        .I2(rx_word_host[20]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(p_0_in[2]),
        .I2(\slv_reg10_reg[26]_0 [16]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(\slv_reg1_reg_n_0_[21] ),
        .I1(Q[1]),
        .I2(rx_word_host[21]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(p_0_in[2]),
        .I2(\slv_reg10_reg[26]_0 [17]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(\slv_reg1_reg_n_0_[22] ),
        .I1(Q[1]),
        .I2(rx_word_host[22]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(p_0_in[2]),
        .I2(\slv_reg10_reg[26]_0 [18]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(\slv_reg1_reg_n_0_[23] ),
        .I1(Q[1]),
        .I2(rx_word_host[23]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .I1(p_0_in[2]),
        .I2(\slv_reg10_reg[26]_0 [19]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(\slv_reg1_reg_n_0_[24] ),
        .I1(Q[1]),
        .I2(rx_word_host[24]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .I1(p_0_in[2]),
        .I2(\slv_reg10_reg[26]_0 [20]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(\slv_reg1_reg_n_0_[25] ),
        .I1(Q[1]),
        .I2(rx_word_host[25]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(p_0_in[2]),
        .I2(\slv_reg10_reg[26]_0 [21]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(\slv_reg1_reg_n_0_[26] ),
        .I1(Q[1]),
        .I2(rx_word_host[26]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(\slv_reg1_reg_n_0_[27] ),
        .I1(Q[1]),
        .I2(rx_word_host[27]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(\slv_reg1_reg_n_0_[28] ),
        .I1(Q[1]),
        .I2(rx_word_host[28]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(\slv_reg1_reg_n_0_[29] ),
        .I1(Q[1]),
        .I2(rx_word_host[29]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[29]));
  MUXF7 \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[2]),
        .S(p_0_in[3]));
  LUT6 #(
    .INIT(64'h080BFFFF080B0000)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(\slv_reg5_reg[4]_0 [2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(rx_empty),
        .I4(p_0_in[2]),
        .I5(\s00_axi_rdata[2]_INST_0_i_3_n_0 ),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0A0FFFFC0A00000)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(data_count[0]),
        .I1(\s00_axi_rdata[10] [2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(\s00_axi_rdata[2]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_3 
       (.I0(rx_word_host[2]),
        .I1(\slv_reg1_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(D[2]),
        .I4(Q[1]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(\s00_axi_rdata[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[2]_INST_0_i_4 
       (.I0(\slv_reg9_reg[9]_0 [2]),
        .I1(Q[0]),
        .I2(\slv_reg10_reg[26]_0 [2]),
        .I3(Q[1]),
        .I4(\slv_reg8_reg[12]_0 [2]),
        .O(\s00_axi_rdata[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\slv_reg1_reg_n_0_[30] ),
        .I1(Q[1]),
        .I2(rx_word_host[30]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(s00_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(p_0_in[3]),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'h3330003088008800)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(intr),
        .I1(p_0_in[2]),
        .I2(\slv_reg1_reg_n_0_[31] ),
        .I3(Q[1]),
        .I4(rx_word_host[31]),
        .I5(Q[0]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[3]),
        .S(p_0_in[3]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(\slv_reg5_reg[4]_0 [3]),
        .I1(Q[0]),
        .I2(int_status[2]),
        .I3(Q[1]),
        .I4(p_0_in[2]),
        .I5(\s00_axi_rdata[3]_INST_0_i_3_n_0 ),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0A0FFFFC0A00000)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(data_count[1]),
        .I1(\s00_axi_rdata[10] [3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(\s00_axi_rdata[3]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_3 
       (.I0(rx_word_host[3]),
        .I1(\slv_reg1_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(D[3]),
        .I4(Q[1]),
        .I5(\slv_reg0_reg_n_0_[3] ),
        .O(\s00_axi_rdata[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[3]_INST_0_i_4 
       (.I0(\slv_reg9_reg[9]_0 [3]),
        .I1(Q[0]),
        .I2(\slv_reg10_reg[26]_0 [3]),
        .I3(Q[1]),
        .I4(\slv_reg8_reg[12]_0 [3]),
        .O(\s00_axi_rdata[3]_INST_0_i_4_n_0 ));
  MUXF7 \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[4]),
        .S(p_0_in[3]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(\slv_reg5_reg[4]_0 [4]),
        .I1(Q[0]),
        .I2(s00_axi_rdata_4_sn_1),
        .I3(Q[1]),
        .I4(p_0_in[2]),
        .I5(\s00_axi_rdata[4]_INST_0_i_3_n_0 ),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0A0FFFFC0A00000)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(data_count[2]),
        .I1(\s00_axi_rdata[10] [4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(p_0_in[2]),
        .I5(\s00_axi_rdata[4]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_3 
       (.I0(rx_word_host[4]),
        .I1(\slv_reg1_reg_n_0_[4] ),
        .I2(Q[0]),
        .I3(D[4]),
        .I4(Q[1]),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(\s00_axi_rdata[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[4]_INST_0_i_4 
       (.I0(\slv_reg9_reg[9]_0 [4]),
        .I1(Q[0]),
        .I2(\slv_reg10_reg[26]_0 [4]),
        .I3(Q[1]),
        .I4(\slv_reg8_reg[12]_0 [4]),
        .O(\s00_axi_rdata[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(s00_axi_rdata_5_sn_1),
        .I1(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .I2(p_0_in[3]),
        .I3(\s00_axi_rdata[5]_INST_0_i_3_n_0 ),
        .I4(p_0_in[2]),
        .O(s00_axi_rdata[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(\slv_reg9_reg[9]_0 [5]),
        .I1(Q[0]),
        .I2(\slv_reg10_reg[26]_0 [5]),
        .I3(Q[1]),
        .I4(\slv_reg8_reg[12]_0 [5]),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_3 
       (.I0(rx_word_host[5]),
        .I1(\slv_reg1_reg_n_0_[5] ),
        .I2(Q[0]),
        .I3(D[5]),
        .I4(Q[1]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(\s00_axi_rdata[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(s00_axi_rdata_6_sn_1),
        .I1(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .I2(p_0_in[3]),
        .I3(\s00_axi_rdata[6]_INST_0_i_3_n_0 ),
        .I4(p_0_in[2]),
        .O(s00_axi_rdata[6]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(\slv_reg9_reg[9]_0 [6]),
        .I1(Q[0]),
        .I2(\slv_reg10_reg[26]_0 [6]),
        .I3(Q[1]),
        .I4(\slv_reg8_reg[12]_0 [6]),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_3 
       (.I0(rx_word_host[6]),
        .I1(\slv_reg1_reg_n_0_[6] ),
        .I2(Q[0]),
        .I3(D[6]),
        .I4(Q[1]),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(\s00_axi_rdata[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(s00_axi_rdata_7_sn_1),
        .I1(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .I2(p_0_in[3]),
        .I3(\s00_axi_rdata[7]_INST_0_i_3_n_0 ),
        .I4(p_0_in[2]),
        .O(s00_axi_rdata[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[7]_INST_0_i_2 
       (.I0(\slv_reg9_reg[9]_0 [7]),
        .I1(Q[0]),
        .I2(\slv_reg10_reg[26]_0 [7]),
        .I3(Q[1]),
        .I4(\slv_reg8_reg[12]_0 [7]),
        .O(\s00_axi_rdata[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_3 
       (.I0(rx_word_host[7]),
        .I1(\slv_reg1_reg_n_0_[7] ),
        .I2(Q[0]),
        .I3(D[7]),
        .I4(Q[1]),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(\s00_axi_rdata[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(p_0_in[3]),
        .I1(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I2(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I3(rx_word_host[8]),
        .I4(Q[1]),
        .I5(\slv_reg1_reg_n_0_[8] ),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'h8C80FFFF8C800000)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(\s00_axi_rdata[10] [8]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_count[3]),
        .I4(p_0_in[2]),
        .I5(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(\slv_reg9_reg[9]_0 [8]),
        .I1(Q[0]),
        .I2(\slv_reg10_reg[26]_0 [8]),
        .I3(Q[1]),
        .I4(\slv_reg8_reg[12]_0 [8]),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(p_0_in[3]),
        .I1(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I2(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I3(rx_word_host[9]),
        .I4(Q[1]),
        .I5(\slv_reg1_reg_n_0_[9] ),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hC808FFFFC8080000)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(data_count[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\s00_axi_rdata[10] [9]),
        .I4(p_0_in[2]),
        .I5(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(\slv_reg9_reg[9]_0 [9]),
        .I1(Q[0]),
        .I2(\slv_reg10_reg[26]_0 [9]),
        .I3(Q[1]),
        .I4(\slv_reg8_reg[12]_0 [9]),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sample_clk_cntr[9]_i_1 
       (.I0(\slv_reg6_reg[1]_0 [1]),
        .I1(s00_axi_aresetn),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_clk_cntr[9]_i_4 
       (.I0(s00_axi_aresetn),
        .I1(\slv_reg6_reg[1]_0 [1]),
        .O(s00_axi_aresetn_1));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \slv_reg0[7]_i_1 
       (.I0(write_index[2]),
        .I1(write_index[3]),
        .I2(write_index[1]),
        .I3(write_index[0]),
        .I4(slv_reg_wren),
        .I5(\axi_wstrb_reg_n_0_[0] ),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg10[10]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in0),
        .I2(write_index[1]),
        .I3(write_index[0]),
        .I4(write_index[3]),
        .I5(write_index[2]),
        .O(\slv_reg10[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \slv_reg10[23]_i_1 
       (.I0(write_index[1]),
        .I1(write_index[0]),
        .I2(write_index[3]),
        .I3(write_index[2]),
        .I4(slv_reg_wren),
        .I5(\axi_wstrb_reg_n_0_[2] ),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg10[26]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_wstrb_reg_n_0_[3] ),
        .I2(write_index[1]),
        .I3(write_index[0]),
        .I4(write_index[3]),
        .I5(write_index[2]),
        .O(\slv_reg10[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg10[7]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_wstrb_reg_n_0_[0] ),
        .I2(write_index[1]),
        .I3(write_index[0]),
        .I4(write_index[3]),
        .I5(write_index[2]),
        .O(\slv_reg10[7]_i_1_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(\slv_reg10_reg[26]_0 [0]),
        .R(SR));
  FDRE \slv_reg10_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[10]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(\slv_reg10_reg[26]_0 [10]),
        .R(SR));
  FDRE \slv_reg10_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(\slv_reg10_reg[26]_0 [11]),
        .R(SR));
  FDRE \slv_reg10_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(\slv_reg10_reg[26]_0 [12]),
        .R(SR));
  FDRE \slv_reg10_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(\slv_reg10_reg[26]_0 [13]),
        .R(SR));
  FDRE \slv_reg10_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(\slv_reg10_reg[26]_0 [14]),
        .R(SR));
  FDRE \slv_reg10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(\slv_reg10_reg[26]_0 [1]),
        .R(SR));
  FDRE \slv_reg10_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(\slv_reg10_reg[26]_0 [15]),
        .R(SR));
  FDRE \slv_reg10_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(\slv_reg10_reg[26]_0 [16]),
        .R(SR));
  FDRE \slv_reg10_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(\slv_reg10_reg[26]_0 [17]),
        .R(SR));
  FDRE \slv_reg10_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(\slv_reg10_reg[26]_0 [18]),
        .R(SR));
  FDRE \slv_reg10_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[26]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(\slv_reg10_reg[26]_0 [19]),
        .R(SR));
  FDRE \slv_reg10_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[26]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(\slv_reg10_reg[26]_0 [20]),
        .R(SR));
  FDRE \slv_reg10_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[26]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(\slv_reg10_reg[26]_0 [21]),
        .R(SR));
  FDRE \slv_reg10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(\slv_reg10_reg[26]_0 [2]),
        .R(SR));
  FDRE \slv_reg10_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(\slv_reg10_reg[26]_0 [3]),
        .R(SR));
  FDRE \slv_reg10_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(\slv_reg10_reg[26]_0 [4]),
        .R(SR));
  FDRE \slv_reg10_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(\slv_reg10_reg[26]_0 [5]),
        .R(SR));
  FDRE \slv_reg10_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(\slv_reg10_reg[26]_0 [6]),
        .R(SR));
  FDRE \slv_reg10_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(\slv_reg10_reg[26]_0 [7]),
        .R(SR));
  FDRE \slv_reg10_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[10]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(\slv_reg10_reg[26]_0 [8]),
        .R(SR));
  FDRE \slv_reg10_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[10]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(\slv_reg10_reg[26]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg1[15]_i_1 
       (.I0(write_index[0]),
        .I1(write_index[1]),
        .I2(write_index[2]),
        .I3(write_index[3]),
        .I4(slv_reg_wren),
        .I5(p_0_in0),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg1[23]_i_1 
       (.I0(write_index[0]),
        .I1(write_index[1]),
        .I2(write_index[2]),
        .I3(write_index[3]),
        .I4(slv_reg_wren),
        .I5(\axi_wstrb_reg_n_0_[2] ),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg1[31]_i_1 
       (.I0(write_index[0]),
        .I1(write_index[1]),
        .I2(write_index[2]),
        .I3(write_index[3]),
        .I4(slv_reg_wren),
        .I5(\axi_wstrb_reg_n_0_[3] ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg1[7]_i_1 
       (.I0(write_index[0]),
        .I1(write_index[1]),
        .I2(write_index[2]),
        .I3(write_index[3]),
        .I4(slv_reg_wren),
        .I5(\axi_wstrb_reg_n_0_[0] ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(SR));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(SR));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(SR));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(SR));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(SR));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(SR));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(SR));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(SR));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(SR));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(SR));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(SR));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(SR));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(SR));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(SR));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(SR));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(SR));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(SR));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(SR));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(SR));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(SR));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(SR));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \slv_reg5[4]_i_1 
       (.I0(write_index[1]),
        .I1(write_index[0]),
        .I2(write_index[2]),
        .I3(write_index[3]),
        .I4(\axi_wstrb_reg_n_0_[0] ),
        .I5(slv_reg_wren),
        .O(\slv_reg5[4]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[4]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(\slv_reg5_reg[4]_0 [0]),
        .R(SR));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[4]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(\slv_reg5_reg[4]_0 [1]),
        .R(SR));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[4]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(\slv_reg5_reg[4]_0 [2]),
        .R(SR));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[4]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(\slv_reg5_reg[4]_0 [3]),
        .R(SR));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[4]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(\slv_reg5_reg[4]_0 [4]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \slv_reg6[1]_i_1 
       (.I0(write_index[0]),
        .I1(write_index[1]),
        .I2(write_index[2]),
        .I3(write_index[3]),
        .I4(\axi_wstrb_reg_n_0_[0] ),
        .I5(slv_reg_wren),
        .O(\slv_reg6[1]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[1]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(\slv_reg6_reg[1]_0 [0]),
        .R(SR));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[1]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(\slv_reg6_reg[1]_0 [1]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \slv_reg8[12]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in0),
        .I2(write_index[3]),
        .I3(write_index[2]),
        .I4(write_index[1]),
        .I5(write_index[0]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \slv_reg8[12]_i_2 
       (.I0(axi_awaddr_valid),
        .I1(axi_wdata_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .O(slv_reg_wren));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg8[7]_i_1 
       (.I0(write_index[3]),
        .I1(write_index[2]),
        .I2(write_index[1]),
        .I3(write_index[0]),
        .I4(slv_reg_wren),
        .I5(\axi_wstrb_reg_n_0_[0] ),
        .O(p_1_in[7]));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[0]),
        .Q(\slv_reg8_reg[12]_0 [0]),
        .R(SR));
  FDRE \slv_reg8_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[12]),
        .D(axi_wdata[10]),
        .Q(\slv_reg8_reg[12]_0 [10]),
        .R(SR));
  FDRE \slv_reg8_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[12]),
        .D(axi_wdata[11]),
        .Q(\slv_reg8_reg[12]_0 [11]),
        .R(SR));
  FDRE \slv_reg8_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[12]),
        .D(axi_wdata[12]),
        .Q(\slv_reg8_reg[12]_0 [12]),
        .R(SR));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[1]),
        .Q(\slv_reg8_reg[12]_0 [1]),
        .R(SR));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[2]),
        .Q(\slv_reg8_reg[12]_0 [2]),
        .R(SR));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[3]),
        .Q(\slv_reg8_reg[12]_0 [3]),
        .R(SR));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[4]),
        .Q(\slv_reg8_reg[12]_0 [4]),
        .R(SR));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[5]),
        .Q(\slv_reg8_reg[12]_0 [5]),
        .R(SR));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[6]),
        .Q(\slv_reg8_reg[12]_0 [6]),
        .R(SR));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[7]),
        .Q(\slv_reg8_reg[12]_0 [7]),
        .R(SR));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[12]),
        .D(axi_wdata[8]),
        .Q(\slv_reg8_reg[12]_0 [8]),
        .R(SR));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[12]),
        .D(axi_wdata[9]),
        .Q(\slv_reg8_reg[12]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg9[7]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_wstrb_reg_n_0_[0] ),
        .I2(write_index[3]),
        .I3(write_index[2]),
        .I4(write_index[0]),
        .I5(write_index[1]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg9[9]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in0),
        .I2(write_index[3]),
        .I3(write_index[2]),
        .I4(write_index[0]),
        .I5(write_index[1]),
        .O(\slv_reg9[9]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(\slv_reg9_reg[9]_0 [0]),
        .R(SR));
  FDRE \slv_reg9_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(\slv_reg9_reg[9]_0 [1]),
        .R(SR));
  FDRE \slv_reg9_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(\slv_reg9_reg[9]_0 [2]),
        .R(SR));
  FDRE \slv_reg9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(\slv_reg9_reg[9]_0 [3]),
        .R(SR));
  FDRE \slv_reg9_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(\slv_reg9_reg[9]_0 [4]),
        .R(SR));
  FDRE \slv_reg9_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(\slv_reg9_reg[9]_0 [5]),
        .R(SR));
  FDRE \slv_reg9_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(\slv_reg9_reg[9]_0 [6]),
        .R(SR));
  FDRE \slv_reg9_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(\slv_reg9_reg[9]_0 [7]),
        .R(SR));
  FDRE \slv_reg9_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[9]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(\slv_reg9_reg[9]_0 [8]),
        .R(SR));
  FDRE \slv_reg9_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[9]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(\slv_reg9_reg[9]_0 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[0]_i_1 
       (.I0(\slv_reg0_reg_n_0_[0] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[0]_i_2_n_0 ),
        .O(\tx_byte_host[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \tx_byte_host[0]_i_2 
       (.I0(\slv_reg1_reg_n_0_[8] ),
        .I1(\slv_reg1_reg_n_0_[0] ),
        .I2(\slv_reg1_reg_n_0_[24] ),
        .I3(byte_cntr[1]),
        .I4(byte_cntr[0]),
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
    .INIT(64'hF0CCFFAAF0CC00AA)) 
    \tx_byte_host[2]_i_2 
       (.I0(\slv_reg1_reg_n_0_[2] ),
        .I1(\slv_reg1_reg_n_0_[10] ),
        .I2(\slv_reg1_reg_n_0_[26] ),
        .I3(byte_cntr[1]),
        .I4(byte_cntr[0]),
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
    .INIT(64'hAACCF0FFAACCF000)) 
    \tx_byte_host[3]_i_2 
       (.I0(\slv_reg1_reg_n_0_[27] ),
        .I1(\slv_reg1_reg_n_0_[19] ),
        .I2(\slv_reg1_reg_n_0_[11] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[3] ),
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
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \tx_byte_host[5]_i_2 
       (.I0(\slv_reg1_reg_n_0_[13] ),
        .I1(\slv_reg1_reg_n_0_[5] ),
        .I2(\slv_reg1_reg_n_0_[29] ),
        .I3(byte_cntr[1]),
        .I4(byte_cntr[0]),
        .I5(\slv_reg1_reg_n_0_[21] ),
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
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \tx_byte_host[6]_i_2 
       (.I0(\slv_reg1_reg_n_0_[14] ),
        .I1(\slv_reg1_reg_n_0_[6] ),
        .I2(\slv_reg1_reg_n_0_[30] ),
        .I3(byte_cntr[1]),
        .I4(byte_cntr[0]),
        .I5(\slv_reg1_reg_n_0_[22] ),
        .O(\tx_byte_host[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[7]_i_1 
       (.I0(\slv_reg0_reg_n_0_[7] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[7]_i_2_n_0 ),
        .O(\tx_byte_host[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \tx_byte_host[7]_i_2 
       (.I0(\slv_reg1_reg_n_0_[15] ),
        .I1(\slv_reg1_reg_n_0_[7] ),
        .I2(\slv_reg1_reg_n_0_[31] ),
        .I3(byte_cntr[1]),
        .I4(byte_cntr[0]),
        .I5(\slv_reg1_reg_n_0_[23] ),
        .O(\tx_byte_host[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    txd_i_2
       (.I0(s00_axi_aresetn),
        .I1(\slv_reg6_reg[1]_0 [0]),
        .O(s00_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA2AAA00)) 
    word_rd_active_i_1
       (.I0(s00_axi_aresetn),
        .I1(rd_byte_cntr[0]),
        .I2(rd_byte_cntr[1]),
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
    .INIT(64'h08AAAAAA08080808)) 
    word_wr_active_i_1
       (.I0(s00_axi_aresetn),
        .I1(\is_reg1_wr_reg_n_0_[0] ),
        .I2(\is_reg1_wr_reg_n_0_[1] ),
        .I3(byte_cntr[1]),
        .I4(byte_cntr[0]),
        .I5(word_wr_active__0),
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
   (rx_time_coal_intr_reg_0,
    int_status,
    byte_time_cntr,
    rx_time_coal_intr_reg_1,
    \count_reg[9] ,
    \count_reg[10] ,
    \bit_time_cntr_reg[4]_0 ,
    \bit_time_cntr_reg[3]_0 ,
    \bit_time_cntr_reg[5]_0 ,
    SR,
    rx_empty_d1_reg_0,
    s00_axi_aclk,
    DI,
    S,
    rx_byte_cnt_coal_intr_reg_0,
    rx_byte_cnt_coal_intr_reg_1,
    rx_byte_cnt_coal_intr1_carry_0,
    rx_byte_cnt_coal_intr_reg_2,
    intr_reg,
    intr_reg_0,
    \bit_times_elapsed_reg[3]_0 ,
    \bit_times_elapsed_reg[3]_1 ,
    s00_axi_aresetn);
  output rx_time_coal_intr_reg_0;
  output [0:0]int_status;
  output [10:0]byte_time_cntr;
  output rx_time_coal_intr_reg_1;
  output \count_reg[9] ;
  output \count_reg[10] ;
  output \bit_time_cntr_reg[4]_0 ;
  output \bit_time_cntr_reg[3]_0 ;
  output [0:0]\bit_time_cntr_reg[5]_0 ;
  input [0:0]SR;
  input rx_empty_d1_reg_0;
  input s00_axi_aclk;
  input [4:0]DI;
  input [0:0]S;
  input [4:0]rx_byte_cnt_coal_intr_reg_0;
  input [0:0]rx_byte_cnt_coal_intr_reg_1;
  input [21:0]rx_byte_cnt_coal_intr1_carry_0;
  input [10:0]rx_byte_cnt_coal_intr_reg_2;
  input [1:0]intr_reg;
  input intr_reg_0;
  input [9:0]\bit_times_elapsed_reg[3]_0 ;
  input \bit_times_elapsed_reg[3]_1 ;
  input s00_axi_aresetn;

  wire [4:0]DI;
  wire [0:0]S;
  wire [0:0]SR;
  wire [12:0]bit_time_cntr;
  wire \bit_time_cntr[0]_i_1_n_0 ;
  wire \bit_time_cntr[10]_i_1_n_0 ;
  wire \bit_time_cntr[10]_i_2_n_0 ;
  wire \bit_time_cntr[11]_i_1_n_0 ;
  wire \bit_time_cntr[12]_i_1_n_0 ;
  wire \bit_time_cntr[12]_i_2_n_0 ;
  wire \bit_time_cntr[12]_i_3_n_0 ;
  wire \bit_time_cntr[1]_i_1_n_0 ;
  wire \bit_time_cntr[2]_i_1_n_0 ;
  wire \bit_time_cntr[3]_i_1_n_0 ;
  wire \bit_time_cntr[4]_i_1_n_0 ;
  wire \bit_time_cntr[5]_i_1_n_0 ;
  wire \bit_time_cntr[6]_i_1_n_0 ;
  wire \bit_time_cntr[7]_i_1_n_0 ;
  wire \bit_time_cntr[8]_i_1_n_0 ;
  wire \bit_time_cntr[9]_i_1_n_0 ;
  wire \bit_time_cntr_reg[3]_0 ;
  wire \bit_time_cntr_reg[4]_0 ;
  wire [0:0]\bit_time_cntr_reg[5]_0 ;
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
  wire [9:0]\bit_times_elapsed_reg[3]_0 ;
  wire \bit_times_elapsed_reg[3]_1 ;
  wire \bit_times_elapsed_reg_n_0_[0] ;
  wire \bit_times_elapsed_reg_n_0_[1] ;
  wire \bit_times_elapsed_reg_n_0_[2] ;
  wire \bit_times_elapsed_reg_n_0_[3] ;
  wire [10:0]byte_time_cntr;
  wire \byte_time_cntr[0]_i_1_n_0 ;
  wire \byte_time_cntr[10]_i_1_n_0 ;
  wire \byte_time_cntr[10]_i_2_n_0 ;
  wire \byte_time_cntr[10]_i_3_n_0 ;
  wire \byte_time_cntr[1]_i_1_n_0 ;
  wire \byte_time_cntr[2]_i_1_n_0 ;
  wire \byte_time_cntr[3]_i_1_n_0 ;
  wire \byte_time_cntr[4]_i_1_n_0 ;
  wire \byte_time_cntr[5]_i_1_n_0 ;
  wire \byte_time_cntr[6]_i_1_n_0 ;
  wire \byte_time_cntr[7]_i_1_n_0 ;
  wire \byte_time_cntr[8]_i_1_n_0 ;
  wire \byte_time_cntr[9]_i_1_n_0 ;
  wire \byte_time_cntr[9]_i_2_n_0 ;
  wire \byte_time_cntr[9]_i_3_n_0 ;
  wire \byte_time_cntr[9]_i_4_n_0 ;
  wire \byte_time_cntr[9]_i_5_n_0 ;
  wire byte_time_cntr_en;
  wire byte_time_cntr_en_i_1_n_0;
  wire \count_reg[10] ;
  wire \count_reg[9] ;
  wire [0:0]int_status;
  wire [1:0]intr_reg;
  wire intr_reg_0;
  wire rx_byte_cnt_coal_intr0;
  wire rx_byte_cnt_coal_intr1;
  wire [21:0]rx_byte_cnt_coal_intr1_carry_0;
  wire rx_byte_cnt_coal_intr1_carry_i_10_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_11_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_12_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_1_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_8_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_9_n_0;
  wire rx_byte_cnt_coal_intr1_carry_n_3;
  wire rx_byte_cnt_coal_intr1_carry_n_4;
  wire rx_byte_cnt_coal_intr1_carry_n_5;
  wire rx_byte_cnt_coal_intr1_carry_n_6;
  wire rx_byte_cnt_coal_intr1_carry_n_7;
  wire [4:0]rx_byte_cnt_coal_intr_reg_0;
  wire [0:0]rx_byte_cnt_coal_intr_reg_1;
  wire [10:0]rx_byte_cnt_coal_intr_reg_2;
  wire rx_empty_d1;
  wire rx_empty_d1_reg_0;
  wire rx_time_coal_intr0;
  wire rx_time_coal_intr1;
  wire rx_time_coal_intr1_carry_i_10_n_0;
  wire rx_time_coal_intr1_carry_i_11_n_0;
  wire rx_time_coal_intr1_carry_i_12_n_0;
  wire rx_time_coal_intr1_carry_i_1_n_0;
  wire rx_time_coal_intr1_carry_i_8_n_0;
  wire rx_time_coal_intr1_carry_i_9_n_0;
  wire rx_time_coal_intr1_carry_n_3;
  wire rx_time_coal_intr1_carry_n_4;
  wire rx_time_coal_intr1_carry_n_5;
  wire rx_time_coal_intr1_carry_n_6;
  wire rx_time_coal_intr1_carry_n_7;
  wire rx_time_coal_intr_reg_0;
  wire rx_time_coal_intr_reg_1;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [7:6]NLW_rx_byte_cnt_coal_intr1_carry_CO_UNCONNECTED;
  wire [7:0]NLW_rx_byte_cnt_coal_intr1_carry_O_UNCONNECTED;
  wire [7:6]NLW_rx_time_coal_intr1_carry_CO_UNCONNECTED;
  wire [7:0]NLW_rx_time_coal_intr1_carry_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \bit_time_cntr[0]_i_1 
       (.I0(bit_time_cntr[0]),
        .O(\bit_time_cntr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \bit_time_cntr[10]_i_1 
       (.I0(bit_time_cntr[10]),
        .I1(bit_time_cntr[9]),
        .I2(bit_time_cntr[7]),
        .I3(\bit_time_cntr[10]_i_2_n_0 ),
        .I4(bit_time_cntr[6]),
        .I5(bit_time_cntr[8]),
        .O(\bit_time_cntr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bit_time_cntr[10]_i_2 
       (.I0(\bit_time_cntr_reg[4]_0 ),
        .I1(bit_time_cntr[2]),
        .I2(bit_time_cntr[1]),
        .I3(bit_time_cntr[0]),
        .I4(\bit_time_cntr_reg[3]_0 ),
        .I5(\bit_time_cntr_reg[5]_0 ),
        .O(\bit_time_cntr[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_time_cntr[11]_i_1 
       (.I0(bit_time_cntr[11]),
        .I1(\bit_time_cntr[12]_i_3_n_0 ),
        .O(\bit_time_cntr[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bit_time_cntr[12]_i_1 
       (.I0(\bit_times_elapsed[3]_i_4_n_0 ),
        .I1(s00_axi_aresetn),
        .O(\bit_time_cntr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_time_cntr[12]_i_2 
       (.I0(bit_time_cntr[12]),
        .I1(\bit_time_cntr[12]_i_3_n_0 ),
        .I2(bit_time_cntr[11]),
        .O(\bit_time_cntr[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \bit_time_cntr[12]_i_3 
       (.I0(bit_time_cntr[10]),
        .I1(bit_time_cntr[9]),
        .I2(bit_time_cntr[7]),
        .I3(\bit_time_cntr[10]_i_2_n_0 ),
        .I4(bit_time_cntr[6]),
        .I5(bit_time_cntr[8]),
        .O(\bit_time_cntr[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_time_cntr[1]_i_1 
       (.I0(bit_time_cntr[1]),
        .I1(bit_time_cntr[0]),
        .O(\bit_time_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_time_cntr[2]_i_1 
       (.I0(bit_time_cntr[2]),
        .I1(bit_time_cntr[0]),
        .I2(bit_time_cntr[1]),
        .O(\bit_time_cntr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bit_time_cntr[3]_i_1 
       (.I0(\bit_time_cntr_reg[3]_0 ),
        .I1(bit_time_cntr[2]),
        .I2(bit_time_cntr[1]),
        .I3(bit_time_cntr[0]),
        .O(\bit_time_cntr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \bit_time_cntr[4]_i_1 
       (.I0(\bit_time_cntr_reg[4]_0 ),
        .I1(\bit_time_cntr_reg[3]_0 ),
        .I2(bit_time_cntr[0]),
        .I3(bit_time_cntr[1]),
        .I4(bit_time_cntr[2]),
        .O(\bit_time_cntr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \bit_time_cntr[5]_i_1 
       (.I0(\bit_time_cntr_reg[5]_0 ),
        .I1(\bit_time_cntr_reg[4]_0 ),
        .I2(bit_time_cntr[2]),
        .I3(bit_time_cntr[1]),
        .I4(bit_time_cntr[0]),
        .I5(\bit_time_cntr_reg[3]_0 ),
        .O(\bit_time_cntr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \bit_time_cntr[6]_i_1 
       (.I0(bit_time_cntr[6]),
        .I1(\bit_time_cntr[10]_i_2_n_0 ),
        .O(\bit_time_cntr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \bit_time_cntr[7]_i_1 
       (.I0(bit_time_cntr[7]),
        .I1(bit_time_cntr[6]),
        .I2(\bit_time_cntr[10]_i_2_n_0 ),
        .O(\bit_time_cntr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \bit_time_cntr[8]_i_1 
       (.I0(bit_time_cntr[8]),
        .I1(bit_time_cntr[7]),
        .I2(\bit_time_cntr[10]_i_2_n_0 ),
        .I3(bit_time_cntr[6]),
        .O(\bit_time_cntr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \bit_time_cntr[9]_i_1 
       (.I0(bit_time_cntr[9]),
        .I1(bit_time_cntr[8]),
        .I2(bit_time_cntr[6]),
        .I3(\bit_time_cntr[10]_i_2_n_0 ),
        .I4(bit_time_cntr[7]),
        .O(\bit_time_cntr[9]_i_1_n_0 ));
  FDRE \bit_time_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[0]_i_1_n_0 ),
        .Q(bit_time_cntr[0]),
        .R(\bit_time_cntr[12]_i_1_n_0 ));
  FDRE \bit_time_cntr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[10]_i_1_n_0 ),
        .Q(bit_time_cntr[10]),
        .R(\bit_time_cntr[12]_i_1_n_0 ));
  FDRE \bit_time_cntr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[11]_i_1_n_0 ),
        .Q(bit_time_cntr[11]),
        .R(\bit_time_cntr[12]_i_1_n_0 ));
  FDRE \bit_time_cntr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[12]_i_2_n_0 ),
        .Q(bit_time_cntr[12]),
        .R(\bit_time_cntr[12]_i_1_n_0 ));
  FDRE \bit_time_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[1]_i_1_n_0 ),
        .Q(bit_time_cntr[1]),
        .R(\bit_time_cntr[12]_i_1_n_0 ));
  FDRE \bit_time_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[2]_i_1_n_0 ),
        .Q(bit_time_cntr[2]),
        .R(\bit_time_cntr[12]_i_1_n_0 ));
  FDRE \bit_time_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[3]_i_1_n_0 ),
        .Q(\bit_time_cntr_reg[3]_0 ),
        .R(\bit_time_cntr[12]_i_1_n_0 ));
  FDRE \bit_time_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[4]_i_1_n_0 ),
        .Q(\bit_time_cntr_reg[4]_0 ),
        .R(\bit_time_cntr[12]_i_1_n_0 ));
  FDRE \bit_time_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[5]_i_1_n_0 ),
        .Q(\bit_time_cntr_reg[5]_0 ),
        .R(\bit_time_cntr[12]_i_1_n_0 ));
  FDRE \bit_time_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[6]_i_1_n_0 ),
        .Q(bit_time_cntr[6]),
        .R(\bit_time_cntr[12]_i_1_n_0 ));
  FDRE \bit_time_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[7]_i_1_n_0 ),
        .Q(bit_time_cntr[7]),
        .R(\bit_time_cntr[12]_i_1_n_0 ));
  FDRE \bit_time_cntr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[8]_i_1_n_0 ),
        .Q(bit_time_cntr[8]),
        .R(\bit_time_cntr[12]_i_1_n_0 ));
  FDRE \bit_time_cntr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[9]_i_1_n_0 ),
        .Q(bit_time_cntr[9]),
        .R(\bit_time_cntr[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_times_elapsed[0]_i_1 
       (.I0(\bit_times_elapsed_reg_n_0_[0] ),
        .O(\bit_times_elapsed[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_times_elapsed[1]_i_1 
       (.I0(\bit_times_elapsed_reg_n_0_[0] ),
        .I1(\bit_times_elapsed_reg_n_0_[1] ),
        .O(\bit_times_elapsed[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_times_elapsed[2]_i_1 
       (.I0(\bit_times_elapsed_reg_n_0_[2] ),
        .I1(\bit_times_elapsed_reg_n_0_[1] ),
        .I2(\bit_times_elapsed_reg_n_0_[0] ),
        .O(\bit_times_elapsed[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0040FFFF)) 
    \bit_times_elapsed[3]_i_1 
       (.I0(\bit_times_elapsed_reg_n_0_[2] ),
        .I1(\bit_times_elapsed_reg_n_0_[3] ),
        .I2(\bit_times_elapsed_reg_n_0_[0] ),
        .I3(\bit_times_elapsed_reg_n_0_[1] ),
        .I4(s00_axi_aresetn),
        .I5(\bit_times_elapsed[3]_i_4_n_0 ),
        .O(\bit_times_elapsed[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA9AAA)) 
    \bit_times_elapsed[3]_i_2 
       (.I0(\bit_times_elapsed[3]_i_4_n_0 ),
        .I1(\bit_times_elapsed_reg_n_0_[1] ),
        .I2(\bit_times_elapsed_reg_n_0_[0] ),
        .I3(\bit_times_elapsed_reg_n_0_[3] ),
        .I4(\bit_times_elapsed_reg_n_0_[2] ),
        .O(\bit_times_elapsed[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bit_times_elapsed[3]_i_3 
       (.I0(\bit_times_elapsed_reg_n_0_[3] ),
        .I1(\bit_times_elapsed_reg_n_0_[0] ),
        .I2(\bit_times_elapsed_reg_n_0_[1] ),
        .I3(\bit_times_elapsed_reg_n_0_[2] ),
        .O(\bit_times_elapsed[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000009)) 
    \bit_times_elapsed[3]_i_4 
       (.I0(bit_time_cntr[12]),
        .I1(\bit_times_elapsed_reg[3]_0 [9]),
        .I2(\bit_times_elapsed[3]_i_5_n_0 ),
        .I3(\bit_times_elapsed[3]_i_6_n_0 ),
        .I4(\bit_times_elapsed[3]_i_7_n_0 ),
        .I5(\bit_times_elapsed_reg[3]_1 ),
        .O(\bit_times_elapsed[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \bit_times_elapsed[3]_i_5 
       (.I0(bit_time_cntr[6]),
        .I1(\bit_times_elapsed_reg[3]_0 [3]),
        .I2(\bit_times_elapsed_reg[3]_0 [5]),
        .I3(bit_time_cntr[8]),
        .I4(\bit_times_elapsed_reg[3]_0 [4]),
        .I5(bit_time_cntr[7]),
        .O(\bit_times_elapsed[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \bit_times_elapsed[3]_i_6 
       (.I0(bit_time_cntr[9]),
        .I1(\bit_times_elapsed_reg[3]_0 [6]),
        .I2(\bit_times_elapsed_reg[3]_0 [7]),
        .I3(bit_time_cntr[10]),
        .I4(\bit_times_elapsed_reg[3]_0 [8]),
        .I5(bit_time_cntr[11]),
        .O(\bit_times_elapsed[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \bit_times_elapsed[3]_i_7 
       (.I0(bit_time_cntr[0]),
        .I1(\bit_times_elapsed_reg[3]_0 [0]),
        .I2(\bit_times_elapsed_reg[3]_0 [1]),
        .I3(bit_time_cntr[1]),
        .I4(\bit_times_elapsed_reg[3]_0 [2]),
        .I5(bit_time_cntr[2]),
        .O(\bit_times_elapsed[3]_i_7_n_0 ));
  FDRE \bit_times_elapsed_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\bit_times_elapsed[3]_i_2_n_0 ),
        .D(\bit_times_elapsed[0]_i_1_n_0 ),
        .Q(\bit_times_elapsed_reg_n_0_[0] ),
        .R(\bit_times_elapsed[3]_i_1_n_0 ));
  FDRE \bit_times_elapsed_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\bit_times_elapsed[3]_i_2_n_0 ),
        .D(\bit_times_elapsed[1]_i_1_n_0 ),
        .Q(\bit_times_elapsed_reg_n_0_[1] ),
        .R(\bit_times_elapsed[3]_i_1_n_0 ));
  FDRE \bit_times_elapsed_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\bit_times_elapsed[3]_i_2_n_0 ),
        .D(\bit_times_elapsed[2]_i_1_n_0 ),
        .Q(\bit_times_elapsed_reg_n_0_[2] ),
        .R(\bit_times_elapsed[3]_i_1_n_0 ));
  FDRE \bit_times_elapsed_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\bit_times_elapsed[3]_i_2_n_0 ),
        .D(\bit_times_elapsed[3]_i_3_n_0 ),
        .Q(\bit_times_elapsed_reg_n_0_[3] ),
        .R(\bit_times_elapsed[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \byte_time_cntr[0]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(s00_axi_aresetn),
        .I3(byte_time_cntr[0]),
        .O(\byte_time_cntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \byte_time_cntr[10]_i_1 
       (.I0(\byte_time_cntr[10]_i_2_n_0 ),
        .I1(byte_time_cntr[9]),
        .I2(\byte_time_cntr[10]_i_3_n_0 ),
        .I3(\byte_time_cntr[9]_i_2_n_0 ),
        .I4(byte_time_cntr[10]),
        .O(\byte_time_cntr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \byte_time_cntr[10]_i_2 
       (.I0(byte_time_cntr[8]),
        .I1(byte_time_cntr[7]),
        .I2(\byte_time_cntr[9]_i_5_n_0 ),
        .I3(byte_time_cntr[6]),
        .O(\byte_time_cntr[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_time_cntr[10]_i_3 
       (.I0(s00_axi_aresetn),
        .I1(rx_empty_d1),
        .I2(rx_empty_d1_reg_0),
        .O(\byte_time_cntr[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00D0D000)) 
    \byte_time_cntr[1]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(s00_axi_aresetn),
        .I3(byte_time_cntr[1]),
        .I4(byte_time_cntr[0]),
        .O(\byte_time_cntr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00D0D000D000D000)) 
    \byte_time_cntr[2]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(s00_axi_aresetn),
        .I3(byte_time_cntr[2]),
        .I4(byte_time_cntr[0]),
        .I5(byte_time_cntr[1]),
        .O(\byte_time_cntr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \byte_time_cntr[3]_i_1 
       (.I0(byte_time_cntr[3]),
        .I1(byte_time_cntr[2]),
        .I2(byte_time_cntr[1]),
        .I3(byte_time_cntr[0]),
        .O(\byte_time_cntr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \byte_time_cntr[4]_i_1 
       (.I0(byte_time_cntr[4]),
        .I1(byte_time_cntr[3]),
        .I2(byte_time_cntr[0]),
        .I3(byte_time_cntr[1]),
        .I4(byte_time_cntr[2]),
        .O(\byte_time_cntr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \byte_time_cntr[5]_i_1 
       (.I0(byte_time_cntr[5]),
        .I1(byte_time_cntr[4]),
        .I2(byte_time_cntr[2]),
        .I3(byte_time_cntr[1]),
        .I4(byte_time_cntr[0]),
        .I5(byte_time_cntr[3]),
        .O(\byte_time_cntr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hD00000D0)) 
    \byte_time_cntr[6]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(s00_axi_aresetn),
        .I3(byte_time_cntr[6]),
        .I4(\byte_time_cntr[9]_i_5_n_0 ),
        .O(\byte_time_cntr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD000D00000D0D000)) 
    \byte_time_cntr[7]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(s00_axi_aresetn),
        .I3(byte_time_cntr[7]),
        .I4(byte_time_cntr[6]),
        .I5(\byte_time_cntr[9]_i_5_n_0 ),
        .O(\byte_time_cntr[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA6AA)) 
    \byte_time_cntr[8]_i_1 
       (.I0(byte_time_cntr[8]),
        .I1(byte_time_cntr[7]),
        .I2(\byte_time_cntr[9]_i_5_n_0 ),
        .I3(byte_time_cntr[6]),
        .O(\byte_time_cntr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08AA)) 
    \byte_time_cntr[9]_i_1 
       (.I0(\byte_time_cntr[9]_i_2_n_0 ),
        .I1(rx_empty_d1_reg_0),
        .I2(rx_empty_d1),
        .I3(s00_axi_aresetn),
        .O(\byte_time_cntr[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4040FF40FFFFFFFF)) 
    \byte_time_cntr[9]_i_2 
       (.I0(rx_time_coal_intr_reg_0),
        .I1(byte_time_cntr_en),
        .I2(\byte_time_cntr[9]_i_4_n_0 ),
        .I3(rx_empty_d1_reg_0),
        .I4(rx_empty_d1),
        .I5(s00_axi_aresetn),
        .O(\byte_time_cntr[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \byte_time_cntr[9]_i_3 
       (.I0(byte_time_cntr[9]),
        .I1(byte_time_cntr[6]),
        .I2(\byte_time_cntr[9]_i_5_n_0 ),
        .I3(byte_time_cntr[7]),
        .I4(byte_time_cntr[8]),
        .O(\byte_time_cntr[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \byte_time_cntr[9]_i_4 
       (.I0(\bit_times_elapsed_reg_n_0_[1] ),
        .I1(\bit_times_elapsed_reg_n_0_[0] ),
        .I2(\bit_times_elapsed_reg_n_0_[3] ),
        .I3(\bit_times_elapsed_reg_n_0_[2] ),
        .O(\byte_time_cntr[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \byte_time_cntr[9]_i_5 
       (.I0(byte_time_cntr[4]),
        .I1(byte_time_cntr[2]),
        .I2(byte_time_cntr[1]),
        .I3(byte_time_cntr[0]),
        .I4(byte_time_cntr[3]),
        .I5(byte_time_cntr[5]),
        .O(\byte_time_cntr[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h088A0808)) 
    byte_time_cntr_en_i_1
       (.I0(s00_axi_aresetn),
        .I1(rx_empty_d1),
        .I2(rx_empty_d1_reg_0),
        .I3(rx_time_coal_intr_reg_0),
        .I4(byte_time_cntr_en),
        .O(byte_time_cntr_en_i_1_n_0));
  FDRE byte_time_cntr_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(byte_time_cntr_en_i_1_n_0),
        .Q(byte_time_cntr_en),
        .R(1'b0));
  FDRE \byte_time_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\byte_time_cntr[9]_i_2_n_0 ),
        .D(\byte_time_cntr[0]_i_1_n_0 ),
        .Q(byte_time_cntr[0]),
        .R(1'b0));
  FDRE \byte_time_cntr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\byte_time_cntr[10]_i_1_n_0 ),
        .Q(byte_time_cntr[10]),
        .R(1'b0));
  FDRE \byte_time_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\byte_time_cntr[9]_i_2_n_0 ),
        .D(\byte_time_cntr[1]_i_1_n_0 ),
        .Q(byte_time_cntr[1]),
        .R(1'b0));
  FDRE \byte_time_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\byte_time_cntr[9]_i_2_n_0 ),
        .D(\byte_time_cntr[2]_i_1_n_0 ),
        .Q(byte_time_cntr[2]),
        .R(1'b0));
  FDRE \byte_time_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\byte_time_cntr[9]_i_2_n_0 ),
        .D(\byte_time_cntr[3]_i_1_n_0 ),
        .Q(byte_time_cntr[3]),
        .R(\byte_time_cntr[9]_i_1_n_0 ));
  FDRE \byte_time_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\byte_time_cntr[9]_i_2_n_0 ),
        .D(\byte_time_cntr[4]_i_1_n_0 ),
        .Q(byte_time_cntr[4]),
        .R(\byte_time_cntr[9]_i_1_n_0 ));
  FDRE \byte_time_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\byte_time_cntr[9]_i_2_n_0 ),
        .D(\byte_time_cntr[5]_i_1_n_0 ),
        .Q(byte_time_cntr[5]),
        .R(\byte_time_cntr[9]_i_1_n_0 ));
  FDRE \byte_time_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\byte_time_cntr[9]_i_2_n_0 ),
        .D(\byte_time_cntr[6]_i_1_n_0 ),
        .Q(byte_time_cntr[6]),
        .R(1'b0));
  FDRE \byte_time_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\byte_time_cntr[9]_i_2_n_0 ),
        .D(\byte_time_cntr[7]_i_1_n_0 ),
        .Q(byte_time_cntr[7]),
        .R(1'b0));
  FDRE \byte_time_cntr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\byte_time_cntr[9]_i_2_n_0 ),
        .D(\byte_time_cntr[8]_i_1_n_0 ),
        .Q(byte_time_cntr[8]),
        .R(\byte_time_cntr[9]_i_1_n_0 ));
  FDRE \byte_time_cntr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\byte_time_cntr[9]_i_2_n_0 ),
        .D(\byte_time_cntr[9]_i_3_n_0 ),
        .Q(byte_time_cntr[9]),
        .R(\byte_time_cntr[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    intr_i_1
       (.I0(rx_time_coal_intr_reg_0),
        .I1(intr_reg[1]),
        .I2(int_status),
        .I3(intr_reg[0]),
        .I4(intr_reg_0),
        .O(rx_time_coal_intr_reg_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 rx_byte_cnt_coal_intr1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_rx_byte_cnt_coal_intr1_carry_CO_UNCONNECTED[7:6],rx_byte_cnt_coal_intr1,rx_byte_cnt_coal_intr1_carry_n_3,rx_byte_cnt_coal_intr1_carry_n_4,rx_byte_cnt_coal_intr1_carry_n_5,rx_byte_cnt_coal_intr1_carry_n_6,rx_byte_cnt_coal_intr1_carry_n_7}),
        .DI({1'b0,1'b0,rx_byte_cnt_coal_intr1_carry_i_1_n_0,rx_byte_cnt_coal_intr_reg_0}),
        .O(NLW_rx_byte_cnt_coal_intr1_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,rx_byte_cnt_coal_intr_reg_1,rx_byte_cnt_coal_intr1_carry_i_8_n_0,rx_byte_cnt_coal_intr1_carry_i_9_n_0,rx_byte_cnt_coal_intr1_carry_i_10_n_0,rx_byte_cnt_coal_intr1_carry_i_11_n_0,rx_byte_cnt_coal_intr1_carry_i_12_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    rx_byte_cnt_coal_intr1_carry_i_1
       (.I0(rx_byte_cnt_coal_intr_reg_2[10]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[21]),
        .O(rx_byte_cnt_coal_intr1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_byte_cnt_coal_intr1_carry_i_10
       (.I0(rx_byte_cnt_coal_intr_reg_2[5]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[16]),
        .I2(rx_byte_cnt_coal_intr_reg_2[4]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[15]),
        .O(rx_byte_cnt_coal_intr1_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_byte_cnt_coal_intr1_carry_i_11
       (.I0(rx_byte_cnt_coal_intr_reg_2[3]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[14]),
        .I2(rx_byte_cnt_coal_intr_reg_2[2]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[13]),
        .O(rx_byte_cnt_coal_intr1_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_byte_cnt_coal_intr1_carry_i_12
       (.I0(rx_byte_cnt_coal_intr_reg_2[1]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[12]),
        .I2(rx_byte_cnt_coal_intr_reg_2[0]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[11]),
        .O(rx_byte_cnt_coal_intr1_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_byte_cnt_coal_intr1_carry_i_8
       (.I0(rx_byte_cnt_coal_intr_reg_2[9]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[20]),
        .I2(rx_byte_cnt_coal_intr_reg_2[8]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[19]),
        .O(rx_byte_cnt_coal_intr1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_byte_cnt_coal_intr1_carry_i_9
       (.I0(rx_byte_cnt_coal_intr_reg_2[7]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[18]),
        .I2(rx_byte_cnt_coal_intr_reg_2[6]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[17]),
        .O(rx_byte_cnt_coal_intr1_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    rx_byte_cnt_coal_intr_i_1
       (.I0(rx_byte_cnt_coal_intr_reg_2[3]),
        .I1(rx_byte_cnt_coal_intr_reg_2[8]),
        .I2(rx_byte_cnt_coal_intr_reg_2[2]),
        .I3(\count_reg[9] ),
        .I4(\count_reg[10] ),
        .I5(rx_byte_cnt_coal_intr1),
        .O(rx_byte_cnt_coal_intr0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rx_byte_cnt_coal_intr_i_2
       (.I0(rx_byte_cnt_coal_intr_reg_2[9]),
        .I1(rx_byte_cnt_coal_intr_reg_2[5]),
        .I2(rx_byte_cnt_coal_intr_reg_2[4]),
        .I3(rx_byte_cnt_coal_intr_reg_2[0]),
        .O(\count_reg[9] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rx_byte_cnt_coal_intr_i_3
       (.I0(rx_byte_cnt_coal_intr_reg_2[10]),
        .I1(rx_byte_cnt_coal_intr_reg_2[6]),
        .I2(rx_byte_cnt_coal_intr_reg_2[7]),
        .I3(rx_byte_cnt_coal_intr_reg_2[1]),
        .O(\count_reg[10] ));
  FDRE rx_byte_cnt_coal_intr_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_byte_cnt_coal_intr0),
        .Q(int_status),
        .R(SR));
  FDSE rx_empty_d1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_empty_d1_reg_0),
        .Q(rx_empty_d1),
        .S(SR));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 rx_time_coal_intr1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_rx_time_coal_intr1_carry_CO_UNCONNECTED[7:6],rx_time_coal_intr1,rx_time_coal_intr1_carry_n_3,rx_time_coal_intr1_carry_n_4,rx_time_coal_intr1_carry_n_5,rx_time_coal_intr1_carry_n_6,rx_time_coal_intr1_carry_n_7}),
        .DI({1'b0,1'b0,rx_time_coal_intr1_carry_i_1_n_0,DI}),
        .O(NLW_rx_time_coal_intr1_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,S,rx_time_coal_intr1_carry_i_8_n_0,rx_time_coal_intr1_carry_i_9_n_0,rx_time_coal_intr1_carry_i_10_n_0,rx_time_coal_intr1_carry_i_11_n_0,rx_time_coal_intr1_carry_i_12_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    rx_time_coal_intr1_carry_i_1
       (.I0(byte_time_cntr[10]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[10]),
        .O(rx_time_coal_intr1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_time_coal_intr1_carry_i_10
       (.I0(byte_time_cntr[5]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[5]),
        .I2(byte_time_cntr[4]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[4]),
        .O(rx_time_coal_intr1_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_time_coal_intr1_carry_i_11
       (.I0(byte_time_cntr[3]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[3]),
        .I2(byte_time_cntr[2]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[2]),
        .O(rx_time_coal_intr1_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_time_coal_intr1_carry_i_12
       (.I0(byte_time_cntr[1]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[1]),
        .I2(byte_time_cntr[0]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[0]),
        .O(rx_time_coal_intr1_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_time_coal_intr1_carry_i_8
       (.I0(byte_time_cntr[9]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[9]),
        .I2(byte_time_cntr[8]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[8]),
        .O(rx_time_coal_intr1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_time_coal_intr1_carry_i_9
       (.I0(byte_time_cntr[7]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[7]),
        .I2(byte_time_cntr[6]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[6]),
        .O(rx_time_coal_intr1_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rx_time_coal_intr_i_1
       (.I0(byte_time_cntr_en),
        .I1(rx_time_coal_intr1),
        .O(rx_time_coal_intr0));
  FDRE rx_time_coal_intr_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_time_coal_intr0),
        .Q(rx_time_coal_intr_reg_0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "uart_rx" *) 
module design_1_e_uart_0_0_uart_rx
   (din,
    \dv_inhibit_cntr_reg[4]_0 ,
    wr_en,
    \rx_samples_reg[2]_0 ,
    s00_axi_aclk,
    \sample_clk_cntr_reg[9]_0 ,
    \dv_inhibit_cntr_reg[0]_0 ,
    s00_axi_aresetn,
    \en_dly_reg[0]_0 ,
    \dv_inhibit_cntr_reg[4]_1 ,
    SR,
    SS,
    rxd);
  output [7:0]din;
  output \dv_inhibit_cntr_reg[4]_0 ;
  output wr_en;
  input \rx_samples_reg[2]_0 ;
  input s00_axi_aclk;
  input [9:0]\sample_clk_cntr_reg[9]_0 ;
  input \dv_inhibit_cntr_reg[0]_0 ;
  input s00_axi_aresetn;
  input [0:0]\en_dly_reg[0]_0 ;
  input \dv_inhibit_cntr_reg[4]_1 ;
  input [0:0]SR;
  input [0:0]SS;
  input rxd;

  wire [0:0]SR;
  wire [0:0]SS;
  wire [7:0]din;
  wire \dv_inhibit_cntr[0]_i_1_n_0 ;
  wire \dv_inhibit_cntr[1]_i_1_n_0 ;
  wire \dv_inhibit_cntr[2]_i_1_n_0 ;
  wire \dv_inhibit_cntr[3]_i_1_n_0 ;
  wire \dv_inhibit_cntr[4]_i_1_n_0 ;
  wire \dv_inhibit_cntr[4]_i_2_n_0 ;
  wire \dv_inhibit_cntr[5]_i_1_n_0 ;
  wire \dv_inhibit_cntr[5]_i_2_n_0 ;
  wire \dv_inhibit_cntr_reg[0]_0 ;
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
  wire [1:0]p_1_in;
  wire \rx_samples[44]_i_2_n_0 ;
  wire \rx_samples_reg[13]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[14]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[18]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[19]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[23]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[24]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[28]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[29]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[2]_0 ;
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
  wire \sample_clk_cntr[7]_i_3_n_0 ;
  wire \sample_clk_cntr[8]_i_1_n_0 ;
  wire \sample_clk_cntr[8]_i_2_n_0 ;
  wire \sample_clk_cntr[8]_i_3_n_0 ;
  wire \sample_clk_cntr[9]_i_2_n_0 ;
  wire \sample_clk_cntr[9]_i_3_n_0 ;
  wire [9:0]\sample_clk_cntr_reg[9]_0 ;
  wire wr_en;

  LUT6 #(
    .INIT(64'h00FF00FF00FF00FE)) 
    \dv_inhibit_cntr[0]_i_1 
       (.I0(\dv_inhibit_cntr_reg_n_0_[5] ),
        .I1(\dv_inhibit_cntr_reg_n_0_[3] ),
        .I2(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[2] ),
        .I5(\dv_inhibit_cntr_reg_n_0_[4] ),
        .O(\dv_inhibit_cntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000040)) 
    \dv_inhibit_cntr[1]_i_1 
       (.I0(\dv_inhibit_cntr_reg[4]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\en_dly_reg[0]_0 ),
        .I3(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[0] ),
        .O(\dv_inhibit_cntr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0000FFFF0000E)) 
    \dv_inhibit_cntr[2]_i_1 
       (.I0(\dv_inhibit_cntr_reg_n_0_[5] ),
        .I1(\dv_inhibit_cntr_reg_n_0_[3] ),
        .I2(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[2] ),
        .I5(\dv_inhibit_cntr_reg_n_0_[4] ),
        .O(\dv_inhibit_cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCC3CCCCCCC2)) 
    \dv_inhibit_cntr[3]_i_1 
       (.I0(\dv_inhibit_cntr_reg_n_0_[5] ),
        .I1(\dv_inhibit_cntr_reg_n_0_[3] ),
        .I2(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[2] ),
        .I5(\dv_inhibit_cntr_reg_n_0_[4] ),
        .O(\dv_inhibit_cntr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \dv_inhibit_cntr[4]_i_1 
       (.I0(\rx_samples[44]_i_2_n_0 ),
        .I1(\dv_inhibit_cntr_reg[4]_0 ),
        .I2(s00_axi_aresetn),
        .I3(\en_dly_reg[0]_0 ),
        .O(\dv_inhibit_cntr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    \dv_inhibit_cntr[4]_i_2 
       (.I0(\dv_inhibit_cntr_reg[4]_1 ),
        .I1(\dv_inhibit_cntr_reg_n_0_[2] ),
        .I2(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[3] ),
        .I5(\dv_inhibit_cntr_reg_n_0_[4] ),
        .O(\dv_inhibit_cntr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04FF00FF)) 
    \dv_inhibit_cntr[5]_i_1 
       (.I0(p_1_in[1]),
        .I1(\rx_samples_reg_n_0_[0] ),
        .I2(p_1_in[0]),
        .I3(\dv_inhibit_cntr_reg[0]_0 ),
        .I4(\dv_inhibit_cntr_reg[4]_0 ),
        .O(\dv_inhibit_cntr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \dv_inhibit_cntr[5]_i_2 
       (.I0(\dv_inhibit_cntr_reg_n_0_[5] ),
        .I1(\dv_inhibit_cntr_reg_n_0_[4] ),
        .I2(\dv_inhibit_cntr_reg_n_0_[2] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I5(\dv_inhibit_cntr_reg_n_0_[3] ),
        .O(\dv_inhibit_cntr[5]_i_2_n_0 ));
  FDSE \dv_inhibit_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[4]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[0]_i_1_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[0] ),
        .S(\dv_inhibit_cntr[5]_i_1_n_0 ));
  FDRE \dv_inhibit_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[4]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[1]_i_1_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[1] ),
        .R(1'b0));
  FDSE \dv_inhibit_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[4]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[2]_i_1_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[2] ),
        .S(\dv_inhibit_cntr[5]_i_1_n_0 ));
  FDSE \dv_inhibit_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[4]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[3]_i_1_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[3] ),
        .S(\dv_inhibit_cntr[5]_i_1_n_0 ));
  FDRE \dv_inhibit_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[4]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[4]_i_2_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[4] ),
        .R(1'b0));
  FDSE \dv_inhibit_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[4]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[5]_i_2_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[5] ),
        .S(\dv_inhibit_cntr[5]_i_1_n_0 ));
  FDRE \en_dly_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\en_dly_reg[0]_0 ),
        .Q(en_dly[0]),
        .R(SR));
  FDRE \en_dly_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(en_dly[0]),
        .Q(en_dly[1]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0020)) 
    fifo_rx_i_1
       (.I0(\dv_inhibit_cntr_reg[4]_0 ),
        .I1(p_1_in[1]),
        .I2(\rx_samples_reg_n_0_[0] ),
        .I3(p_1_in[0]),
        .O(wr_en));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    fifo_rx_i_2
       (.I0(\dv_inhibit_cntr_reg_n_0_[4] ),
        .I1(\dv_inhibit_cntr_reg_n_0_[2] ),
        .I2(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[3] ),
        .I5(\dv_inhibit_cntr_reg_n_0_[5] ),
        .O(\dv_inhibit_cntr_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \rx_samples[44]_i_2 
       (.I0(sample_clk_cntr[9]),
        .I1(sample_clk_cntr[7]),
        .I2(\sample_clk_cntr[7]_i_2_n_0 ),
        .I3(sample_clk_cntr[6]),
        .I4(sample_clk_cntr[8]),
        .O(\rx_samples[44]_i_2_n_0 ));
  FDSE \rx_samples_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(p_1_in[0]),
        .Q(\rx_samples_reg_n_0_[0] ),
        .S(\rx_samples_reg[2]_0 ));
  FDSE \rx_samples_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(rx_samples_reg_gate__4_n_0),
        .Q(din[1]),
        .S(\rx_samples_reg[2]_0 ));
  FDRE \rx_samples_reg[13]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
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
        .CE(\rx_samples[44]_i_2_n_0 ),
        .CLK(s00_axi_aclk),
        .D(din[2]),
        .Q(\rx_samples_reg[14]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(rx_samples_reg_gate__3_n_0),
        .Q(din[2]),
        .S(\rx_samples_reg[2]_0 ));
  FDRE \rx_samples_reg[18]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
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
        .CE(\rx_samples[44]_i_2_n_0 ),
        .CLK(s00_axi_aclk),
        .D(din[3]),
        .Q(\rx_samples_reg[19]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(p_1_in[1]),
        .Q(p_1_in[0]),
        .S(\rx_samples_reg[2]_0 ));
  FDSE \rx_samples_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(rx_samples_reg_gate__2_n_0),
        .Q(din[3]),
        .S(\rx_samples_reg[2]_0 ));
  FDRE \rx_samples_reg[23]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
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
        .CE(\rx_samples[44]_i_2_n_0 ),
        .CLK(s00_axi_aclk),
        .D(din[4]),
        .Q(\rx_samples_reg[24]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(rx_samples_reg_gate__1_n_0),
        .Q(din[4]),
        .S(\rx_samples_reg[2]_0 ));
  FDRE \rx_samples_reg[28]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
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
        .CE(\rx_samples[44]_i_2_n_0 ),
        .CLK(s00_axi_aclk),
        .D(din[5]),
        .Q(\rx_samples_reg[29]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(rx_samples_reg_gate__6_n_0),
        .Q(p_1_in[1]),
        .S(\rx_samples_reg[2]_0 ));
  FDSE \rx_samples_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(rx_samples_reg_gate__0_n_0),
        .Q(din[5]),
        .S(\rx_samples_reg[2]_0 ));
  FDRE \rx_samples_reg[33]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
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
        .CE(\rx_samples[44]_i_2_n_0 ),
        .CLK(s00_axi_aclk),
        .D(din[6]),
        .Q(\rx_samples_reg[34]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(rx_samples_reg_gate_n_0),
        .Q(din[6]),
        .S(\rx_samples_reg[2]_0 ));
  FDRE \rx_samples_reg[38]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
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
        .CE(\rx_samples[44]_i_2_n_0 ),
        .CLK(s00_axi_aclk),
        .D(din[7]),
        .Q(\rx_samples_reg[39]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDRE \rx_samples_reg[3]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(\rx_samples_reg[4]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[3]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  FDSE \rx_samples_reg[42] 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(\rx_samples_reg_n_0_[43] ),
        .Q(din[7]),
        .S(\rx_samples_reg[2]_0 ));
  FDSE \rx_samples_reg[43] 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(\rx_samples_reg_n_0_[44] ),
        .Q(\rx_samples_reg_n_0_[43] ),
        .S(\rx_samples_reg[2]_0 ));
  FDSE \rx_samples_reg[44] 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(rxd),
        .Q(\rx_samples_reg_n_0_[44] ),
        .S(\rx_samples_reg[2]_0 ));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[4]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[4]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .CLK(s00_axi_aclk),
        .D(din[0]),
        .Q(\rx_samples_reg[4]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(rx_samples_reg_gate__5_n_0),
        .Q(din[0]),
        .S(\rx_samples_reg[2]_0 ));
  FDRE \rx_samples_reg[8]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
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
        .CE(\rx_samples[44]_i_2_n_0 ),
        .CLK(s00_axi_aclk),
        .D(din[1]),
        .Q(\rx_samples_reg[9]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rx_samples_reg_gate
       (.I0(\rx_samples_reg[38]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I1(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rx_samples_reg_gate__0
       (.I0(\rx_samples_reg[33]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I1(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rx_samples_reg_gate__1
       (.I0(\rx_samples_reg[28]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I1(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rx_samples_reg_gate__2
       (.I0(\rx_samples_reg[23]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I1(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rx_samples_reg_gate__3
       (.I0(\rx_samples_reg[18]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I1(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rx_samples_reg_gate__4
       (.I0(\rx_samples_reg[13]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I1(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rx_samples_reg_gate__5
       (.I0(\rx_samples_reg[8]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I1(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rx_samples_reg_gate__6
       (.I0(\rx_samples_reg[3]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I1(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__6_n_0));
  FDSE rx_samples_reg_s
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(1'b0),
        .Q(rx_samples_reg_s_n_0),
        .S(\rx_samples_reg[2]_0 ));
  FDSE rx_samples_reg_s_0
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(rx_samples_reg_s_n_0),
        .Q(rx_samples_reg_s_0_n_0),
        .S(\rx_samples_reg[2]_0 ));
  FDSE rx_samples_reg_s_1
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(rx_samples_reg_s_0_n_0),
        .Q(rx_samples_reg_s_1_n_0),
        .S(\rx_samples_reg[2]_0 ));
  FDSE rx_samples_reg_s_2
       (.C(s00_axi_aclk),
        .CE(\rx_samples[44]_i_2_n_0 ),
        .D(rx_samples_reg_s_1_n_0),
        .Q(rx_samples_reg_s_2_n_0),
        .S(\rx_samples_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A03030A030)) 
    \sample_clk_cntr[0]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [0]),
        .I1(sample_clk_cntr[0]),
        .I2(\dv_inhibit_cntr_reg[0]_0 ),
        .I3(en_dly[0]),
        .I4(en_dly[1]),
        .I5(\rx_samples[44]_i_2_n_0 ),
        .O(\sample_clk_cntr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC3)) 
    \sample_clk_cntr[1]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [1]),
        .I1(sample_clk_cntr[1]),
        .I2(sample_clk_cntr[0]),
        .I3(\sample_clk_cntr[7]_i_3_n_0 ),
        .O(\sample_clk_cntr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000CCC30000)) 
    \sample_clk_cntr[2]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [2]),
        .I1(sample_clk_cntr[2]),
        .I2(sample_clk_cntr[0]),
        .I3(sample_clk_cntr[1]),
        .I4(\dv_inhibit_cntr_reg[0]_0 ),
        .I5(\sample_clk_cntr[7]_i_3_n_0 ),
        .O(\sample_clk_cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A03030A030)) 
    \sample_clk_cntr[3]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [3]),
        .I1(\sample_clk_cntr[3]_i_2_n_0 ),
        .I2(\dv_inhibit_cntr_reg[0]_0 ),
        .I3(en_dly[0]),
        .I4(en_dly[1]),
        .I5(\rx_samples[44]_i_2_n_0 ),
        .O(\sample_clk_cntr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \sample_clk_cntr[3]_i_2 
       (.I0(sample_clk_cntr[3]),
        .I1(sample_clk_cntr[1]),
        .I2(sample_clk_cntr[0]),
        .I3(sample_clk_cntr[2]),
        .O(\sample_clk_cntr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A03030A030)) 
    \sample_clk_cntr[4]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [4]),
        .I1(\sample_clk_cntr[4]_i_2_n_0 ),
        .I2(\dv_inhibit_cntr_reg[0]_0 ),
        .I3(en_dly[0]),
        .I4(en_dly[1]),
        .I5(\rx_samples[44]_i_2_n_0 ),
        .O(\sample_clk_cntr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \sample_clk_cntr[4]_i_2 
       (.I0(sample_clk_cntr[4]),
        .I1(sample_clk_cntr[2]),
        .I2(sample_clk_cntr[0]),
        .I3(sample_clk_cntr[1]),
        .I4(sample_clk_cntr[3]),
        .O(\sample_clk_cntr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A03030A030)) 
    \sample_clk_cntr[5]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [5]),
        .I1(\sample_clk_cntr[5]_i_2_n_0 ),
        .I2(\dv_inhibit_cntr_reg[0]_0 ),
        .I3(en_dly[0]),
        .I4(en_dly[1]),
        .I5(\rx_samples[44]_i_2_n_0 ),
        .O(\sample_clk_cntr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \sample_clk_cntr[5]_i_2 
       (.I0(sample_clk_cntr[5]),
        .I1(sample_clk_cntr[3]),
        .I2(sample_clk_cntr[1]),
        .I3(sample_clk_cntr[0]),
        .I4(sample_clk_cntr[2]),
        .I5(sample_clk_cntr[4]),
        .O(\sample_clk_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hAAC3)) 
    \sample_clk_cntr[6]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [6]),
        .I1(sample_clk_cntr[6]),
        .I2(\sample_clk_cntr[7]_i_2_n_0 ),
        .I3(\sample_clk_cntr[7]_i_3_n_0 ),
        .O(\sample_clk_cntr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000CCC30000)) 
    \sample_clk_cntr[7]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [7]),
        .I1(sample_clk_cntr[7]),
        .I2(\sample_clk_cntr[7]_i_2_n_0 ),
        .I3(sample_clk_cntr[6]),
        .I4(\dv_inhibit_cntr_reg[0]_0 ),
        .I5(\sample_clk_cntr[7]_i_3_n_0 ),
        .O(\sample_clk_cntr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sample_clk_cntr[7]_i_2 
       (.I0(sample_clk_cntr[5]),
        .I1(sample_clk_cntr[3]),
        .I2(sample_clk_cntr[1]),
        .I3(sample_clk_cntr[0]),
        .I4(sample_clk_cntr[2]),
        .I5(sample_clk_cntr[4]),
        .O(\sample_clk_cntr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \sample_clk_cntr[7]_i_3 
       (.I0(sample_clk_cntr[8]),
        .I1(sample_clk_cntr[6]),
        .I2(\sample_clk_cntr[7]_i_2_n_0 ),
        .I3(sample_clk_cntr[7]),
        .I4(sample_clk_cntr[9]),
        .I5(\sample_clk_cntr[8]_i_3_n_0 ),
        .O(\sample_clk_cntr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA00C300AA00C200)) 
    \sample_clk_cntr[8]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [8]),
        .I1(sample_clk_cntr[8]),
        .I2(\sample_clk_cntr[8]_i_2_n_0 ),
        .I3(\dv_inhibit_cntr_reg[0]_0 ),
        .I4(\sample_clk_cntr[8]_i_3_n_0 ),
        .I5(sample_clk_cntr[9]),
        .O(\sample_clk_cntr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \sample_clk_cntr[8]_i_2 
       (.I0(sample_clk_cntr[7]),
        .I1(\sample_clk_cntr[7]_i_2_n_0 ),
        .I2(sample_clk_cntr[6]),
        .O(\sample_clk_cntr[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sample_clk_cntr[8]_i_3 
       (.I0(en_dly[0]),
        .I1(en_dly[1]),
        .O(\sample_clk_cntr[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC200C200AA00C200)) 
    \sample_clk_cntr[9]_i_2 
       (.I0(\sample_clk_cntr_reg[9]_0 [9]),
        .I1(sample_clk_cntr[9]),
        .I2(\sample_clk_cntr[9]_i_3_n_0 ),
        .I3(\dv_inhibit_cntr_reg[0]_0 ),
        .I4(en_dly[0]),
        .I5(en_dly[1]),
        .O(\sample_clk_cntr[9]_i_2_n_0 ));
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
        .S(SS));
  FDSE \sample_clk_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[1]_i_1_n_0 ),
        .Q(sample_clk_cntr[1]),
        .S(SS));
  FDSE \sample_clk_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[2]_i_1_n_0 ),
        .Q(sample_clk_cntr[2]),
        .S(SS));
  FDSE \sample_clk_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[3]_i_1_n_0 ),
        .Q(sample_clk_cntr[3]),
        .S(SS));
  FDSE \sample_clk_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[4]_i_1_n_0 ),
        .Q(sample_clk_cntr[4]),
        .S(SS));
  FDSE \sample_clk_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[5]_i_1_n_0 ),
        .Q(sample_clk_cntr[5]),
        .S(SS));
  FDSE \sample_clk_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[6]_i_1_n_0 ),
        .Q(sample_clk_cntr[6]),
        .S(SS));
  FDSE \sample_clk_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[7]_i_1_n_0 ),
        .Q(sample_clk_cntr[7]),
        .S(SS));
  FDSE \sample_clk_cntr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[8]_i_1_n_0 ),
        .Q(sample_clk_cntr[8]),
        .S(SS));
  FDSE \sample_clk_cntr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[9]_i_2_n_0 ),
        .Q(sample_clk_cntr[9]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "uart_top" *) 
module design_1_e_uart_0_0_uart_top
   (int_status,
    data_count,
    dout,
    \count_reg[10] ,
    rx_empty,
    txd,
    \count_reg[0] ,
    \count_reg[1] ,
    \count_reg[5] ,
    \count_reg[6] ,
    \count_reg[7] ,
    \dv_inhibit_cntr_reg[4] ,
    byte_time_cntr,
    rx_time_coal_intr_reg,
    \bit_time_cntr_reg[5] ,
    s00_axi_aclk,
    SR,
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    wr_en,
    rd_en,
    DI,
    S,
    rx_byte_cnt_coal_intr_reg,
    rx_byte_cnt_coal_intr_reg_0,
    \rx_samples_reg[2] ,
    Q,
    \clk_cntr_reg[11] ,
    s00_axi_aresetn,
    \en_dly_reg[0] ,
    \tx_bit_cntr_reg[2] ,
    \sample_clk_cntr_reg[9] ,
    \dv_inhibit_cntr_reg[0] ,
    \dv_inhibit_cntr_reg[4]_0 ,
    rx_byte_cnt_coal_intr1_carry,
    intr_reg,
    \bit_times_elapsed_reg[3] ,
    \tx_byte_q_reg[0] ,
    SS,
    rxd);
  output [4:0]int_status;
  output [5:0]data_count;
  output [7:0]dout;
  output [10:0]\count_reg[10] ;
  output rx_empty;
  output txd;
  output \count_reg[0] ;
  output \count_reg[1] ;
  output \count_reg[5] ;
  output \count_reg[6] ;
  output \count_reg[7] ;
  output \dv_inhibit_cntr_reg[4] ;
  output [10:0]byte_time_cntr;
  output rx_time_coal_intr_reg;
  output [2:0]\bit_time_cntr_reg[5] ;
  input s00_axi_aclk;
  input [0:0]SR;
  input [7:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input wr_en;
  input rd_en;
  input [4:0]DI;
  input [0:0]S;
  input [4:0]rx_byte_cnt_coal_intr_reg;
  input [0:0]rx_byte_cnt_coal_intr_reg_0;
  input \rx_samples_reg[2] ;
  input [1:0]Q;
  input [12:0]\clk_cntr_reg[11] ;
  input s00_axi_aresetn;
  input [1:0]\en_dly_reg[0] ;
  input \tx_bit_cntr_reg[2] ;
  input [9:0]\sample_clk_cntr_reg[9] ;
  input \dv_inhibit_cntr_reg[0] ;
  input \dv_inhibit_cntr_reg[4]_0 ;
  input [21:0]rx_byte_cnt_coal_intr1_carry;
  input [4:0]intr_reg;
  input \bit_times_elapsed_reg[3] ;
  input [0:0]\tx_byte_q_reg[0] ;
  input [0:0]SS;
  input rxd;

  wire [7:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [4:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [0:0]SS;
  wire [2:0]\bit_time_cntr_reg[5] ;
  wire \bit_times_elapsed_reg[3] ;
  wire [10:0]byte_time_cntr;
  wire [12:0]\clk_cntr_reg[11] ;
  wire \count_reg[0] ;
  wire [10:0]\count_reg[10] ;
  wire \count_reg[1] ;
  wire \count_reg[5] ;
  wire \count_reg[6] ;
  wire \count_reg[7] ;
  wire [5:0]data_count;
  wire [7:0]dout;
  wire \dv_inhibit_cntr_reg[0] ;
  wire \dv_inhibit_cntr_reg[4] ;
  wire \dv_inhibit_cntr_reg[4]_0 ;
  wire [1:0]\en_dly_reg[0] ;
  wire int_holdoff_n_14;
  wire int_holdoff_n_15;
  wire [4:0]int_status;
  wire intr_i_2_n_0;
  wire [4:0]intr_reg;
  wire rd_en;
  wire [7:0]rx_byte;
  wire [21:0]rx_byte_cnt_coal_intr1_carry;
  wire [4:0]rx_byte_cnt_coal_intr_reg;
  wire [0:0]rx_byte_cnt_coal_intr_reg_0;
  wire rx_byte_dv;
  wire rx_empty;
  wire rx_empty_i_1_n_0;
  wire \rx_samples_reg[2] ;
  wire rx_time_coal_intr_reg;
  wire rxd;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [9:0]\sample_clk_cntr_reg[9] ;
  wire \tx_bit_cntr_reg[2] ;
  wire [7:0]tx_byte;
  wire [7:0]tx_byte_count;
  wire tx_byte_dv;
  wire [0:0]\tx_byte_q_reg[0] ;
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
        .srst(SR),
        .valid(NLW_fifo_rx_valid_UNCONNECTED),
        .wr_en(rx_byte_dv),
        .wr_rst_busy(NLW_fifo_rx_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_14,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
  design_1_e_uart_0_0_fifo_generator_0 fifo_tx
       (.almost_empty(int_status[1]),
        .clk(s00_axi_aclk),
        .data_count({data_count[5:3],tx_byte_count[7:5],data_count[2:0],tx_byte_count[1:0]}),
        .din(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .dout(tx_byte),
        .empty(int_status[0]),
        .full(NLW_fifo_tx_full_UNCONNECTED),
        .rd_en(tx_byte_rd),
        .rd_rst_busy(NLW_fifo_tx_rd_rst_busy_UNCONNECTED),
        .srst(SR),
        .valid(tx_byte_dv),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_fifo_tx_wr_rst_busy_UNCONNECTED));
  design_1_e_uart_0_0_int_holdoff int_holdoff
       (.DI(DI),
        .S(S),
        .SR(SR),
        .\bit_time_cntr_reg[3]_0 (\bit_time_cntr_reg[5] [0]),
        .\bit_time_cntr_reg[4]_0 (\bit_time_cntr_reg[5] [1]),
        .\bit_time_cntr_reg[5]_0 (\bit_time_cntr_reg[5] [2]),
        .\bit_times_elapsed_reg[3]_0 ({\clk_cntr_reg[11] [12:6],\clk_cntr_reg[11] [2:0]}),
        .\bit_times_elapsed_reg[3]_1 (\bit_times_elapsed_reg[3] ),
        .byte_time_cntr(byte_time_cntr),
        .\count_reg[10] (int_holdoff_n_15),
        .\count_reg[9] (int_holdoff_n_14),
        .int_status(int_status[3]),
        .intr_reg(intr_reg[4:3]),
        .intr_reg_0(intr_i_2_n_0),
        .rx_byte_cnt_coal_intr1_carry_0(rx_byte_cnt_coal_intr1_carry),
        .rx_byte_cnt_coal_intr_reg_0(rx_byte_cnt_coal_intr_reg),
        .rx_byte_cnt_coal_intr_reg_1(rx_byte_cnt_coal_intr_reg_0),
        .rx_byte_cnt_coal_intr_reg_2(\count_reg[10] ),
        .rx_empty_d1_reg_0(rx_empty),
        .rx_time_coal_intr_reg_0(int_status[4]),
        .rx_time_coal_intr_reg_1(rx_time_coal_intr_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  LUT1 #(
    .INIT(2'h1)) 
    \int_status[2]_INST_0 
       (.I0(rx_empty),
        .O(int_status[2]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    intr_i_2
       (.I0(int_status[1]),
        .I1(intr_reg[1]),
        .I2(intr_reg[2]),
        .I3(rx_empty),
        .I4(intr_reg[0]),
        .I5(int_status[0]),
        .O(intr_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    rx_empty_i_1
       (.I0(\count_reg[10] [3]),
        .I1(\count_reg[10] [8]),
        .I2(\count_reg[10] [2]),
        .I3(int_holdoff_n_14),
        .I4(int_holdoff_n_15),
        .O(rx_empty_i_1_n_0));
  FDSE rx_empty_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_empty_i_1_n_0),
        .Q(rx_empty),
        .S(SR));
  LUT4 #(
    .INIT(16'h8C80)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(\count_reg[10] [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(tx_byte_count[0]),
        .O(\count_reg[0] ));
  LUT4 #(
    .INIT(16'h8C80)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(\count_reg[10] [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(tx_byte_count[1]),
        .O(\count_reg[1] ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(tx_byte_count[5]),
        .I1(\count_reg[10] [5]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\count_reg[5] ));
  LUT4 #(
    .INIT(16'h8C80)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(\count_reg[10] [6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(tx_byte_count[6]),
        .O(\count_reg[6] ));
  LUT4 #(
    .INIT(16'hC808)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(tx_byte_count[7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\count_reg[10] [7]),
        .O(\count_reg[7] ));
  design_1_e_uart_0_0_uart_rx uart_rx
       (.SR(SR),
        .SS(SS),
        .din(rx_byte),
        .\dv_inhibit_cntr_reg[0]_0 (\dv_inhibit_cntr_reg[0] ),
        .\dv_inhibit_cntr_reg[4]_0 (\dv_inhibit_cntr_reg[4] ),
        .\dv_inhibit_cntr_reg[4]_1 (\dv_inhibit_cntr_reg[4]_0 ),
        .\en_dly_reg[0]_0 (\en_dly_reg[0] [1]),
        .\rx_samples_reg[2]_0 (\rx_samples_reg[2] ),
        .rxd(rxd),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\sample_clk_cntr_reg[9]_0 (\sample_clk_cntr_reg[9] ),
        .wr_en(rx_byte_dv));
  design_1_e_uart_0_0_uart_tx uart_tx
       (.\clk_cntr_reg[11]_0 (\clk_cntr_reg[11] ),
        .dout(tx_byte),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\tx_bit_cntr_reg[2]_0 (\tx_bit_cntr_reg[2] ),
        .\tx_byte_q_reg[0]_0 (\tx_byte_q_reg[0] ),
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
    s00_axi_aresetn,
    tx_byte_rd_reg_0,
    \tx_bit_cntr_reg[2]_0 ,
    valid,
    dout,
    \tx_byte_q_reg[0]_0 );
  output tx_byte_rd;
  output txd;
  input s00_axi_aclk;
  input [12:0]\clk_cntr_reg[11]_0 ;
  input s00_axi_aresetn;
  input [0:0]tx_byte_rd_reg_0;
  input \tx_bit_cntr_reg[2]_0 ;
  input valid;
  input [7:0]dout;
  input [0:0]\tx_byte_q_reg[0]_0 ;

  wire \FSM_sequential_current_state[2]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_3_n_0 ;
  wire \FSM_sequential_current_state[2]_i_5_n_0 ;
  wire \FSM_sequential_current_state[2]_i_6_n_0 ;
  wire \FSM_sequential_current_state[2]_i_7_n_0 ;
  wire \FSM_sequential_current_state[2]_i_8_n_0 ;
  wire [12:0]clk_cntr;
  wire \clk_cntr[0]_i_2_n_0 ;
  wire \clk_cntr[10]_i_2_n_0 ;
  wire \clk_cntr[11]_i_2_n_0 ;
  wire \clk_cntr[11]_i_3_n_0 ;
  wire \clk_cntr[11]_i_4_n_0 ;
  wire \clk_cntr[11]_i_5_n_0 ;
  wire \clk_cntr[12]_i_2_n_0 ;
  wire \clk_cntr[12]_i_3_n_0 ;
  wire \clk_cntr[12]_i_4_n_0 ;
  wire \clk_cntr[1]_i_2_n_0 ;
  wire \clk_cntr[2]_i_2_n_0 ;
  wire \clk_cntr[3]_i_2_n_0 ;
  wire \clk_cntr[3]_i_3_n_0 ;
  wire \clk_cntr[4]_i_2_n_0 ;
  wire \clk_cntr[4]_i_3_n_0 ;
  wire \clk_cntr[5]_i_2_n_0 ;
  wire \clk_cntr[5]_i_3_n_0 ;
  wire \clk_cntr[6]_i_2_n_0 ;
  wire \clk_cntr[7]_i_2_n_0 ;
  wire \clk_cntr[8]_i_2_n_0 ;
  wire \clk_cntr[9]_i_2_n_0 ;
  wire [12:0]clk_cntr_0;
  wire [12:0]\clk_cntr_reg[11]_0 ;
  wire [2:0]current_state;
  wire [7:0]dout;
  wire [1:0]next_state;
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
  wire [0:0]\tx_byte_q_reg[0]_0 ;
  wire \tx_byte_q_reg_n_0_[0] ;
  wire tx_byte_rd;
  wire tx_byte_rd_d;
  wire tx_byte_rd_i_1_n_0;
  wire [0:0]tx_byte_rd_reg_0;
  wire txd;
  wire txd_i_1_n_0;
  wire valid;

  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(next_state[1]));
  LUT3 #(
    .INIT(8'hAB)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(tx_byte_rd_d),
        .I1(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .I2(\FSM_sequential_current_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_current_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_current_state[2]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(\FSM_sequential_current_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \FSM_sequential_current_state[2]_i_4 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(tx_byte_rd_reg_0),
        .I3(current_state[1]),
        .I4(valid),
        .O(tx_byte_rd_d));
  LUT6 #(
    .INIT(64'hFFFF00FEFF0000FF)) 
    \FSM_sequential_current_state[2]_i_5 
       (.I0(\tx_bit_cntr_reg_n_0_[2] ),
        .I1(\tx_bit_cntr_reg_n_0_[0] ),
        .I2(\tx_bit_cntr_reg_n_0_[1] ),
        .I3(current_state[0]),
        .I4(current_state[2]),
        .I5(current_state[1]),
        .O(\FSM_sequential_current_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_current_state[2]_i_6 
       (.I0(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I1(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I2(clk_cntr[6]),
        .O(\FSM_sequential_current_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_current_state[2]_i_7 
       (.I0(clk_cntr[7]),
        .I1(clk_cntr[8]),
        .I2(clk_cntr[10]),
        .I3(clk_cntr[9]),
        .I4(clk_cntr[12]),
        .I5(clk_cntr[11]),
        .O(\FSM_sequential_current_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_current_state[2]_i_8 
       (.I0(clk_cntr[5]),
        .I1(clk_cntr[3]),
        .I2(clk_cntr[0]),
        .I3(clk_cntr[1]),
        .I4(clk_cntr[2]),
        .I5(clk_cntr[4]),
        .O(\FSM_sequential_current_state[2]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000,START:001,TX_B:010,STOP:011,DONE:100," *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .D(next_state[0]),
        .Q(current_state[0]),
        .R(\tx_byte_q_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000,START:001,TX_B:010,STOP:011,DONE:100," *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(\tx_byte_q_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000,START:001,TX_B:010,STOP:011,DONE:100," *) 
  FDRE \FSM_sequential_current_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .D(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .Q(current_state[2]),
        .R(\tx_byte_q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h7500FFFF75007500)) 
    \clk_cntr[0]_i_1 
       (.I0(\clk_cntr[0]_i_2_n_0 ),
        .I1(\clk_cntr[11]_i_2_n_0 ),
        .I2(\clk_cntr_reg[11]_0 [1]),
        .I3(\clk_cntr[12]_i_3_n_0 ),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr_reg[11]_0 [0]),
        .O(clk_cntr_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \clk_cntr[0]_i_2 
       (.I0(clk_cntr[0]),
        .I1(clk_cntr[6]),
        .I2(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I3(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \clk_cntr[10]_i_1 
       (.I0(\clk_cntr[12]_i_4_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [10]),
        .I2(\clk_cntr_reg[11]_0 [11]),
        .I3(\clk_cntr[11]_i_2_n_0 ),
        .I4(\clk_cntr[10]_i_2_n_0 ),
        .I5(\clk_cntr[12]_i_3_n_0 ),
        .O(clk_cntr_0[10]));
  LUT6 #(
    .INIT(64'hFFFFFFA800000002)) 
    \clk_cntr[10]_i_2 
       (.I0(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I1(clk_cntr[9]),
        .I2(\clk_cntr[11]_i_4_n_0 ),
        .I3(clk_cntr[6]),
        .I4(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I5(clk_cntr[10]),
        .O(\clk_cntr[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \clk_cntr[11]_i_1 
       (.I0(\clk_cntr[12]_i_4_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [11]),
        .I2(\clk_cntr_reg[11]_0 [12]),
        .I3(\clk_cntr[11]_i_2_n_0 ),
        .I4(\clk_cntr[11]_i_3_n_0 ),
        .I5(\clk_cntr[12]_i_3_n_0 ),
        .O(clk_cntr_0[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \clk_cntr[11]_i_2 
       (.I0(clk_cntr[6]),
        .I1(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I2(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(current_state[2]),
        .O(\clk_cntr[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFE00010000)) 
    \clk_cntr[11]_i_3 
       (.I0(clk_cntr[6]),
        .I1(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I2(\clk_cntr[11]_i_4_n_0 ),
        .I3(\clk_cntr[11]_i_5_n_0 ),
        .I4(clk_cntr[12]),
        .I5(clk_cntr[11]),
        .O(\clk_cntr[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \clk_cntr[11]_i_4 
       (.I0(clk_cntr[8]),
        .I1(clk_cntr[7]),
        .O(\clk_cntr[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \clk_cntr[11]_i_5 
       (.I0(clk_cntr[10]),
        .I1(clk_cntr[9]),
        .O(\clk_cntr[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB000FFFFB000B000)) 
    \clk_cntr[12]_i_1 
       (.I0(clk_cntr[11]),
        .I1(\clk_cntr[12]_i_2_n_0 ),
        .I2(clk_cntr[12]),
        .I3(\clk_cntr[12]_i_3_n_0 ),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr_reg[11]_0 [12]),
        .O(clk_cntr_0[12]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \clk_cntr[12]_i_2 
       (.I0(clk_cntr[8]),
        .I1(clk_cntr[7]),
        .I2(clk_cntr[6]),
        .I3(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I4(clk_cntr[9]),
        .I5(clk_cntr[10]),
        .O(\clk_cntr[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA2)) 
    \clk_cntr[12]_i_3 
       (.I0(\tx_bit_cntr_reg[2]_0 ),
        .I1(next_state[1]),
        .I2(clk_cntr[6]),
        .I3(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I4(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I5(tx_byte_rd_d),
        .O(\clk_cntr[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55555555FFFFFFF7)) 
    \clk_cntr[12]_i_4 
       (.I0(\tx_bit_cntr_reg[2]_0 ),
        .I1(next_state[1]),
        .I2(clk_cntr[6]),
        .I3(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I4(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I5(tx_byte_rd_d),
        .O(\clk_cntr[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \clk_cntr[1]_i_1 
       (.I0(\clk_cntr[12]_i_4_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [1]),
        .I2(\clk_cntr_reg[11]_0 [2]),
        .I3(\clk_cntr[11]_i_2_n_0 ),
        .I4(\clk_cntr[1]_i_2_n_0 ),
        .I5(\clk_cntr[12]_i_3_n_0 ),
        .O(clk_cntr_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hFE0000FE)) 
    \clk_cntr[1]_i_2 
       (.I0(clk_cntr[6]),
        .I1(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I2(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I3(clk_cntr[1]),
        .I4(clk_cntr[0]),
        .O(\clk_cntr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \clk_cntr[2]_i_1 
       (.I0(\clk_cntr[12]_i_4_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [2]),
        .I2(\clk_cntr_reg[11]_0 [3]),
        .I3(\clk_cntr[11]_i_2_n_0 ),
        .I4(\clk_cntr[2]_i_2_n_0 ),
        .I5(\clk_cntr[12]_i_3_n_0 ),
        .O(clk_cntr_0[2]));
  LUT6 #(
    .INIT(64'hFEFEFE00000000FE)) 
    \clk_cntr[2]_i_2 
       (.I0(clk_cntr[6]),
        .I1(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I2(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I3(clk_cntr[0]),
        .I4(clk_cntr[1]),
        .I5(clk_cntr[2]),
        .O(\clk_cntr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \clk_cntr[3]_i_1 
       (.I0(\clk_cntr[12]_i_4_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [3]),
        .I2(\clk_cntr_reg[11]_0 [4]),
        .I3(\clk_cntr[11]_i_2_n_0 ),
        .I4(\clk_cntr[3]_i_2_n_0 ),
        .I5(\clk_cntr[12]_i_3_n_0 ),
        .O(clk_cntr_0[3]));
  LUT6 #(
    .INIT(64'hFFFF00000000FFFE)) 
    \clk_cntr[3]_i_2 
       (.I0(clk_cntr[6]),
        .I1(clk_cntr[4]),
        .I2(clk_cntr[5]),
        .I3(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I4(\clk_cntr[3]_i_3_n_0 ),
        .I5(clk_cntr[3]),
        .O(\clk_cntr[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \clk_cntr[3]_i_3 
       (.I0(clk_cntr[2]),
        .I1(clk_cntr[1]),
        .I2(clk_cntr[0]),
        .O(\clk_cntr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \clk_cntr[4]_i_1 
       (.I0(\clk_cntr[12]_i_4_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [4]),
        .I2(\clk_cntr_reg[11]_0 [5]),
        .I3(\clk_cntr[11]_i_2_n_0 ),
        .I4(\clk_cntr[4]_i_2_n_0 ),
        .I5(\clk_cntr[12]_i_3_n_0 ),
        .O(clk_cntr_0[4]));
  LUT5 #(
    .INIT(32'hFF0000FE)) 
    \clk_cntr[4]_i_2 
       (.I0(clk_cntr[6]),
        .I1(clk_cntr[5]),
        .I2(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I3(\clk_cntr[4]_i_3_n_0 ),
        .I4(clk_cntr[4]),
        .O(\clk_cntr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_cntr[4]_i_3 
       (.I0(clk_cntr[3]),
        .I1(clk_cntr[0]),
        .I2(clk_cntr[1]),
        .I3(clk_cntr[2]),
        .O(\clk_cntr[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \clk_cntr[5]_i_1 
       (.I0(\clk_cntr[12]_i_4_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [5]),
        .I2(\clk_cntr_reg[11]_0 [6]),
        .I3(\clk_cntr[11]_i_2_n_0 ),
        .I4(\clk_cntr[5]_i_2_n_0 ),
        .I5(\clk_cntr[12]_i_3_n_0 ),
        .O(clk_cntr_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \clk_cntr[5]_i_2 
       (.I0(clk_cntr[6]),
        .I1(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I2(\clk_cntr[5]_i_3_n_0 ),
        .I3(clk_cntr[5]),
        .O(\clk_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_cntr[5]_i_3 
       (.I0(clk_cntr[4]),
        .I1(clk_cntr[2]),
        .I2(clk_cntr[1]),
        .I3(clk_cntr[0]),
        .I4(clk_cntr[3]),
        .O(\clk_cntr[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4FFF4F4F44444444)) 
    \clk_cntr[6]_i_1 
       (.I0(\clk_cntr[12]_i_4_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [6]),
        .I2(\clk_cntr[6]_i_2_n_0 ),
        .I3(\clk_cntr[11]_i_2_n_0 ),
        .I4(\clk_cntr_reg[11]_0 [7]),
        .I5(\clk_cntr[12]_i_3_n_0 ),
        .O(clk_cntr_0[6]));
  LUT3 #(
    .INIT(8'h67)) 
    \clk_cntr[6]_i_2 
       (.I0(clk_cntr[6]),
        .I1(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I2(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7500FFFF75007500)) 
    \clk_cntr[7]_i_1 
       (.I0(\clk_cntr[7]_i_2_n_0 ),
        .I1(\clk_cntr[11]_i_2_n_0 ),
        .I2(\clk_cntr_reg[11]_0 [8]),
        .I3(\clk_cntr[12]_i_3_n_0 ),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr_reg[11]_0 [7]),
        .O(clk_cntr_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h03FD)) 
    \clk_cntr[7]_i_2 
       (.I0(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I1(clk_cntr[6]),
        .I2(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I3(clk_cntr[7]),
        .O(\clk_cntr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \clk_cntr[8]_i_1 
       (.I0(\clk_cntr[12]_i_4_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [8]),
        .I2(\clk_cntr_reg[11]_0 [9]),
        .I3(\clk_cntr[11]_i_2_n_0 ),
        .I4(\clk_cntr[8]_i_2_n_0 ),
        .I5(\clk_cntr[12]_i_3_n_0 ),
        .O(clk_cntr_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hCCC9CCC0)) 
    \clk_cntr[8]_i_2 
       (.I0(clk_cntr[7]),
        .I1(clk_cntr[8]),
        .I2(clk_cntr[6]),
        .I3(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I4(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \clk_cntr[9]_i_1 
       (.I0(\clk_cntr[12]_i_4_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [9]),
        .I2(\clk_cntr_reg[11]_0 [10]),
        .I3(\clk_cntr[11]_i_2_n_0 ),
        .I4(\clk_cntr[9]_i_2_n_0 ),
        .I5(\clk_cntr[12]_i_3_n_0 ),
        .O(clk_cntr_0[9]));
  LUT6 #(
    .INIT(64'hFEFEFEFC00000002)) 
    \clk_cntr[9]_i_2 
       (.I0(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I1(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I2(clk_cntr[6]),
        .I3(clk_cntr[7]),
        .I4(clk_cntr[8]),
        .I5(clk_cntr[9]),
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
    .INIT(64'h00000200AAAAAAAA)) 
    \tx_bit_cntr[0]_i_1 
       (.I0(\tx_bit_cntr_reg[2]_0 ),
        .I1(\FSM_sequential_current_state[2]_i_6_n_0 ),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_state[2]),
        .I5(\tx_bit_cntr_reg_n_0_[0] ),
        .O(\tx_bit_cntr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888000800088888)) 
    \tx_bit_cntr[1]_i_1 
       (.I0(tx_byte_rd_reg_0),
        .I1(s00_axi_aresetn),
        .I2(\FSM_sequential_current_state[2]_i_6_n_0 ),
        .I3(\tx_bit_cntr[2]_i_3_n_0 ),
        .I4(\tx_bit_cntr_reg_n_0_[1] ),
        .I5(\tx_bit_cntr_reg_n_0_[0] ),
        .O(\tx_bit_cntr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777F77777F77)) 
    \tx_bit_cntr[2]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(tx_byte_rd_reg_0),
        .I2(\FSM_sequential_current_state[2]_i_6_n_0 ),
        .I3(current_state[0]),
        .I4(current_state[2]),
        .I5(current_state[1]),
        .O(\tx_bit_cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888288828882AAAA)) 
    \tx_bit_cntr[2]_i_2 
       (.I0(\tx_bit_cntr_reg[2]_0 ),
        .I1(\tx_bit_cntr_reg_n_0_[2] ),
        .I2(\tx_bit_cntr_reg_n_0_[0] ),
        .I3(\tx_bit_cntr_reg_n_0_[1] ),
        .I4(\FSM_sequential_current_state[2]_i_6_n_0 ),
        .I5(\tx_bit_cntr[2]_i_3_n_0 ),
        .O(\tx_bit_cntr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \tx_bit_cntr[2]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[0]_i_1 
       (.I0(dout[0]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[1]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[1]_i_1 
       (.I0(dout[1]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[2]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[2]_i_1 
       (.I0(dout[2]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[3]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[3]_i_1 
       (.I0(dout[3]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[4]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[4]_i_1 
       (.I0(dout[4]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[5]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[5]_i_1 
       (.I0(dout[5]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[6]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[6]_i_1 
       (.I0(dout[6]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[7]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00020000)) 
    \tx_byte_q[7]_i_1 
       (.I0(\tx_bit_cntr_reg[2]_0 ),
        .I1(\FSM_sequential_current_state[2]_i_6_n_0 ),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[1]),
        .I5(tx_byte_rd),
        .O(\tx_byte_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
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
        .R(\tx_byte_q_reg[0]_0 ));
  FDRE \tx_byte_q_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(tx_byte_q[1]),
        .R(\tx_byte_q_reg[0]_0 ));
  FDRE \tx_byte_q_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(tx_byte_q[2]),
        .R(\tx_byte_q_reg[0]_0 ));
  FDRE \tx_byte_q_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(tx_byte_q[3]),
        .R(\tx_byte_q_reg[0]_0 ));
  FDRE \tx_byte_q_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(tx_byte_q[4]),
        .R(\tx_byte_q_reg[0]_0 ));
  FDRE \tx_byte_q_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(tx_byte_q[5]),
        .R(\tx_byte_q_reg[0]_0 ));
  FDRE \tx_byte_q_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(tx_byte_q[6]),
        .R(\tx_byte_q_reg[0]_0 ));
  FDRE \tx_byte_q_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(tx_byte_q[7]),
        .R(\tx_byte_q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    tx_byte_rd_i_1
       (.I0(valid),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
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
    .INIT(64'hFFCBFFFF00C8FFFF)) 
    txd_i_1
       (.I0(\tx_byte_q_reg_n_0_[0] ),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
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
dhDY8PTUsivUjemdNfBrE6UtwA==
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
