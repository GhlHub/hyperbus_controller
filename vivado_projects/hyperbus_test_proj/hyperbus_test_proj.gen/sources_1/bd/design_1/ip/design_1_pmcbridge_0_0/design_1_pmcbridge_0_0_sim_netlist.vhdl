-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Thu Apr  9 11:22:33 2026
-- Host        : YouBing running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /raid/work/hyperbus_controller_freertos_port/vivado_projects/hyperbus_test_proj/hyperbus_test_proj.gen/sources_1/bd/design_1/ip/design_1_pmcbridge_0_0/design_1_pmcbridge_0_0_sim_netlist.vhdl
-- Design      : design_1_pmcbridge_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcsu35p-sbvb625-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pmcbridge_0_0_pmcbridge_v1_0_0 is
  port (
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_clk : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    ARID : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WID : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AWID : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wready : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1_pmcbridge_0_0_pmcbridge_v1_0_0 : entity is "design_1_pmcbridge_0_0.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pmcbridge_0_0_pmcbridge_v1_0_0 : entity is "pmcbridge_v1_0_0";
  attribute dont_touch : string;
  attribute dont_touch of design_1_pmcbridge_0_0_pmcbridge_v1_0_0 : entity is "true";
end design_1_pmcbridge_0_0_pmcbridge_v1_0_0;

architecture STRUCTURE of design_1_pmcbridge_0_0_pmcbridge_v1_0_0 is
  signal NLW_PMC_AXI32_0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_PMC_AXI32_0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of PMC_AXI32_0 : label is "PRIMITIVE";
begin
PMC_AXI32_0: unisim.vcomponents.AXI32
     port map (
      ARADDR(27 downto 0) => S_AXI_araddr(27 downto 0),
      ARBURST(1 downto 0) => S_AXI_arburst(1 downto 0),
      ARCACHE(3 downto 0) => S_AXI_arcache(3 downto 0),
      ARID(7 downto 0) => B"00000000",
      ARLEN(3 downto 0) => S_AXI_arlen(3 downto 0),
      ARLOCK => S_AXI_arlock(0),
      ARPROT(2 downto 0) => S_AXI_arprot(2 downto 0),
      ARQOS(3 downto 0) => S_AXI_arqos(3 downto 0),
      ARREADY => S_AXI_arready,
      ARSIZE(2 downto 0) => S_AXI_arsize(2 downto 0),
      ARVALID => S_AXI_arvalid,
      AWADDR(27 downto 0) => S_AXI_awaddr(27 downto 0),
      AWBURST(1 downto 0) => S_AXI_awburst(1 downto 0),
      AWCACHE(3 downto 0) => S_AXI_awcache(3 downto 0),
      AWID(7 downto 0) => B"00000000",
      AWLEN(3 downto 0) => S_AXI_awlen(3 downto 0),
      AWLOCK => S_AXI_awlock(0),
      AWPROT(2 downto 0) => S_AXI_awprot(2 downto 0),
      AWQOS(3 downto 0) => S_AXI_awqos(3 downto 0),
      AWREADY => S_AXI_awready,
      AWSIZE(2 downto 0) => S_AXI_awsize(2 downto 0),
      AWVALID => S_AXI_awvalid,
      AXICLK => S_AXI_clk,
      BID(7 downto 0) => NLW_PMC_AXI32_0_BID_UNCONNECTED(7 downto 0),
      BREADY => S_AXI_bready,
      BRESP(1 downto 0) => S_AXI_bresp(1 downto 0),
      BVALID => S_AXI_bvalid,
      RDATA(31 downto 0) => S_AXI_rdata(31 downto 0),
      RID(7 downto 0) => NLW_PMC_AXI32_0_RID_UNCONNECTED(7 downto 0),
      RLAST => S_AXI_rlast,
      RREADY => S_AXI_rready,
      RRESP(1 downto 0) => S_AXI_rresp(1 downto 0),
      RVALID => S_AXI_rvalid,
      WDATA(31 downto 0) => S_AXI_wdata(31 downto 0),
      WID(7 downto 0) => B"00000000",
      WLAST => S_AXI_wlast,
      WREADY => S_AXI_wready,
      WSTRB(3 downto 0) => S_AXI_wstrb(3 downto 0),
      WVALID => S_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pmcbridge_0_0 is
  port (
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    S_AXI_clk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pmcbridge_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pmcbridge_0_0 : entity is "design_1_pmcbridge_0_0,pmcbridge_v1_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_pmcbridge_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_pmcbridge_0_0 : entity is "pmcbridge_v1_0_0,Vivado 2025.2";
end design_1_pmcbridge_0_0;

architecture STRUCTURE of design_1_pmcbridge_0_0 is
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of inst : label is std.standard.true;
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "design_1_pmcbridge_0_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_clk : signal is "xilinx.com:signal:clock:1.0 S_AXI_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of S_AXI_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_clk : signal is "XIL_INTERFACENAME S_AXI_clk, ASSOCIATED_BUSIF S_AXI, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_MODE of S_AXI_arburst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXI_arburst : signal is "XIL_INTERFACENAME S_AXI, SUPPORTS_NARROW_BURST 1, HAS_BURST 0, NUM_WRITE_OUTSTANDING 32, NUM_READ_OUTSTANDING 32, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 28, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of S_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  attribute X_INTERFACE_INFO of S_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of S_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of S_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of S_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of S_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of S_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of S_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  attribute X_INTERFACE_INFO of S_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
begin
inst: entity work.design_1_pmcbridge_0_0_pmcbridge_v1_0_0
     port map (
      ARID(7 downto 0) => B"00000000",
      AWID(7 downto 0) => B"00000000",
      S_AXI_araddr(31 downto 28) => B"0000",
      S_AXI_araddr(27 downto 0) => S_AXI_araddr(27 downto 0),
      S_AXI_arburst(1 downto 0) => S_AXI_arburst(1 downto 0),
      S_AXI_arcache(3 downto 0) => S_AXI_arcache(3 downto 0),
      S_AXI_arlen(7 downto 0) => S_AXI_arlen(7 downto 0),
      S_AXI_arlock(0) => S_AXI_arlock(0),
      S_AXI_arprot(2 downto 0) => S_AXI_arprot(2 downto 0),
      S_AXI_arqos(3 downto 0) => S_AXI_arqos(3 downto 0),
      S_AXI_arready => S_AXI_arready(0),
      S_AXI_arsize(2 downto 0) => S_AXI_arsize(2 downto 0),
      S_AXI_arvalid => S_AXI_arvalid(0),
      S_AXI_awaddr(31 downto 28) => B"0000",
      S_AXI_awaddr(27 downto 0) => S_AXI_awaddr(27 downto 0),
      S_AXI_awburst(1 downto 0) => S_AXI_awburst(1 downto 0),
      S_AXI_awcache(3 downto 0) => S_AXI_awcache(3 downto 0),
      S_AXI_awlen(7 downto 0) => S_AXI_awlen(7 downto 0),
      S_AXI_awlock(0) => S_AXI_awlock(0),
      S_AXI_awprot(2 downto 0) => S_AXI_awprot(2 downto 0),
      S_AXI_awqos(3 downto 0) => S_AXI_awqos(3 downto 0),
      S_AXI_awready => S_AXI_awready(0),
      S_AXI_awsize(2 downto 0) => S_AXI_awsize(2 downto 0),
      S_AXI_awvalid => S_AXI_awvalid(0),
      S_AXI_bready => S_AXI_bready(0),
      S_AXI_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      S_AXI_bvalid => S_AXI_bvalid(0),
      S_AXI_clk => S_AXI_clk,
      S_AXI_rdata(31 downto 0) => S_AXI_rdata(31 downto 0),
      S_AXI_rlast => S_AXI_rlast(0),
      S_AXI_rready => S_AXI_rready(0),
      S_AXI_rresp(1 downto 0) => S_AXI_rresp(1 downto 0),
      S_AXI_rvalid => S_AXI_rvalid(0),
      S_AXI_wdata(31 downto 0) => S_AXI_wdata(31 downto 0),
      S_AXI_wlast => S_AXI_wlast(0),
      S_AXI_wready => S_AXI_wready(0),
      S_AXI_wstrb(3 downto 0) => S_AXI_wstrb(3 downto 0),
      S_AXI_wvalid => S_AXI_wvalid(0),
      WID(7 downto 0) => B"00000000"
    );
end STRUCTURE;
