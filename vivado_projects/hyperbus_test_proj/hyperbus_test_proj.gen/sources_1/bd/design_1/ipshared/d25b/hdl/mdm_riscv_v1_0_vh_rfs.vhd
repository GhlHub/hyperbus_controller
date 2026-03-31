-------------------------------------------------------------------------------
-- mdm_funcs.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        mdm_funcs.vhd
--
-- Description:     Support functions for mdm
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--                  mdm_funcs.vhd
--
-------------------------------------------------------------------------------
-- Author:          stefana
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

package mdm_funcs is

  type TARGET_FAMILY_TYPE is (
                              -- pragma xilinx_rtl_off
                              VIRTEX7,
                              KINTEX7,
                              ARTIX7,
                              ZYNQ,
                              VIRTEXU,
                              KINTEXU,
                              ZYNQUPLUS,
                              VIRTEXUPLUS,
                              KINTEXUPLUS,
                              SPARTAN7,
                              VERSAL,
                              VERSAL_NET,
                              ARTIXUPLUS,
                              SPARTANUPLUS,
                              -- pragma xilinx_rtl_on
                              RTL
                             );

  function String_To_Family (S : string; PART: string; Select_RTL : boolean) return TARGET_FAMILY_TYPE;

  function BSCAN_Versal(S : string; PART : string; C_USE_BSCAN : integer) return string;

  function log2(x : natural) return integer;

end package mdm_funcs;

package body mdm_funcs is

  function LowerCase_Char(char : character) return character is
  begin
    -- If char is not an upper case letter then return char
    if char < 'A' or char > 'Z' then
      return char;
    end if;
    -- Otherwise map char to its corresponding lower case character and
    -- return that
    case char is
      when 'A'    => return 'a'; when 'B' => return 'b'; when 'C' => return 'c'; when 'D' => return 'd';
      when 'E'    => return 'e'; when 'F' => return 'f'; when 'G' => return 'g'; when 'H' => return 'h';
      when 'I'    => return 'i'; when 'J' => return 'j'; when 'K' => return 'k'; when 'L' => return 'l';
      when 'M'    => return 'm'; when 'N' => return 'n'; when 'O' => return 'o'; when 'P' => return 'p';
      when 'Q'    => return 'q'; when 'R' => return 'r'; when 'S' => return 's'; when 'T' => return 't';
      when 'U'    => return 'u'; when 'V' => return 'v'; when 'W' => return 'w'; when 'X' => return 'x';
      when 'Y'    => return 'y'; when 'Z' => return 'z';
      when others => return char;
    end case;
  end LowerCase_Char;

  function LowerCase_String (s : string) return string is
    variable res : string(s'range);
  begin  -- function LoweerCase_String
    for I in s'range loop
      res(I) := LowerCase_Char(s(I));
    end loop;  -- I
    return res;
  end function LowerCase_String;

  -- Returns true if case insensitive string comparison determines that
  -- str1 and str2 are equal
  function Equal_String( str1, str2 : string ) return boolean is
    constant len1 : integer := str1'length;
    constant len2 : integer := str2'length;
    variable equal : boolean := true;
  begin
    if not (len1=len2) then
      equal := false;
    else
      for i in str1'range loop
        if not (LowerCase_Char(str1(i)) = LowerCase_Char(str2(i))) then
          equal := false;
        end if;
      end loop;
    end if;

    return equal;
  end Equal_String;

  function String_To_Family (S : string; PART : string; Select_RTL : boolean) return TARGET_FAMILY_TYPE is
  begin  -- function String_To_Family
    if ((Select_RTL) or Equal_String(S, "rtl")) then
      return RTL;
    elsif Equal_String(S, "virtex7") or Equal_String(S, "qvirtex7") then
      return VIRTEX7;
    elsif Equal_String(S, "kintex7")  or Equal_String(S, "kintex7l")  or
          Equal_String(S, "qkintex7") or Equal_String(S, "qkintex7l") then
      return KINTEX7;
    elsif Equal_String(S, "artix7")  or Equal_String(S, "artix7l")  or Equal_String(S, "aartix7") or
          Equal_String(S, "qartix7") or Equal_String(S, "qartix7l") then
      return ARTIX7;
    elsif Equal_String(S, "zynq")  or Equal_String(S, "azynq") or Equal_String(S, "qzynq") then
      return ZYNQ;
    elsif Equal_String(S, "virtexu") or Equal_String(S, "qvirtexu") then
      return VIRTEXU;
    elsif Equal_String(S, "kintexu")  or Equal_String(S, "kintexul")  or
          Equal_String(S, "qkintexu") or Equal_String(S, "qkintexul") then
      return KINTEXU;
    elsif Equal_String(S, "zynquplus") or Equal_String(S, "zynquplusRFSOC") then
      return ZYNQUPLUS;
    elsif Equal_String(S, "virtexuplus") or Equal_String(S, "virtexuplusHBM") or
          Equal_String(S, "virtexuplus58g") then
      return VIRTEXUPLUS;
    elsif Equal_String(S, "kintexuplus") then
      return KINTEXUPLUS;
    elsif Equal_String(S, "spartan7") then
      return SPARTAN7;
    elsif Equal_String(S, "versal") then
      if Equal_String(PART(PART'left to PART'left + 3), "xcvn") then
        return VERSAL_NET;
      end if;
      return VERSAL;
    elsif Equal_String(S, "artixuplus") then
      return ARTIXUPLUS;
    elsif Equal_String(S, "spartanuplus") then
      return SPARTANUPLUS;
    else
      -- assert (false) report "No known target family" severity failure;
      return RTL;
    end if;
  end function String_To_Family;

  function BSCAN_Versal(S : string; PART : string; C_USE_BSCAN : integer) return string is
  begin
    if (String_To_Family(S, PART, false) = VERSAL or String_To_Family(S, PART, false) = VERSAL_NET) and
       (C_USE_BSCAN = 2 or C_USE_BSCAN = 4) then
      return "TRUE";
    end if;
    return "FALSE";
  end function BSCAN_Versal;

  function log2(x : natural) return integer is
    variable i  : integer := 0;
  begin
    if x = 0 then return 0;
    else
      while 2**i < x loop
        i := i+1;
      end loop;
      return i;
    end if;
  end function log2;

end package body mdm_funcs;


-------------------------------------------------------------------------------
-- mdm_primitives.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        mdm_primitives.vhd
--
-- Description:     one bit AND function using carry-chain
--
-- VHDL-Standard:   VHDL'93/02
-------------------------------------------------------------------------------
-- Structure:
--              mdm_primitives.vhd
--
-------------------------------------------------------------------------------
-- Author:          stefana
--
-- History:
--   stefana  2019-11-04    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

-- XIL_Scan_Reset_Control
library IEEE;
use IEEE.std_logic_1164.all;

entity xil_scan_reset_control is
  port (
    Scan_En          : in  std_logic;
    Scan_Reset_Sel   : in  std_logic;
    Scan_Reset       : in  std_logic;
    Functional_Reset : in  std_logic;
    Reset            : out std_logic);
end entity xil_scan_reset_control;

architecture IMP of xil_scan_reset_control is

begin
  Reset <= '0'               when Scan_En = '1' else
            Functional_Reset when Scan_Reset_Sel = '0' else
            Scan_Reset;
end architecture IMP;


----- entity mb_sync_bit -----
library IEEE;
use IEEE.std_logic_1164.all;

entity mb_sync_bit is
  generic(
    C_LEVELS            : natural   := 2;
    C_RESET_VALUE       : std_logic := '0';
    C_RESET_SYNCHRONOUS : boolean   := true;
    C_RESET_ACTIVE_HIGH : boolean   := true);
  port(
    Clk            : in  std_logic;
    Rst            : in  std_logic;
    Scan_Reset_Sel : in  std_logic;
    Scan_Reset     : in  std_logic;
    Scan_En        : in  std_logic;
    Raw            : in  std_logic;
    Synced         : out std_logic);
end mb_sync_bit;

architecture IMP of mb_sync_bit is

  component xil_scan_reset_control is
  port (
    Scan_En          : in  std_logic;
    Scan_Reset_Sel   : in  std_logic;
    Scan_Reset       : in  std_logic;
    Functional_Reset : in  std_logic;
    Reset            : out std_logic);
  end component xil_scan_reset_control;

  -- Downgrade Synth 8-3332 warnings
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of IMP : architecture is "yes";

begin

  -- Generate synchronizer DFFs
  Synchronize : if C_LEVELS > 1 generate
    signal reset : std_logic;
    signal sync  : std_logic_vector(1 to C_LEVELS) := (others => C_RESET_VALUE);
    attribute ASYNC_REG : string;
    attribute ASYNC_REG of sync : signal is "TRUE";
  begin

    -- Internal reset always has active high polarity
    reset <= Rst when C_RESET_ACTIVE_HIGH else
             not Rst;

    -- Synchronous reset
    use_sync_reset: if C_RESET_SYNCHRONOUS generate
    begin

      Sync_Rst_DFFs : process(Clk)
      begin
        if Clk'event and Clk = '1' then
          if reset = '1' then
            sync <= (sync'range  => C_RESET_VALUE);
          else
            for I in C_LEVELS downto 2 loop
              sync(I) <= sync(I-1);
            end loop;
            sync(1) <= Raw;
          end if;
        end if;
      end process;

    end generate use_sync_reset;

    -- Asychronous reset
    use_async_reset: if not C_RESET_SYNCHRONOUS generate
      signal async_reset : std_logic;
    begin

      -- Make sure asynchronous reset can be controlled during scan test
      async_reset_i: xil_scan_reset_control
      port map (
        Scan_En          => Scan_En,
        Scan_Reset_Sel   => Scan_Reset_Sel,
        Scan_Reset       => Scan_Reset,
        Functional_Reset => reset,
        Reset            => async_reset);

      Async_Rst_DFFs : process(Clk, async_reset)
      begin
        if async_reset = '1' then
          sync <= (sync'range => C_RESET_VALUE);
        elsif Clk'event and Clk = '1' then
          for I in C_LEVELS downto 2 loop
            sync(I) <= sync(I-1);
          end loop;
          sync(1) <= Raw;
        end if;
      end process;

    end generate use_async_reset;

    Synced <= sync(C_LEVELS);

  end generate Synchronize;

  -- 1 synchronizer DFF
  Single_Synchronize : if C_LEVELS = 1 generate
    signal reset : std_logic;
    signal sync  : std_logic := C_RESET_VALUE;
  begin

    -- Internal reset always has active high polarity
    reset <= Rst when C_RESET_ACTIVE_HIGH else
             not Rst;

    -- Synchronous reset
    use_sync_reset: if C_RESET_SYNCHRONOUS generate
    begin

      Sync_Rst_DFFs : process(Clk)
      begin
        if Clk'event and Clk = '1' then
          if reset = '1' then
            sync <= C_RESET_VALUE;
          else
            sync <= Raw;
          end if;
        end if;
      end process;

    end generate use_sync_reset;

    -- Asychronous reset
    use_async_reset: if not C_RESET_SYNCHRONOUS generate
      signal async_reset : std_logic;
    begin

      -- Make sure asynchronous reset can be controlled from during scan test
      async_reset_i: xil_scan_reset_control
      port map (
        Scan_En          => Scan_En,
        Scan_Reset_Sel   => Scan_Reset_Sel,
        Scan_Reset       => Scan_Reset,
        Functional_Reset => reset,
        Reset            => async_reset);

      Async_Rst_DFFs : process(Clk, async_reset)
      begin
        if async_reset = '1' then
          sync <= C_RESET_VALUE;
        elsif Clk'event and Clk = '1' then
          sync <= Raw;
        end if;
      end process;

    end generate use_async_reset;

    Synced <= sync;

  end generate Single_Synchronize;

  -- No synchronizer DFFs, connect input to output directly
  No_Synchronize : if C_LEVELS = 0 generate
  begin
    Synced <= Raw;
  end generate No_Synchronize;

end architecture IMP;  -- mb_sync_bit


----- entity BSCANE2 -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MB_BSCANE2 is
  generic (
     C_TARGET     : TARGET_FAMILY_TYPE;
     DISABLE_JTAG : string := "FALSE";
     JTAG_CHAIN   : integer := 1
  );
  port (
     CAPTURE      : out std_logic := 'H';
     DRCK         : out std_logic := 'H';
     RESET        : out std_logic := 'H';
     RUNTEST      : out std_logic := 'L';
     SEL          : out std_logic := 'L';
     SHIFT        : out std_logic := 'L';
     TCK          : out std_logic := 'L';
     TDI          : out std_logic := 'L';
     TMS          : out std_logic := 'L';
     UPDATE       : out std_logic := 'L';
     TDO          : in  std_logic := 'X'
  );
end entity MB_BSCANE2;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_BSCANE2 is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    assert false report "Illegal use of implementation primitives" severity failure;
  end generate Using_RTL;

  Use_E2: if ( C_TARGET /= RTL ) generate
  begin
     BSCANE2_I: BSCANE2
      generic map (
        DISABLE_JTAG => DISABLE_JTAG,
        JTAG_CHAIN   => JTAG_CHAIN)
      port map (
        CAPTURE      => CAPTURE,
        DRCK         => DRCK,
        RESET        => RESET,
        RUNTEST      => RUNTEST,
        SEL          => SEL,
        SHIFT        => SHIFT,
        TCK          => TCK,
        TDI          => TDI,
        TMS          => TMS,
        UPDATE       => UPDATE,
        TDO          => TDO);
  end generate Use_E2;

end architecture IMP;


----- entity BUFG -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MB_BUFG is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
     O : out std_logic;
     I : in  std_logic
  );
end entity MB_BUFG;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_BUFG is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    O <= TO_X01(I);
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL and C_TARGET /= VERSAL and C_TARGET /= VERSAL_NET ) generate
  begin
     Native: BUFG
      port map (
        O => O,
        I => I
      );
  end generate Using_FPGA;

  Using_FPGA_VERSAL: if ( C_TARGET = VERSAL or C_TARGET = VERSAL_NET ) generate
  begin
     Native: BUFG_FABRIC
      port map (
        O => O,
        I => I
      );
  end generate Using_FPGA_VERSAL;

end architecture IMP;


----- entity BUFGCE_1 -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MB_BUFGCE_1 is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
     O  : out std_logic;
     CE : in  std_logic;
     I  : in  std_logic
  );
end entity MB_BUFGCE_1;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_BUFGCE_1 is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    O <= TO_X01(I) when CE = '1' else '1';
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL and C_TARGET /= VERSAL and C_TARGET /= VERSAL_NET ) generate
  begin
     Native: BUFGCE_1
      port map (
        O  => O,
        CE => CE,
        I  => I
      );
  end generate Using_FPGA;

  Using_FPGA_VERSAL: if ( C_TARGET = VERSAL or C_TARGET = VERSAL_NET ) generate
    signal I_CE : std_logic;
  begin
    I_CE <= I or not CE;

    Native: BUFG_FABRIC
      port map (
        O => O,
        I => I_CE
      );
  end generate Using_FPGA_VERSAL;

end architecture IMP;


----- entity BUFGCTRL -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MB_BUFGCTRL is
  generic (
    C_TARGET            : TARGET_FAMILY_TYPE;
    INIT_OUT            : integer := 0;
    IS_CE0_INVERTED     : bit := '0';
    IS_CE1_INVERTED     : bit := '0';
    IS_I0_INVERTED      : bit := '0';
    IS_I1_INVERTED      : bit := '0';
    IS_IGNORE0_INVERTED : bit := '0';
    IS_IGNORE1_INVERTED : bit := '0';
    IS_S0_INVERTED      : bit := '0';
    IS_S1_INVERTED      : bit := '0';
    PRESELECT_I0        : boolean := false;
    PRESELECT_I1        : boolean := false
  );
  port (
    O                   : out std_logic;
    CE0                 : in  std_logic;
    CE1                 : in  std_logic;
    I0                  : in  std_logic;
    I1                  : in  std_logic;
    IGNORE0             : in  std_logic;
    IGNORE1             : in  std_logic;
    S0                  : in  std_logic;
    S1                  : in  std_logic
  );
end entity MB_BUFGCTRL;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_BUFGCTRL is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    assert false report "Illegal use of implementation primitives" severity failure;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
    function get_sim_device(TARGET : TARGET_FAMILY_TYPE) return string is
    begin
      case TARGET is
        when VIRTEX7 | KINTEX7 | ARTIX7 | SPARTAN7 | ZYNQ                      => return "7SERIES";
        when VIRTEXU | KINTEXU                                                 => return "ULTRASCALE";
        when ZYNQUPLUS | VIRTEXUPLUS | KINTEXUPLUS | ARTIXUPLUS | SPARTANUPLUS => return "ULTRASCALE_PLUS";
        when VERSAL                                                            => return "VERSAL_AI_CORE";
        when VERSAL_NET                                                        => return "VERSAL_NET";
        when others                                                            => return "ULTRASCALE";
      end case;
    end function get_sim_device;

    constant SIM_DEVICE : string := get_sim_device( C_TARGET );
  begin
     Native: BUFGCTRL
      generic map (
        INIT_OUT            => INIT_OUT,
        SIM_DEVICE          => SIM_DEVICE,
        IS_CE0_INVERTED     => IS_CE0_INVERTED,
        IS_CE1_INVERTED     => IS_CE1_INVERTED,
        IS_I0_INVERTED      => IS_I0_INVERTED,
        IS_I1_INVERTED      => IS_I1_INVERTED,
        IS_IGNORE0_INVERTED => IS_IGNORE0_INVERTED,
        IS_IGNORE1_INVERTED => IS_IGNORE1_INVERTED,
        IS_S0_INVERTED      => IS_S0_INVERTED,
        IS_S1_INVERTED      => IS_S1_INVERTED,
        PRESELECT_I0        => PRESELECT_I0,
        PRESELECT_I1        => PRESELECT_I1
      )
      port map (
        O       => O,
        CE0     => CE0,
        CE1     => CE1,
        I0      => I0,
        I1      => I1,
        IGNORE0 => IGNORE0,
        IGNORE1 => IGNORE1,
        S0      => S0,
        S1      => S1
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity FDRE -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MB_FDRE is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE;
    INIT     : bit := '0'
  );
  port(
    Q        : out std_logic;
    C        : in  std_logic;
    CE       : in  std_logic;
    D        : in  std_logic;
    R        : in  std_logic
  );
end entity MB_FDRE;

library Unisim;
use Unisim.vcomponents.all;

architecture IMP of MB_FDRE is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
    function To_StdLogic(A : in bit ) return std_logic is
    begin
      if( A = '1' ) then
        return '1';
      end if;
      return '0';
    end;

    signal q_o : std_logic := To_StdLogic(INIT);
  begin
    Q <=  q_o;
    process(C)
    begin
      if (rising_edge(C)) then
        if (R = '1') then
          q_o <= '0';
        elsif (CE = '1') then
          q_o <= D;
        end if;
      end if;
    end process;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
    Native: FDRE
      generic map(
        INIT => INIT
      )
      port map(
        Q   => Q,
        C   => C,
        CE  => CE,
        D   => D,
        R   => R
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity PLLE2_BASE -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MB_PLLE2_BASE is
  generic (
    C_TARGET           : TARGET_FAMILY_TYPE;
    BANDWIDTH          : string := "OPTIMIZED";
    CLKFBOUT_MULT      : integer := 5;
    CLKFBOUT_PHASE     : real := 0.000;
    CLKIN1_PERIOD      : real := 0.000;
    CLKOUT0_DIVIDE     : integer := 1;
    CLKOUT0_DUTY_CYCLE : real := 0.500;
    CLKOUT0_PHASE      : real := 0.000;
    CLKOUT1_DIVIDE     : integer := 1;
    CLKOUT1_DUTY_CYCLE : real := 0.500;
    CLKOUT1_PHASE      : real := 0.000;
    CLKOUT2_DIVIDE     : integer := 1;
    CLKOUT2_DUTY_CYCLE : real := 0.500;
    CLKOUT2_PHASE      : real := 0.000;
    CLKOUT3_DIVIDE     : integer := 1;
    CLKOUT3_DUTY_CYCLE : real := 0.500;
    CLKOUT3_PHASE      : real := 0.000;
    CLKOUT4_DIVIDE     : integer := 1;
    CLKOUT4_DUTY_CYCLE : real := 0.500;
    CLKOUT4_PHASE      : real := 0.000;
    CLKOUT5_DIVIDE     : integer := 1;
    CLKOUT5_DUTY_CYCLE : real := 0.500;
    CLKOUT5_PHASE      : real := 0.000;
    DIVCLK_DIVIDE      : integer := 1;
    REF_JITTER1        : real := 0.010;
    STARTUP_WAIT       : string := "FALSE"
  );
  port (
    CLKFBOUT : out std_logic;
    CLKOUT0  : out std_logic;
    CLKOUT1  : out std_logic;
    CLKOUT2  : out std_logic;
    CLKOUT3  : out std_logic;
    CLKOUT4  : out std_logic;
    CLKOUT5  : out std_logic;
    LOCKED   : out std_logic;
    CLKFBIN  : in  std_logic;
    CLKIN1   : in  std_logic;
    PWRDWN   : in  std_logic;
    RST      : in  std_logic
  );
end entity MB_PLLE2_BASE;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_PLLE2_BASE is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    assert false report "Illegal use of implementation primitives" severity failure;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
     Native: PLLE2_BASE
       generic map (
         BANDWIDTH          => BANDWIDTH,
         CLKFBOUT_MULT      => CLKFBOUT_MULT,
         CLKFBOUT_PHASE     => CLKFBOUT_PHASE,
         CLKIN1_PERIOD      => CLKIN1_PERIOD,
         CLKOUT0_DIVIDE     => CLKOUT0_DIVIDE,
         CLKOUT0_DUTY_CYCLE => CLKOUT0_DUTY_CYCLE,
         CLKOUT0_PHASE      => CLKOUT0_PHASE,
         CLKOUT1_DIVIDE     => CLKOUT1_DIVIDE,
         CLKOUT1_DUTY_CYCLE => CLKOUT1_DUTY_CYCLE,
         CLKOUT1_PHASE      => CLKOUT1_PHASE,
         CLKOUT2_DIVIDE     => CLKOUT2_DIVIDE,
         CLKOUT2_DUTY_CYCLE => CLKOUT2_DUTY_CYCLE,
         CLKOUT2_PHASE      => CLKOUT2_PHASE,
         CLKOUT3_DIVIDE     => CLKOUT3_DIVIDE,
         CLKOUT3_DUTY_CYCLE => CLKOUT3_DUTY_CYCLE,
         CLKOUT3_PHASE      => CLKOUT3_PHASE,
         CLKOUT4_DIVIDE     => CLKOUT4_DIVIDE,
         CLKOUT4_DUTY_CYCLE => CLKOUT4_DUTY_CYCLE,
         CLKOUT4_PHASE      => CLKOUT4_PHASE,
         CLKOUT5_DIVIDE     => CLKOUT5_DIVIDE,
         CLKOUT5_DUTY_CYCLE => CLKOUT5_DUTY_CYCLE,
         CLKOUT5_PHASE      => CLKOUT5_PHASE,
         DIVCLK_DIVIDE      => DIVCLK_DIVIDE,
         REF_JITTER1        => REF_JITTER1,
         STARTUP_WAIT       => STARTUP_WAIT
       )
       port map (
         CLKFBOUT           => CLKFBOUT,
         CLKOUT0            => CLKOUT0,
         CLKOUT1            => CLKOUT1,
         CLKOUT2            => CLKOUT2,
         CLKOUT3            => CLKOUT3,
         CLKOUT4            => CLKOUT4,
         CLKOUT5            => CLKOUT5,
         LOCKED             => LOCKED,
         CLKFBIN            => CLKFBIN,
         CLKIN1             => CLKIN1,
         PWRDWN             => PWRDWN,
         RST                => RST
       );
  end generate Using_FPGA;

end architecture IMP;


----- entity FDC_1 -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MB_FDC_1 is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE;
    INIT     : bit := '0'
  );
  port (
     Q       : out std_logic;
     C       : in  std_logic;
     CLR     : in  std_logic;
     D       : in  std_logic
  );
end entity MB_FDC_1;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_FDC_1 is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
    signal q_out : std_logic := TO_X01(INIT);
  begin
    Q <= q_out;

    FunctionalBehavior : process(C, CLR)
    begin
      if CLR = '1' then
        q_out <= '0';
      elsif (falling_edge(C)) then
        q_out <= D;
      end if;
    end process;

  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
    Native: FDC_1
      generic map (
        INIT => INIT
      )
      port map (
        Q   => Q,
        C   => C,
        CLR => CLR,
        D   => D
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity FDRE_1 -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MB_FDRE_1 is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE;
    INIT     : bit := '0'
  );
  port (
     Q       : out std_logic;
     C       : in  std_logic;
     CE      : in  std_logic;
     D       : in  std_logic;
     R       : in  std_logic
  );
end entity MB_FDRE_1;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_FDRE_1 is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
    signal q_out : std_logic := TO_X01(INIT);
  begin
    Q <= q_out;

    FunctionalBehavior : process(C)
    begin
      if C'EVENT and C = '0' then
        if R = '1' then
          q_out <= '0';
        elsif CE = '1' or CE = 'Z' then
          q_out <= D;
        end if;
      end if;
    end process;

  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
     Native: FDRE_1
       generic map (
         INIT => INIT
       )
       port map (
         Q    => Q,
         C    => C,
         CE   => CE,
         D    => D,
         R    => R
       );
  end generate Using_FPGA;

end architecture IMP;


----- entity SRL16E -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MB_SRL16E is
  generic(
    C_TARGET    : TARGET_FAMILY_TYPE;
    C_STATIC    : boolean    := false;
    C_USE_SRL16 : string     := "yes";
    INIT        : bit_vector := X"0000");
  port(
    Config_Reset : in  std_logic;
    Q   : out std_logic;
    A0  : in  std_logic;
    A1  : in  std_logic;
    A2  : in  std_logic;
    A3  : in  std_logic;
    CE  : in  std_logic;
    CLK : in  std_logic;
    D   : in  std_logic);
end entity MB_SRL16E;

library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.numeric_std.all;

architecture IMP of MB_SRL16E is
begin  -- architecture IMP

  Use_unisim: if (C_USE_SRL16 /= "no" and C_TARGET /= RTL) generate
    MB_SRL16E_I1: SRL16E
      generic map (
        INIT  => INIT)  -- [bit_vector]
      port map (
        Q   => Q,       -- [out std_logic]
        A0  => A0,      -- [in  std_logic]
        A1  => A1,      -- [in  std_logic]
        A2  => A2,      -- [in  std_logic]
        A3  => A3,      -- [in  std_logic]
        CE  => CE,      -- [in  std_logic]
        CLK => CLK,     -- [in  std_logic]
        D   => D);      -- [in std_logic]
  end generate Use_unisim;

  Use_RTL : if (C_USE_SRL16 = "no" or C_TARGET = RTL) generate
    signal shift_reg         : std_logic_vector(15 downto 0) := to_stdLogicVector(INIT);
    constant shift_reg_const : std_logic_vector(15 downto 0) := to_stdLogicVector(INIT);
    attribute shreg_extract : string;
    attribute shreg_extract of SHIFT_REG : signal is "no";
  begin

    Static_Values: if (C_STATIC) generate
    begin
      Q <= shift_reg_const(to_integer(unsigned(to_stdLogicVector(A3 & A2 & A1 & A0))));
    end generate Static_Values;

    Dynamic_Values: if (not C_STATIC) generate
    begin
      Q <= shift_reg(to_integer(unsigned(to_stdLogicVector(A3 & A2 & A1 & A0))));

      process(CLK)
      begin
        if (rising_edge(CLK)) then
          if Config_Reset = '1' then
            shift_reg <= (others => '0');
          else
            if CE = '1' then
              shift_reg <= shift_reg(14 downto 0) & D;
            end if;
          end if;
        end if;
      end process;

    end generate Dynamic_Values;

  end generate Use_RTL;

end architecture IMP;


----- entity FDRSE -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MB_FDRSE is
  generic (
    C_TARGET       : TARGET_FAMILY_TYPE;
    INIT           : bit := '0';
    IS_CE_INVERTED : bit := '0';
    IS_C_INVERTED  : bit := '0';
    IS_D_INVERTED  : bit := '0';
    IS_R_INVERTED  : bit := '0';
    IS_S_INVERTED  : bit := '0'
  );
  port (
    Q              : out std_logic;
    C              : in  std_logic;
    CE             : in  std_logic;
    D              : in  std_logic;
    R              : in  std_logic;
    S              : in  std_logic
  );
end entity MB_FDRSE;

library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.numeric_std.all;

architecture IMP of MB_FDRSE is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
    signal q_out              : std_logic := TO_X01(INIT);
    signal ce_in              : std_logic;
    signal d_in               : std_logic;
    signal s_in               : std_logic;
    signal r_in               : std_logic;
    constant IS_CE_INVERTED_BIN : std_logic := TO_X01(IS_CE_INVERTED);
    constant IS_D_INVERTED_BIN  : std_logic := TO_X01(IS_D_INVERTED);
    constant IS_S_INVERTED_BIN  : std_logic := TO_X01(IS_S_INVERTED);
    constant IS_R_INVERTED_BIN  : std_logic := TO_X01(IS_R_INVERTED);
  begin
    Q      <= q_out;
    ce_in  <= IS_CE_INVERTED_BIN xor CE;
    d_in   <= IS_D_INVERTED_BIN  xor D;
    s_in   <= IS_S_INVERTED_BIN  xor S;
    r_in   <= IS_R_INVERTED_BIN  xor R;

    Rising: if IS_C_INVERTED = '0' generate
    begin
      FunctionalBehavior : process(C)
      begin
        if (rising_edge(C)) then
          if (r_in = '1') then
            q_out <= '0';
          elsif (s_in = '1') then
            q_out <= '1';
          elsif (ce_in = '1') then
            q_out <= D;
          end if;
        end if;
      end process;
    end generate Rising;

    Falling: if IS_C_INVERTED /= '0' generate
    begin
      FunctionalBehavior : process(C)
      begin
        if (falling_edge(C)) then
          if (r_in = '1') then
            q_out <= '0';
          elsif (s_in = '1') then
            q_out <= '1';
          elsif (ce_in = '1') then
            q_out <= D;
          end if;
        end if;
      end process;
    end generate Falling;

  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
     Native: FDRSE
       generic map (
         INIT           => INIT,
         IS_C_INVERTED  => IS_C_INVERTED,
         IS_CE_INVERTED => IS_CE_INVERTED,
         IS_D_INVERTED  => IS_D_INVERTED,
         IS_R_INVERTED  => IS_R_INVERTED,
         IS_S_INVERTED  => IS_S_INVERTED
       )
       port map (
         Q              => Q,
         C              => C,
         CE             => CE,
         R              => R,
         S              => S,
         D              => D
       );
  end generate Using_FPGA;

end architecture IMP;


----- entity MUXCY with XORCY -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MB_MUXCY_XORCY is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
    O  : out std_logic;
    LO : out std_logic;
    CI : in  std_logic;
    DI : in  std_logic;
    S  : in  std_logic
  );
end entity MB_MUXCY_XORCY;

library Unisim;
use Unisim.vcomponents.all;

architecture IMP of MB_MUXCY_XORCY is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    O <= (CI xor S);
    LO <= DI when S = '0' else CI;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
    Native_I1: MUXCY_L
      port map(
        LO => LO,
        CI => CI,
        DI => DI,
        S  => S
      );
    Native_I2: XORCY
      port map(
        O  => O,
        CI => CI,
        LI => S
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity MUXCY -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MB_MUXCY is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
    LO : out std_logic;
    CI : in  std_logic;
    DI : in  std_logic;
    S  : in  std_logic
  );
end entity MB_MUXCY;

library Unisim;
use Unisim.vcomponents.all;

architecture IMP of MB_MUXCY is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    LO <= DI when S = '0' else CI;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
    Native: MUXCY_L
      port map(
        LO => LO,
        CI => CI,
        DI => DI,
        S  => S
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity XORCY -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MB_XORCY is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
    O  : out std_logic;
    CI : in  std_logic;
    LI : in  std_logic
  );
end entity MB_XORCY;

library Unisim;
use Unisim.vcomponents.all;

architecture IMP of MB_XORCY is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    O <= (CI xor LI);
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
    Native: XORCY
      port map(
        O  => O,
        CI => CI,
        LI => LI
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity SRLC32E -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MB_SRLC32E is
  generic (
    C_TARGET        : TARGET_FAMILY_TYPE;
    C_USE_SRL16     : string     := "yes";
    INIT            : bit_vector := X"00000000";
    IS_CLK_INVERTED : bit := '0'
  );
  port (
     Config_Reset   : in  STD_LOGIC;
     Q              : out STD_LOGIC;
     Q31            : out STD_LOGIC;
     A              : in  STD_LOGIC_VECTOR (4 downto 0) := "00000";
     CE             : in  STD_LOGIC;
     CLK            : in  STD_LOGIC;
     D              : in  STD_LOGIC
  );
end entity MB_SRLC32E;

library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.numeric_std.all;

architecture IMP of MB_SRLC32E is
begin

  Using_RTL: if (C_USE_SRL16 = "no"  or C_TARGET = RTL) generate
    signal shift_reg : std_logic_vector(31 downto 0) := to_stdLogicVector(INIT);

    attribute shreg_extract : string;
    attribute shreg_extract of shift_reg : signal is "no";
  begin
    Q   <= shift_reg(to_integer(unsigned(A)));
    Q31 <= shift_reg(31);

    Rising: if IS_CLK_INVERTED = '0' generate
    begin
      process(CLK)
      begin
        if (rising_edge(CLK)) then
          if Config_Reset = '1' then
            shift_reg <= (others => '0');
          else
            if CE = '1' then
              shift_reg <= shift_reg(30 downto 0) & D;
            end if;
          end if;
        end if;
      end process;
    end generate Rising;

    Falling: if IS_CLK_INVERTED /= '0' generate
    begin
      process(CLK)
      begin
        if (falling_edge(CLK)) then
          if Config_Reset = '1' then
            shift_reg <= (others => '0');
          else
            if CE = '1' then
              shift_reg <= shift_reg(30 downto 0) & D;
            end if;
          end if;
        end if;
      end process;
    end generate Falling;

  end generate Using_RTL;

  Using_FPGA: if (C_USE_SRL16 /= "no" and C_TARGET /= RTL ) generate
  begin
     Native: SRLC32E
       generic map (
         INIT            => INIT,
         IS_CLK_INVERTED => IS_CLK_INVERTED
       )
       port map (
         Q               => Q,
         Q31             => Q31,
         A               => A,
         CE              => CE,
         CLK             => CLK,
         D               => D
       );
  end generate Using_FPGA;

end architecture IMP;


----- entity carry_and -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity carry_and is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
    Carry_IN  : in  std_logic;
    A         : in  std_logic;
    Carry_OUT : out std_logic);
end entity carry_and;

architecture IMP of carry_and is

  component MB_MUXCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      LO : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MB_MUXCY;

  signal carry_out_i : std_logic;
begin  -- architecture IMP

  MUXCY_I : MB_MUXCY
    generic map (
      C_TARGET => C_TARGET
    )
    port map (
      DI => '0',
      CI => Carry_IN,
      S  => A,
      LO => carry_out_i);

  Carry_OUT <= carry_out_i;

end architecture IMP;


----- entity carry_or_vec -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity carry_or_vec is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE;
    Size     : natural);
  port (
    Carry_In  : in std_logic;
    In_Vec    : in  std_logic_vector(0 to Size-1);
    Carry_Out : out std_logic);
end entity carry_or_vec;

architecture IMP of carry_or_vec is

  component MB_MUXCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      LO : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MB_MUXCY;

  constant C_BITS_PER_LUT : natural := 6;

  signal sel   : std_logic_vector(0 to ((Size+(C_BITS_PER_LUT - 1))/C_BITS_PER_LUT) - 1);
  signal carry : std_logic_vector(0 to ((Size+(C_BITS_PER_LUT - 1))/C_BITS_PER_LUT));

  signal sig1  : std_logic_vector(0 to sel'length*C_BITS_PER_LUT - 1);

begin  -- architecture IMP

  assign_sigs : process (In_Vec) is
  begin  -- process assign_sigs
    sig1               <= (others => '0');
    sig1(0 to Size-1)  <= In_Vec;
  end process assign_sigs;

  carry(carry'right) <= Carry_In;

  The_Compare : for I in sel'right downto sel'left generate
  begin
    Compare_All_Bits: process(sig1)
      variable sel_I   : std_logic;
    begin
      sel_I  :=  '0';
      Compare_Bits: for J in C_BITS_PER_LUT - 1 downto 0 loop
        sel_I  := sel_I or ( sig1(C_BITS_PER_LUT * I + J) );
      end loop Compare_Bits;
      sel(I) <= not sel_I;
    end process Compare_All_Bits;

    MUXCY_L_I1 : MB_MUXCY
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        DI => '1',                      -- [in  std_logic S = 0]
        CI => Carry(I+1),               -- [in  std_logic S = 1]
        S  => sel(I),                   -- [in  std_logic (Select)]
        LO => Carry(I));                -- [out std_logic]
  end generate The_Compare;

  Carry_Out <= Carry(0);

end architecture IMP;


----- entity carry_or -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity carry_or is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
    Carry_IN  : in  std_logic;
    A         : in  std_logic;
    Carry_OUT : out std_logic);
end entity carry_or;

architecture IMP of carry_or is

  component MB_MUXCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      LO : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MB_MUXCY;

  signal carry_out_i : std_logic;
  signal A_N : std_logic;

begin  -- architecture IMP

  A_N <= not A;

  MUXCY_I : MB_MUXCY
    generic map (
      C_TARGET => C_TARGET
    )
    port map (
      DI => '1',
      CI => Carry_IN,
      S  => A_N,
      LO => carry_out_i);

  Carry_OUT <= carry_out_i;

end architecture IMP;


----- entity select_bit -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity select_bit is
  generic (
    C_TARGET  : TARGET_FAMILY_TYPE;
    sel_value : std_logic_vector(1 downto 0));
  port (
    Mask      : in  std_logic_vector(1 downto 0);
    Request   : in  std_logic_vector(1 downto 0);
    Carry_In  : in  std_logic;
    Carry_Out : out std_logic);
end entity select_bit;

architecture IMP of select_bit is

  component MB_MUXCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      LO : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MB_MUXCY;

  signal di  : std_logic;
  signal sel : std_logic;

begin  -- architecture IMP

  -- Just pass the carry value if none is requesting or is enabled
  sel <= not( (Request(1) and Mask(1)) or (Request(0) and Mask(0)));

  di <= ((Request(0) and Mask(0) and sel_value(0))) or
        ( not(Request(0) and Mask(0)) and Request(1) and Mask(1) and sel_value(1));

  MUXCY_I : MB_MUXCY
    generic map (
      C_TARGET => C_TARGET
    )
    port map (
      DI => di,
      CI => Carry_In,
      S  => sel,
      LO => Carry_Out);

end architecture IMP;


----- entity LUT1 -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MB_LUT1 is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE;
    INIT     : bit_vector := X"0"
  );
  port (
    O  : out std_logic;
    I0 : in  std_logic
  );
end entity MB_LUT1;

library Unisim;
use Unisim.vcomponents.all;

architecture IMP of MB_LUT1 is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
    constant INIT_reg : std_logic_vector(1 downto 0) := To_StdLogicVector(INIT);
  begin
    process (I0)
    begin
      if( I0 = '0' ) then
        O     <= INIT_reg(0);
      else
        O     <= INIT_reg(1);
      end if;
    end process;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
    signal lut1_o : std_logic;

    attribute DONT_TOUCH : string;
    attribute DONT_TOUCH of lut1_o : signal is "true";
  begin
    Native: LUT1
      generic map(
        INIT    => INIT
      )
      port map(
        O       => lut1_o,
        I0      => I0
      );
    O <= lut1_o;
  end generate Using_FPGA;

end architecture IMP;


-------------------------------------------------------------------------------
-- arbiter.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        arbiter.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93/02
-------------------------------------------------------------------------------
-- Structure:   
--              arbiter.vhd
--                  mdm_primitives.vhd
--
-------------------------------------------------------------------------------
-- Author:          stefana
--
-- History:
--   stefana  2019-11-04    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity Arbiter is
  generic (
    C_TARGET  : TARGET_FAMILY_TYPE;
    Size      : natural := 32;
    Size_Log2 : natural := 5);
  port (
    Clk       : in  std_logic;
    Reset     : in  std_logic;

    Enable    : in  std_logic;
    Requests  : in  std_logic_vector(Size-1 downto 0);
    Granted   : out std_logic_vector(Size-1 downto 0);
    Valid_Sel : out std_logic;
    Selected  : out std_logic_vector(Size_Log2-1 downto 0));
end entity Arbiter;

architecture IMP of Arbiter is

  component select_bit
    generic (
      C_TARGET  : TARGET_FAMILY_TYPE;
      sel_value : std_logic_vector(1 downto 0));
    port (
      Mask      : in  std_logic_vector(1 downto 0);
      Request   : in  std_logic_vector(1 downto 0);
      Carry_In  : in  std_logic;
      Carry_Out : out std_logic);
  end component select_bit;

  component carry_or_vec
    generic (
      C_TARGET  : TARGET_FAMILY_TYPE;
      Size      : natural);
    port (
      Carry_In  : in std_logic;
      In_Vec    : in  std_logic_vector(0 to Size-1);
      Carry_Out : out std_logic);
  end component carry_or_vec;

  component carry_and
    generic (
      C_TARGET  : TARGET_FAMILY_TYPE);
    port (
      Carry_IN  : in  std_logic;
      A         : in  std_logic;
      Carry_OUT : out std_logic);
  end component carry_and;

  component carry_or
    generic (
      C_TARGET  : TARGET_FAMILY_TYPE);
    port (
      Carry_IN  : in  std_logic;
      A         : in  std_logic;
      Carry_OUT : out std_logic);
  end component carry_or;

  subtype index_type is std_logic_vector(Size_Log2-1 downto 0);
  type int_array_type is array (natural range 2*Size-1 downto 0) of index_type;

  function init_index_table return int_array_type is
    variable tmp : int_array_type;
  begin  -- function init_index_table
    for I in 0 to Size-1 loop
      tmp(I)      := std_logic_vector(to_unsigned(I, Size_Log2));
      tmp(Size+I) := std_logic_vector(to_unsigned(I, Size_Log2));
    end loop;  -- I
    return tmp;
  end function init_index_table;

  constant index_table : int_array_type := init_index_table;

  signal long_req      : std_logic_vector(2*Size-1 downto 0);    
  signal mask          : std_logic_vector(2*Size-1 downto 0);

  signal grant_sel     : std_logic_vector(Size_Log2-1 downto 0);

  signal new_granted   : std_logic;
  signal reset_loop    : std_logic;
  signal mask_reset    : std_logic;

  signal valid_grant   : std_logic;

begin  -- architecture IMP

  long_req <= Requests & Requests;

  Request_Or : carry_or_vec
    generic map (
      C_TARGET => C_TARGET,
      Size     => Size)
    port map (
      Carry_In  => Enable,
      In_Vec    => Requests,            -- in  
      Carry_Out => new_granted);        -- out

  Valid_Sel <= new_granted;

  -----------------------------------------------------------------------------
  -- Generate Carry-Chain structure
  -----------------------------------------------------------------------------

  Chain: for I in Size_Log2-1 downto 0 generate
    signal carry : std_logic_vector(Size downto 0);  -- Assumes 2 bit/muxcy
  begin  -- generate Bits

    carry(Size) <= '0';

    Bits: for J in Size-1 downto 0 generate
      constant sel1 : std_logic := index_table(2*J+1)(I);
      constant sel0 : std_logic := index_table(2*J)(I);
      
      attribute keep_hierarchy : string;
      attribute keep_hierarchy of Select_bits : label is "yes";
    begin  -- generate Bits
      Select_bits : select_bit
        generic map (
            C_TARGET => C_TARGET,
            sel_value => sel1 & sel0)
        port map (
            Mask      => mask(2*J+1 downto 2*J),      -- in  
            Request   => long_req(2*J+1 downto 2*J),  -- in  
            Carry_In  => carry(J+1),                  -- in  
            Carry_Out => carry(J));                   -- out
    end generate Bits;

    grant_sel(I) <= carry(0);
  end generate Chain;

  Selected <= grant_sel;

  -----------------------------------------------------------------------------
  -- Handling Mask value
  -----------------------------------------------------------------------------

  -- if (Reset = '1') or ((new_granted and mask(1)) = '1') then
  Reset_loop_and : carry_and
    generic map (
        C_TARGET => C_TARGET)
    port map (
        Carry_IN  => new_granted,       -- in  
        A         => mask(1),           -- in  
        Carry_OUT => reset_loop);       -- out

  Mask_Reset_carry : carry_or
    generic map (
        C_TARGET => C_TARGET)
    port map (
        Carry_IN  => reset_loop,        -- in  
        A         => Reset,             -- in  
        Carry_OUT => mask_reset);       -- out

  Mask_Handler : process (Clk) is
  begin  -- process Mask_Handler
    if Clk'event and Clk = '1' then     -- rising clock edge
      if (mask_reset = '1') then        -- synchronous reset (active high)
        mask(2*Size-1 downto Size) <= (others => '1');
        mask(Size-1 downto 0)      <= (others => '0');
      else        
        if (new_granted = '1') then
          mask(2*Size-1 downto 1) <= mask(1) & mask(2*Size-1 downto 2);
        end if;
      end if;
    end if;
  end process Mask_Handler;

  -----------------------------------------------------------------------------
  -- Generate grant signal
  -----------------------------------------------------------------------------

  Grant_Signals: for K in Size-1 downto 1 generate
    signal tmp : std_logic;
    attribute keep : string;
    attribute keep of tmp : signal is "true";
  begin  -- generate Grant_Signals
    tmp <=  '1' when (K = to_integer(unsigned(grant_sel))) else '0';
    granted(K) <= tmp;
  end generate Grant_Signals;

  Granted(0) <= Requests(0) when to_integer(unsigned(grant_sel)) = 0 else '0';    

end architecture IMP;


-------------------------------------------------------------------------------
-- srl_fifo.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        srl_fifo.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              srl_fifo.vhd
--
-------------------------------------------------------------------------------
-- Author:          stefana
--
-- History:
--   stefana  2019-11-04    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity SRL_FIFO is
  generic (
    C_TARGET    : TARGET_FAMILY_TYPE;
    C_DATA_BITS : natural := 8;
    C_DEPTH     : natural := 16;
    C_USE_SRL16 : string  := "yes"
    );
  port (
    Clk         : in  std_logic;
    Reset       : in  std_logic;
    FIFO_Write  : in  std_logic;
    Data_In     : in  std_logic_vector(0 to C_DATA_BITS-1);
    FIFO_Read   : in  std_logic;
    Data_Out    : out std_logic_vector(0 to C_DATA_BITS-1);
    FIFO_Full   : out std_logic;
    Data_Exists : out std_logic
    );

end entity SRL_FIFO;

architecture IMP of SRL_FIFO is

  component MB_MUXCY_XORCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      O  : out std_logic;
      LO : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MB_MUXCY_XORCY;

  component MB_XORCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      O  : out std_logic;
      CI : in  std_logic;
      LI : in  std_logic
    );
  end component MB_XORCY;

  component MB_FDRE is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE;
      INIT : bit := '0'
    );
    port(
      Q  : out std_logic;
      C  : in  std_logic;
      CE : in  std_logic;
      D  : in  std_logic;
      R  : in  std_logic
    );
  end component MB_FDRE;

  component MB_SRL16E is
    generic(
      C_TARGET    : TARGET_FAMILY_TYPE;
      C_STATIC    : boolean    := false;
      C_USE_SRL16 : string     := "yes";
      INIT        : bit_vector := X"0000");
    port(
      Config_Reset : in  std_logic;
      Q        : out std_logic;
      A0       : in  std_logic;
      A1       : in  std_logic;
      A2       : in  std_logic;
      A3       : in  std_logic;
      CE       : in  std_logic;
      CLK      : in  std_logic;
      D        : in  std_logic
    );
  end component MB_SRL16E;

  component MB_SRLC32E
    generic (
      C_TARGET        : TARGET_FAMILY_TYPE;
      C_USE_SRL16     : string     := "yes";
      INIT            : bit_vector := X"00000000";
      IS_CLK_INVERTED : bit := '0'
    );
    port (
       Config_Reset   : in  std_logic;
       Q              : out STD_LOGIC;
       Q31            : out STD_LOGIC;
       A              : in  STD_LOGIC_VECTOR (4 downto 0) := "00000";
       CE             : in  STD_LOGIC;
       CLK            : in  STD_LOGIC;
       D              : in  STD_LOGIC
    );
  end component;

  constant C_ADDR_BITS : integer := 4 + boolean'pos(C_DEPTH = 32);

  signal Addr         : std_logic_vector(0 to C_ADDR_BITS - 1);
  signal buffer_Full  : std_logic;
  signal buffer_Empty : std_logic;

  signal next_Data_Exists : std_logic := '0';
  signal data_Exists_I    : std_logic := '0';

  signal valid_Write : std_logic;

  signal hsum_A  : std_logic_vector(0 to C_ADDR_BITS - 1);
  signal sum_A   : std_logic_vector(0 to C_ADDR_BITS - 1);
  signal addr_cy : std_logic_vector(0 to C_ADDR_BITS - 1);

begin  -- architecture IMP

  assert (C_DEPTH = 16) or (C_DEPTH = 32) report "SRL FIFO: C_DEPTH must be 16 or 32" severity FAILURE;

  buffer_Full <= '1' when (Addr = (0 to C_ADDR_BITS - 1 => '1')) else '0';
  FIFO_Full   <= buffer_Full;

  buffer_Empty <= '1' when (Addr = (0 to C_ADDR_BITS - 1 => '0')) else '0';

  next_Data_Exists <= (data_Exists_I and not buffer_Empty) or
                      (buffer_Empty and FIFO_Write) or
                      (data_Exists_I and not FIFO_Read);

  Data_Exists_DFF : process (Clk) is
  begin  -- process Data_Exists_DFF
    if Clk'event and Clk = '1' then  -- rising clock edge
      if Reset = '1' then
        data_Exists_I <= '0';
      else
        data_Exists_I <= next_Data_Exists;
      end if;
    end if;
  end process Data_Exists_DFF;

  Data_Exists <= data_Exists_I;
  
  valid_Write <= FIFO_Write and (FIFO_Read or not buffer_Full);

  addr_cy(0) <= valid_Write;

  Addr_Counters : for I in 0 to C_ADDR_BITS - 1 generate
  begin

    hsum_A(I) <= (FIFO_Read xor addr(I)) and (FIFO_Write or not buffer_Empty);

    -- Don't need the last muxcy, addr_cy(C_ADDR_BITS) is not used anywhere
    Used_MuxCY: if I < C_ADDR_BITS - 1 generate
    begin
      MUXCY_L_I : MB_MUXCY_XORCY
        generic map (
          C_TARGET => C_TARGET
        )
        port map (
          DI => addr(I),                  -- [in  std_logic]
          CI => addr_cy(I),               -- [in  std_logic]
          S  => hsum_A(I),                -- [in  std_logic]
          O  => sum_A(I),                 -- [out std_logic]
          LO => addr_cy(I+1));            -- [out std_logic]
    end generate Used_MuxCY;

    No_MuxCY: if I = C_ADDR_BITS - 1 generate
    begin
      XORCY_I : MB_XORCY
        generic map (
          C_TARGET => C_TARGET
        )
        port map (
          LI => hsum_A(I),                -- [in  std_logic]
          CI => addr_cy(I),               -- [in  std_logic]
          O  => sum_A(I));                -- [out std_logic]
    end generate No_MuxCY;

    FDRE_I : MB_FDRE
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        Q  => addr(I),                  -- [out std_logic]
        C  => Clk,                      -- [in  std_logic]
        CE => data_Exists_I,            -- [in  std_logic]
        D  => sum_A(I),                 -- [in  std_logic]
        R  => Reset);                   -- [in std_logic]

  end generate Addr_Counters;

  FIFO_RAM : for I in 0 to C_DATA_BITS - 1 generate
  begin
    D16 : if C_DEPTH = 16 generate
    begin
      SRL16E_I : MB_SRL16E
        generic map (
          C_TARGET    => C_TARGET,
          C_USE_SRL16 => C_USE_SRL16,
          INIT        => x"0000"
        )
        port map (
          Config_Reset => Reset,
          CE  => valid_Write,             -- [in  std_logic]
          D   => Data_In(I),              -- [in  std_logic]
          Clk => Clk,                     -- [in  std_logic]
          A0  => Addr(0),                 -- [in  std_logic]
          A1  => Addr(1),                 -- [in  std_logic]
          A2  => Addr(2),                 -- [in  std_logic]
          A3  => Addr(3),                 -- [in  std_logic]
          Q   => Data_Out(I));            -- [out std_logic]
    end generate D16;

    D32 : if C_DEPTH = 32 generate
    begin
      SRLC32E_I : MB_SRLC32E
        generic map (
          C_TARGET    => C_TARGET,
          C_USE_SRL16 => C_USE_SRL16,
          INIT        => x"00000000")
        port map (
          Config_Reset => Reset,
          CE   => valid_Write,            -- [in  std_logic]
          D    => Data_In(I),             -- [in  std_logic]
          CLK  => Clk,                    -- [in  std_logic]
          A(4) => Addr(4),                -- [in  std_logic]
          A(3) => Addr(3),                -- [in  std_logic]
          A(2) => Addr(2),                -- [in  std_logic]
          A(1) => Addr(1),                -- [in  std_logic]
          A(0) => Addr(0),                -- [in  std_logic]
          Q31  => open,                   -- [out std_logic]
          Q    => Data_Out(I));           -- [out std_logic]
    end generate D32;

  end generate FIFO_RAM;

end architecture IMP;


-------------------------------------------------------------------------------
-- bus_master.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        bus_master.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93/02
-------------------------------------------------------------------------------
-- Structure:   
--              bus_master.vhd
--                - srl_fifo
--                - srl_fifo
--
-------------------------------------------------------------------------------
-- Author:          stefana
--
-- History:
--   stefana 2019-11-04    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity bus_master is
  generic (
    C_TARGET                : TARGET_FAMILY_TYPE;
    C_M_AXI_DATA_WIDTH      : natural := 32;
    C_M_AXI_THREAD_ID_WIDTH : natural := 4;
    C_M_AXI_ADDR_WIDTH      : natural range 32 to 64 := 32;
    C_DATA_SIZE             : natural := 32;
    C_ADDR_SIZE             : natural range 32 to 64 := 32;
    C_LMB_PROTOCOL          : integer range 0  to 1 := 0;
    C_HAS_FIFO_PORTS        : boolean := true;
    C_HAS_DIRECT_PORT       : boolean := false;
    C_USE_SRL16             : string  := "yes"
  );
  port (
    -- Bus read and write transaction
    Rd_Start      : in  std_logic;
    Rd_Addr       : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Rd_Len        : in  std_logic_vector(4  downto 0);
    Rd_Size       : in  std_logic_vector(1  downto 0);
    Rd_Exclusive  : in  std_logic;
    Rd_Idle       : out std_logic;
    Rd_Response   : out std_logic_vector(1  downto 0);

    Wr_Start      : in  std_logic;
    Wr_Addr       : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Wr_Len        : in  std_logic_vector(4  downto 0);
    Wr_Size       : in  std_logic_vector(1  downto 0);
    Wr_Exclusive  : in  std_logic;
    Wr_Idle       : out std_logic;
    Wr_Response   : out std_logic_vector(1  downto 0);

    -- Bus read and write data
    Data_Rd       : in  std_logic;
    Data_Out      : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Data_Exists   : out std_logic;

    Data_Wr       : in  std_logic;
    Data_In       : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Data_Empty    : out std_logic;

    -- Direct write port
    Direct_Wr_Addr    : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Direct_Wr_Len     : in  std_logic_vector(4  downto 0);
    Direct_Wr_Data    : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Direct_Wr_Start   : in  std_logic;
    Direct_Wr_Next    : out std_logic;
    Direct_Wr_Done    : out std_logic;
    Direct_Wr_Resp    : out std_logic_vector(1 downto 0);

    -- LMB bus
    LMB_Data_Addr     : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe   : out std_logic;
    LMB_Read_Strobe   : out std_logic;
    LMB_Write_Strobe  : out std_logic;
    LMB_Ready         : in  std_logic;
    LMB_Wait          : in  std_logic;
    LMB_UE            : in  std_logic;
    LMB_Byte_Enable   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    -- AXI bus
    M_AXI_ACLK    : in  std_logic;
    M_AXI_ARESETn : in  std_logic;

    M_AXI_AWID    : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_AWADDR  : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_AWLEN   : out std_logic_vector(7 downto 0);
    M_AXI_AWSIZE  : out std_logic_vector(2 downto 0);
    M_AXI_AWBURST : out std_logic_vector(1 downto 0);
    M_AXI_AWLOCK  : out std_logic;
    M_AXI_AWCACHE : out std_logic_vector(3 downto 0);
    M_AXI_AWPROT  : out std_logic_vector(2 downto 0);
    M_AXI_AWQOS   : out std_logic_vector(3 downto 0);
    M_AXI_AWVALID : out std_logic;
    M_AXI_AWREADY : in  std_logic;

    M_AXI_WLAST   : out std_logic;
    M_AXI_WDATA   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_WSTRB   : out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
    M_AXI_WVALID  : out std_logic;
    M_AXI_WREADY  : in  std_logic;

    M_AXI_BRESP   : in  std_logic_vector(1 downto 0);
    M_AXI_BID     : in  std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_BVALID  : in  std_logic;
    M_AXI_BREADY  : out std_logic;

    M_AXI_ARADDR  : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_ARID    : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_ARLEN   : out std_logic_vector(7 downto 0);
    M_AXI_ARSIZE  : out std_logic_vector(2 downto 0);
    M_AXI_ARBURST : out std_logic_vector(1 downto 0);
    M_AXI_ARLOCK  : out std_logic;
    M_AXI_ARCACHE : out std_logic_vector(3 downto 0);
    M_AXI_ARPROT  : out std_logic_vector(2 downto 0);
    M_AXI_ARQOS   : out std_logic_vector(3 downto 0);
    M_AXI_ARVALID : out std_logic;
    M_AXI_ARREADY : in  std_logic;

    M_AXI_RLAST   : in  std_logic;
    M_AXI_RID     : in  std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_RDATA   : in  std_logic_vector(31 downto 0);
    M_AXI_RRESP   : in  std_logic_vector(1 downto 0);
    M_AXI_RVALID  : in  std_logic;
    M_AXI_RREADY  : out std_logic
  );
end entity bus_master;

library IEEE;
use ieee.numeric_std.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.all;

architecture IMP of bus_master is

  component SRL_FIFO is
    generic (
      C_TARGET    : TARGET_FAMILY_TYPE;
      C_DATA_BITS : natural;
      C_DEPTH     : natural;
      C_USE_SRL16 : string
    );
    port (
      Clk         : in  std_logic;
      Reset       : in  std_logic;
      FIFO_Write  : in  std_logic;
      Data_In     : in  std_logic_vector(0 to C_DATA_BITS-1);
      FIFO_Read   : in  std_logic;
      Data_Out    : out std_logic_vector(0 to C_DATA_BITS-1);
      FIFO_Full   : out std_logic;
      Data_Exists : out std_logic
    );
  end component SRL_FIFO;

  -- Calculate WSTRB given size and low address bits
  function Calc_WSTRB (Wr_Size : std_logic_vector(1 downto 0);
                       Wr_Addr : std_logic_vector(1 downto 0)) return std_logic_vector is
  begin
    if Wr_Size = "00" then  -- Byte
      case Wr_Addr is
        when "00" => return "0001";
        when "01" => return "0010";
        when "10" => return "0100";
        when "11" => return "1000";
        when others => null;
      end case;
    end if;
    if Wr_Size = "01" then  -- Halfword
      if Wr_Addr(1) = '0' then
        return "0011";
      else
        return "1100";
      end if;
    end if;
    return "1111";          -- Word
  end function Calc_WSTRB;

  type wr_state_type  is (idle, start, wait_on_ready, wait_on_bchan);

  signal wr_state          : wr_state_type;

  signal wdata             : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
  signal wstrb             : std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);

  signal axi_wvalid        : std_logic;                      -- internal M_AXI_WVALID
  signal axi_wr_start      : std_logic;                      -- LMB did not respond, start AXI write
  signal axi_wr_idle       : std_logic;                      -- AXI write is idle
  signal axi_wr_resp       : std_logic_vector(1  downto 0);  -- AXI write response
  signal axi_do_read       : std_logic;                      -- read word from write FIFO for AXI

  signal axi_dwr_addr      : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal axi_dwr_len       : std_logic_vector(4  downto 0);
  signal axi_dwr_size      : std_logic_vector(1  downto 0);
  signal axi_dwr_exclusive : std_logic;
  signal axi_dwr_start     : std_logic;
  signal axi_dwr_wdata     : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
  signal axi_dwr_wstrb     : std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);

  signal axi_dwr_sel       : std_logic;
  signal axi_dwr_done      : std_logic;

begin  -- architecture IMP

  assert (C_DATA_SIZE = C_M_AXI_DATA_WIDTH)
    report "LMB and AXI data widths must be the same" severity FAILURE;

  Has_FIFO: if C_HAS_FIFO_PORTS generate
    type lmb_state_type is (idle, start_rd, wait_rd, start_wr, wait_wr, sample_rd, sample_rd_next, sample_wr, direct_wr);
    type rd_state_type  is (idle, start, wait_on_ready, wait_on_data);

    signal lmb_state     : lmb_state_type;
    signal rd_state      : rd_state_type;

    signal reset         : std_logic;

    signal rdata         : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);

    signal do_read       : std_logic;
    signal do_write      : std_logic;

    signal lmb_addr      : std_logic_vector(4 downto 0);  -- LMB word address
    signal lmb_addr_next : std_logic_vector(4 downto 0);  -- LMB word address incremented
    signal lmb_len       : std_logic_vector(4 downto 0);  -- LMB length
    signal lmb_len_next  : std_logic_vector(4 downto 0);  -- LMB length decremented
    signal lmb_rd_idle   : std_logic;                     -- LMB read is idle
    signal lmb_wr_idle   : std_logic;                     -- LMB write is idle
    signal lmb_rd_resp   : std_logic_vector(1 downto 0);  -- LMB read response
    signal lmb_wr_resp   : std_logic_vector(1 downto 0);  -- LMB write response
    signal lmb_sample    : std_logic;                     -- LMB read sample
    signal lmb_rd_next   : std_logic;                     -- LMB read next (C_LMB_PROTOCOL = 1)

    signal axi_rready    : std_logic;                     -- internal M_AXI_RREADY
    signal axi_rd_start  : std_logic;                     -- LMB did not respond, start AXI read
    signal axi_rd_idle   : std_logic;                     -- AXI read is idle
    signal axi_rd_resp   : std_logic_vector(1 downto 0);  -- AXI read response
    signal axi_do_write  : std_logic;                     -- write word to read FIFO for AXI
    signal wdata_exists  : std_logic;                     -- write FIFO has data
  begin

    reset <= not M_AXI_ARESETn;

    -- Read FIFO instantiation
    Read_FIFO : SRL_FIFO
      generic map (
        C_TARGET    => C_TARGET,
        C_DATA_BITS => 32,
        C_DEPTH     => 32,
        C_USE_SRL16 => C_USE_SRL16
      )
      port map (
        Clk         => M_AXI_ACLK,
        Reset       => reset,
        FIFO_Write  => do_write,
        Data_In     => rdata,
        FIFO_Read   => Data_Rd,
        Data_Out    => Data_Out,
        FIFO_Full   => open,
        Data_Exists => Data_Exists
      );

    -- Write FIFO instantiation
    Write_FIFO : SRL_FIFO
      generic map (
        C_TARGET    => C_TARGET,
        C_DATA_BITS => 32,
        C_DEPTH     => 32,
        C_USE_SRL16 => C_USE_SRL16
      )
      port map (
        Clk         => M_AXI_ACLK,
        Reset       => reset,
        FIFO_Write  => Data_Wr,
        Data_In     => Data_In,
        FIFO_Read   => do_read,
        Data_Out    => wdata,
        FIFO_Full   => open,
        Data_Exists => wdata_exists
      );

    -- Common signals
    Data_Empty   <= not wdata_exists;
    Rd_Idle      <= lmb_rd_idle and axi_rd_idle;
    Rd_Response  <= lmb_rd_resp or  axi_rd_resp;
    Wr_Idle      <= lmb_wr_idle and axi_wr_idle;
    Wr_Response  <= lmb_wr_resp or  axi_wr_resp;

    wstrb    <= Calc_WSTRB(Wr_Size, Wr_Addr(1 downto 0));
    rdata    <= LMB_Data_Read when (lmb_sample = '1' and lmb_rd_idle = '0') else M_AXI_RDATA;
    do_write <= (lmb_sample and not lmb_rd_idle) or axi_do_write;
    do_read  <= (LMB_Ready and not lmb_wr_idle) or axi_do_read;


    -- LMB implementation
    LMB_Data_Addr   <= Wr_Addr(C_M_AXI_ADDR_WIDTH-1 downto 7) & lmb_addr & Wr_Addr(1 downto 0);
    LMB_Data_Write  <= wdata;
    LMB_Byte_Enable <= wstrb;

    lmb_addr_next <= std_logic_vector(unsigned(lmb_addr) + 1);
    lmb_len_next  <= std_logic_vector(unsigned(lmb_len)  - 1);

    LMB_Executing : process (M_AXI_ACLK) is
      variable ue : std_logic;
    begin  -- process LMB_Executing
      if (M_AXI_ACLK'event and M_AXI_ACLK = '1') then
        if (M_AXI_ARESETn = '0') then
          lmb_state        <= idle;
          axi_dwr_sel      <= '0';
          axi_rd_start     <= '0';
          axi_wr_start     <= '0';
          lmb_addr         <= (others => '0');
          lmb_rd_idle      <= '1';
          lmb_wr_idle      <= '1';
          lmb_len          <= (others => '0');
          lmb_rd_resp      <= "00";
          lmb_wr_resp      <= "00";
          lmb_rd_next      <= '0';
          ue               := '0';
          LMB_Addr_Strobe  <= '0';
          LMB_Read_Strobe  <= '0';
          LMB_Write_Strobe <= '0';
        else
          axi_rd_start <= '0';
          axi_wr_start <= '0';
          lmb_rd_next  <= '0';
          case lmb_state is
            when idle =>
              lmb_addr    <= Wr_Addr(6 downto 2);
              lmb_len     <= Wr_Len;
              lmb_rd_idle <= '1';
              lmb_wr_idle <= '1';
              ue          := '0';
              if (Direct_Wr_Start = '1' and C_HAS_DIRECT_PORT) then
                lmb_state   <= direct_wr;
                axi_dwr_sel <= '1';
              end if;
              if (Rd_Start = '1') then
                lmb_state       <= start_rd;
                axi_dwr_sel     <= '0';
                lmb_rd_idle     <= '0';
                lmb_rd_resp     <= "00";
                LMB_Addr_Strobe <= '1';
                LMB_Read_Strobe <= '1';
              end if;
              if (Wr_Start = '1') then
                lmb_state        <= start_wr;
                axi_dwr_sel      <= '0';
                lmb_wr_idle      <= '0';
                lmb_wr_resp      <= "00";
                LMB_Addr_Strobe  <= '1';
                LMB_Write_Strobe <= '1';
              end if;

            when start_rd =>
              lmb_state       <= wait_rd;
              LMB_Addr_Strobe <= '0';
              LMB_Read_Strobe <= '0';

            when wait_rd =>
              lmb_state <= sample_rd;

            when sample_rd =>
              if (LMB_Ready = '1') and (C_LMB_PROTOCOL = 0) then
                if (lmb_len = (lmb_len'range => '0')) then
                  lmb_state <= idle;
                else
                  lmb_state       <= start_rd;
                  LMB_Addr_Strobe <= '1';
                  LMB_Read_Strobe <= '1';
                end if;
                lmb_addr    <= lmb_addr_next;
                lmb_len     <= lmb_len_next;
                ue          := LMB_UE or ue;
                lmb_rd_resp <= ue & '0';
              elsif (LMB_Ready = '1') and (C_LMB_PROTOCOL = 1) then
                lmb_rd_next  <= '1';
                lmb_state    <= sample_rd_next;
              elsif (LMB_Wait = '0') then
                lmb_state    <= idle;
                axi_rd_start <= '1';
              end if;

            when sample_rd_next =>
              if (lmb_len = (lmb_len'range => '0')) then
                lmb_state <= idle;
              else
                lmb_state       <= start_rd;
                LMB_Addr_Strobe <= '1';
                LMB_Read_Strobe <= '1';
              end if;
              lmb_addr    <= lmb_addr_next;
              lmb_len     <= lmb_len_next;
              ue          := LMB_UE or ue;
              lmb_rd_resp <= ue & '0';

            when start_wr =>
              lmb_state        <= wait_wr;
              LMB_Addr_Strobe  <= '0';
              LMB_Write_Strobe <= '0';

            when wait_wr =>
              lmb_state <= sample_wr;

            when sample_wr =>
              if (LMB_Ready = '1') then
                if (lmb_len = (lmb_len'range => '0')) then
                  lmb_state <= idle;
                else
                  lmb_state        <= start_wr;
                  LMB_Addr_Strobe  <= '1';
                  LMB_Write_Strobe <= '1';
                end if;
                lmb_addr    <= lmb_addr_next;
                lmb_len     <= lmb_len_next;
                ue          := LMB_UE or ue;
                lmb_wr_resp <= ue & '0';
              elsif (LMB_Wait = '0') then
                lmb_state    <= idle;
                axi_wr_start <= '1';
              end if;

            when direct_wr =>  -- Handle AXI direct write
              if axi_dwr_done = '1' and Direct_Wr_Start = '0' then
                lmb_state   <= idle;
                axi_dwr_sel <= '0';
              end if;

            -- coverage off
            when others =>
              null;
            -- coverage on
          end case;
        end if;
      end if;
    end process LMB_Executing;

    lmb_sample <= LMB_Ready when C_LMB_PROTOCOL = 0 else lmb_rd_next;

    -- AXI Read FSM
    Rd_Executing : process (M_AXI_ACLK) is
      variable rd_resp : std_logic_vector(1 downto 0);
    begin  -- process Rd_Executing
      if (M_AXI_ACLK'event and M_AXI_ACLK = '1') then  -- rising clock edge
        if (M_AXI_ARESETn = '0') then                  -- synchronous reset (active low)
          rd_resp       := "00";
          axi_rready    <= '0';
          axi_rd_idle   <= '1';
          axi_rd_resp   <= "00";
          M_AXI_ARADDR  <= (others => '0');
          M_AXI_ARLEN   <= (others => '0');
          M_AXI_ARSIZE  <= "010";               -- 32-bit accesses
          M_AXI_ARLOCK  <= '0';                 -- No locking
          M_AXI_ARVALID <= '0';
          rd_state      <= idle;
        else
          case rd_state is
            when idle =>
              rd_resp      := "00";
              axi_rd_idle  <= '1';
              if axi_rd_start = '1' then
                rd_state    <= start;
                axi_rd_idle <= '0';
                axi_rd_resp <= "00";
              end if;

            when start =>
              M_AXI_ARVALID <= '1';
              M_AXI_ARADDR  <= Rd_Addr;
              M_AXI_ARLEN   <= "000" & Rd_Len;
              M_AXI_ARSIZE  <= "0"  & Rd_Size;
              M_AXI_ARLOCK  <= Rd_Exclusive;
              rd_state      <= wait_on_ready;

            when wait_on_ready =>
              if (M_AXI_ARREADY = '1') then
                M_AXI_ARVALID <= '0';
                axi_rready    <= '1';
                rd_state      <= wait_on_data;
              end if;

            when wait_on_data =>
              if (M_AXI_RVALID = '1') then
                if rd_resp = "00" and M_AXI_RRESP /= "00" then
                  rd_resp := M_AXI_RRESP;  -- Sticky error response
                end if;
                if (M_AXI_RLAST = '1') then
                  rd_state    <= idle;
                  axi_rd_resp <= rd_resp;
                  axi_rready  <= '0';
                end if;
              end if;

            -- coverage off
            when others =>
              null;
            -- coverage on
          end case;
        end if;
      end if;
    end process Rd_Executing;

    axi_do_write <= axi_rready and M_AXI_RVALID;

  end generate Has_FIFO;

  No_FIFO: if not C_HAS_FIFO_PORTS generate
    type state_type is (idle, direct_wr);

    signal state : state_type;
  begin
    Rd_Idle          <= '1';
    Rd_Response      <= "00";
    Data_Out         <= (others => '0');
    Data_Exists      <= '0';

    Data_Empty       <= '0';
    Wr_Idle          <= '0';
    Wr_Response      <= "00";

    LMB_Data_Addr    <= (others => '0');
    LMB_Data_Write   <= (others => '0');
    LMB_Addr_Strobe  <= '0';
    LMB_Read_Strobe  <= '0';
    LMB_Write_Strobe <= '0';
    LMB_Byte_Enable  <= (others => '0');
    
    M_AXI_ARADDR     <= (others => '0');
    M_AXI_ARLEN      <= (others => '0');
    M_AXI_ARSIZE     <= (others => '0');
    M_AXI_ARLOCK     <= '0';
    M_AXI_ARVALID    <= '0';

    wdata            <= (others => '0');
    wstrb            <= (others => '0');
    axi_wr_start     <= '0';

    AXI_Direct_Write: process (M_AXI_ACLK) is
    begin  -- process AXI_Direct_Write
      if (M_AXI_ACLK'event and M_AXI_ACLK = '1') then  -- rising clock edge
        if (M_AXI_ARESETn = '0') then                  -- synchronous reset (active low)
          state       <= idle;
          axi_dwr_sel <= '0';
        else
          case state is
            when idle =>
              if Direct_Wr_Start = '1' then
                state       <= direct_wr;
                axi_dwr_sel <= '1';
              end if;
            when direct_wr =>
              if axi_dwr_done = '1' and Direct_Wr_Start = '0' then
                state       <= idle;
                axi_dwr_sel <= '0';
              end if;
            -- coverage off
            when others =>
              null;
            -- coverage on
          end case;
        end if;
      end if;
    end process AXI_Direct_Write;

  end generate No_FIFO;

  Has_Direct_Write: if C_HAS_DIRECT_PORT generate
  begin
    Direct_Wr_Next    <= axi_do_read     when axi_dwr_sel = '1' else '0';
    Direct_Wr_Done    <= axi_dwr_done    when axi_dwr_sel = '1' else '0';
    Direct_Wr_Resp    <= axi_wr_resp;
 
    axi_dwr_addr      <= Direct_Wr_Addr  when axi_dwr_sel = '1' else Wr_Addr;
    axi_dwr_len       <= Direct_Wr_Len   when axi_dwr_sel = '1' else Wr_Len;
    axi_dwr_size      <= "10"            when axi_dwr_sel = '1' else Wr_Size;
    axi_dwr_exclusive <= '0'             when axi_dwr_sel = '1' else Wr_Exclusive;
    axi_dwr_start     <= Direct_Wr_Start when axi_dwr_sel = '1' else axi_wr_start;
    axi_dwr_wdata     <= Direct_Wr_Data  when axi_dwr_sel = '1' else wdata;
    axi_dwr_wstrb     <= "1111"          when axi_dwr_sel = '1' else wstrb;
  end generate Has_Direct_Write;

  No_Direct_Write: if not C_HAS_DIRECT_PORT generate
  begin
    Direct_Wr_Next    <= '0';
    Direct_Wr_Done    <= '0';
    Direct_Wr_Resp    <= "00";

    axi_dwr_addr      <= Wr_Addr;
    axi_dwr_len       <= Wr_Len;
    axi_dwr_size      <= Wr_Size;
    axi_dwr_exclusive <= Wr_Exclusive;
    axi_dwr_start     <= axi_wr_start;
    axi_dwr_wdata     <= wdata;
    axi_dwr_wstrb     <= wstrb;
  end generate No_Direct_Write;

  -- AW signals constant values
  M_AXI_AWPROT  <= "010";               -- Non-secure data accesses only
  M_AXI_AWQOS   <= "0000";              -- Don't participate in QoS handling
  M_AXI_AWID    <= (others => '0');     -- ID fixed to zero
  M_AXI_AWBURST <= "01";                -- Only INCR bursts
  M_AXI_AWCACHE <= "0011";              -- Set "Modifiable" and "Bufferable" bit

  -- AR signals constant values
  M_AXI_ARPROT  <= "010";               -- Normal and non-secure Data access only
  M_AXI_ARQOS   <= "0000";              -- Don't participate in QoS handling
  M_AXI_ARID    <= (others => '0');     -- ID fixed to zero
  M_AXI_ARBURST <= "01";                -- Only INCR bursts
  M_AXI_ARCACHE <= "0011";              -- Set "Modifiable" and "Bufferable" bit

  -- R signals constant values
  M_AXI_RREADY <= '1';                  -- Always accepting read data

  -- B signals value
  M_AXI_BREADY <= '1' when wr_state = wait_on_bchan else '0';

  -- AXI Write FSM
  Wr_Executing : process (M_AXI_ACLK) is
    variable address_done : boolean;
    variable data_done    : boolean;
    variable len          : std_logic_vector(4 downto 0);
  begin  -- process Wr_Executing
    if (M_AXI_ACLK'event and M_AXI_ACLK = '1') then   -- rising clock edge
      if (M_AXI_ARESETn = '0') then             -- synchronous reset (active low)
        axi_wr_idle   <= '1';
        axi_wr_resp   <= "00";
        axi_wvalid    <= '0';
        M_AXI_WVALID  <= '0';
        M_AXI_WLAST   <= '0';
        M_AXI_WSTRB   <= (others => '0');
        M_AXI_AWADDR  <= (others => '0');
        M_AXI_AWLEN   <= (others => '0');
        M_AXI_AWSIZE  <= "010";               -- 32-bit accesses
        M_AXI_AWLOCK  <= '0';                 -- No locking
        M_AXI_AWVALID <= '0';
        axi_dwr_done  <= '0';
        address_done  := false;
        data_done     := false;
        len           := (others => '0');
        wr_state      <= idle;
      else
        case wr_state is
          when idle =>
            axi_wr_idle  <= '1';
            axi_dwr_done <= '0';
            address_done := false;
            data_done    := false;
            len          := (others => '0');
            if axi_dwr_start = '1' then
              wr_state    <= start;
              axi_wr_idle <= '0';
              axi_wr_resp <= "00";
            end if;

          when start =>
            M_AXI_WLAST   <= '0';
            M_AXI_AWVALID <= '1';
            M_AXI_AWADDR  <= axi_dwr_addr;
            M_AXI_AWLEN   <= "000" & axi_dwr_len;
            M_AXI_AWSIZE  <= "0" & axi_dwr_size;
            M_AXI_AWLOCK  <= axi_dwr_exclusive;

            axi_wvalid    <= '1';
            M_AXI_WVALID  <= '1';
            if axi_dwr_len = "00000" then
              M_AXI_WLAST <= '1';
            end if;
            M_AXI_WSTRB   <= axi_dwr_wstrb;

            len           := axi_dwr_len;
            wr_state      <= wait_on_ready;

          when wait_on_ready =>
            if M_AXI_AWREADY = '1' then
              M_AXI_AWVALID <= '0';
              address_done := true;              
            end if;
            if M_AXI_WREADY = '1' then
              if len = "00000" then
                axi_wvalid   <= '0';
                M_AXI_WVALID <= '0';
                data_done    := true;
              else
                if len = "00001" then
                  M_AXI_WLAST <= '1';
                end if;
                len := std_logic_vector(unsigned(len) - 1);
              end if;
            end if;
            if (address_done and data_done) then
              wr_state <= wait_on_bchan;
            end if;

          when wait_on_bchan =>
            if (M_AXI_BVALID = '1') then
              wr_state     <= idle;
              axi_dwr_done <= '1';
              axi_wr_resp  <= M_AXI_BRESP;
            end if;

          -- coverage off
          when others =>
            null;
          -- coverage on
        end case;
      end if;
    end if;
  end process Wr_Executing;

  axi_do_read <= axi_wvalid and M_AXI_WREADY;

  M_AXI_WDATA <= axi_dwr_wdata;

end architecture IMP;


-------------------------------------------------------------------------------
-- jtag_control.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        jtag_control.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              jtag_control.vhd
--
-------------------------------------------------------------------------------
-- Author:          stefana
--
-- History:
--   stefana 2019-11-04    Initial version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-----------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity JTAG_CONTROL is
  generic (
    C_TARGET               : TARGET_FAMILY_TYPE;
    C_USE_BSCAN            : integer;
    C_DTM_IDCODE           : integer;
    C_MB_DBG_PORTS         : integer;
    C_USE_CONFIG_RESET     : integer;
    C_USE_SRL16            : string;
    C_DEBUG_INTERFACE      : integer;
    C_DBG_REG_ACCESS       : integer;
    C_DBG_MEM_ACCESS       : integer;
    C_M_AXI_ADDR_WIDTH     : integer;
    C_M_AXI_DATA_WIDTH     : integer;
    C_USE_CROSS_TRIGGER    : integer;
    C_USE_UART             : integer;
    C_UART_WIDTH           : integer;
    C_EXT_TRIG_RESET_VALUE : std_logic_vector(0 to 19);
    C_NUM_GROUPS           : integer;
    C_GROUP_BITS           : integer;
    C_TRACE_OUTPUT         : integer;
    C_EN_WIDTH             : integer := 1
  );
  port (
    -- Global signals
    Config_Reset       : in  std_logic;
    Scan_Reset_Sel     : in  std_logic;
    Scan_Reset         : in  std_logic;
    Scan_En            : in  std_logic;

    Clk                : in  std_logic;
    Rst                : in  std_logic;

    Read_RX_FIFO       : in  std_logic;
    Reset_RX_FIFO      : in  std_logic;
    RX_Data            : out std_logic_vector(0 to C_UART_WIDTH-1);
    RX_Data_Present    : out std_logic;
    RX_Buffer_Full     : out std_logic;

    Write_TX_FIFO      : in  std_logic;
    Reset_TX_FIFO      : in  std_logic;
    TX_Data            : in  std_logic_vector(0 to C_UART_WIDTH-1);
    TX_Buffer_Full     : out std_logic;
    TX_Buffer_Empty    : out std_logic;

    Debug_SYS_Rst      : out std_logic := '0';
    Debug_Rst          : out std_logic := '0';

    -- BSCAN signals
    TDI                : in  std_logic;
    TMS                : in  std_logic;
    TCK                : in  std_logic;
    TDO                : out std_logic;

    -- Bus Master signals
    M_AXI_ACLK         : in  std_logic;
    M_AXI_ARESETn      : in  std_logic;

    Master_rd_start    : out std_logic;
    Master_rd_addr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Master_rd_len      : out std_logic_vector(4 downto 0);
    Master_rd_size     : out std_logic_vector(1 downto 0);
    Master_rd_excl     : out std_logic;
    Master_rd_idle     : in  std_logic;
    Master_rd_resp     : in  std_logic_vector(1 downto 0);
    Master_wr_start    : out std_logic;
    Master_wr_addr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Master_wr_len      : out std_logic_vector(4 downto 0);
    Master_wr_size     : out std_logic_vector(1 downto 0);
    Master_wr_excl     : out std_logic;
    Master_wr_idle     : in  std_logic;
    Master_wr_resp     : in  std_logic_vector(1 downto 0);
    Master_data_rd     : out std_logic;
    Master_data_out    : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Master_data_exists : in  std_logic;
    Master_data_wr     : out std_logic;
    Master_data_in     : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Master_data_empty  : in  std_logic;

    Master_dwr_addr    : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Master_dwr_len     : out std_logic_vector(4 downto 0);
    Master_dwr_done    : in  std_logic;
    Master_dwr_resp    : in  std_logic_vector(1 downto 0);

    -- MicroBlaze Debug Signals
    MB_Debug_Enabled   : out std_logic_vector(C_EN_WIDTH-1 downto 0);
    Dbg_Disable        : out std_logic;
    Dbg_Clk            : out std_logic;
    Dbg_TDI            : out std_logic;
    Dbg_TDO            : in  std_logic;
    Dbg_All_TDO        : in  std_logic;
    Dbg_TDO_I          : in  std_logic_vector(0 to 31);
    Dbg_Reg_En         : out std_logic_vector(0 to 7);
    Dbg_Capture        : out std_logic;
    Dbg_Shift          : out std_logic;
    Dbg_Update         : out std_logic;

    Dbg_data_cmd       : out std_logic;
    Dbg_command        : out std_logic_vector(0 to 7);

    -- MicroBlaze Cross Trigger Signals
    DMCS2_group_hart   : in  std_logic_vector(2 * C_EN_WIDTH * C_GROUP_BITS - 1 downto 0);
    DMCS2_group_ext    : in  std_logic_vector(2 *         4  * C_GROUP_BITS - 1 downto 0);

    Dbg_Trig_In_0      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_1      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_2      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_3      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_4      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_5      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_6      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_7      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_8      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_9      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_10     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_11     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_12     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_13     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_14     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_15     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_16     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_17     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_18     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_19     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_20     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_21     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_22     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_23     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_24     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_25     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_26     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_27     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_28     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_29     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_30     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_31     : in  std_logic_vector(0 to 7);

    Dbg_Trig_Ack_In_0  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_1  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_2  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_3  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_4  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_5  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_6  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_7  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_8  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_9  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_10 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_11 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_12 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_13 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_14 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_15 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_16 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_17 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_18 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_19 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_20 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_21 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_22 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_23 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_24 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_25 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_26 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_27 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_28 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_29 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_30 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_31 : out std_logic_vector(0 to 7);

    Dbg_Trig_Out_0     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_1     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_2     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_3     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_4     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_5     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_6     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_7     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_8     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_9     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_10    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_11    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_12    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_13    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_14    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_15    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_16    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_17    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_18    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_19    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_20    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_21    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_22    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_23    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_24    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_25    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_26    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_27    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_28    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_29    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_30    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_31    : out std_logic_vector(0 to 7);

    Dbg_Trig_Ack_Out_0  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_1  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_2  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_3  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_4  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_5  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_6  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_7  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_8  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_9  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_10 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_11 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_12 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_13 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_14 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_15 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_16 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_17 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_18 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_19 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_20 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_21 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_22 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_23 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_24 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_25 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_26 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_27 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_28 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_29 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_30 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_31 : in  std_logic_vector(0 to 7);

    Ext_Trig_In         : in  std_logic_vector(0 to 3);
    Ext_Trig_Ack_In     : out std_logic_vector(0 to 3);
    Ext_Trig_Out        : out std_logic_vector(0 to 3);
    Ext_Trig_Ack_Out    : in  std_logic_vector(0 to 3)
  );

end entity JTAG_CONTROL;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.SRL_FIFO;
use mdm_riscv_v1_0_7.xil_scan_reset_control;

architecture IMP of JTAG_CONTROL is

  component xil_scan_reset_control is
  port (
    Scan_En          : in  std_logic;
    Scan_Reset_Sel   : in  std_logic;
    Scan_Reset       : in  std_logic;
    Functional_Reset : in  std_logic;
    Reset            : out std_logic);
  end component xil_scan_reset_control;

  component SRL_FIFO
    generic (
      C_TARGET    :     TARGET_FAMILY_TYPE;
      C_DATA_BITS :     natural;
      C_DEPTH     :     natural;
      C_USE_SRL16 :     string
    );
    port (
      Clk           : in  std_logic;
      Reset         : in  std_logic;
      FIFO_Write    : in  std_logic;
      Data_In       : in  std_logic_vector(0 to C_DATA_BITS-1);
      FIFO_Read     : in  std_logic;
      Data_Out      : out std_logic_vector(0 to C_DATA_BITS-1);
      FIFO_Full     : out std_logic;
      Data_Exists   : out std_logic
    );
  end component SRL_FIFO;

  component MB_SRL16E is
    generic(
      C_TARGET    : TARGET_FAMILY_TYPE;
      C_STATIC    : boolean    := false;
      C_USE_SRL16 : string     := "yes";
      INIT        : bit_vector := X"0000");
    port(
      Config_Reset : in  std_logic;
      Q        : out std_logic;
      A0       : in  std_logic;
      A1       : in  std_logic;
      A2       : in  std_logic;
      A3       : in  std_logic;
      CE       : in  std_logic;
      CLK      : in  std_logic;
      D        : in  std_logic
    );
  end component MB_SRL16E;

  component MB_BUFG
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
       O : out std_logic;
       I : in  std_logic
    );
  end component;

  component MB_BUFGCE_1 is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
       O  : out std_logic;
       CE : in  std_logic;
       I  : in  std_logic
    );
  end component MB_BUFGCE_1;

  subtype command_type          is std_logic_vector(7 downto 0);

  constant C_DTMCS_VERSION      : natural := 1;
  constant C_DTMCS_IDLE         : natural := 2;

  constant C_DMI_ABITS          : natural := 8;
  constant C_DMI_OPBITS         : natural := 2;

  subtype C_DMI_ADDR_POS       is natural range 41 downto 34;

  constant C_DTMCS_RESET_VALUE  : std_logic_vector(31 downto 0) :=
    "00000000000000000" & std_logic_vector(to_unsigned(C_DTMCS_IDLE, 3)) & "00" &
    std_logic_vector(to_unsigned(C_DMI_ABITS, 6)) & std_logic_vector(to_unsigned(C_DTMCS_VERSION, 4));

  constant C_DMI_OP_IDLE        : std_logic_vector(1 downto 0) := "00";
  constant C_DMI_OP_READ        : std_logic_vector(1 downto 0) := "01";
  constant C_DMI_OP_WRITE       : std_logic_vector(1 downto 0) := "10";
  constant C_DMI_OP_SUCCESS     : std_logic_vector(1 downto 0) := "00";
  constant C_DMI_OP_FAIL        : std_logic_vector(1 downto 0) := "10";
  constant C_DMI_OP_BUSY        : std_logic_vector(1 downto 0) := "11";

  constant C_HARTSELLEN         : natural := log2(C_EN_WIDTH);

  constant C_DMCONTROL_ADDR     : command_type := X"10";
  constant C_DMSTATUS_ADDR      : command_type := X"11";
  constant C_HARTINFO_ADDR      : command_type := X"12";
  constant C_HAWINDOW_ADDR      : command_type := X"15";
  constant C_CONFSTRPTR0_ADDR   : command_type := X"19";
  constant C_CONFSTRPTR1_ADDR   : command_type := X"1A";
  constant C_CONFSTRPTR2_ADDR   : command_type := X"1B";
  constant C_CONFSTRPTR3_ADDR   : command_type := X"1C";
  constant C_NEXTDM_ADDR        : command_type := X"1D";
  constant C_DMCS2_ADDR         : command_type := X"32";
  constant C_SBCS_ADDR          : command_type := X"38";
  constant C_SBADDRESS0_ADDR    : command_type := X"39";
  constant C_SBADDRESS1_ADDR    : command_type := X"3A";
  constant C_SBDATA0_ADDR       : command_type := X"3C";
  constant C_HALTSUM0_ADDR      : command_type := X"40";

  constant C_UART_READ_BYTE     : command_type := X"70";
  constant C_UART_WRITE_BYTE    : command_type := X"70";
  constant C_UART_READ_STATUS   : command_type := X"71";
  constant C_UART_WRITE_CONTROL : command_type := X"71";

  constant C_USE_DBG_MEM_ACCESS : boolean :=
    (C_DEBUG_INTERFACE = 0) and
    (C_DBG_MEM_ACCESS = 1 or C_TRACE_OUTPUT = 4 or (C_TRACE_OUTPUT = 1 and C_DBG_REG_ACCESS = 0));

  constant C_INIT               : std_logic_vector(31 downto 0) := X"00000001";
  
  signal config_with_scan_reset : std_logic;

  signal drck_dtm               : std_logic := '0';
  signal update_dtm             : std_logic := '0';
  signal capture_dtm            : std_logic := '0';
  signal shift_dtm              : std_logic := '0';
  signal sel_ir                 : std_logic := '0';
  signal sel_dtmcs              : std_logic := '0';
  signal sel_dmi                : std_logic := '0';
  signal sel_bypass             : std_logic := '0';
  signal sel_idcode             : std_logic := '0';

  signal dtmcs                  : std_logic_vector(31 downto 0) := C_DTMCS_RESET_VALUE;
  signal dmihardreset           : std_logic;
  signal dmireset               : std_logic;
  signal dmi                    : std_logic_vector(C_DMI_ABITS + 33 downto 0) := (others => '0');

  signal command                : command_type := (others => '0');
  signal idle_reg               : boolean;
  signal read_reg               : boolean;
  signal write_reg              : boolean;

  signal dmistat                : std_logic_vector(1 downto 0) := C_DMI_OP_SUCCESS;
  signal dmistat_current        : std_logic_vector(1 downto 0) := C_DMI_OP_SUCCESS;
  signal dmistat_shift_count    : std_logic_vector(1 downto 0) := (others => '0');

  signal dmcontrol              : std_logic_vector(29 downto 0);
  signal dmcontrol_hartreset    : std_logic := '0';
  signal dmcontrol_hasel        : std_logic := '0';
  signal dmcontrol_hartsel      : std_logic_vector(C_HARTSELLEN - 1 downto 0) := (others => '0');
  signal dmcontrol_hartsel_val  : natural range 0 to 31;
  signal dmcontrol_ndmreset     : std_logic := '0';
  signal dmcontrol_dmactive     : std_logic := '0';
  signal dmcontrol_read         : std_logic_vector(29 + C_DMI_OPBITS downto 0) := (others => '0');
  signal dmstatus_shift_count   : std_logic_vector(4 downto 0) := (others => '0');
  signal dmstatus_shift_index   : natural range 0 to 31;
  signal mb_debug_enabled_i     : std_logic_vector(C_EN_WIDTH - 1 downto 0);
  signal haltsum0               : std_logic_vector(C_EN_WIDTH - 1 downto 0) := (others => '0');
  signal haltsum0_read          : std_logic_vector(C_EN_WIDTH - 1 + C_DMI_OPBITS downto 0) := (others => '0');
  signal hawindow               : std_logic_vector(C_EN_WIDTH - 1 downto 0) := C_INIT(C_EN_WIDTH - 1 downto 0);

  signal TDO_ir                 : std_logic := '0';
  signal TDO_bypass             : std_logic := '0';
  signal TDO_idcode             : std_logic := '0';
  signal TDO_dtmcs              : std_logic := '0';
  signal TDO_dmcontrol          : std_logic := '0';
  signal TDO_dmstatus           : std_logic := '0';
  signal TDO_hawindow           : std_logic := '0';
  signal TDO_dmcs2              : std_logic := '0';
  signal TDO_sbcs               : std_logic := '0';
  signal TDO_sbaddress0         : std_logic := '0';
  signal TDO_sbaddress1         : std_logic := '0';
  signal TDO_sbdata0            : std_logic := '0';
  signal TDO_haltsum0           : std_logic := '0';
  signal TDO_dtm                : std_logic := '0';
  signal TDO_uart               : std_logic := '0';

  -- Cross trigger
  constant C_NUM_DBG_CT : integer := 8;
  constant C_NUM_EXT_CT : integer := 4;
  
  type dmcs2_group_hart_t is array (boolean, C_EN_WIDTH - 1 downto 0) of std_logic_vector(C_GROUP_BITS-1 downto 0);
  type dmcs2_group_ext_t  is array (boolean, 3 downto 0)              of std_logic_vector(C_GROUP_BITS-1 downto 0);
  type dmcs2_group_t      is array (boolean, C_EN_WIDTH + 3 downto 0) of std_logic_vector(C_GROUP_BITS-1 downto 0);
  type dbg_trig_type      is array (0 to 31) of std_logic_vector(0 to C_NUM_DBG_CT - 1);
  type trig_type          is array (0 to C_MB_DBG_PORTS + 3) of std_logic_vector(0 to 1);

  signal dmcs2_grouptype_i    : std_logic                    := '0';
  signal dmcs2_dmexttrigger_i : std_logic_vector(1 downto 0) := (others => '0');
  signal dmcs2_group_hart_i   : dmcs2_group_hart_t           := (others => (others => (others => '0')));
  signal dmcs2_group_ext_i    : dmcs2_group_ext_t            := (others => (others => (others => '0')));
  signal dmcs2_hgselect_i     : std_logic                    := '0';

  signal dbg_trig_ack_in_i    : dbg_trig_type;
  signal dbg_trig_out_i       : dbg_trig_type;
  signal ext_trig_ack_in_i    : std_logic_vector(0 to C_NUM_EXT_CT - 1);
  signal ext_trig_out_i       : std_logic_vector(0 to C_NUM_EXT_CT - 1);

begin  -- architecture IMP

  config_with_scan_reset_i: xil_scan_reset_control
        port map (
          Scan_En          => Scan_En,
          Scan_Reset_Sel   => Scan_Reset_Sel,
          Scan_Reset       => Scan_Reset,
          Functional_Reset => Config_Reset,
          Reset            => config_with_scan_reset);

  -------------------------------------------------------------------------------
  --
  -- Implement JTAG Debug Transport Module (DTM) Test Access Port
  --
  -- See "RISC-V External Debug Support, Version 0.13.2", Chapter 6
  --
  -------------------------------------------------------------------------------
  -- DTM IDCODE values:
  --
  -- Xilinx = X"00000093" = 147
  -- Version = 0, PartNumber = 0, ManufId = XILINX = 00001001001, 1
  --
  -- SiFive = X"00000913" = 2323 (also accepted by hw_server)
  -- Version = 0, PartNumber = 0, ManufId = SIFIVE = 10010001001, 1
  -------------------------------------------------------------------------------

  Test_Access_Port : block
    subtype state_type is std_logic_vector(3 downto 0);

    constant tl_reset   : state_type := "0000";
    constant idle       : state_type := "0001";
    constant select_dr  : state_type := "0010";
    constant capture_dr : state_type := "0011";
    constant shift_dr   : state_type := "0100";
    constant exit1_dr   : state_type := "0101";
    constant pause_dr   : state_type := "0110";
    constant exit2_dr   : state_type := "0111";
    constant update_dr  : state_type := "1000";
    constant select_ir  : state_type := "1001";
    constant capture_ir : state_type := "1010";
    constant shift_ir   : state_type := "1011";
    constant exit1_ir   : state_type := "1100";
    constant pause_ir   : state_type := "1101";
    constant exit2_ir   : state_type := "1110";
    constant update_ir  : state_type := "1111";

    constant C_IR_IDCODE : std_logic_vector(4 downto 0) := "00001";
    constant C_IR_DTMCS  : std_logic_vector(4 downto 0) := "10000";
    constant C_IR_DMI    : std_logic_vector(4 downto 0) := "10001";

    signal state         : state_type := tl_reset;
    signal ir            : std_logic_vector(4 downto 0)  := C_IR_IDCODE;
    signal idcode        : std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(C_DTM_IDCODE, 32));
    signal update_tck    : std_logic := '0';
    signal capture_tck   : std_logic := '0';
    signal shift_tck     : std_logic := '0';
    signal drck_ena      : std_logic := '0';
    signal update_unbuf  : std_logic := '0';
  begin

    -- Generate DTM drck, capture, shift, update and select signals
    TAP_CTRL: process(TCK, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        state       <= tl_reset;
        update_tck  <= '0';
        capture_tck <= '0';
        shift_tck   <= '0';
        sel_ir      <= '0';
        sel_dtmcs   <= '0';
        sel_dmi     <= '0';
        sel_bypass  <= '0';
        sel_idcode  <= '1';
        ir          <= C_IR_IDCODE;
      elsif TCK'event and TCK = '1' then
        -- default
        update_tck  <= '0';
        capture_tck <= '0';
        shift_tck   <= '0';

        case state is
          when tl_reset =>
            if TMS = '1' then
              state <= tl_reset;
            else
              state <= idle;
            end if;
          when idle =>
            if TMS = '1' then
              state <= select_dr;
            else
              state <= idle;
            end if;
          when select_dr =>
            if TMS = '1' then
              sel_ir     <= '1';
              sel_dtmcs  <= '0';
              sel_dmi    <= '0';
              sel_idcode <= '0';
              sel_bypass <= '0';
              state <= select_ir;
            else
              state <= capture_dr;
              capture_tck <= '1';
            end if;
          when capture_dr =>
            if TMS = '1' then
              state <= exit1_dr;
            else
              state <= shift_dr;
              shift_tck <= '1';
            end if;
            capture_tck <= '0';
          when shift_dr =>
            if TMS = '1' then
              state <= exit1_dr;
              shift_tck <= '0';
            else
              state <= shift_dr;
              shift_tck <= '1';
            end if;
          when exit1_dr =>
            if TMS = '1' then
              state <= update_dr;
              update_tck <= '1';
            else
              state <= pause_dr;
            end if;
          when pause_dr =>
            if TMS = '1' then
              state <= exit2_dr;
            else
              state <= pause_dr;
            end if;
          when exit2_dr =>
            if TMS = '1' then
              state <= update_dr;
              update_tck <= '1';
            else
              state <= shift_dr;
              shift_tck <= '1';
            end if;
          when update_dr =>
            if TMS = '1' then
              state <= select_dr;
            else
              state <= idle;
            end if;
            update_tck <= '0';

          when select_ir =>
            if TMS = '1' then
              sel_ir      <= '0';
              sel_dtmcs   <= '0';
              sel_dmi     <= '0';
              sel_bypass  <= '0';
              sel_idcode  <= '1';
              ir <= C_IR_IDCODE;
              state <= tl_reset;
            else
              state <= capture_ir;
            end if;
          when capture_ir =>
            if TMS = '1' then
              state <= exit1_ir;
            else
              state <= shift_ir;
            end if;
          when shift_ir =>
            ir <= TDI & ir(ir'left downto 1);
            if TMS = '1' then
              state <= exit1_ir;
            else
              state <= shift_ir;
            end if;
          when exit1_ir =>
            if TMS = '1' then
              state <= update_ir;
            else
              state <= pause_ir;
            end if;
          when pause_ir =>
            if TMS = '1' then
              state <= exit2_ir;
            else
              state <= pause_ir;
            end if;
          when exit2_ir =>
            if TMS = '1' then
              state <= update_ir;
            else
              state <= shift_ir;
            end if;
          when update_ir =>
            sel_ir     <= '0';
            sel_dtmcs  <= '0';
            sel_dmi    <= '0';
            sel_idcode <= '0';
            sel_bypass <= '0';
            if ir = C_IR_DTMCS then
              sel_dtmcs  <= '1';
            elsif ir = C_IR_DMI then
              sel_dmi    <= '1';
            elsif ir = C_IR_IDCODE then
              sel_idcode <= '1';
            else
              sel_bypass <= '1';
            end if;
            if TMS = '1' then
              state <= select_dr;
            else
              state <= idle;
            end if;
          -- pragma coverage off
          -- VCS coverage off
          -- coverage off
          when others => null;
          -- coverage on
          -- VCS coverage on
          -- pragma coverage on
        end case;
      end if;
    end process TAP_CTRL;

    TDO_ir <= ir(0);

    CAPTURE_SHIFT_DFF : process (tck, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        capture_dtm  <= '0';
        shift_dtm    <= '0';
        update_unbuf <= '0';
      elsif tck'event and tck = '0' then
        capture_dtm  <= capture_tck;
        shift_dtm    <= shift_tck;
        update_unbuf <= update_tck;
      end if;
    end process CAPTURE_SHIFT_DFF;

    -- drck_dtm <= TCK when capture_tck = '1' or shift_tck = '1' else '1';
    BUFG_DRCK : MB_BUFGCE_1
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        O  => drck_dtm,
        CE => drck_ena,
        I  => TCK
      );

    drck_ena <= capture_tck or shift_tck;

    BUFG_UPDATE : MB_BUFG
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        O => update_dtm,
        I => update_unbuf
      );

    Bypass_DFF : process (TCK)
    begin
      if TCK'event and TCK = '1' then
      TDO_bypass <= TDI;
      end if;
    end process Bypass_DFF;

    Idcode_DFF : process (drck_dtm, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        idcode <= std_logic_vector(to_unsigned(C_DTM_IDCODE, 32));
      elsif drck_dtm'event and drck_dtm = '1' then
        if capture_dtm = '1' then
          idcode <= std_logic_vector(to_unsigned(C_DTM_IDCODE, 32));
        elsif shift_dtm = '1' then
          idcode <= TDI & idcode(idcode'left downto 1);
        end if;
      end if;
    end process Idcode_DFF;

    TDO_idcode <= idcode(0);

    Dbg_Clk      <= drck_dtm;
    Dbg_TDI      <= TDI;
    Dbg_Reg_En   <= dmi(C_DMI_ADDR_POS) when sel_dmi = '1' and shift_dtm = '0' else command;
    Dbg_Capture  <= capture_dtm;
    Dbg_Shift    <= shift_dtm;
    Dbg_Update   <= update_dtm;

  end block Test_Access_Port;

  -------------------------------------------------------------------------------
  --
  -- Implement JTAG Debug Transport Module (DTM) registers
  --
  -- See "RISC-V External Debug Support, Version 0.13.2", Chapter 6
  --
  -------------------------------------------------------------------------------

  DTMCS_Register : process (drck_dtm, config_with_scan_reset)
  begin
    if config_with_scan_reset = '1' then
      dtmcs <= C_DTMCS_RESET_VALUE;
    elsif drck_dtm'event and drck_dtm = '1' then
      if capture_dtm = '1' then
        dtmcs <= C_DTMCS_RESET_VALUE;
        dtmcs(11 downto 10) <= dmistat;
      elsif shift_dtm = '1' then
        dtmcs <= TDI & dtmcs(dtmcs'left downto 1);
      end if;
    end if;
  end process DTMCS_Register;

  TDO_dtmcs <= dtmcs(0);

  DTMCS_Register_Write : process (update_dtm, config_with_scan_reset)
  begin
    if config_with_scan_reset = '1' then
      dmihardreset <= '0';
      dmireset     <= '0';
    elsif update_dtm'event and update_dtm = '1' then
      if sel_dtmcs = '1' then
        dmihardreset <= dtmcs(17);
        dmireset     <= dtmcs(16);
      else
        dmihardreset <= '0';
        dmireset     <= '0';
      end if;
    end if;
  end process DTMCS_Register_Write;

  DTMCS_DMIStat_Register : process (drck_dtm, config_with_scan_reset)
  begin
    if config_with_scan_reset = '1' then
      dmistat             <= C_DMI_OP_SUCCESS;
      dmistat_current     <= C_DMI_OP_SUCCESS;
      dmistat_shift_count <= (others => '0');
    elsif drck_dtm'event and drck_dtm = '1' then
      if capture_dtm = '1' then
        -- CDC: dmireset and dmihardreset in update_dtm clock region
        if dmireset = '1' or dmihardreset = '1' then
          dmistat <= C_DMI_OP_SUCCESS;
        end if;
        if dmihardreset = '1' then
          dmistat_current     <= C_DMI_OP_SUCCESS;
          dmistat_shift_count <= (others => '0');
        end if;
        if sel_dmi = '1' and dmireset = '0' and dmihardreset = '0' then
          dmistat_current     <= dmistat;
          dmistat_shift_count <= (others => '0');
        end if;
      elsif shift_dtm = '1' and sel_dmi = '1' then
        if dmistat_shift_count(1) = '0' and not idle_reg then
          if dmistat_current = C_DMI_OP_SUCCESS then
            dmistat <= TDO_dtm & dmistat(dmistat'left);
          end if;
          dmistat_shift_count <= std_logic_vector(unsigned(dmistat_shift_count) + 1);
        end if;
      end if;
    end if;
  end process DTMCS_DMIStat_Register;

  DMI_Register : process (drck_dtm, config_with_scan_reset)
  begin
    if config_with_scan_reset = '1' then
      dmi <= (others => '0');
    elsif drck_dtm'event and drck_dtm = '1' then
      if sel_dmi = '1' and shift_dtm = '1' then
        dmi <= TDI & dmi(dmi'left downto 1);
      end if;
    end if;
  end process DMI_Register;

  DMI_Register_Write : process (update_dtm, config_with_scan_reset)
  begin
    if config_with_scan_reset = '1' then
      command  <= (others => '0');
      idle_reg <= true;
    elsif update_dtm'event and update_dtm = '1' then
      if sel_dmi = '1' then
        command  <= dmi(C_DMI_ADDR_POS);
        idle_reg <= dmi(1 downto 0) = C_DMI_OP_IDLE;
      else
        command  <= (others => '0');
        idle_reg <= true;
      end if;
    end if;
  end process DMI_Register_Write;

  read_reg  <= dmi(1 downto 0) = C_DMI_OP_READ;
  write_reg <= dmi(1 downto 0) = C_DMI_OP_WRITE;


  -------------------------------------------------------------------------------
  --
  -- Implement JTAG Debug Module (DM) registers
  --
  -- See "RISC-V External Debug Support, Version 0.13.2", Chapter 3
  --
  -------------------------------------------------------------------------------

  -------------------------------------------------------------------------------
  -- Handling the dmcontrol register (hartreset, ndmreset, dmactive)
  -------------------------------------------------------------------------------
  DMControl_Write : process (update_dtm, config_with_scan_reset)
  begin
    if config_with_scan_reset = '1' then
      dmcontrol_hartreset <= '0';
      dmcontrol_ndmreset  <= '0';
      dmcontrol_dmactive  <= '0';
    elsif update_dtm'event and update_dtm = '1' then
      if sel_dmi = '1' and write_reg and dmi(C_DMI_ADDR_POS) = C_DMCONTROL_ADDR then
        if dmcontrol_dmactive = '0' then
          dmcontrol_hartreset <= '0';
          dmcontrol_ndmreset  <= '0';
        else
          dmcontrol_hartreset <= dmi(29 + C_DMI_OPBITS);
          dmcontrol_ndmreset  <= dmi(1 + C_DMI_OPBITS);
        end if;
        dmcontrol_dmactive    <= dmi(0 + C_DMI_OPBITS);
      end if;
    end if;
  end process DMControl_Write;

  Debug_Rst     <= dmcontrol_hartreset;
  Debug_SYS_Rst <= dmcontrol_ndmreset;

  DMControl_Handle : process(dmcontrol_hartreset, dmcontrol_hasel,
                             dmcontrol_hartsel, dmcontrol_ndmreset, dmcontrol_dmactive)
  begin
    dmcontrol                              <= (others => '0');
    dmcontrol(29)                          <= dmcontrol_hartreset;
    dmcontrol(26)                          <= dmcontrol_hasel;
    for I in 0 to C_HARTSELLEN - 1 loop
      dmcontrol(I + 16)                    <= dmcontrol_hartsel(I);
    end loop;
    dmcontrol(1)                           <= dmcontrol_ndmreset;
    dmcontrol(0)                           <= dmcontrol_dmactive;
  end process DMControl_Handle;

  DMControl_Shift : process (drck_dtm, config_with_scan_reset)
  begin
    if config_with_scan_reset = '1' then
      dmcontrol_read <= (others => '0');
    elsif drck_dtm'event and drck_dtm = '1' then  -- rising clock edge
      if sel_dmi = '1' then
        if capture_dtm = '1' then
          dmcontrol_read <= dmcontrol & C_DMI_OP_SUCCESS;
        elsif shift_dtm = '1' then
          dmcontrol_read <= TDI & dmcontrol_read(dmcontrol_read'left downto 1);
        end if;
      end if;
    end if;
  end process DMControl_Shift;

  TDO_dmcontrol <= dmcontrol_read(0);

  -------------------------------------------------------------------------------
  -- Handling the dmcontrol (hasel, hartsel), dmstatus and hawindow registers
  -------------------------------------------------------------------------------
  DMStatus_Shift_Counter : process (drck_dtm, config_with_scan_reset)
  begin
    if config_with_scan_reset = '1' then
      dmstatus_shift_count <= (others => '0');
    elsif drck_dtm'event and drck_dtm = '1' then  -- rising clock edge
      if sel_dmi = '1' then
        if capture_dtm = '1' then
          dmstatus_shift_count <= (others => '0');
        elsif shift_dtm = '1' then
          dmstatus_shift_count <= std_logic_vector(unsigned(dmstatus_shift_count) + 1);
        end if;
      end if;
    end if;
  end process DMStatus_Shift_Counter;

  dmstatus_shift_index <= to_integer(unsigned(dmstatus_shift_count));

  More_Than_One_MB : if (C_MB_DBG_PORTS > 1) generate
    constant C_NONEXIST  : boolean := C_EN_WIDTH >  2 and C_EN_WIDTH /= 4  and
                                      C_EN_WIDTH /= 8 and C_EN_WIDTH /= 16 and
                                      C_EN_WIDTH /= 32;

    signal allsel        : std_logic_vector(21 downto 0);
    signal nonexistsel   : std_logic_vector(24 downto 0);
    signal hawindow_read : std_logic_vector(C_MB_DBG_PORTS + 1 downto 0);
  begin

    DMControl_Write : process (update_dtm, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        dmcontrol_hasel   <= '0';
        dmcontrol_hartsel <= (others => '0');
      elsif update_dtm'event and update_dtm = '1' then
        if sel_dmi = '1' and write_reg and dmi(C_DMI_ADDR_POS) = C_DMCONTROL_ADDR then
          if dmcontrol_dmactive = '0' then
            dmcontrol_hasel   <= '0';
            dmcontrol_hartsel <= (others => '0');
          else
            dmcontrol_hasel   <= dmi(26 + C_DMI_OPBITS);
            dmcontrol_hartsel <= dmi(C_HARTSELLEN - 1 + 16 + C_DMI_OPBITS downto 16 + C_DMI_OPBITS);
          end if;
        end if;
      end if;
    end process DMControl_Write;

    dmcontrol_hartsel_val <= to_integer(unsigned(dmcontrol_hartsel));

    DMStatus_Handle : process (drck_dtm, config_with_scan_reset)
      constant C_ALLBITS     : std_logic_vector(21 downto 0) := "1010101010100000000000";
      constant C_NONEXIST : std_logic_vector(24 downto 0) := "1000000010000001010001100";
    begin
      if config_with_scan_reset = '1' then
        allsel <= C_ALLBITS;
        nonexistsel <= C_NONEXIST;
      elsif drck_dtm'event and drck_dtm = '1' then  -- rising clock edge
        if sel_dmi = '1' then
          if capture_dtm = '1' then
            allsel <= C_ALLBITS;
            nonexistsel <= C_NONEXIST;
          elsif shift_dtm = '1' then
            allsel <= '0' & allsel(allsel'left downto 1);
            nonexistsel <= '0' & nonexistsel(nonexistsel'left downto 1);
          end if;
        end if;
      end if;
    end process DMStatus_Handle;

    -- CDC: dmcontrol_hasel, dmcontrol_hartsel and dmcontrol_ndmreset in update_dtm clock region
    Assign_TDO: process (Dbg_TDO, allsel, Dbg_All_TDO, nonexistsel, dmstatus_shift_index,
                         dmcontrol_hasel, dmcontrol_hartsel, dmcontrol_ndmreset) is
    begin  -- process Assign_TDO
      TDO_dmstatus <= Dbg_TDO;
      if allsel(0) = '1' then
        TDO_dmstatus <= Dbg_All_TDO;
      end if;
      if C_NONEXIST and dmcontrol_hasel = '0' and to_integer(unsigned(dmcontrol_hartsel)) >= C_EN_WIDTH then
        TDO_dmstatus <= nonexistsel(0);
      end if;
      if dmstatus_shift_index = 24 + C_DMI_OPBITS then
        TDO_dmstatus <= dmcontrol_ndmreset;
      end if;
    end process Assign_TDO;

    Hawindow_Write : process (update_dtm, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        hawindow    <= (others => '0');
        hawindow(0) <= '1';
      elsif update_dtm'event and update_dtm = '0' then
        if sel_dmi = '1' and write_reg and dmi(C_DMI_ADDR_POS) = C_HAWINDOW_ADDR then
          if dmcontrol_dmactive = '0' then
            hawindow    <= (others => '0');
            hawindow(0) <= '1';
          else
            hawindow <= dmi(C_MB_DBG_PORTS - 1 + C_DMI_OPBITS downto C_DMI_OPBITS);
          end if;
        end if;
      end if;
    end process Hawindow_Write;

    Hawindow_Shift : process (drck_dtm, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        hawindow_read <= (others => '0');
      elsif drck_dtm'event and drck_dtm = '1' then  -- rising clock edge
        if sel_dmi = '1' then
          if capture_dtm = '1' then
            hawindow_read <= hawindow & C_DMI_OP_SUCCESS;
          elsif shift_dtm = '1' then
            hawindow_read <= TDI & hawindow_read(hawindow_read'left downto 1);
          end if;
        end if;
      end if;
    end process Hawindow_Shift;

    TDO_hawindow <= hawindow_read(0);

    Debug_Enable_Handle : process (sel_dmi, write_reg, dmi, shift_dtm, dmcontrol_dmactive,
                                   dmcontrol_hasel, dmcontrol_hartsel, hawindow, command)
      variable hasel         : std_logic;
      variable hartsel       : std_logic_vector(C_HARTSELLEN - 1 downto 0);
      variable hartsel_index : integer range 0 to 2**C_HARTSELLEN - 1;
    begin
      -- Use new hasel and hartsel when writing to dmcontrol
      if sel_dmi = '1' and write_reg and dmi(C_DMI_ADDR_POS) = C_DMCONTROL_ADDR and shift_dtm = '0' then
        if dmcontrol_dmactive = '0' then
          hasel   := '0';
          hartsel := (others => '0');
        else
          hasel   := dmi(26 + C_DMI_OPBITS);
          hartsel := dmi(C_HARTSELLEN - 1 + 16 + C_DMI_OPBITS downto 16 + C_DMI_OPBITS);
        end if;
      else
        hasel   := dmcontrol_hasel;
        hartsel := dmcontrol_hartsel;
      end if;
      mb_debug_enabled_i <= (others => '0');
      -- Multiple: Enable harts selected by the hart array mask register
      if hasel = '1' then
        mb_debug_enabled_i(C_MB_DBG_PORTS-1 downto 0) <= hawindow(C_MB_DBG_PORTS-1 downto 0);
      end if;
      -- Single or multiple: Enable the hart selected by hartsel
      hartsel_index := to_integer(unsigned(hartsel));
      if C_NONEXIST then
        if hartsel_index < C_EN_WIDTH then
          mb_debug_enabled_i(hartsel_index) <= '1';
        end if;
      else
        mb_debug_enabled_i(hartsel_index) <= '1';
      end if;
    end process Debug_Enable_Handle;

  end generate More_Than_One_MB;

  Only_One_MB : if (C_MB_DBG_PORTS = 1) generate
  begin
    dmcontrol_hasel       <= '0';
    dmcontrol_hartsel     <= (others => '0');
    dmcontrol_hartsel_val <= 0;
    TDO_dmstatus          <= dmcontrol_ndmreset when dmstatus_shift_index = 24 + C_DMI_OPBITS else Dbg_TDO;
    TDO_hawindow          <= '0';
    mb_debug_enabled_i(0) <= '1';
    hawindow(0)           <= '1';
  end generate Only_One_MB;

  No_MB : if (C_MB_DBG_PORTS = 0) generate
  begin
    dmcontrol_hasel       <= '0';
    dmcontrol_hartsel     <= (others => '0');
    dmcontrol_hartsel_val <= 0;
    TDO_dmstatus          <= '0';
    TDO_hawindow          <= '0';
    mb_debug_enabled_i(0) <= '0';
    hawindow(0)           <= '0';
  end generate No_MB;

  MB_Debug_Enabled <= mb_debug_enabled_i;

  -------------------------------------------------------------------------------
  -- Handling the haltsum0 register
  -------------------------------------------------------------------------------

  Haltsum0_Shift : process (drck_dtm, config_with_scan_reset)
  begin
    if config_with_scan_reset = '1' then
      haltsum0      <= (others => '0');
      haltsum0_read <= (others => '0');
    elsif drck_dtm'event and drck_dtm = '1' then  -- rising clock edge
      if capture_dtm = '1' then
        for I in 0 to C_EN_WIDTH - 1 loop
          haltsum0(I) <= Dbg_TDO_I(I);  -- TDO is core halted during capture
        end loop;
      end if;
      if sel_dmi = '1' then
        if capture_dtm = '1' then
          haltsum0_read <= haltsum0 & C_DMI_OP_SUCCESS;
        elsif shift_dtm = '1' then
          haltsum0_read <= '0' & haltsum0_read(haltsum0_read'left downto 1);
        end if;
      end if;
    end if;
  end process Haltsum0_Shift;

  TDO_haltsum0 <= haltsum0_read(0);


  -------------------------------------------------------------------------------
  -- TDO Mux
  -------------------------------------------------------------------------------

  TDO_Mux : process(sel_ir, TDO_ir, sel_bypass, TDO_bypass, sel_idcode, TDO_idcode,
                    sel_dtmcs, TDO_dtmcs, command, TDO_dmcontrol, TDO_dmstatus,
                    TDO_hawindow, TDO_dmcs2, TDO_sbcs, TDO_sbaddress0, TDO_sbaddress1,
                    TDO_sbdata0, TDO_uart, TDO_haltsum0, Dbg_TDO)
  begin
    if sel_ir = '1' then
      TDO_dtm <= TDO_ir;
    elsif sel_bypass = '1' then
      TDO_dtm <= TDO_bypass;
    elsif sel_idcode = '1' then
      TDO_dtm <= TDO_idcode;
    elsif sel_dtmcs = '1' then
      TDO_dtm <= TDO_dtmcs;
    elsif command = C_DMCONTROL_ADDR then
      TDO_dtm <= TDO_dmcontrol;
    elsif command = C_DMSTATUS_ADDR then
      TDO_dtm <= TDO_dmstatus;
    elsif command = C_HAWINDOW_ADDR then
      TDO_dtm <= TDO_hawindow;
    elsif command = C_DMCS2_ADDR and C_USE_CROSS_TRIGGER = 1 then
      TDO_dtm <= TDO_dmcs2;
    elsif command = C_SBCS_ADDR and C_USE_DBG_MEM_ACCESS then
      TDO_dtm <= TDO_sbcs;
    elsif command = C_SBADDRESS0_ADDR and C_USE_DBG_MEM_ACCESS then
      TDO_dtm <= TDO_sbaddress0;
    elsif command = C_SBADDRESS1_ADDR and C_USE_DBG_MEM_ACCESS and C_M_AXI_ADDR_WIDTH > 32 then
      TDO_dtm <= TDO_sbaddress1;
    elsif command = C_SBDATA0_ADDR and C_USE_DBG_MEM_ACCESS then
      TDO_dtm <= TDO_sbdata0;
    elsif (command = C_UART_READ_BYTE or command = C_UART_READ_STATUS) and C_USE_UART > 0 then
      TDO_dtm <= TDO_uart;
    elsif command = C_HALTSUM0_ADDR then
      TDO_dtm <= TDO_haltsum0;
    elsif command = C_HARTINFO_ADDR    or
          command = C_CONFSTRPTR0_ADDR or
          command = C_CONFSTRPTR1_ADDR or
          command = C_CONFSTRPTR2_ADDR or
          command = C_CONFSTRPTR3_ADDR or
          command = C_NEXTDM_ADDR      or
          (command = C_SBCS_ADDR and (not C_USE_DBG_MEM_ACCESS)) then
      TDO_dtm <= '0';
    else
      TDO_dtm <= Dbg_TDO;
    end if;
  end process TDO_Mux;

  TDO_DFF : process(TCK, config_with_scan_reset) is
  begin
    if config_with_scan_reset = '1' then
      TDO <= '0';
    elsif TCK'event and TCK = '1' then
      TDO <= TDO_dtm;
    end if;
  end process TDO_DFF;

  -----------------------------------------------------------------------------
  -- Disable handling
  -----------------------------------------------------------------------------
  Disable_Updating : process (update_dtm, config_with_scan_reset)
  begin
    if config_with_scan_reset = '1' then
      Dbg_Disable <= '1';
    elsif update_dtm'event and update_dtm = '1' then
      Dbg_Disable <= '0';
    end if;
  end process Disable_Updating;

  -----------------------------------------------------------------------------
  -- UART section
  -----------------------------------------------------------------------------

  Use_UART : if (C_USE_UART = 1 and C_DEBUG_INTERFACE = 0) generate
    signal execute_rd        : std_logic := '0';
    signal execute_rd_1      : std_logic := '0';
    signal execute_rd_2      : std_logic := '0';
    signal execute_rd_3      : std_logic := '0';
    signal execute_wr        : std_logic := '0';
    signal execute_wr_1      : std_logic := '0';
    signal execute_wr_2      : std_logic := '0';
    signal execute_wr_3      : std_logic := '0';
    signal fifo_DOut         : std_logic_vector(0 to C_UART_WIDTH-1);
    signal fifo_Data_Present : std_logic := '0';
    signal fifo_Din          : std_logic_vector(0 to C_UART_WIDTH-1) := (others => '0');
    signal fifo_Read         : std_logic := '0';
    signal fifo_Write        : std_logic := '0';
    signal rx_Buffer_Full_I  : std_logic := '0';
    signal rx_Data_Present_I : std_logic := '0';
    signal status_reg        : std_logic_vector(0 to 7) := (others => '0');
    signal tdo_reg           : std_logic_vector(0 to C_UART_WIDTH + C_DMI_OPBITS - 1) := (others => '0');
    signal tx_Buffer_Full_I  : std_logic := '0';
    signal tx_buffered       : std_logic := '0';  -- Non-buffered mode on startup
    signal tx_buffered_1     : std_logic := '0';
    signal tx_buffered_2     : std_logic := '0';
    signal tx_fifo_wen       : std_logic;

    attribute ASYNC_REG : string;
    attribute ASYNC_REG of execute_rd_1  : signal is "TRUE";
    attribute ASYNC_REG of execute_rd_2  : signal is "TRUE";
    attribute ASYNC_REG of execute_wr_1  : signal is "TRUE";
    attribute ASYNC_REG of execute_wr_2  : signal is "TRUE";
    attribute ASYNC_REG of tx_buffered_1 : signal is "TRUE";
    attribute ASYNC_REG of tx_buffered_2 : signal is "TRUE";
  begin

    -----------------------------------------------------------------------------
    -- Control Register
    -----------------------------------------------------------------------------

    -- Register accessible on the JTAG interface only
    Control_Register : process (update_dtm, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        tx_buffered <= '0';
      elsif update_dtm'event and update_dtm = '1' then
        if sel_dmi = '1' and write_reg and dmi(C_DMI_ADDR_POS) = C_UART_WRITE_CONTROL then
          tx_buffered <= dmi(C_DMI_OPBITS);
        end if;
      end if;
    end process Control_Register;

    Tx_Buffered_DFF: process (Clk)
    begin  -- process Tx_Buffered_DFF
      if Clk'event and Clk = '1' then
        if Config_Reset = '1' then
          tx_buffered_2 <= '0';
          tx_buffered_1 <= '0';
        else
          tx_buffered_2 <= tx_buffered_1;
          tx_buffered_1 <= tx_buffered;
        end if;
      end if;
    end process Tx_Buffered_DFF;

    Execute_FIFO_Read_Command : process (Clk)
    begin  -- process Execute_FIFO_Read_Command
      if Clk'event and Clk = '1' then
        if Config_Reset = '1' then
          fifo_Read    <= '0';
          execute_rd_3 <= '0';
          execute_rd_2 <= '0';
          execute_rd_1 <= '0';
        else
          fifo_Read    <= '0';
          if (execute_rd_3 = '0') and (execute_rd_2 = '1') then
            fifo_Read  <= '1';
          end if;
          execute_rd_3 <= execute_rd_2;
          execute_rd_2 <= execute_rd_1;
          execute_rd_1 <= execute_rd;
        end if;
      end if;
    end process Execute_FIFO_Read_Command;

    Execute_UART_Write_Command : process (drck_dtm, config_with_scan_reset)
    begin  -- process Execute_UART_Write_Command
      if config_with_scan_reset = '1' then
        execute_wr   <= '0';
      elsif drck_dtm'event and drck_dtm = '1' then  -- rising clock edge
        if capture_dtm = '1' then
          if sel_dmi = '1' and write_reg and (dmi(C_DMI_ADDR_POS) = C_UART_WRITE_BYTE) then
            execute_wr <= '1';
          else
            execute_wr <= '0';
          end if;
        else
          execute_wr <= '0';
        end if;
      end if;
    end process Execute_UART_Write_Command;

    Execute_FIFO_Write_Command : process (Clk)
    begin  -- process Execute_FIFO_Write_Command
      if Clk'event and Clk = '1' then
        if Config_Reset = '1' then
          fifo_Write   <= '0';
          execute_wr_3 <= '0';
          execute_wr_2 <= '0';
          execute_wr_1 <= '0';
        else
          fifo_Write   <= '0';
          if (execute_wr_3 = '0') and (execute_wr_2 = '1') then
            fifo_Write <= '1';
          end if;
          execute_wr_3 <= execute_wr_2;
          execute_wr_2 <= execute_wr_1;
          execute_wr_1 <= execute_wr;
        end if;
      end if;
    end process Execute_FIFO_Write_Command;

    -- Since only one bit can change in the status register at time
    -- we don't need to synchronize them with the drck_dtm clock
    status_reg(7) <= fifo_Data_Present;
    status_reg(6) <= tx_Buffer_Full_I;
    status_reg(5) <= not rx_Data_Present_I;
    status_reg(4) <= rx_Buffer_Full_I;
    status_reg(3) <= '0';
    status_reg(2) <= '0';
    status_reg(1) <= '0';
    status_reg(0) <= '0';

    -- Read UART registers
    TDO_Register : process (drck_dtm, config_with_scan_reset) is
    begin  -- process TDO_Register
      if config_with_scan_reset = '1' then
        tdo_reg <= (others => '0');
        execute_rd <= '0';
      elsif drck_dtm'event and drck_dtm = '1' then  -- rising clock edge
        if capture_dtm = '1' then
          if dmi(C_DMI_ADDR_POS) = C_UART_READ_BYTE then
            tdo_reg <= fifo_DOut & C_DMI_OP_SUCCESS;
            execute_rd <= '1';
          else
            tdo_reg <= status_reg & C_DMI_OP_SUCCESS;
            execute_rd <= '0';
          end if;
        elsif shift_dtm = '1' then
          tdo_reg <= '0' & tdo_reg(tdo_reg'left to tdo_reg'right-1);
          execute_rd <= '0';
        end if;
      end if;
    end process TDO_Register;

    TDO_uart <= tdo_reg(tdo_reg'right);

    -----------------------------------------------------------------------------
    -- TDI Register
    -----------------------------------------------------------------------------
    TDI_Register : process (update_dtm, config_with_scan_reset) is
    begin  -- process TDI_Register
      if config_with_scan_reset = '1' then
        fifo_Din <= (others => '0');
      elsif update_dtm'event and update_dtm = '1' then
        if sel_dmi = '1' and write_reg and dmi(C_DMI_ADDR_POS) = C_UART_WRITE_BYTE then
          fifo_Din <= dmi(C_UART_WIDTH + C_DMI_OPBITS - 1 downto 0 + C_DMI_OPBITS);
        end if;
      end if;
    end process TDI_Register;

    ---------------------------------------------------------------------------
    -- FIFO
    ---------------------------------------------------------------------------
    RX_FIFO_I : SRL_FIFO
      generic map (
        C_TARGET    => C_TARGET,                       -- [TARGET_FAMILY_TYPE]
        C_DATA_BITS => C_UART_WIDTH,                   -- [natural]
        C_DEPTH     => 16,                             -- [natural]
        C_USE_SRL16 => C_USE_SRL16)                    -- [string]
      port map (
        Clk         => Clk,                            -- [in  std_logic]
        Reset       => Reset_RX_FIFO,                  -- [in  std_logic]
        FIFO_Write  => fifo_Write,                     -- [in  std_logic]
        Data_In     => fifo_Din(0 to C_UART_WIDTH-1),  -- [in  std_logic_vector(0 to C_DATA_BITS-1)]
        FIFO_Read   => Read_RX_FIFO,                   -- [in  std_logic]
        Data_Out    => RX_Data,                        -- [out std_logic_vector(0 to C_DATA_BITS-1)]
        FIFO_Full   => rx_Buffer_Full_I,               -- [out std_logic]
        Data_Exists => rx_Data_Present_I);             -- [out std_logic]

    RX_Data_Present <= rx_Data_Present_I;
    RX_Buffer_Full  <= rx_Buffer_Full_I;

    -- Discard transmit data until buffered mode enabled.
    tx_fifo_wen <= Write_TX_FIFO and tx_buffered_2;

    TX_FIFO_I : SRL_FIFO
      generic map (
        C_TARGET    => C_TARGET,            -- [TARGET_FAMILY_TYPE]
        C_DATA_BITS => C_UART_WIDTH,        -- [natural]
        C_DEPTH     => 16,                  -- [natural]
        C_USE_SRL16 => C_USE_SRL16)         -- [string]
      port map (
        Clk         => Clk,                 -- [in  std_logic]
        Reset       => Reset_TX_FIFO,       -- [in  std_logic]
        FIFO_Write  => tx_fifo_wen,         -- [in  std_logic]
        Data_In     => TX_Data,             -- [in  std_logic_vector(0 to C_DATA_BITS-1)]
        FIFO_Read   => fifo_Read,           -- [in  std_logic]
        Data_Out    => fifo_DOut,           -- [out std_logic_vector(0 to C_DATA_BITS-1)]
        FIFO_Full   => TX_Buffer_Full_I,    -- [out std_logic]
        Data_Exists => fifo_Data_Present);  -- [out std_logic]

    TX_Buffer_Full  <= TX_Buffer_Full_I;
    TX_Buffer_Empty <= not fifo_Data_Present;

  end generate Use_UART;

  No_UART : if (C_USE_UART = 0 or C_DEBUG_INTERFACE = 1) generate
  begin
    TDO_uart        <= '0';

    RX_Data         <= (others => '0');
    RX_Data_Present <= '0';
    RX_BUFFER_FULL  <= '0';
    TX_Buffer_Full  <= '0';
    TX_Buffer_Empty <= '1';
  end generate No_UART;

  -----------------------------------------------------------------------------
  -- Bus Master Debug Memory Access section
  -----------------------------------------------------------------------------

  Use_Dbg_Mem_Access : if (C_USE_DBG_MEM_ACCESS) generate
    signal sbcs                  : std_logic_vector(31 downto 0) := (others => '0');
    signal sbcs_read             : std_logic_vector(31 + C_DMI_OPBITS downto 0) := (others => '0');
    signal sbbusyerror           : std_logic := '0';
    signal sbbusy                : std_logic := '0';
    signal sbreadonaddr          : std_logic := '0';
    signal sbaccess              : std_logic_vector(2 downto 0) := "010";
    signal sbautoincrement       : std_logic := '0';
    signal sbreadondata          : std_logic := '0';
    signal sberror               : std_logic_vector(2 downto 0) := "000";

    signal sbaddress             : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal sbaddress0_read       : std_logic_vector(31 + C_DMI_OPBITS downto 0) := (others => '0');
    signal sbaddress1_read       : std_logic_vector(31 + C_DMI_OPBITS downto 0) := (others => '0');

    signal sbdata                : std_logic_vector(31 downto 0) := (others => '0');
    signal sbdata_read           : std_logic_vector(31 + C_DMI_OPBITS downto 0) := (others => '0');

    signal wr_access             : std_logic := '0';
    signal execute               : std_logic := '0';
    signal execute_rst           : std_logic := '0';
    signal config_or_execute_rst : std_logic;
    signal do_execute            : std_logic;
    signal master_error          : std_logic;
    signal rd_resp_zero          : boolean;
    signal wr_resp_zero          : boolean;

    signal execute_1             : std_logic := '0';
    signal execute_2             : std_logic := '0';
    signal access_idle_1         : std_logic := '0';
    signal access_idle_2         : std_logic := '0';
    signal master_error_1        : std_logic := '0';
    signal master_error_2        : std_logic := '0';

    attribute ASYNC_REG : string;
    attribute ASYNC_REG of execute_1       : signal is "TRUE";
    attribute ASYNC_REG of execute_2       : signal is "TRUE";
    attribute ASYNC_REG of access_idle_1   : signal is "TRUE";
    attribute ASYNC_REG of access_idle_2   : signal is "TRUE";
    attribute ASYNC_REG of master_error_1  : signal is "TRUE";
    attribute ASYNC_REG of master_error_2  : signal is "TRUE";
  begin

    -------------------------------------------------------------------------------
    -- Handling the sbcs register
    -------------------------------------------------------------------------------
    SBCS_Write : process (update_dtm, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        sbreadonaddr     <= '0';
        sbaccess         <= "010";
        sbautoincrement  <= '0';
        sbreadondata     <= '0';
      elsif update_dtm'event and update_dtm = '1' then
        if sel_dmi = '1' and write_reg and dmi(C_DMI_ADDR_POS) = C_SBCS_ADDR then
          if dmcontrol_dmactive = '0' then
            sbreadonaddr     <= '0';
            sbaccess         <= "010";
            sbautoincrement  <= '0';
            sbreadondata     <= '0';
          else
            sbreadonaddr     <= dmi(20 + C_DMI_OPBITS);
            sbaccess         <= dmi(19 + C_DMI_OPBITS downto 17 + C_DMI_OPBITS);
            sbautoincrement  <= dmi(16 + C_DMI_OPBITS);
            sbreadondata     <= dmi(15 + C_DMI_OPBITS);
          end if;
        end if;
      end if;
    end process SBCS_Write;

    SBCS_Handle : process(sbbusyerror, sbbusy, sbreadonaddr, sbaccess,
                          sbautoincrement, sbreadondata, sberror)
      constant sbasize : std_logic_vector(11 downto 5) :=
        std_logic_vector(to_unsigned(C_M_AXI_ADDR_WIDTH, 7));
    begin
      sbcs               <= (others => '0');
      sbcs(31 downto 29) <= "001";            -- sbversion = 1
      sbcs(22)           <= sbbusyerror;
      sbcs(21)           <= sbbusy;
      sbcs(20)           <= sbreadonaddr;
      sbcs(19 downto 17) <= sbaccess;
      sbcs(16)           <= sbautoincrement;  
      sbcs(15)           <= sbreadondata;
      sbcs(14 downto 12) <= sberror;
      sbcs(11 downto 5)  <= sbasize;           -- sbasize = C_M_AXI_ADDR_WIDTH
      sbcs(4 downto 0)   <= "00100";           -- sbaccess32
    end process SBCS_Handle;

    SBCS_Shift : process (drck_dtm, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        sbcs_read <= (others => '0');
      elsif drck_dtm'event and drck_dtm = '1' then  -- rising clock edge
        if sel_dmi = '1' then
          if capture_dtm = '1' then
            -- CDC: sbcs in update_dtm clock region
            sbcs_read <= sbcs & C_DMI_OP_SUCCESS;
          elsif shift_dtm = '1' then
            sbcs_read <= TDI & sbcs_read(sbcs_read'left downto 1);
          end if;
        end if;
      end if;
    end process SBCS_Shift;

    TDO_sbcs <= sbcs_read(0);

    -------------------------------------------------------------------------------
    -- Handling read of the sbaddress registers
    -------------------------------------------------------------------------------

    SBAddress0_Shift : process (drck_dtm, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        sbaddress0_read <= (others => '0');
      elsif drck_dtm'event and drck_dtm = '1' then  -- rising clock edge
        if sel_dmi = '1' then
          if capture_dtm = '1' then
            -- CDC: sbaddress in update_dtm clock region
            sbaddress0_read <= sbaddress(31 downto 0) & C_DMI_OP_SUCCESS;
          elsif shift_dtm = '1' then
            sbaddress0_read <= TDI & sbaddress0_read(sbaddress0_read'left downto 1);
          end if;
        end if;
      end if;
    end process SBAddress0_Shift;

    TDO_sbaddress0 <= sbaddress0_read(0);

    Has_Ext_Addr: if C_M_AXI_ADDR_WIDTH > 32 generate
    begin
      SBAddress1_Shift : process (drck_dtm, config_with_scan_reset)
      begin
        if config_with_scan_reset = '1' then
          sbaddress1_read <= (others => '0');
        elsif drck_dtm'event and drck_dtm = '1' then  -- rising clock edge
          if sel_dmi = '1' then
            if capture_dtm = '1' then
              -- CDC: sbaddress in update_dtm clock region
              sbaddress1_read <= (others => '0');
              sbaddress1_read(C_M_AXI_ADDR_WIDTH + C_DMI_OPBITS - 33 downto 0) <=
                sbaddress(C_M_AXI_ADDR_WIDTH - 1 downto 32) & C_DMI_OP_SUCCESS;
            elsif shift_dtm = '1' then
              sbaddress1_read <= TDI & sbaddress1_read(sbaddress1_read'left downto 1);
            end if;
          end if;
        end if;
      end process SBAddress1_Shift;

      TDO_sbaddress1 <= sbaddress1_read(0);
    end generate Has_Ext_Addr;

    No_Ext_Addr: if C_M_AXI_ADDR_WIDTH <= 32 generate
    begin
      TDO_sbaddress1 <= '0';
    end generate No_Ext_Addr;

    -------------------------------------------------------------------------------
    -- Handling read of the sbdata registers
    -------------------------------------------------------------------------------

    SBData_Shift : process (drck_dtm, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        sbdata_read <= (others => '0');
      elsif drck_dtm'event and drck_dtm = '1' then  -- rising clock edge
        if sel_dmi = '1' then
          if capture_dtm = '1' then
            -- CDC: sbdata in update_dtm clock region
            sbdata_read <= sbdata & C_DMI_OP_SUCCESS;
          elsif shift_dtm = '1' then
            sbdata_read <= TDI & sbdata_read(sbdata_read'left downto 1);
          end if;
        end if;
      end if;
    end process SBData_Shift;

    TDO_sbdata0 <= sbdata_read(0);

    -------------------------------------------------------------------------------
    -- Handling write to sbaddress and sbdata registers
    -------------------------------------------------------------------------------

    -- CDC: access_idle_2, sel_dmi, write_reg, dmi, read_reg, master_error_2 in TCK clock region
    SBAddressData_Write : process (update_dtm, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        sbaddress   <= (others => '0');
        sbdata      <= (others => '0');
        sbbusyerror <= '0';
        sbbusy      <= '0';
        sberror     <= "000";
        wr_access   <= '0';
      elsif update_dtm'event and update_dtm = '1' then
        -- Clear busy when access completed
        if access_idle_2 = '1' then
          sbbusy <= '0';
        end if;

        -- Write address when allowed and set flags
        if sel_dmi = '1' and write_reg and dmi(C_DMI_ADDR_POS) = C_SBADDRESS0_ADDR then
          if access_idle_2 = '0' then
            sbbusyerror <= '1';
          else
            sbaddress(31 downto 0) <= dmi(31 + C_DMI_OPBITS downto 0 + C_DMI_OPBITS);
            if sbaccess /= "010" then
              sberror <= "100";
            elsif sberror = "000" and sbbusyerror = '0' and sbreadonaddr = '1' then
              sbbusy    <= '1';
              wr_access <= '0';
            end if;
          end if;
        end if;

        if sel_dmi = '1' and write_reg and dmi(C_DMI_ADDR_POS) = C_SBADDRESS1_ADDR and C_M_AXI_ADDR_WIDTH > 32 then
          if access_idle_2 = '0' then
            sbbusyerror <= '1';
          else
            sbaddress(C_M_AXI_ADDR_WIDTH - 1 downto 32) <=
              dmi(C_M_AXI_ADDR_WIDTH + C_DMI_OPBITS - 33 downto C_DMI_OPBITS);
          end if;
        end if;

        -- Write data when allowed and set flags
        if sel_dmi = '1' and write_reg and dmi(C_DMI_ADDR_POS) = C_SBDATA0_ADDR then
          if sberror = "000" and sbbusyerror = '0' then
            if access_idle_2 = '0' then
              sbbusyerror <= '1';
            else
              sbdata <= dmi(31 + C_DMI_OPBITS downto 0 + C_DMI_OPBITS);
              if sbaccess /= "010" then
                sberror <= "100";
              else
                sbbusy    <= '1';
                wr_access <= '1';
              end if;
            end if;
          end if;
        end if;

        -- Save read data and set flags when reading data
        if sel_dmi = '1' and read_reg and dmi(C_DMI_ADDR_POS) = C_SBDATA0_ADDR then
          -- CDC: Master data out in M_AXI_ACLK clock region
          sbdata <= Master_data_out;
          if sberror = "000" and sbbusyerror = '0' then
            if access_idle_2 = '0' then
              sbbusyerror <= '1';
            elsif sbaccess /= "010" then
              sberror <= "100";
            elsif sbreadondata = '1' then
              sbbusy    <= '1';
              wr_access <= '0';
            end if;
          end if;
        end if;

        -- Auto increment address when read or write succeeded
        if sbbusy = '1' and access_idle_2 = '1' and sbautoincrement = '1' and master_error_2 = '0' then
          sbaddress <= std_logic_vector(unsigned(sbaddress) + 4);
        end if;

        -- Set error status
        if sbbusy = '1' and master_error_2 = '1' then
          sberror  <= "111";  -- TODO: report "010" for AXI decode error
        end if;

        -- Clear sbbusyerror and sberror when write-to-clear to SBCS
        if sel_dmi = '1' and write_reg and dmi(C_DMI_ADDR_POS) = C_SBCS_ADDR then
          sbbusyerror <= sbbusyerror and not dmi(22 + C_DMI_OPBITS);
          sberror     <= sberror and not dmi(14 + C_DMI_OPBITS downto 12 + C_DMI_OPBITS);
        end if;

        -- Reset when dmactive is not set
        if dmcontrol_dmactive = '0' then
          sbaddress   <= (others => '0');
          sbdata      <= (others => '0');
          sbbusyerror <= '0';
          sbbusy      <= '0';
          sberror     <= "000";
          wr_access   <= '0';
        end if;
      end if;
    end process SBAddressData_Write;

    -- CDC: sbaddress and sbdata in update_dtm clock region
    Master_rd_addr <= sbaddress;
    Master_wr_addr <= sbaddress;
    Master_data_in <= sbdata;     -- TODO: other data widths than 32

    -------------------------------------------------------------------------------
    -- Handling start of bus access
    -------------------------------------------------------------------------------

    config_or_execute_rst <= Config_Reset or do_execute;

    execute_rst_i: xil_scan_reset_control
      port map (
        Scan_En          => Scan_En,
        Scan_Reset_Sel   => Scan_Reset_Sel,
        Scan_Reset       => Scan_Reset,
        Functional_Reset => config_or_execute_rst,
        Reset            => execute_rst);

    -- CDC: sel_dmi, write_reg, dmi, read_reg in TCK clock region
    Start_Bus_Access : process (update_dtm, execute_rst)
    begin
      if execute_rst = '1' then
        execute <= '0';
      elsif update_dtm'event and update_dtm = '1' then
        -- Start a read when allowed and sbreadonaddr is set
        if sel_dmi = '1' and write_reg and dmi(C_DMI_ADDR_POS) = C_SBADDRESS0_ADDR then
          if sberror = "000" and sbbusyerror = '0' and
             access_idle_2 = '1' and sbaccess = "010" and sbreadonaddr = '1' then
            execute <= '1';
          end if;
        end if;

        -- Start a write when allowed
        if sel_dmi = '1' and write_reg and dmi(C_DMI_ADDR_POS) = C_SBDATA0_ADDR then
          if sberror = "000" and sbbusyerror = '0' and
             access_idle_2 = '1' and sbaccess = "010" then
            execute <= '1';
          end if;
        end if;

        -- Start a read when allowed and sbreadondata is set
        if sel_dmi = '1' and read_reg and dmi(C_DMI_ADDR_POS) = C_SBDATA0_ADDR then
          if sberror = "000" and sbbusyerror = '0' and
             access_idle_2 = '1' and sbaccess = "010" and sbreadondata = '1' then
            execute <= '1';
          end if;
        end if;

        -- Reset when dmactive is not set
        if dmcontrol_dmactive = '0' then
          execute <= '0';
        end if;
      end if;
    end process Start_Bus_Access;

    -----------------------------------------------------------------------------
    -- Handle bus status
    -----------------------------------------------------------------------------
    Bus_Status_Register : process (drck_dtm, config_with_scan_reset) is
    begin  -- process Bus_Status_Register
      if config_with_scan_reset = '1' then
        access_idle_2  <= '0';
        access_idle_1  <= '0';
        master_error_2 <= '0';
        master_error_1 <= '0';
      elsif drck_dtm'event and drck_dtm = '1' then  -- rising clock edge
        access_idle_2  <= access_idle_1;
        access_idle_1  <= Master_rd_idle and Master_wr_idle;
        master_error_2 <= master_error_1;
        master_error_1 <= master_error;
      end if;
    end process Bus_Status_Register;

    -------------------------------------------------------------------------------
    -- Command execution in M_AXI_ACLK region
    -------------------------------------------------------------------------------
    Execute_Data_Command : process (M_AXI_ACLK)
    begin  -- process Execute_Data_Command
      if M_AXI_ACLK'event and M_AXI_ACLK = '1' then
        if M_AXI_ARESETn = '0' then
          execute_2       <= '0';
          execute_1       <= '0';
          do_execute      <= '0';
          Master_data_wr  <= '0';
          Master_data_rd  <= '0';
          Master_rd_start <= '0';
          Master_wr_start <= '0';
          master_error    <= '0';
          rd_resp_zero    <= true;
          wr_resp_zero    <= true;
        else
          Master_data_wr  <= '0';
          Master_data_rd  <= '0';
          Master_wr_start <= '0';
          Master_rd_start <= '0';
          if (do_execute = '0') and (execute_2 = '1') then
            if (Master_rd_idle = '1') and (Master_wr_idle = '1') then
              -- CDC: wr_access in update_dtm clock region
              if (wr_access = '1') then
                Master_data_wr  <= '1';
                Master_wr_start <= '1';
              end if;
              if (wr_access = '0') then
                Master_data_rd  <= '1';
                Master_rd_start <= '1';
              end if;
              master_error <= '0';
            end if;
          end if;
          do_execute <= execute_2;
          execute_2  <= execute_1;
          execute_1  <= execute;

          if (Master_rd_resp /= "00" and rd_resp_zero) or (Master_wr_resp /= "00" and wr_resp_zero) then
            master_error <= '1';
          end if;
          rd_resp_zero <= Master_rd_resp = "00";
          wr_resp_zero <= Master_wr_resp = "00";
        end if;
      end if;
    end process Execute_Data_Command;

    -- CDC: sbaccess in update_dtm clock region
    Master_rd_size  <= sbaccess(1 downto 0);
    Master_wr_size  <= sbaccess(1 downto 0);
    Master_rd_len   <= (others => '0');
    Master_wr_len   <= (others => '0');

    -- Unused
    Master_rd_excl  <= '0';
    Master_wr_excl  <= '0';
    Master_dwr_addr <= (others => '0');
    Master_dwr_len  <= (others => '0');
  end generate Use_Dbg_Mem_Access;

  No_Dbg_Mem_Access : if (not C_USE_DBG_MEM_ACCESS) generate
  begin
    TDO_sbcs        <= '0';
    TDO_sbaddress0  <= '0';
    TDO_sbaddress1  <= '0';
    TDO_sbdata0     <= '0';

    Master_rd_start <= '0';
    Master_rd_addr  <= (others => '0');
    Master_rd_len   <= (others => '0');
    Master_rd_size  <= (others => '0');
    Master_rd_excl  <= '0';
    Master_wr_start <= '0';
    Master_wr_addr  <= (others => '0');
    Master_wr_len   <= (others => '0');
    Master_wr_size  <= (others => '0');
    Master_wr_excl  <= '0';
    Master_data_rd  <= '0';
    Master_data_wr  <= '0';
    Master_data_in  <= (others => '0');
    Master_dwr_addr <= (others => '0');
    Master_dwr_len  <= (others => '0');
  end generate No_Dbg_Mem_Access;

  -----------------------------------------------------------------------------
  -- Cross trigger section
  -----------------------------------------------------------------------------

  Use_Cross_Trigger_Serial : if (C_USE_CROSS_TRIGGER = 1 and C_DEBUG_INTERFACE = 0) generate
    signal dmcs2_read   : std_logic_vector(31 + C_DMI_OPBITS downto 0) := (others => '0');
    signal dmcs2        : std_logic_vector(31 downto 0);

  begin

    -------------------------------------------------------------------------------
    -- Handling the dmcs2 register
    -------------------------------------------------------------------------------
    DMCS2_Write : process (update_dtm, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        dmcs2_grouptype_i    <= '0';
        dmcs2_dmexttrigger_i <= (others => '0');
        dmcs2_group_hart_i   <= (others => (others => (others => '0')));
        dmcs2_group_ext_i    <= (others => (others => (others => '0')));
        dmcs2_hgselect_i     <= '0';
      elsif update_dtm'event and update_dtm = '1' then
        if sel_dmi = '1' and write_reg and dmi(C_DMI_ADDR_POS) = C_DMCS2_ADDR then
          if dmcontrol_dmactive = '0' then
            dmcs2_grouptype_i    <= '0';
            dmcs2_dmexttrigger_i <= (others => '0');
            dmcs2_group_hart_i   <= (others => (others => (others => '0')));
            dmcs2_group_ext_i    <= (others => (others => (others => '0')));
            dmcs2_hgselect_i     <= '0';
          else
            dmcs2_grouptype_i    <= dmi(11 + C_DMI_OPBITS);
            dmcs2_dmexttrigger_i <= dmi(8 + C_DMI_OPBITS downto 7 + C_DMI_OPBITS);
            dmcs2_hgselect_i     <= dmi(0 + C_DMI_OPBITS);
            if dmi(1 + C_DMI_OPBITS) = '1' and
               unsigned(dmi(6 + C_DMI_OPBITS downto 2 + C_DMI_OPBITS)) < C_NUM_GROUPS then
              if dmi(0 + C_DMI_OPBITS) = '0' then
                -- Operate on harts
                for i in 0 to C_EN_WIDTH-1 loop
                  if (dmcontrol_hasel = '1' and hawindow(i) = '1' and C_MB_DBG_PORTS > 1) or
                     dmcontrol_hartsel_val = i then
                    dmcs2_group_hart_i(dmi(11 + C_DMI_OPBITS) = '1', i) <=
                      dmi(C_GROUP_BITS + 1 + C_DMI_OPBITS downto 2 + C_DMI_OPBITS);
                  end if;
                end loop;
              else
                -- Operate on external triggers
                dmcs2_group_ext_i(dmi(11 + C_DMI_OPBITS) = '1',
                                  to_integer(unsigned(dmi(8 + C_DMI_OPBITS downto 7 + C_DMI_OPBITS)))) <=
                  dmi(C_GROUP_BITS + 1 + C_DMI_OPBITS downto 2 + C_DMI_OPBITS);
              end if;
            end if;
          end if;
        end if;
      end if;
    end process DMCS2_Write;

    DMCS2_Handle : process(dmcs2_grouptype_i, dmcs2_dmexttrigger_i, dmcs2_hgselect_i,
                           dmcs2_group_hart_i, dmcs2_group_ext_i, dmcontrol_hartsel_val)
    begin
      dmcs2                 <= (others => '0');
      dmcs2(11)             <= dmcs2_grouptype_i;
      dmcs2(8 downto 7)     <= dmcs2_dmexttrigger_i;
      if dmcs2_hgselect_i = '0' then
        -- Group of the hart specified by hartsel
        dmcs2(C_GROUP_BITS + 1 downto 2) <= dmcs2_group_hart_i(dmcs2_grouptype_i = '1', dmcontrol_hartsel_val);
      else
        -- Group of the external trigger selected by dmexttrigger
        dmcs2(C_GROUP_BITS + 1 downto 2)   <= dmcs2_group_ext_i(dmcs2_grouptype_i = '1', to_integer(unsigned(dmcs2_dmexttrigger_i)));
      end if;
      dmcs2(0)              <= dmcs2_hgselect_i;
    end process DMCS2_Handle;

    DMCS2_Shift : process (drck_dtm, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        dmcs2_read <= (others => '0');
      elsif drck_dtm'event and drck_dtm = '1' then  -- rising clock edge
        if sel_dmi = '1' then
          if capture_dtm = '1' then
            -- CDC: dmcs2 in update_dtm clock region
            dmcs2_read <= dmcs2 & C_DMI_OP_SUCCESS;
          elsif shift_dtm = '1' then
            dmcs2_read <= TDI & dmcs2_read(dmcs2_read'left downto 1);
          end if;
        end if;
      end if;
    end process DMCS2_Shift;

    TDO_dmcs2 <= dmcs2_read(0);
  end generate Use_Cross_Trigger_Serial;

  No_Cross_Trigger_Serial : if (C_USE_CROSS_TRIGGER = 0 or C_DEBUG_INTERFACE > 0) generate
  begin
    dmcs2_grouptype_i    <=  '0';
    dmcs2_hgselect_i     <=  '0';
    dmcs2_dmexttrigger_i <= "00";

    Assign_DMCS2 : process(DMCS2_group_hart, DMCS2_group_ext) is
    begin  -- process Assign_DMCS2
      for I in 0 to 1 loop
        for K in 0 to C_EN_WIDTH - 1 loop
          dmcs2_group_hart_i(I = 1, K) <=
            DMCS2_group_hart((I * C_EN_WIDTH + K + 1) * C_GROUP_BITS - 1 downto
                             (I * C_EN_WIDTH + K) * C_GROUP_BITS);
        end loop;
        for K in 0 to 3 loop
          dmcs2_group_ext_i(I = 1, K) <=
            DMCS2_group_ext((I * 4 + K + 1) * C_GROUP_BITS - 1 downto
                            (I * 4 + K) * C_GROUP_BITS);
        end loop;
      end loop;
    end process Assign_DMCS2;

    TDO_dmcs2 <= '0';
  end generate No_Cross_Trigger_Serial;

  Use_Cross_Trigger : if (C_USE_CROSS_TRIGGER = 1) generate
    signal dbg_trig_in_i      : dbg_trig_type;
    signal dbg_trig_ack_out_i : dbg_trig_type;
  begin
    -- Crossbar
    --   Halt groups:   connect Ext_Trig_In, Dbg_Trig_In_X(0) to Dbg_Trig_Out_X(0)
    --   Resume groups: connect Ext_Trig_In, Dbg_Trig_In_X(1) to Dbg_Trig_Out_X(1)
    CrossBar: process(dmcs2_group_hart_i, dmcs2_group_ext_i, dbg_trig_in_i, dbg_trig_ack_out_i, Ext_Trig_In, Ext_Trig_Ack_Out) is
      variable trig_out      : trig_type;
      variable trig_ack_in   : trig_type;
      variable first         : trig_type;
      variable dmcs2_group_i : dmcs2_group_t;
    begin  -- process CrossBar
      dbg_trig_ack_in_i <= (others => (others => '0'));
      dbg_trig_out_i    <= (others => (others => '0'));
      ext_trig_ack_in_i <= (others => '0');
      ext_trig_out_i    <= (others => '0');
      trig_out          := (others => (others => '0'));
      trig_ack_in       := (others => (others => '0'));
      first             := (others => (others => '1')); 
      -- Group 0 is special: harts in group 0 halt/resume as if groups are not implemented
      -- For every other cross trigger group, or together all halt or resume signals
      -- for the members of that group.
      for Q in 0 to 1 loop
        for N in 0 to C_MB_DBG_PORTS+C_NUM_EXT_CT-1 loop
          if N < C_MB_DBG_PORTS then
            dmcs2_group_i(Q = 1,N)    := dmcs2_group_hart_i(Q = 1,N);
          else
            dmcs2_group_i(Q = 1,N)    := dmcs2_group_ext_i(Q = 1,N-C_MB_DBG_PORTS);
          end if;
        end loop;
        -- Iterate over all resume/halt groups.
        -- Connect  all hart and external triggers that are
        -- member of the same halt/resume group
        -- except group 0.
        for N in 0 to C_MB_DBG_PORTS+C_NUM_EXT_CT-1 loop
          if unsigned(dmcs2_group_i(Q = 1,N)) = 0 then
            -- Connect Harts or ext triggers belonging to group 0 to
            -- their respective ack signals
            if N < C_MB_DBG_PORTS then
              trig_ack_in(N)(Q)         := dbg_trig_in_i(N)(Q);
            else
              trig_ack_in(N)(Q)         := Ext_Trig_In(N-C_MB_DBG_PORTS);
            end if;
          else
            for P in 0 to C_MB_DBG_PORTS+C_NUM_EXT_CT-1 loop
              -- Connect trig_in of all other harts and ext in this group to the trig_out
              -- connected to this hart or ext.
              if dmcs2_group_i(Q = 1,N) = dmcs2_group_i(Q = 1,P) and P/=N then
                if P < C_MB_DBG_PORTS then
                  trig_out(N)(Q)      := trig_out(N)(Q) or
                                         dbg_trig_in_i(P)(Q);
                  if first(N)(Q) = '1' then
                    first(N)(Q) := '0';
                    trig_ack_in(N)(Q) := dbg_trig_ack_out_i(P)(Q);
                  else  
                    trig_ack_in(N)(Q) := trig_ack_in(N)(Q) and
                                         dbg_trig_ack_out_i(P)(Q);
                  end if;
                else
                  trig_out(N)(Q)      := trig_out(N)(Q) or
                                       Ext_Trig_In(P-C_MB_DBG_PORTS);
                  if first(N)(Q) = '1' then
                    first(N)(Q) := '0';
                    trig_ack_in(N)(Q) := Ext_Trig_Ack_Out(P-C_MB_DBG_PORTS);
                  else  
                    trig_ack_in(N)(Q) := trig_ack_in(N)(Q) and
                                         Ext_Trig_Ack_Out(P-C_MB_DBG_PORTS);
                  end if;
                end if;
              end if;
            end loop;
          end if;
        end loop;
      end loop;
      -- Connect to hart and external triggers 
      for N in 0 to C_MB_DBG_PORTS+C_NUM_EXT_CT-1 loop 
        if N < C_MB_DBG_PORTS then
          dbg_trig_out_i(N)(0 to 1)           <= trig_out(N);
          dbg_trig_ack_in_i(N)(0 to 1)        <= trig_ack_in(N);
        else
          ext_trig_out_i(N-C_MB_DBG_PORTS)    <= trig_out(N)(0) or trig_out(N)(1);
          ext_trig_ack_in_i(N-C_MB_DBG_PORTS) <= trig_ack_in(N)(0) or trig_ack_in(N)(1);
        end if;
      end loop;
    end process CrossBar;
    
    dbg_trig_in_i(0)  <= Dbg_Trig_In_0;
    dbg_trig_in_i(1)  <= Dbg_Trig_In_1;
    dbg_trig_in_i(2)  <= Dbg_Trig_In_2;
    dbg_trig_in_i(3)  <= Dbg_Trig_In_3;
    dbg_trig_in_i(4)  <= Dbg_Trig_In_4;
    dbg_trig_in_i(5)  <= Dbg_Trig_In_5;
    dbg_trig_in_i(6)  <= Dbg_Trig_In_6;
    dbg_trig_in_i(7)  <= Dbg_Trig_In_7;
    dbg_trig_in_i(8)  <= Dbg_Trig_In_8;
    dbg_trig_in_i(9)  <= Dbg_Trig_In_9;
    dbg_trig_in_i(10) <= Dbg_Trig_In_10;
    dbg_trig_in_i(11) <= Dbg_Trig_In_11;
    dbg_trig_in_i(12) <= Dbg_Trig_In_12;
    dbg_trig_in_i(13) <= Dbg_Trig_In_13;
    dbg_trig_in_i(14) <= Dbg_Trig_In_14;
    dbg_trig_in_i(15) <= Dbg_Trig_In_15;
    dbg_trig_in_i(16) <= Dbg_Trig_In_16;
    dbg_trig_in_i(17) <= Dbg_Trig_In_17;
    dbg_trig_in_i(18) <= Dbg_Trig_In_18;
    dbg_trig_in_i(19) <= Dbg_Trig_In_19;
    dbg_trig_in_i(20) <= Dbg_Trig_In_20;
    dbg_trig_in_i(21) <= Dbg_Trig_In_21;
    dbg_trig_in_i(22) <= Dbg_Trig_In_22;
    dbg_trig_in_i(23) <= Dbg_Trig_In_23;
    dbg_trig_in_i(24) <= Dbg_Trig_In_24;
    dbg_trig_in_i(25) <= Dbg_Trig_In_25;
    dbg_trig_in_i(26) <= Dbg_Trig_In_26;
    dbg_trig_in_i(27) <= Dbg_Trig_In_27;
    dbg_trig_in_i(28) <= Dbg_Trig_In_28;
    dbg_trig_in_i(29) <= Dbg_Trig_In_29;
    dbg_trig_in_i(30) <= Dbg_Trig_In_30;
    dbg_trig_in_i(31) <= Dbg_Trig_In_31;

    dbg_trig_ack_out_i(0)  <= Dbg_Trig_Ack_Out_0;
    dbg_trig_ack_out_i(1)  <= Dbg_Trig_Ack_Out_1;
    dbg_trig_ack_out_i(2)  <= Dbg_Trig_Ack_Out_2;
    dbg_trig_ack_out_i(3)  <= Dbg_Trig_Ack_Out_3;
    dbg_trig_ack_out_i(4)  <= Dbg_Trig_Ack_Out_4;
    dbg_trig_ack_out_i(5)  <= Dbg_Trig_Ack_Out_5;
    dbg_trig_ack_out_i(6)  <= Dbg_Trig_Ack_Out_6;
    dbg_trig_ack_out_i(7)  <= Dbg_Trig_Ack_Out_7;
    dbg_trig_ack_out_i(8)  <= Dbg_Trig_Ack_Out_8;
    dbg_trig_ack_out_i(9)  <= Dbg_Trig_Ack_Out_9;
    dbg_trig_ack_out_i(10) <= Dbg_Trig_Ack_Out_10;
    dbg_trig_ack_out_i(11) <= Dbg_Trig_Ack_Out_11;
    dbg_trig_ack_out_i(12) <= Dbg_Trig_Ack_Out_12;
    dbg_trig_ack_out_i(13) <= Dbg_Trig_Ack_Out_13;
    dbg_trig_ack_out_i(14) <= Dbg_Trig_Ack_Out_14;
    dbg_trig_ack_out_i(15) <= Dbg_Trig_Ack_Out_15;
    dbg_trig_ack_out_i(16) <= Dbg_Trig_Ack_Out_16;
    dbg_trig_ack_out_i(17) <= Dbg_Trig_Ack_Out_17;
    dbg_trig_ack_out_i(18) <= Dbg_Trig_Ack_Out_18;
    dbg_trig_ack_out_i(19) <= Dbg_Trig_Ack_Out_19;
    dbg_trig_ack_out_i(20) <= Dbg_Trig_Ack_Out_20;
    dbg_trig_ack_out_i(21) <= Dbg_Trig_Ack_Out_21;
    dbg_trig_ack_out_i(22) <= Dbg_Trig_Ack_Out_22;
    dbg_trig_ack_out_i(23) <= Dbg_Trig_Ack_Out_23;
    dbg_trig_ack_out_i(24) <= Dbg_Trig_Ack_Out_24;
    dbg_trig_ack_out_i(25) <= Dbg_Trig_Ack_Out_25;
    dbg_trig_ack_out_i(26) <= Dbg_Trig_Ack_Out_26;
    dbg_trig_ack_out_i(27) <= Dbg_Trig_Ack_Out_27;
    dbg_trig_ack_out_i(28) <= Dbg_Trig_Ack_Out_28;
    dbg_trig_ack_out_i(29) <= Dbg_Trig_Ack_Out_29;
    dbg_trig_ack_out_i(30) <= Dbg_Trig_Ack_Out_30;
    dbg_trig_ack_out_i(31) <= Dbg_Trig_Ack_Out_31;
  end generate Use_Cross_Trigger;

  No_Cross_Trigger : if (C_USE_CROSS_TRIGGER = 0) generate
  begin
    dbg_trig_ack_in_i <= (others => (others => '0'));
    dbg_trig_out_i    <= (others => (others => '0'));
    ext_trig_ack_in_i <= (others => '0');
    ext_trig_out_i    <= (others => '0');
  end generate No_Cross_Trigger;

  Dbg_Trig_Ack_In_0  <= dbg_trig_ack_in_i(0);
  Dbg_Trig_Ack_In_1  <= dbg_trig_ack_in_i(1);
  Dbg_Trig_Ack_In_2  <= dbg_trig_ack_in_i(2);
  Dbg_Trig_Ack_In_3  <= dbg_trig_ack_in_i(3);
  Dbg_Trig_Ack_In_4  <= dbg_trig_ack_in_i(4);
  Dbg_Trig_Ack_In_5  <= dbg_trig_ack_in_i(5);
  Dbg_Trig_Ack_In_6  <= dbg_trig_ack_in_i(6);
  Dbg_Trig_Ack_In_7  <= dbg_trig_ack_in_i(7);
  Dbg_Trig_Ack_In_8  <= dbg_trig_ack_in_i(8);
  Dbg_Trig_Ack_In_9  <= dbg_trig_ack_in_i(9);
  Dbg_Trig_Ack_In_10 <= dbg_trig_ack_in_i(10);
  Dbg_Trig_Ack_In_11 <= dbg_trig_ack_in_i(11);
  Dbg_Trig_Ack_In_12 <= dbg_trig_ack_in_i(12);
  Dbg_Trig_Ack_In_13 <= dbg_trig_ack_in_i(13);
  Dbg_Trig_Ack_In_14 <= dbg_trig_ack_in_i(14);
  Dbg_Trig_Ack_In_15 <= dbg_trig_ack_in_i(15);
  Dbg_Trig_Ack_In_16 <= dbg_trig_ack_in_i(16);
  Dbg_Trig_Ack_In_17 <= dbg_trig_ack_in_i(17);
  Dbg_Trig_Ack_In_18 <= dbg_trig_ack_in_i(18);
  Dbg_Trig_Ack_In_19 <= dbg_trig_ack_in_i(19);
  Dbg_Trig_Ack_In_20 <= dbg_trig_ack_in_i(20);
  Dbg_Trig_Ack_In_21 <= dbg_trig_ack_in_i(21);
  Dbg_Trig_Ack_In_22 <= dbg_trig_ack_in_i(22);
  Dbg_Trig_Ack_In_23 <= dbg_trig_ack_in_i(23);
  Dbg_Trig_Ack_In_24 <= dbg_trig_ack_in_i(24);
  Dbg_Trig_Ack_In_25 <= dbg_trig_ack_in_i(25);
  Dbg_Trig_Ack_In_26 <= dbg_trig_ack_in_i(26);
  Dbg_Trig_Ack_In_27 <= dbg_trig_ack_in_i(27);
  Dbg_Trig_Ack_In_28 <= dbg_trig_ack_in_i(28);
  Dbg_Trig_Ack_In_29 <= dbg_trig_ack_in_i(29);
  Dbg_Trig_Ack_In_30 <= dbg_trig_ack_in_i(30);
  Dbg_Trig_Ack_In_31 <= dbg_trig_ack_in_i(31);

  Dbg_Trig_Out_0     <= dbg_trig_out_i(0);
  Dbg_Trig_Out_1     <= dbg_trig_out_i(1);
  Dbg_Trig_Out_2     <= dbg_trig_out_i(2);
  Dbg_Trig_Out_3     <= dbg_trig_out_i(3);
  Dbg_Trig_Out_4     <= dbg_trig_out_i(4);
  Dbg_Trig_Out_5     <= dbg_trig_out_i(5);
  Dbg_Trig_Out_6     <= dbg_trig_out_i(6);
  Dbg_Trig_Out_7     <= dbg_trig_out_i(7);
  Dbg_Trig_Out_8     <= dbg_trig_out_i(8);
  Dbg_Trig_Out_9     <= dbg_trig_out_i(9);
  Dbg_Trig_Out_10    <= dbg_trig_out_i(10);
  Dbg_Trig_Out_11    <= dbg_trig_out_i(11);
  Dbg_Trig_Out_12    <= dbg_trig_out_i(12);
  Dbg_Trig_Out_13    <= dbg_trig_out_i(13);
  Dbg_Trig_Out_14    <= dbg_trig_out_i(14);
  Dbg_Trig_Out_15    <= dbg_trig_out_i(15);
  Dbg_Trig_Out_16    <= dbg_trig_out_i(16);
  Dbg_Trig_Out_17    <= dbg_trig_out_i(17);
  Dbg_Trig_Out_18    <= dbg_trig_out_i(18);
  Dbg_Trig_Out_19    <= dbg_trig_out_i(19);
  Dbg_Trig_Out_20    <= dbg_trig_out_i(20);
  Dbg_Trig_Out_21    <= dbg_trig_out_i(21);
  Dbg_Trig_Out_22    <= dbg_trig_out_i(22);
  Dbg_Trig_Out_23    <= dbg_trig_out_i(23);
  Dbg_Trig_Out_24    <= dbg_trig_out_i(24);
  Dbg_Trig_Out_25    <= dbg_trig_out_i(25);
  Dbg_Trig_Out_26    <= dbg_trig_out_i(26);
  Dbg_Trig_Out_27    <= dbg_trig_out_i(27);
  Dbg_Trig_Out_28    <= dbg_trig_out_i(28);
  Dbg_Trig_Out_29    <= dbg_trig_out_i(29);
  Dbg_Trig_Out_30    <= dbg_trig_out_i(30);
  Dbg_Trig_Out_31    <= dbg_trig_out_i(31);

  Ext_Trig_Ack_In    <= ext_trig_ack_in_i;
  Ext_Trig_Out       <= ext_trig_out_i;

  -- Unused signals
  Dbg_data_cmd       <= '0';
  Dbg_command        <= (others => '0');

end architecture IMP;


-------------------------------------------------------------------------------
-- mdm_core.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        mdm_core.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              mdm_core.vhd
--                jtag_control.vhd
--                arbiter.vhd
--
-------------------------------------------------------------------------------
-- Author:          stefana
--
-- History:
--   stefana 2019-11-04    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.mdm_funcs.all;

entity MDM_Core is
  generic (
    C_TARGET               : TARGET_FAMILY_TYPE;
    C_JTAG_CHAIN           : integer;
    C_USE_BSCAN            : integer;
    C_DTM_IDCODE           : integer;
    C_USE_CONFIG_RESET     : integer;
    C_USE_SRL16            : string;
    C_DEBUG_INTERFACE      : integer;
    C_MB_DBG_PORTS         : integer;
    C_EN_WIDTH             : integer;
    C_DBG_REG_ACCESS       : integer;
    C_REG_NUM_CE           : integer;
    C_REG_DATA_WIDTH       : integer;
    C_DBG_MEM_ACCESS       : integer;
    C_S_AXI_ADDR_WIDTH     : integer;
    C_S_AXI_ACLK_FREQ_HZ   : integer;
    C_M_AXI_ADDR_WIDTH     : integer;
    C_M_AXI_DATA_WIDTH     : integer;
    C_USE_CROSS_TRIGGER    : integer;
    C_EXT_TRIG_RESET_VALUE : std_logic_vector(0 to 19);
    C_TRACE_OUTPUT         : integer;
    C_TRACE_DATA_WIDTH     : integer;
    C_TRACE_ASYNC_RESET    : integer;
    C_TRACE_CLK_FREQ_HZ    : integer;
    C_TRACE_CLK_OUT_PHASE  : integer;
    C_USE_UART             : integer;
    C_UART_WIDTH           : integer;
    C_M_AXIS_DATA_WIDTH    : integer;
    C_M_AXIS_ID_WIDTH      : integer
  );

  port (
    -- Global signals
    Config_Reset        : in std_logic;
    Scan_Reset_Sel      : in std_logic;
    Scan_Reset          : in std_logic;
    Scan_En             : in std_logic;

    M_AXIS_ACLK         : in std_logic;
    M_AXIS_ARESETN      : in std_logic;

    Interrupt           : out std_logic;
    Debug_SYS_Rst       : out std_logic;

    -- Debug Register Access signals
    DbgReg_DRCK         : out std_logic;
    DbgReg_UPDATE       : out std_logic;
    DbgReg_Select       : out std_logic;
    JTAG_Busy           : in  std_logic;
    S_AXI_AWADDR        : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_ARADDR        : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);

    -- IPIC signals
    bus2ip_clk          : in  std_logic;
    bus2ip_resetn       : in  std_logic;
    bus2ip_addr         : in  std_logic_vector(13 downto 0);
    bus2ip_data         : in  std_logic_vector(C_REG_DATA_WIDTH-1 downto 0);
    bus2ip_rdce         : in  std_logic_vector(0 to C_REG_NUM_CE-1);
    bus2ip_wrce         : in  std_logic_vector(0 to C_REG_NUM_CE-1);
    ip2bus_rdack        : out std_logic;
    ip2bus_wrack        : out std_logic;
    ip2bus_error        : out std_logic;
    ip2bus_data         : out std_logic_vector(C_REG_DATA_WIDTH-1 downto 0);

    -- Bus Master signals
    MB_Debug_Enabled    : out std_logic_vector(C_EN_WIDTH-1 downto 0);

    M_AXI_ACLK          : in  std_logic;
    M_AXI_ARESETn       : in  std_logic;

    Master_rd_start     : out std_logic;
    Master_rd_addr      : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Master_rd_len       : out std_logic_vector(4 downto 0);
    Master_rd_size      : out std_logic_vector(1 downto 0);
    Master_rd_excl      : out std_logic;
    Master_rd_idle      : in  std_logic;
    Master_rd_resp      : in  std_logic_vector(1 downto 0);
    Master_wr_start     : out std_logic;
    Master_wr_addr      : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Master_wr_len       : out std_logic_vector(4 downto 0);
    Master_wr_size      : out std_logic_vector(1 downto 0);
    Master_wr_excl      : out std_logic;
    Master_wr_idle      : in  std_logic;
    Master_wr_resp      : in  std_logic_vector(1 downto 0);
    Master_data_rd      : out std_logic;
    Master_data_out     : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Master_data_exists  : in  std_logic;
    Master_data_wr      : out std_logic;
    Master_data_in      : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Master_data_empty   : in  std_logic;

    Master_dwr_addr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Master_dwr_len      : out std_logic_vector(4 downto 0);
    Master_dwr_data     : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Master_dwr_start    : out std_logic;
    Master_dwr_next     : in  std_logic;
    Master_dwr_done     : in  std_logic;
    Master_dwr_resp     : in  std_logic_vector(1 downto 0);

    M_AXI_AWADDR        : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_AWVALID       : in  std_logic;
    M_AXI_AWREADY       : out std_logic;
    M_AXI_WDATA         : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_WVALID        : in  std_logic;
    M_AXI_WREADY        : out std_logic;
    M_AXI_BRESP         : out std_logic_vector(1 downto 0);
    M_AXI_BVALID        : out std_logic;
    M_AXI_BREADY        : in  std_logic;
    M_AXI_ARADDR        : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_ARVALID       : in  std_logic;
    M_AXI_ARREADY       : out std_logic;
    M_AXI_RDATA         : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_RRESP         : out std_logic_vector(1 downto 0);
    M_AXI_RVALID        : out std_logic;
    M_AXI_RREADY        : in  std_logic;

    -- JTAG signals
    JTAG_TDI            : in  std_logic;
    TMS                 : in  std_logic;
    TCK                 : in  std_logic;
    JTAG_RESET          : in  std_logic;
    UPDATE              : in  std_logic;
    JTAG_SHIFT          : in  std_logic;
    JTAG_CAPTURE        : in  std_logic;
    JTAG_SEL            : in  std_logic;
    DRCK                : in  std_logic;
    JTAG_TDO            : out std_logic;

    -- External Trace output
    TRACE_CLK_OUT      : out std_logic;
    TRACE_CLK          : in  std_logic;
    TRACE_CTL          : out std_logic;
    TRACE_DATA         : out std_logic_vector(C_TRACE_DATA_WIDTH-1 downto 0);

    -- MicroBlaze Debug Signals
    Dbg_Disable_0       : out std_logic;
    Dbg_Clk_0           : out std_logic;
    Dbg_TDI_0           : out std_logic;
    Dbg_TDO_0           : in  std_logic;
    Dbg_Reg_En_0        : out std_logic_vector(0 to 7);
    Dbg_Capture_0       : out std_logic;
    Dbg_Shift_0         : out std_logic;
    Dbg_Update_0        : out std_logic;
    Dbg_Rst_0           : out std_logic;
    Dbg_Trig_In_0       : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_0   : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_0      : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_0  : in  std_logic_vector(0 to 7);
    Dbg_TrClk_0         : out std_logic;
    Dbg_TrData_0        : in  std_logic_vector(0 to 35);
    Dbg_TrReady_0       : out std_logic;
    Dbg_TrValid_0       : in  std_logic;
    Dbg_AWADDR_0        : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_0       : out std_logic;
    Dbg_AWREADY_0       : in  std_logic;
    Dbg_WDATA_0         : out std_logic_vector(31 downto 0);
    Dbg_WVALID_0        : out std_logic;
    Dbg_WREADY_0        : in  std_logic;
    Dbg_BRESP_0         : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_0        : in  std_logic;
    Dbg_BREADY_0        : out std_logic;
    Dbg_ARADDR_0        : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_0       : out std_logic;
    Dbg_ARREADY_0       : in  std_logic;
    Dbg_RDATA_0         : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_0         : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_0        : in  std_logic;
    Dbg_RREADY_0        : out std_logic;

    Dbg_Disable_1       : out std_logic;
    Dbg_Clk_1           : out std_logic;
    Dbg_TDI_1           : out std_logic;
    Dbg_TDO_1           : in  std_logic;
    Dbg_Reg_En_1        : out std_logic_vector(0 to 7);
    Dbg_Capture_1       : out std_logic;
    Dbg_Shift_1         : out std_logic;
    Dbg_Update_1        : out std_logic;
    Dbg_Rst_1           : out std_logic;
    Dbg_Trig_In_1       : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_1   : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_1      : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_1  : in  std_logic_vector(0 to 7);
    Dbg_TrClk_1         : out std_logic;
    Dbg_TrData_1        : in  std_logic_vector(0 to 35);
    Dbg_TrReady_1       : out std_logic;
    Dbg_TrValid_1       : in  std_logic;
    Dbg_AWADDR_1        : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_1       : out std_logic;
    Dbg_AWREADY_1       : in  std_logic;
    Dbg_WDATA_1         : out std_logic_vector(31 downto 0);
    Dbg_WVALID_1        : out std_logic;
    Dbg_WREADY_1        : in  std_logic;
    Dbg_BRESP_1         : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_1        : in  std_logic;
    Dbg_BREADY_1        : out std_logic;
    Dbg_ARADDR_1        : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_1       : out std_logic;
    Dbg_ARREADY_1       : in  std_logic;
    Dbg_RDATA_1         : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_1         : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_1        : in  std_logic;
    Dbg_RREADY_1        : out std_logic;

    Dbg_Disable_2       : out std_logic;
    Dbg_Clk_2           : out std_logic;
    Dbg_TDI_2           : out std_logic;
    Dbg_TDO_2           : in  std_logic;
    Dbg_Reg_En_2        : out std_logic_vector(0 to 7);
    Dbg_Capture_2       : out std_logic;
    Dbg_Shift_2         : out std_logic;
    Dbg_Update_2        : out std_logic;
    Dbg_Rst_2           : out std_logic;
    Dbg_Trig_In_2       : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_2   : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_2      : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_2  : in  std_logic_vector(0 to 7);
    Dbg_TrClk_2         : out std_logic;
    Dbg_TrData_2        : in  std_logic_vector(0 to 35);
    Dbg_TrReady_2       : out std_logic;
    Dbg_TrValid_2       : in  std_logic;
    Dbg_AWADDR_2        : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_2       : out std_logic;
    Dbg_AWREADY_2       : in  std_logic;
    Dbg_WDATA_2         : out std_logic_vector(31 downto 0);
    Dbg_WVALID_2        : out std_logic;
    Dbg_WREADY_2        : in  std_logic;
    Dbg_BRESP_2         : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_2        : in  std_logic;
    Dbg_BREADY_2        : out std_logic;
    Dbg_ARADDR_2        : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_2       : out std_logic;
    Dbg_ARREADY_2       : in  std_logic;
    Dbg_RDATA_2         : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_2         : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_2        : in  std_logic;
    Dbg_RREADY_2        : out std_logic;

    Dbg_Disable_3       : out std_logic;
    Dbg_Clk_3           : out std_logic;
    Dbg_TDI_3           : out std_logic;
    Dbg_TDO_3           : in  std_logic;
    Dbg_Reg_En_3        : out std_logic_vector(0 to 7);
    Dbg_Capture_3       : out std_logic;
    Dbg_Shift_3         : out std_logic;
    Dbg_Update_3        : out std_logic;
    Dbg_Rst_3           : out std_logic;
    Dbg_Trig_In_3       : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_3   : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_3      : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_3  : in  std_logic_vector(0 to 7);
    Dbg_TrClk_3         : out std_logic;
    Dbg_TrData_3        : in  std_logic_vector(0 to 35);
    Dbg_TrReady_3       : out std_logic;
    Dbg_TrValid_3       : in  std_logic;
    Dbg_AWADDR_3        : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_3       : out std_logic;
    Dbg_AWREADY_3       : in  std_logic;
    Dbg_WDATA_3         : out std_logic_vector(31 downto 0);
    Dbg_WVALID_3        : out std_logic;
    Dbg_WREADY_3        : in  std_logic;
    Dbg_BRESP_3         : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_3        : in  std_logic;
    Dbg_BREADY_3        : out std_logic;
    Dbg_ARADDR_3        : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_3       : out std_logic;
    Dbg_ARREADY_3       : in  std_logic;
    Dbg_RDATA_3         : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_3         : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_3        : in  std_logic;
    Dbg_RREADY_3        : out std_logic;

    Dbg_Disable_4       : out std_logic;
    Dbg_Clk_4           : out std_logic;
    Dbg_TDI_4           : out std_logic;
    Dbg_TDO_4           : in  std_logic;
    Dbg_Reg_En_4        : out std_logic_vector(0 to 7);
    Dbg_Capture_4       : out std_logic;
    Dbg_Shift_4         : out std_logic;
    Dbg_Update_4        : out std_logic;
    Dbg_Rst_4           : out std_logic;
    Dbg_Trig_In_4       : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_4   : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_4      : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_4  : in  std_logic_vector(0 to 7);
    Dbg_TrClk_4         : out std_logic;
    Dbg_TrData_4        : in  std_logic_vector(0 to 35);
    Dbg_TrReady_4       : out std_logic;
    Dbg_TrValid_4       : in  std_logic;
    Dbg_AWADDR_4        : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_4       : out std_logic;
    Dbg_AWREADY_4       : in  std_logic;
    Dbg_WDATA_4         : out std_logic_vector(31 downto 0);
    Dbg_WVALID_4        : out std_logic;
    Dbg_WREADY_4        : in  std_logic;
    Dbg_BRESP_4         : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_4        : in  std_logic;
    Dbg_BREADY_4        : out std_logic;
    Dbg_ARADDR_4        : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_4       : out std_logic;
    Dbg_ARREADY_4       : in  std_logic;
    Dbg_RDATA_4         : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_4         : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_4        : in  std_logic;
    Dbg_RREADY_4        : out std_logic;

    Dbg_Disable_5       : out std_logic;
    Dbg_Clk_5           : out std_logic;
    Dbg_TDI_5           : out std_logic;
    Dbg_TDO_5           : in  std_logic;
    Dbg_Reg_En_5        : out std_logic_vector(0 to 7);
    Dbg_Capture_5       : out std_logic;
    Dbg_Shift_5         : out std_logic;
    Dbg_Update_5        : out std_logic;
    Dbg_Rst_5           : out std_logic;
    Dbg_Trig_In_5       : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_5   : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_5      : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_5  : in  std_logic_vector(0 to 7);
    Dbg_TrClk_5         : out std_logic;
    Dbg_TrData_5        : in  std_logic_vector(0 to 35);
    Dbg_TrReady_5       : out std_logic;
    Dbg_TrValid_5       : in  std_logic;
    Dbg_AWADDR_5        : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_5       : out std_logic;
    Dbg_AWREADY_5       : in  std_logic;
    Dbg_WDATA_5         : out std_logic_vector(31 downto 0);
    Dbg_WVALID_5        : out std_logic;
    Dbg_WREADY_5        : in  std_logic;
    Dbg_BRESP_5         : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_5        : in  std_logic;
    Dbg_BREADY_5        : out std_logic;
    Dbg_ARADDR_5        : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_5       : out std_logic;
    Dbg_ARREADY_5       : in  std_logic;
    Dbg_RDATA_5         : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_5         : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_5        : in  std_logic;
    Dbg_RREADY_5        : out std_logic;

    Dbg_Disable_6       : out std_logic;
    Dbg_Clk_6           : out std_logic;
    Dbg_TDI_6           : out std_logic;
    Dbg_TDO_6           : in  std_logic;
    Dbg_Reg_En_6        : out std_logic_vector(0 to 7);
    Dbg_Capture_6       : out std_logic;
    Dbg_Shift_6         : out std_logic;
    Dbg_Update_6        : out std_logic;
    Dbg_Rst_6           : out std_logic;
    Dbg_Trig_In_6       : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_6   : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_6      : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_6  : in  std_logic_vector(0 to 7);
    Dbg_TrClk_6         : out std_logic;
    Dbg_TrData_6        : in  std_logic_vector(0 to 35);
    Dbg_TrReady_6       : out std_logic;
    Dbg_TrValid_6       : in  std_logic;
    Dbg_AWADDR_6        : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_6       : out std_logic;
    Dbg_AWREADY_6       : in  std_logic;
    Dbg_WDATA_6         : out std_logic_vector(31 downto 0);
    Dbg_WVALID_6        : out std_logic;
    Dbg_WREADY_6        : in  std_logic;
    Dbg_BRESP_6         : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_6        : in  std_logic;
    Dbg_BREADY_6        : out std_logic;
    Dbg_ARADDR_6        : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_6       : out std_logic;
    Dbg_ARREADY_6       : in  std_logic;
    Dbg_RDATA_6         : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_6         : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_6        : in  std_logic;
    Dbg_RREADY_6        : out std_logic;

    Dbg_Disable_7       : out std_logic;
    Dbg_Clk_7           : out std_logic;
    Dbg_TDI_7           : out std_logic;
    Dbg_TDO_7           : in  std_logic;
    Dbg_Reg_En_7        : out std_logic_vector(0 to 7);
    Dbg_Capture_7       : out std_logic;
    Dbg_Shift_7         : out std_logic;
    Dbg_Update_7        : out std_logic;
    Dbg_Rst_7           : out std_logic;
    Dbg_Trig_In_7       : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_7   : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_7      : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_7  : in  std_logic_vector(0 to 7);
    Dbg_TrClk_7         : out std_logic;
    Dbg_TrData_7        : in  std_logic_vector(0 to 35);
    Dbg_TrReady_7       : out std_logic;
    Dbg_TrValid_7       : in  std_logic;
    Dbg_AWADDR_7        : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_7       : out std_logic;
    Dbg_AWREADY_7       : in  std_logic;
    Dbg_WDATA_7         : out std_logic_vector(31 downto 0);
    Dbg_WVALID_7        : out std_logic;
    Dbg_WREADY_7        : in  std_logic;
    Dbg_BRESP_7         : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_7        : in  std_logic;
    Dbg_BREADY_7        : out std_logic;
    Dbg_ARADDR_7        : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_7       : out std_logic;
    Dbg_ARREADY_7       : in  std_logic;
    Dbg_RDATA_7         : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_7         : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_7        : in  std_logic;
    Dbg_RREADY_7        : out std_logic;

    Dbg_Disable_8       : out std_logic;
    Dbg_Clk_8           : out std_logic;
    Dbg_TDI_8           : out std_logic;
    Dbg_TDO_8           : in  std_logic;
    Dbg_Reg_En_8        : out std_logic_vector(0 to 7);
    Dbg_Capture_8       : out std_logic;
    Dbg_Shift_8         : out std_logic;
    Dbg_Update_8        : out std_logic;
    Dbg_Rst_8           : out std_logic;
    Dbg_Trig_In_8       : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_8   : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_8      : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_8  : in  std_logic_vector(0 to 7);
    Dbg_TrClk_8         : out std_logic;
    Dbg_TrData_8        : in  std_logic_vector(0 to 35);
    Dbg_TrReady_8       : out std_logic;
    Dbg_TrValid_8       : in  std_logic;
    Dbg_AWADDR_8        : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_8       : out std_logic;
    Dbg_AWREADY_8       : in  std_logic;
    Dbg_WDATA_8         : out std_logic_vector(31 downto 0);
    Dbg_WVALID_8        : out std_logic;
    Dbg_WREADY_8        : in  std_logic;
    Dbg_BRESP_8         : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_8        : in  std_logic;
    Dbg_BREADY_8        : out std_logic;
    Dbg_ARADDR_8        : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_8       : out std_logic;
    Dbg_ARREADY_8       : in  std_logic;
    Dbg_RDATA_8         : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_8         : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_8        : in  std_logic;
    Dbg_RREADY_8        : out std_logic;

    Dbg_Disable_9       : out std_logic;
    Dbg_Clk_9           : out std_logic;
    Dbg_TDI_9           : out std_logic;
    Dbg_TDO_9           : in  std_logic;
    Dbg_Reg_En_9        : out std_logic_vector(0 to 7);
    Dbg_Capture_9       : out std_logic;
    Dbg_Shift_9         : out std_logic;
    Dbg_Update_9        : out std_logic;
    Dbg_Rst_9           : out std_logic;
    Dbg_Trig_In_9       : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_9   : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_9      : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_9  : in  std_logic_vector(0 to 7);
    Dbg_TrClk_9         : out std_logic;
    Dbg_TrData_9        : in  std_logic_vector(0 to 35);
    Dbg_TrReady_9       : out std_logic;
    Dbg_TrValid_9       : in  std_logic;
    Dbg_AWADDR_9        : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_9       : out std_logic;
    Dbg_AWREADY_9       : in  std_logic;
    Dbg_WDATA_9         : out std_logic_vector(31 downto 0);
    Dbg_WVALID_9        : out std_logic;
    Dbg_WREADY_9        : in  std_logic;
    Dbg_BRESP_9         : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_9        : in  std_logic;
    Dbg_BREADY_9        : out std_logic;
    Dbg_ARADDR_9        : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_9       : out std_logic;
    Dbg_ARREADY_9       : in  std_logic;
    Dbg_RDATA_9         : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_9         : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_9        : in  std_logic;
    Dbg_RREADY_9        : out std_logic;

    Dbg_Disable_10      : out std_logic;
    Dbg_Clk_10          : out std_logic;
    Dbg_TDI_10          : out std_logic;
    Dbg_TDO_10          : in  std_logic;
    Dbg_Reg_En_10       : out std_logic_vector(0 to 7);
    Dbg_Capture_10      : out std_logic;
    Dbg_Shift_10        : out std_logic;
    Dbg_Update_10       : out std_logic;
    Dbg_Rst_10          : out std_logic;
    Dbg_Trig_In_10      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_10  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_10     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_10 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_10        : out std_logic;
    Dbg_TrData_10       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_10      : out std_logic;
    Dbg_TrValid_10      : in  std_logic;
    Dbg_AWADDR_10       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_10      : out std_logic;
    Dbg_AWREADY_10      : in  std_logic;
    Dbg_WDATA_10        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_10       : out std_logic;
    Dbg_WREADY_10       : in  std_logic;
    Dbg_BRESP_10        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_10       : in  std_logic;
    Dbg_BREADY_10       : out std_logic;
    Dbg_ARADDR_10       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_10      : out std_logic;
    Dbg_ARREADY_10      : in  std_logic;
    Dbg_RDATA_10        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_10        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_10       : in  std_logic;
    Dbg_RREADY_10       : out std_logic;

    Dbg_Disable_11      : out std_logic;
    Dbg_Clk_11          : out std_logic;
    Dbg_TDI_11          : out std_logic;
    Dbg_TDO_11          : in  std_logic;
    Dbg_Reg_En_11       : out std_logic_vector(0 to 7);
    Dbg_Capture_11      : out std_logic;
    Dbg_Shift_11        : out std_logic;
    Dbg_Update_11       : out std_logic;
    Dbg_Rst_11          : out std_logic;
    Dbg_Trig_In_11      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_11  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_11     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_11 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_11        : out std_logic;
    Dbg_TrData_11       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_11      : out std_logic;
    Dbg_TrValid_11      : in  std_logic;
    Dbg_AWADDR_11       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_11      : out std_logic;
    Dbg_AWREADY_11      : in  std_logic;
    Dbg_WDATA_11        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_11       : out std_logic;
    Dbg_WREADY_11       : in  std_logic;
    Dbg_BRESP_11        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_11       : in  std_logic;
    Dbg_BREADY_11       : out std_logic;
    Dbg_ARADDR_11       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_11      : out std_logic;
    Dbg_ARREADY_11      : in  std_logic;
    Dbg_RDATA_11        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_11        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_11       : in  std_logic;
    Dbg_RREADY_11       : out std_logic;

    Dbg_Disable_12      : out std_logic;
    Dbg_Clk_12          : out std_logic;
    Dbg_TDI_12          : out std_logic;
    Dbg_TDO_12          : in  std_logic;
    Dbg_Reg_En_12       : out std_logic_vector(0 to 7);
    Dbg_Capture_12      : out std_logic;
    Dbg_Shift_12        : out std_logic;
    Dbg_Update_12       : out std_logic;
    Dbg_Rst_12          : out std_logic;
    Dbg_Trig_In_12      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_12  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_12     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_12 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_12        : out std_logic;
    Dbg_TrData_12       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_12      : out std_logic;
    Dbg_TrValid_12      : in  std_logic;
    Dbg_AWADDR_12       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_12      : out std_logic;
    Dbg_AWREADY_12      : in  std_logic;
    Dbg_WDATA_12        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_12       : out std_logic;
    Dbg_WREADY_12       : in  std_logic;
    Dbg_BRESP_12        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_12       : in  std_logic;
    Dbg_BREADY_12       : out std_logic;
    Dbg_ARADDR_12       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_12      : out std_logic;
    Dbg_ARREADY_12      : in  std_logic;
    Dbg_RDATA_12        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_12        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_12       : in  std_logic;
    Dbg_RREADY_12       : out std_logic;

    Dbg_Disable_13      : out std_logic;
    Dbg_Clk_13          : out std_logic;
    Dbg_TDI_13          : out std_logic;
    Dbg_TDO_13          : in  std_logic;
    Dbg_Reg_En_13       : out std_logic_vector(0 to 7);
    Dbg_Capture_13      : out std_logic;
    Dbg_Shift_13        : out std_logic;
    Dbg_Update_13       : out std_logic;
    Dbg_Rst_13          : out std_logic;
    Dbg_Trig_In_13      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_13  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_13     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_13 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_13        : out std_logic;
    Dbg_TrData_13       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_13      : out std_logic;
    Dbg_TrValid_13      : in  std_logic;
    Dbg_AWADDR_13       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_13      : out std_logic;
    Dbg_AWREADY_13      : in  std_logic;
    Dbg_WDATA_13        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_13       : out std_logic;
    Dbg_WREADY_13       : in  std_logic;
    Dbg_BRESP_13        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_13       : in  std_logic;
    Dbg_BREADY_13       : out std_logic;
    Dbg_ARADDR_13       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_13      : out std_logic;
    Dbg_ARREADY_13      : in  std_logic;
    Dbg_RDATA_13        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_13        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_13       : in  std_logic;
    Dbg_RREADY_13       : out std_logic;

    Dbg_Disable_14      : out std_logic;
    Dbg_Clk_14          : out std_logic;
    Dbg_TDI_14          : out std_logic;
    Dbg_TDO_14          : in  std_logic;
    Dbg_Reg_En_14       : out std_logic_vector(0 to 7);
    Dbg_Capture_14      : out std_logic;
    Dbg_Shift_14        : out std_logic;
    Dbg_Update_14       : out std_logic;
    Dbg_Rst_14          : out std_logic;
    Dbg_Trig_In_14      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_14  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_14     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_14 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_14        : out std_logic;
    Dbg_TrData_14       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_14      : out std_logic;
    Dbg_TrValid_14      : in  std_logic;
    Dbg_AWADDR_14       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_14      : out std_logic;
    Dbg_AWREADY_14      : in  std_logic;
    Dbg_WDATA_14        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_14       : out std_logic;
    Dbg_WREADY_14       : in  std_logic;
    Dbg_BRESP_14        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_14       : in  std_logic;
    Dbg_BREADY_14       : out std_logic;
    Dbg_ARADDR_14       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_14      : out std_logic;
    Dbg_ARREADY_14      : in  std_logic;
    Dbg_RDATA_14        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_14        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_14       : in  std_logic;
    Dbg_RREADY_14       : out std_logic;

    Dbg_Disable_15      : out std_logic;
    Dbg_Clk_15          : out std_logic;
    Dbg_TDI_15          : out std_logic;
    Dbg_TDO_15          : in  std_logic;
    Dbg_Reg_En_15       : out std_logic_vector(0 to 7);
    Dbg_Capture_15      : out std_logic;
    Dbg_Shift_15        : out std_logic;
    Dbg_Update_15       : out std_logic;
    Dbg_Rst_15          : out std_logic;
    Dbg_Trig_In_15      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_15  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_15     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_15 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_15        : out std_logic;
    Dbg_TrData_15       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_15      : out std_logic;
    Dbg_TrValid_15      : in  std_logic;
    Dbg_AWADDR_15       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_15      : out std_logic;
    Dbg_AWREADY_15      : in  std_logic;
    Dbg_WDATA_15        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_15       : out std_logic;
    Dbg_WREADY_15       : in  std_logic;
    Dbg_BRESP_15        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_15       : in  std_logic;
    Dbg_BREADY_15       : out std_logic;
    Dbg_ARADDR_15       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_15      : out std_logic;
    Dbg_ARREADY_15      : in  std_logic;
    Dbg_RDATA_15        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_15        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_15       : in  std_logic;
    Dbg_RREADY_15       : out std_logic;

    Dbg_Disable_16      : out std_logic;
    Dbg_Clk_16          : out std_logic;
    Dbg_TDI_16          : out std_logic;
    Dbg_TDO_16          : in  std_logic;
    Dbg_Reg_En_16       : out std_logic_vector(0 to 7);
    Dbg_Capture_16      : out std_logic;
    Dbg_Shift_16        : out std_logic;
    Dbg_Update_16       : out std_logic;
    Dbg_Rst_16          : out std_logic;
    Dbg_Trig_In_16      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_16  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_16     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_16 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_16        : out std_logic;
    Dbg_TrData_16       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_16      : out std_logic;
    Dbg_TrValid_16      : in  std_logic;
    Dbg_AWADDR_16       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_16      : out std_logic;
    Dbg_AWREADY_16      : in  std_logic;
    Dbg_WDATA_16        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_16       : out std_logic;
    Dbg_WREADY_16       : in  std_logic;
    Dbg_BRESP_16        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_16       : in  std_logic;
    Dbg_BREADY_16       : out std_logic;
    Dbg_ARADDR_16       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_16      : out std_logic;
    Dbg_ARREADY_16      : in  std_logic;
    Dbg_RDATA_16        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_16        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_16       : in  std_logic;
    Dbg_RREADY_16       : out std_logic;

    Dbg_Disable_17      : out std_logic;
    Dbg_Clk_17          : out std_logic;
    Dbg_TDI_17          : out std_logic;
    Dbg_TDO_17          : in  std_logic;
    Dbg_Reg_En_17       : out std_logic_vector(0 to 7);
    Dbg_Capture_17      : out std_logic;
    Dbg_Shift_17        : out std_logic;
    Dbg_Update_17       : out std_logic;
    Dbg_Rst_17          : out std_logic;
    Dbg_Trig_In_17      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_17  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_17     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_17 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_17        : out std_logic;
    Dbg_TrData_17       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_17      : out std_logic;
    Dbg_TrValid_17      : in  std_logic;
    Dbg_AWADDR_17       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_17      : out std_logic;
    Dbg_AWREADY_17      : in  std_logic;
    Dbg_WDATA_17        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_17       : out std_logic;
    Dbg_WREADY_17       : in  std_logic;
    Dbg_BRESP_17        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_17       : in  std_logic;
    Dbg_BREADY_17       : out std_logic;
    Dbg_ARADDR_17       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_17      : out std_logic;
    Dbg_ARREADY_17      : in  std_logic;
    Dbg_RDATA_17        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_17        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_17       : in  std_logic;
    Dbg_RREADY_17       : out std_logic;

    Dbg_Disable_18      : out std_logic;
    Dbg_Clk_18          : out std_logic;
    Dbg_TDI_18          : out std_logic;
    Dbg_TDO_18          : in  std_logic;
    Dbg_Reg_En_18       : out std_logic_vector(0 to 7);
    Dbg_Capture_18      : out std_logic;
    Dbg_Shift_18        : out std_logic;
    Dbg_Update_18       : out std_logic;
    Dbg_Rst_18          : out std_logic;
    Dbg_Trig_In_18      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_18  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_18     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_18 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_18        : out std_logic;
    Dbg_TrData_18       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_18      : out std_logic;
    Dbg_TrValid_18      : in  std_logic;
    Dbg_AWADDR_18       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_18      : out std_logic;
    Dbg_AWREADY_18      : in  std_logic;
    Dbg_WDATA_18        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_18       : out std_logic;
    Dbg_WREADY_18       : in  std_logic;
    Dbg_BRESP_18        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_18       : in  std_logic;
    Dbg_BREADY_18       : out std_logic;
    Dbg_ARADDR_18       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_18      : out std_logic;
    Dbg_ARREADY_18      : in  std_logic;
    Dbg_RDATA_18        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_18        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_18       : in  std_logic;
    Dbg_RREADY_18       : out std_logic;

    Dbg_Disable_19      : out std_logic;
    Dbg_Clk_19          : out std_logic;
    Dbg_TDI_19          : out std_logic;
    Dbg_TDO_19          : in  std_logic;
    Dbg_Reg_En_19       : out std_logic_vector(0 to 7);
    Dbg_Capture_19      : out std_logic;
    Dbg_Shift_19        : out std_logic;
    Dbg_Update_19       : out std_logic;
    Dbg_Rst_19          : out std_logic;
    Dbg_Trig_In_19      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_19  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_19     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_19 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_19        : out std_logic;
    Dbg_TrData_19       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_19      : out std_logic;
    Dbg_TrValid_19      : in  std_logic;
    Dbg_AWADDR_19       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_19      : out std_logic;
    Dbg_AWREADY_19      : in  std_logic;
    Dbg_WDATA_19        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_19       : out std_logic;
    Dbg_WREADY_19       : in  std_logic;
    Dbg_BRESP_19        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_19       : in  std_logic;
    Dbg_BREADY_19       : out std_logic;
    Dbg_ARADDR_19       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_19      : out std_logic;
    Dbg_ARREADY_19      : in  std_logic;
    Dbg_RDATA_19        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_19        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_19       : in  std_logic;
    Dbg_RREADY_19       : out std_logic;

    Dbg_Disable_20      : out std_logic;
    Dbg_Clk_20          : out std_logic;
    Dbg_TDI_20          : out std_logic;
    Dbg_TDO_20          : in  std_logic;
    Dbg_Reg_En_20       : out std_logic_vector(0 to 7);
    Dbg_Capture_20      : out std_logic;
    Dbg_Shift_20        : out std_logic;
    Dbg_Update_20       : out std_logic;
    Dbg_Rst_20          : out std_logic;
    Dbg_Trig_In_20      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_20  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_20     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_20 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_20        : out std_logic;
    Dbg_TrData_20       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_20      : out std_logic;
    Dbg_TrValid_20      : in  std_logic;
    Dbg_AWADDR_20       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_20      : out std_logic;
    Dbg_AWREADY_20      : in  std_logic;
    Dbg_WDATA_20        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_20       : out std_logic;
    Dbg_WREADY_20       : in  std_logic;
    Dbg_BRESP_20        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_20       : in  std_logic;
    Dbg_BREADY_20       : out std_logic;
    Dbg_ARADDR_20       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_20      : out std_logic;
    Dbg_ARREADY_20      : in  std_logic;
    Dbg_RDATA_20        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_20        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_20       : in  std_logic;
    Dbg_RREADY_20       : out std_logic;

    Dbg_Disable_21      : out std_logic;
    Dbg_Clk_21          : out std_logic;
    Dbg_TDI_21          : out std_logic;
    Dbg_TDO_21          : in  std_logic;
    Dbg_Reg_En_21       : out std_logic_vector(0 to 7);
    Dbg_Capture_21      : out std_logic;
    Dbg_Shift_21        : out std_logic;
    Dbg_Update_21       : out std_logic;
    Dbg_Rst_21          : out std_logic;
    Dbg_Trig_In_21      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_21  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_21     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_21 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_21        : out std_logic;
    Dbg_TrData_21       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_21      : out std_logic;
    Dbg_TrValid_21      : in  std_logic;
    Dbg_AWADDR_21       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_21      : out std_logic;
    Dbg_AWREADY_21      : in  std_logic;
    Dbg_WDATA_21        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_21       : out std_logic;
    Dbg_WREADY_21       : in  std_logic;
    Dbg_BRESP_21        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_21       : in  std_logic;
    Dbg_BREADY_21       : out std_logic;
    Dbg_ARADDR_21       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_21      : out std_logic;
    Dbg_ARREADY_21      : in  std_logic;
    Dbg_RDATA_21        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_21        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_21       : in  std_logic;
    Dbg_RREADY_21       : out std_logic;

    Dbg_Disable_22      : out std_logic;
    Dbg_Clk_22          : out std_logic;
    Dbg_TDI_22          : out std_logic;
    Dbg_TDO_22          : in  std_logic;
    Dbg_Reg_En_22       : out std_logic_vector(0 to 7);
    Dbg_Capture_22      : out std_logic;
    Dbg_Shift_22        : out std_logic;
    Dbg_Update_22       : out std_logic;
    Dbg_Rst_22          : out std_logic;
    Dbg_Trig_In_22      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_22  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_22     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_22 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_22        : out std_logic;
    Dbg_TrData_22       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_22      : out std_logic;
    Dbg_TrValid_22      : in  std_logic;
    Dbg_AWADDR_22       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_22      : out std_logic;
    Dbg_AWREADY_22      : in  std_logic;
    Dbg_WDATA_22        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_22       : out std_logic;
    Dbg_WREADY_22       : in  std_logic;
    Dbg_BRESP_22        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_22       : in  std_logic;
    Dbg_BREADY_22       : out std_logic;
    Dbg_ARADDR_22       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_22      : out std_logic;
    Dbg_ARREADY_22      : in  std_logic;
    Dbg_RDATA_22        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_22        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_22       : in  std_logic;
    Dbg_RREADY_22       : out std_logic;

    Dbg_Disable_23      : out std_logic;
    Dbg_Clk_23          : out std_logic;
    Dbg_TDI_23          : out std_logic;
    Dbg_TDO_23          : in  std_logic;
    Dbg_Reg_En_23       : out std_logic_vector(0 to 7);
    Dbg_Capture_23      : out std_logic;
    Dbg_Shift_23        : out std_logic;
    Dbg_Update_23       : out std_logic;
    Dbg_Rst_23          : out std_logic;
    Dbg_Trig_In_23      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_23  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_23     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_23 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_23        : out std_logic;
    Dbg_TrData_23       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_23      : out std_logic;
    Dbg_TrValid_23      : in  std_logic;
    Dbg_AWADDR_23       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_23      : out std_logic;
    Dbg_AWREADY_23      : in  std_logic;
    Dbg_WDATA_23        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_23       : out std_logic;
    Dbg_WREADY_23       : in  std_logic;
    Dbg_BRESP_23        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_23       : in  std_logic;
    Dbg_BREADY_23       : out std_logic;
    Dbg_ARADDR_23       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_23      : out std_logic;
    Dbg_ARREADY_23      : in  std_logic;
    Dbg_RDATA_23        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_23        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_23       : in  std_logic;
    Dbg_RREADY_23       : out std_logic;

    Dbg_Disable_24      : out std_logic;
    Dbg_Clk_24          : out std_logic;
    Dbg_TDI_24          : out std_logic;
    Dbg_TDO_24          : in  std_logic;
    Dbg_Reg_En_24       : out std_logic_vector(0 to 7);
    Dbg_Capture_24      : out std_logic;
    Dbg_Shift_24        : out std_logic;
    Dbg_Update_24       : out std_logic;
    Dbg_Rst_24          : out std_logic;
    Dbg_Trig_In_24      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_24  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_24     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_24 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_24        : out std_logic;
    Dbg_TrData_24       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_24      : out std_logic;
    Dbg_TrValid_24      : in  std_logic;
    Dbg_AWADDR_24       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_24      : out std_logic;
    Dbg_AWREADY_24      : in  std_logic;
    Dbg_WDATA_24        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_24       : out std_logic;
    Dbg_WREADY_24       : in  std_logic;
    Dbg_BRESP_24        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_24       : in  std_logic;
    Dbg_BREADY_24       : out std_logic;
    Dbg_ARADDR_24       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_24      : out std_logic;
    Dbg_ARREADY_24      : in  std_logic;
    Dbg_RDATA_24        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_24        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_24       : in  std_logic;
    Dbg_RREADY_24       : out std_logic;

    Dbg_Disable_25      : out std_logic;
    Dbg_Clk_25          : out std_logic;
    Dbg_TDI_25          : out std_logic;
    Dbg_TDO_25          : in  std_logic;
    Dbg_Reg_En_25       : out std_logic_vector(0 to 7);
    Dbg_Capture_25      : out std_logic;
    Dbg_Shift_25        : out std_logic;
    Dbg_Update_25       : out std_logic;
    Dbg_Rst_25          : out std_logic;
    Dbg_Trig_In_25      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_25  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_25     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_25 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_25        : out std_logic;
    Dbg_TrData_25       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_25      : out std_logic;
    Dbg_TrValid_25      : in  std_logic;
    Dbg_AWADDR_25       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_25      : out std_logic;
    Dbg_AWREADY_25      : in  std_logic;
    Dbg_WDATA_25        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_25       : out std_logic;
    Dbg_WREADY_25       : in  std_logic;
    Dbg_BRESP_25        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_25       : in  std_logic;
    Dbg_BREADY_25       : out std_logic;
    Dbg_ARADDR_25       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_25      : out std_logic;
    Dbg_ARREADY_25      : in  std_logic;
    Dbg_RDATA_25        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_25        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_25       : in  std_logic;
    Dbg_RREADY_25       : out std_logic;

    Dbg_Disable_26      : out std_logic;
    Dbg_Clk_26          : out std_logic;
    Dbg_TDI_26          : out std_logic;
    Dbg_TDO_26          : in  std_logic;
    Dbg_Reg_En_26       : out std_logic_vector(0 to 7);
    Dbg_Capture_26      : out std_logic;
    Dbg_Shift_26        : out std_logic;
    Dbg_Update_26       : out std_logic;
    Dbg_Rst_26          : out std_logic;
    Dbg_Trig_In_26      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_26  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_26     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_26 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_26        : out std_logic;
    Dbg_TrData_26       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_26      : out std_logic;
    Dbg_TrValid_26      : in  std_logic;
    Dbg_AWADDR_26       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_26      : out std_logic;
    Dbg_AWREADY_26      : in  std_logic;
    Dbg_WDATA_26        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_26       : out std_logic;
    Dbg_WREADY_26       : in  std_logic;
    Dbg_BRESP_26        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_26       : in  std_logic;
    Dbg_BREADY_26       : out std_logic;
    Dbg_ARADDR_26       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_26      : out std_logic;
    Dbg_ARREADY_26      : in  std_logic;
    Dbg_RDATA_26        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_26        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_26       : in  std_logic;
    Dbg_RREADY_26       : out std_logic;

    Dbg_Disable_27      : out std_logic;
    Dbg_Clk_27          : out std_logic;
    Dbg_TDI_27          : out std_logic;
    Dbg_TDO_27          : in  std_logic;
    Dbg_Reg_En_27       : out std_logic_vector(0 to 7);
    Dbg_Capture_27      : out std_logic;
    Dbg_Shift_27        : out std_logic;
    Dbg_Update_27       : out std_logic;
    Dbg_Rst_27          : out std_logic;
    Dbg_Trig_In_27      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_27  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_27     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_27 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_27        : out std_logic;
    Dbg_TrData_27       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_27      : out std_logic;
    Dbg_TrValid_27      : in  std_logic;
    Dbg_AWADDR_27       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_27      : out std_logic;
    Dbg_AWREADY_27      : in  std_logic;
    Dbg_WDATA_27        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_27       : out std_logic;
    Dbg_WREADY_27       : in  std_logic;
    Dbg_BRESP_27        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_27       : in  std_logic;
    Dbg_BREADY_27       : out std_logic;
    Dbg_ARADDR_27       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_27      : out std_logic;
    Dbg_ARREADY_27      : in  std_logic;
    Dbg_RDATA_27        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_27        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_27       : in  std_logic;
    Dbg_RREADY_27       : out std_logic;

    Dbg_Disable_28      : out std_logic;
    Dbg_Clk_28          : out std_logic;
    Dbg_TDI_28          : out std_logic;
    Dbg_TDO_28          : in  std_logic;
    Dbg_Reg_En_28       : out std_logic_vector(0 to 7);
    Dbg_Capture_28      : out std_logic;
    Dbg_Shift_28        : out std_logic;
    Dbg_Update_28       : out std_logic;
    Dbg_Rst_28          : out std_logic;
    Dbg_Trig_In_28      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_28  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_28     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_28 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_28        : out std_logic;
    Dbg_TrData_28       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_28      : out std_logic;
    Dbg_TrValid_28      : in  std_logic;
    Dbg_AWADDR_28       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_28      : out std_logic;
    Dbg_AWREADY_28      : in  std_logic;
    Dbg_WDATA_28        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_28       : out std_logic;
    Dbg_WREADY_28       : in  std_logic;
    Dbg_BRESP_28        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_28       : in  std_logic;
    Dbg_BREADY_28       : out std_logic;
    Dbg_ARADDR_28       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_28      : out std_logic;
    Dbg_ARREADY_28      : in  std_logic;
    Dbg_RDATA_28        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_28        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_28       : in  std_logic;
    Dbg_RREADY_28       : out std_logic;

    Dbg_Disable_29      : out std_logic;
    Dbg_Clk_29          : out std_logic;
    Dbg_TDI_29          : out std_logic;
    Dbg_TDO_29          : in  std_logic;
    Dbg_Reg_En_29       : out std_logic_vector(0 to 7);
    Dbg_Capture_29      : out std_logic;
    Dbg_Shift_29        : out std_logic;
    Dbg_Update_29       : out std_logic;
    Dbg_Rst_29          : out std_logic;
    Dbg_Trig_In_29      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_29  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_29     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_29 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_29        : out std_logic;
    Dbg_TrData_29       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_29      : out std_logic;
    Dbg_TrValid_29      : in  std_logic;
    Dbg_AWADDR_29       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_29      : out std_logic;
    Dbg_AWREADY_29      : in  std_logic;
    Dbg_WDATA_29        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_29       : out std_logic;
    Dbg_WREADY_29       : in  std_logic;
    Dbg_BRESP_29        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_29       : in  std_logic;
    Dbg_BREADY_29       : out std_logic;
    Dbg_ARADDR_29       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_29      : out std_logic;
    Dbg_ARREADY_29      : in  std_logic;
    Dbg_RDATA_29        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_29        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_29       : in  std_logic;
    Dbg_RREADY_29       : out std_logic;

    Dbg_Disable_30      : out std_logic;
    Dbg_Clk_30          : out std_logic;
    Dbg_TDI_30          : out std_logic;
    Dbg_TDO_30          : in  std_logic;
    Dbg_Reg_En_30       : out std_logic_vector(0 to 7);
    Dbg_Capture_30      : out std_logic;
    Dbg_Shift_30        : out std_logic;
    Dbg_Update_30       : out std_logic;
    Dbg_Rst_30          : out std_logic;
    Dbg_Trig_In_30      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_30  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_30     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_30 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_30        : out std_logic;
    Dbg_TrData_30       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_30      : out std_logic;
    Dbg_TrValid_30      : in  std_logic;
    Dbg_AWADDR_30       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_30      : out std_logic;
    Dbg_AWREADY_30      : in  std_logic;
    Dbg_WDATA_30        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_30       : out std_logic;
    Dbg_WREADY_30       : in  std_logic;
    Dbg_BRESP_30        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_30       : in  std_logic;
    Dbg_BREADY_30       : out std_logic;
    Dbg_ARADDR_30       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_30      : out std_logic;
    Dbg_ARREADY_30      : in  std_logic;
    Dbg_RDATA_30        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_30        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_30       : in  std_logic;
    Dbg_RREADY_30       : out std_logic;

    Dbg_Disable_31      : out std_logic;
    Dbg_Clk_31          : out std_logic;
    Dbg_TDI_31          : out std_logic;
    Dbg_TDO_31          : in  std_logic;
    Dbg_Reg_En_31       : out std_logic_vector(0 to 7);
    Dbg_Capture_31      : out std_logic;
    Dbg_Shift_31        : out std_logic;
    Dbg_Update_31       : out std_logic;
    Dbg_Rst_31          : out std_logic;
    Dbg_Trig_In_31      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_31  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_31     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_31 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_31        : out std_logic;
    Dbg_TrData_31       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_31      : out std_logic;
    Dbg_TrValid_31      : in  std_logic;
    Dbg_AWADDR_31       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_31      : out std_logic;
    Dbg_AWREADY_31      : in  std_logic;
    Dbg_WDATA_31        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_31       : out std_logic;
    Dbg_WREADY_31       : in  std_logic;
    Dbg_BRESP_31        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_31       : in  std_logic;
    Dbg_BREADY_31       : out std_logic;
    Dbg_ARADDR_31       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_31      : out std_logic;
    Dbg_ARREADY_31      : in  std_logic;
    Dbg_RDATA_31        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_31        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_31       : in  std_logic;
    Dbg_RREADY_31       : out std_logic;

    -- External Trigger Signals
    Ext_Trig_In         : in  std_logic_vector(0 to 3);
    Ext_Trig_Ack_In     : out std_logic_vector(0 to 3);
    Ext_Trig_Out        : out std_logic_vector(0 to 3);
    Ext_Trig_Ack_Out    : in  std_logic_vector(0 to 3);

    -- External JTAG Signals
    Ext_JTAG_DRCK       : out std_logic;
    Ext_JTAG_RESET      : out std_logic;
    Ext_JTAG_SEL        : out std_logic;
    Ext_JTAG_CAPTURE    : out std_logic;
    Ext_JTAG_SHIFT      : out std_logic;
    Ext_JTAG_UPDATE     : out std_logic;
    Ext_JTAG_TDI        : out std_logic;
    Ext_JTAG_TDO        : in  std_logic
  );
end entity MDM_Core;

library IEEE;
use IEEE.numeric_std.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.all;

architecture IMP of MDM_CORE is

  function clock_bits(x : natural) return integer is
  begin
    if C_DBG_REG_ACCESS = 1 and C_USE_BSCAN = 3 and C_DEBUG_INTERFACE > 0 then
      return 0;
    else
      return log2(x);
    end if;
  end function clock_bits;

  subtype trace_word_type  is std_logic_vector(31 downto 0);
  subtype trace_item_type  is std_logic_vector(C_TRACE_DATA_WIDTH - 1 downto 0);
  subtype trace_index_type is integer range 0 to 32 / C_TRACE_DATA_WIDTH - 1;

  function trace_data_mux(trace_word : trace_word_type; data_index : trace_index_type) return trace_item_type is
    constant C_WIDTH      : integer := C_TRACE_DATA_WIDTH;
    variable trace_item   : trace_item_type;
    variable data_index_2 : integer range 0 to 15;
    variable data_index_4 : integer range 0 to 7;
    variable data_index_8 : integer range 0 to 3;
  begin
    case C_WIDTH is
      when 2 =>
        data_index_2 := data_index;
        case data_index_2 is
          when 1  => trace_item := trace_word(1  * C_WIDTH + C_WIDTH - 1 downto 1  * C_WIDTH);
          when 2  => trace_item := trace_word(2  * C_WIDTH + C_WIDTH - 1 downto 2  * C_WIDTH);
          when 3  => trace_item := trace_word(3  * C_WIDTH + C_WIDTH - 1 downto 3  * C_WIDTH);
          when 4  => trace_item := trace_word(4  * C_WIDTH + C_WIDTH - 1 downto 4  * C_WIDTH);
          when 5  => trace_item := trace_word(5  * C_WIDTH + C_WIDTH - 1 downto 5  * C_WIDTH);
          when 6  => trace_item := trace_word(6  * C_WIDTH + C_WIDTH - 1 downto 6  * C_WIDTH);
          when 7  => trace_item := trace_word(7  * C_WIDTH + C_WIDTH - 1 downto 7  * C_WIDTH);
          when 8  => trace_item := trace_word(8  * C_WIDTH + C_WIDTH - 1 downto 8  * C_WIDTH);
          when 9  => trace_item := trace_word(9  * C_WIDTH + C_WIDTH - 1 downto 9  * C_WIDTH);
          when 10 => trace_item := trace_word(10 * C_WIDTH + C_WIDTH - 1 downto 10 * C_WIDTH);
          when 11 => trace_item := trace_word(11 * C_WIDTH + C_WIDTH - 1 downto 11 * C_WIDTH);
          when 12 => trace_item := trace_word(12 * C_WIDTH + C_WIDTH - 1 downto 12 * C_WIDTH);
          when 13 => trace_item := trace_word(13 * C_WIDTH + C_WIDTH - 1 downto 13 * C_WIDTH);
          when 14 => trace_item := trace_word(14 * C_WIDTH + C_WIDTH - 1 downto 14 * C_WIDTH);
          when 15 => trace_item := trace_word(15 * C_WIDTH + C_WIDTH - 1 downto 15 * C_WIDTH);
          when others => trace_item := trace_word(           C_WIDTH - 1 downto            0);
        end case;
      when 4 =>
        data_index_4 := data_index;
        case data_index_4 is
          when 1 => trace_item := trace_word(1 * C_WIDTH + C_WIDTH - 1 downto 1 * C_WIDTH);
          when 2 => trace_item := trace_word(2 * C_WIDTH + C_WIDTH - 1 downto 2 * C_WIDTH);
          when 3 => trace_item := trace_word(3 * C_WIDTH + C_WIDTH - 1 downto 3 * C_WIDTH);
          when 4 => trace_item := trace_word(4 * C_WIDTH + C_WIDTH - 1 downto 4 * C_WIDTH);
          when 5 => trace_item := trace_word(5 * C_WIDTH + C_WIDTH - 1 downto 5 * C_WIDTH);
          when 6 => trace_item := trace_word(6 * C_WIDTH + C_WIDTH - 1 downto 6 * C_WIDTH);
          when 7 => trace_item := trace_word(7 * C_WIDTH + C_WIDTH - 1 downto 7 * C_WIDTH);
          when others => trace_item := trace_word(         C_WIDTH - 1 downto           0);
        end case;
      when 8 =>
        data_index_8 := data_index;
        case data_index_8 is
          when 1 => trace_item := trace_word(1 * C_WIDTH + C_WIDTH - 1 downto 1 * C_WIDTH);
          when 2 => trace_item := trace_word(2 * C_WIDTH + C_WIDTH - 1 downto 2 * C_WIDTH);
          when 3 => trace_item := trace_word(3 * C_WIDTH + C_WIDTH - 1 downto 3 * C_WIDTH);
          when others => trace_item := trace_word(         C_WIDTH - 1 downto           0);
        end case;
      when 16 =>
        if data_index = 0 then
          trace_item := trace_word(              C_WIDTH - 1 downto           0);
        else
          trace_item := trace_word(1 * C_WIDTH + C_WIDTH - 1 downto 1 * C_WIDTH);
        end if;
      -- coverage off
      when others =>
        trace_item := (others => '0');
      -- coverage on
    end case;
    return trace_item;
  end function trace_data_mux;

  -----------------------------------------------------------------------------
  -- Function to calculate the number of halt/resume groups.
  -- When there are less than 4 RISC-V cores connected to the MDM there is the
  -- same number of groups as cores so that each core can have a corresponding
  -- ext trig input/output connected to it. When there's more than four cores
  -- in the design the number of groups are half of the number of cores above
  -- four. This way all possible connections can be achieved. Group 0 is the
  -- same as no group so theres one additional group.
  -----------------------------------------------------------------------------
  function calc_num_groups(mb_dbg_ports : natural) return natural is
  begin
    if mb_dbg_ports < 5 then
      return mb_dbg_ports+1;
    else
      return (5 + (mb_dbg_ports-4)/2);
    end if;
  end function calc_num_groups;

  component xil_scan_reset_control is
  port (
    Scan_En          : in  std_logic;
    Scan_Reset_Sel   : in  std_logic;
    Scan_Reset       : in  std_logic;
    Functional_Reset : in  std_logic;
    Reset            : out std_logic);
  end component xil_scan_reset_control;

  component Arbiter is
    generic (
      C_TARGET  : TARGET_FAMILY_TYPE;
      Size      : natural;
      Size_Log2 : natural);
    port (
      Clk       : in  std_logic;
      Reset     : in  std_logic;

      Enable    : in  std_logic;
      Requests  : in  std_logic_vector(Size-1 downto 0);
      Granted   : out std_logic_vector(Size-1 downto 0);
      Valid_Sel : out std_logic;
      Selected  : out std_logic_vector(Size_Log2-1 downto 0)
    );
  end component Arbiter;

  component SRL_FIFO
    generic (
      C_TARGET    :     TARGET_FAMILY_TYPE;
      C_DATA_BITS :     natural;
      C_DEPTH     :     natural;
      C_USE_SRL16 :     string
    );
    port (
      Clk           : in  std_logic;
      Reset         : in  std_logic;
      FIFO_Write    : in  std_logic;
      Data_In       : in  std_logic_vector(0 to C_DATA_BITS-1);
      FIFO_Read     : in  std_logic;
      Data_Out      : out std_logic_vector(0 to C_DATA_BITS-1);
      FIFO_Full     : out std_logic;
      Data_Exists   : out std_logic
    );
  end component SRL_FIFO;

  component MB_FDRE
    generic (
      C_TARGET : TARGET_FAMILY_TYPE;
      INIT     : bit := '0'
    );
    port (
      Q  : out std_logic;
      C  : in  std_logic;
      CE : in  std_logic;
      D  : in  std_logic;
      R  : in  std_logic
    );
  end component;

  component MB_PLLE2_BASE
    generic (
      C_TARGET           : TARGET_FAMILY_TYPE;
      BANDWIDTH          : string := "OPTIMIZED";
      CLKFBOUT_MULT      : integer := 5;
      CLKFBOUT_PHASE     : real := 0.000;
      CLKIN1_PERIOD      : real := 0.000;
      CLKOUT0_DIVIDE     : integer := 1;
      CLKOUT0_DUTY_CYCLE : real := 0.500;
      CLKOUT0_PHASE      : real := 0.000;
      CLKOUT1_DIVIDE     : integer := 1;
      CLKOUT1_DUTY_CYCLE : real := 0.500;
      CLKOUT1_PHASE      : real := 0.000;
      CLKOUT2_DIVIDE     : integer := 1;
      CLKOUT2_DUTY_CYCLE : real := 0.500;
      CLKOUT2_PHASE      : real := 0.000;
      CLKOUT3_DIVIDE     : integer := 1;
      CLKOUT3_DUTY_CYCLE : real := 0.500;
      CLKOUT3_PHASE      : real := 0.000;
      CLKOUT4_DIVIDE     : integer := 1;
      CLKOUT4_DUTY_CYCLE : real := 0.500;
      CLKOUT4_PHASE      : real := 0.000;
      CLKOUT5_DIVIDE     : integer := 1;
      CLKOUT5_DUTY_CYCLE : real := 0.500;
      CLKOUT5_PHASE      : real := 0.000;
      DIVCLK_DIVIDE      : integer := 1;
      REF_JITTER1        : real := 0.010;
      STARTUP_WAIT       : string := "FALSE"
    );
    port (
      CLKFBOUT : out std_logic;
      CLKOUT0  : out std_logic;
      CLKOUT1  : out std_logic;
      CLKOUT2  : out std_logic;
      CLKOUT3  : out std_logic;
      CLKOUT4  : out std_logic;
      CLKOUT5  : out std_logic;
      LOCKED   : out std_logic;
      CLKFBIN  : in  std_logic;
      CLKIN1   : in  std_logic;
      PWRDWN   : in  std_logic;
      RST      : in  std_logic
    );
  end component;

  component MB_BUFG
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
       O : out std_logic;
       I : in  std_logic
    );
  end component;

  component JTAG_CONTROL
    generic (
      C_TARGET               : TARGET_FAMILY_TYPE;
      C_USE_BSCAN            : integer;
      C_DTM_IDCODE           : integer;
      C_MB_DBG_PORTS         : integer;
      C_USE_CONFIG_RESET     : integer;
      C_USE_SRL16            : string;
      C_DEBUG_INTERFACE      : integer;
      C_DBG_REG_ACCESS       : integer;
      C_DBG_MEM_ACCESS       : integer;
      C_M_AXI_ADDR_WIDTH     : integer;
      C_M_AXI_DATA_WIDTH     : integer;
      C_USE_CROSS_TRIGGER    : integer;
      C_EXT_TRIG_RESET_VALUE : std_logic_vector(0 to 19);
      C_NUM_GROUPS           : integer;
      C_GROUP_BITS           : integer;
      C_TRACE_OUTPUT         : integer;
      C_USE_UART             : integer;
      C_UART_WIDTH           : integer;
      C_EN_WIDTH             : integer := 1
    );
    port (
      -- Global signals
      Config_Reset       : in  std_logic;
      Scan_Reset_Sel     : in  std_logic;
      Scan_Reset         : in  std_logic;
      Scan_En            : in  std_logic;

      Clk                : in  std_logic;
      Rst                : in  std_logic;

      Read_RX_FIFO       : in  std_logic;
      Reset_RX_FIFO      : in  std_logic;
      RX_Data            : out std_logic_vector(0 to C_UART_WIDTH-1);
      RX_Data_Present    : out std_logic;
      RX_Buffer_Full     : out std_logic;

      Write_TX_FIFO      : in  std_logic;
      Reset_TX_FIFO      : in  std_logic;
      TX_Data            : in  std_logic_vector(0 to C_UART_WIDTH-1);
      TX_Buffer_Full     : out std_logic;
      TX_Buffer_Empty    : out std_logic;

      Debug_SYS_Rst      : out std_logic;
      Debug_Rst          : out std_logic;

      -- BSCAN signals
      TDI                : in  std_logic;
      TMS                : in  std_logic;
      TCK                : in  std_logic;
      TDO                : out std_logic;

      -- Bus Master signals
      M_AXI_ACLK         : in  std_logic;
      M_AXI_ARESETn      : in  std_logic;

      Master_rd_start    : out std_logic;
      Master_rd_addr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Master_rd_len      : out std_logic_vector(4 downto 0);
      Master_rd_size     : out std_logic_vector(1 downto 0);
      Master_rd_excl     : out std_logic;
      Master_rd_idle     : in  std_logic;
      Master_rd_resp     : in  std_logic_vector(1 downto 0);
      Master_wr_start    : out std_logic;
      Master_wr_addr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Master_wr_len      : out std_logic_vector(4 downto 0);
      Master_wr_size     : out std_logic_vector(1 downto 0);
      Master_wr_excl     : out std_logic;
      Master_wr_idle     : in  std_logic;
      Master_wr_resp     : in  std_logic_vector(1 downto 0);
      Master_data_rd     : out std_logic;
      Master_data_out    : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Master_data_exists : in  std_logic;
      Master_data_wr     : out std_logic;
      Master_data_in     : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Master_data_empty  : in  std_logic;

      Master_dwr_addr    : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Master_dwr_len     : out std_logic_vector(4 downto 0);
      Master_dwr_done    : in  std_logic;
      Master_dwr_resp    : in  std_logic_vector(1 downto 0);

      -- MicroBlaze Debug Signals
      MB_Debug_Enabled   : out std_logic_vector(C_EN_WIDTH-1 downto 0);
      Dbg_Disable        : out std_logic;
      Dbg_Clk            : out std_logic;
      Dbg_TDI            : out std_logic;
      Dbg_TDO            : in  std_logic;
      Dbg_All_TDO        : in  std_logic;
      Dbg_TDO_I          : in  std_logic_vector(0 to 31);
      Dbg_Reg_En         : out std_logic_vector(0 to 7);
      Dbg_Capture        : out std_logic;
      Dbg_Shift          : out std_logic;
      Dbg_Update         : out std_logic;

      Dbg_data_cmd       : out std_logic;
      Dbg_command        : out std_logic_vector(0 to 7);

      -- MicroBlaze Cross Trigger Signals
      DMCS2_group_hart   : in  std_logic_vector(2 * C_EN_WIDTH * C_GROUP_BITS - 1 downto 0);
      DMCS2_group_ext    : in  std_logic_vector(2 * 4 * C_GROUP_BITS - 1 downto 0);

      Dbg_Trig_In_0      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_1      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_2      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_3      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_4      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_5      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_6      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_7      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_8      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_9      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_10     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_11     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_12     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_13     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_14     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_15     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_16     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_17     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_18     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_19     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_20     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_21     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_22     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_23     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_24     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_25     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_26     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_27     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_28     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_29     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_30     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_31     : in  std_logic_vector(0 to 7);

      Dbg_Trig_Ack_In_0  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_1  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_2  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_3  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_4  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_5  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_6  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_7  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_8  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_9  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_10 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_11 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_12 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_13 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_14 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_15 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_16 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_17 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_18 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_19 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_20 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_21 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_22 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_23 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_24 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_25 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_26 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_27 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_28 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_29 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_30 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_31 : out std_logic_vector(0 to 7);

      Dbg_Trig_Out_0     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_1     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_2     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_3     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_4     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_5     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_6     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_7     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_8     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_9     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_10    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_11    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_12    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_13    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_14    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_15    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_16    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_17    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_18    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_19    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_20    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_21    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_22    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_23    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_24    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_25    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_26    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_27    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_28    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_29    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_30    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_31    : out std_logic_vector(0 to 7);

      Dbg_Trig_Ack_Out_0  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_1  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_2  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_3  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_4  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_5  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_6  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_7  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_8  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_9  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_10 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_11 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_12 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_13 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_14 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_15 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_16 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_17 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_18 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_19 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_20 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_21 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_22 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_23 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_24 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_25 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_26 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_27 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_28 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_29 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_30 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_31 : in  std_logic_vector(0 to 7);

      Ext_Trig_In         : in  std_logic_vector(0 to 3);
      Ext_Trig_Ack_In     : out std_logic_vector(0 to 3);
      Ext_Trig_Out        : out std_logic_vector(0 to 3);
      Ext_Trig_Ack_Out    : in  std_logic_vector(0 to 3)
    );
  end component JTAG_CONTROL;

  signal config_reset_i : std_logic;

  signal enable_interrupts  : std_logic;
  signal read_RX_FIFO       : std_logic;
  signal reset_RX_FIFO      : std_logic;

  signal rx_Data            : std_logic_vector(0 to C_UART_WIDTH-1);
  signal rx_Data_Present    : std_logic;
  signal rx_Buffer_Full     : std_logic;

  signal rx_Data_i          : std_logic_vector(0 to C_UART_WIDTH-1);
  signal rx_Data_Present_i  : std_logic;
  signal rx_Buffer_Full_i   : std_logic;

  signal tx_Data            : std_logic_vector(0 to C_UART_WIDTH-1);
  signal write_TX_FIFO      : std_logic;
  signal reset_TX_FIFO      : std_logic;
  signal tx_Buffer_Full     : std_logic;
  signal tx_Buffer_Empty    : std_logic;

  signal tx_Buffer_Full_i   : std_logic;
  signal tx_Buffer_Empty_i  : std_logic;

  signal SEL     : std_logic;
  signal TDI     : std_logic;
  signal RESET   : std_logic;
  signal SHIFT   : std_logic;
  signal CAPTURE : std_logic;
  signal TDO     : std_logic;

  signal mb_debug_enabled_i : std_logic_vector(C_EN_WIDTH-1 downto 0);
  signal mb_debug_enabled_q : std_logic_vector(C_EN_WIDTH-1 downto 0);
  signal jtag_disable       : std_logic := '1';
  signal disable            : std_logic;

  signal Debug_SYS_Rst_jtag : std_logic;
  signal Debug_SYS_Rst_i    : std_logic;
  signal Debug_Rst_jtag     : std_logic;
  signal Debug_Rst_i        : std_logic;

  -- Interface signals
  signal Dbg_Disable : std_logic_vector(0 to 31);
  signal Dbg_Rst_I   : std_logic_vector(0 to 31);
  signal Dbg_TrClk   : std_logic;
  signal Dbg_TrReady : std_logic_vector(0 to 31);

  -- Serial interface signals
  signal Dbg_Clk            : std_logic;
  signal Dbg_TDI            : std_logic;
  signal Dbg_TDO            : std_logic;
  signal Dbg_All_TDO        : std_logic;
  signal Dbg_Reg_En         : std_logic_vector(0 to 7);
  signal Dbg_Capture        : std_logic;
  signal Dbg_Shift          : std_logic;
  signal Dbg_Update         : std_logic;
  signal Dbg_data_cmd       : std_logic;
  signal Dbg_command        : std_logic_vector(0 to 7);

  subtype Reg_En_TYPE is std_logic_vector(0 to 7);
  type Reg_EN_ARRAY is array(0 to 31) of Reg_En_TYPE;

  signal Dbg_TDO_I    : std_logic_vector(0 to 31);
  signal Dbg_Reg_En_I : Reg_EN_ARRAY;

  -- Parallel interface signals
  signal Dbg_AWADDR    : std_logic_vector(14 downto 2);
  signal Dbg_AWVALID   : std_logic_vector(0  to 31);
  signal Dbg_WVALID    : std_logic_vector(0  to 31);
  signal Dbg_WDATA     : std_logic_vector(31 downto 0);
  signal Dbg_BREADY    : std_logic_vector(0  to 31);
  signal Dbg_ARADDR    : std_logic_vector(14 downto 2);
  signal Dbg_ARVALID   : std_logic_vector(0  to 31);
  signal Dbg_RREADY    : std_logic_vector(0  to 31);

  subtype Resp_TYPE is std_logic_vector(1 downto 0);
  type Resp_ARRAY is array(0 to 31) of Resp_TYPE;

  subtype RData_TYPE is std_logic_vector(31 downto 0);
  type RData_ARRAY is array(0 to 31) of RData_TYPE;

  signal Dbg_AWREADY_I : std_logic_vector(0 to 31);
  signal Dbg_WREADY_I  : std_logic_vector(0 to 31);
  signal Dbg_BRESP_I   : Resp_ARRAY;
  signal Dbg_BVALID_I  : std_logic_vector(0 to 31);
  signal Dbg_ARREADY_I : std_logic_vector(0 to 31);
  signal Dbg_RDATA_I   : RData_ARRAY;
  signal Dbg_RRESP_I   : Resp_ARRAY;
  signal Dbg_RVALID_I  : std_logic_vector(0 to 31);

  signal Dbg_AWVALID_I : std_logic;
  signal Dbg_AWREADY   : std_logic;
  signal Dbg_WVALID_I  : std_logic;
  signal Dbg_WREADY    : std_logic;
  signal Dbg_ARVALID_I : std_logic;
  signal Dbg_ARALL     : std_logic;
  signal Dbg_ARREADY   : std_logic;
  signal Dbg_BRESP     : std_logic;
  signal Dbg_BVALID    : std_logic;
  signal Dbg_RDATA     : std_logic_vector(31 downto 0);
  signal Dbg_RDATA_A   : std_logic_vector(31 downto 0);
  signal Dbg_RRESP     : std_logic;
  signal Dbg_RVALID    : std_logic;

  -- Bus master signals
  signal master_rd_start_i  : std_logic;
  signal master_rd_addr_i   : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal master_rd_len_i    : std_logic_vector(4 downto 0);
  signal master_rd_size_i   : std_logic_vector(1 downto 0);
  signal master_rd_excl_i   : std_logic;
  signal master_wr_start_i  : std_logic;
  signal master_wr_addr_i   : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal master_wr_len_i    : std_logic_vector(4 downto 0);
  signal master_wr_size_i   : std_logic_vector(1 downto 0);
  signal master_wr_excl_i   : std_logic;
  signal master_data_rd_i   : std_logic;
  signal master_data_wr_i   : std_logic;
  signal master_data_in_i   : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
  signal master_data_out_i  : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
  signal master_dwr_addr_i  : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal master_dwr_len_i   : std_logic_vector(4 downto 0);

  -- Bus master signals for Trace PIB/Funnel registers
  signal pib_master_data_out    : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
  signal funnel_master_data_out : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
  
  -- Trace signals
  signal trace_clk_i         : std_logic;
  signal trace_reset         : std_logic;
  signal trace_word          : std_logic_vector(31 downto 0);
  signal trace_valid         : std_logic;
  signal trace_last_word     : std_logic;
  signal trace_started       : std_logic;
  signal trace_ready         : std_logic;
  signal trace_trready       : std_logic;
  signal trace_count_last    : std_logic;

  -- Cross trigger
  constant C_NUM_GROUPS      : integer := calc_num_groups(C_MB_DBG_PORTS);
  constant C_GROUP_BITS      : integer := log2(C_NUM_GROUPS);

  signal dmcs2_grouptype     : std_logic;
  signal dmcs2_dmexttrigger  : std_logic_vector(1 downto 0);
  signal dmcs2_group_hart_i  : std_logic_vector(2 * C_EN_WIDTH * C_GROUP_BITS - 1 downto 0);
  signal dmcs2_group_ext_i   : std_logic_vector(2 *          4 * C_GROUP_BITS - 1 downto 0);
  signal dmcs2_hgselect      : std_logic;

  -- Other signals
  signal bus_rst             : std_logic;
  signal m_axis_areset       : std_logic;

  -- Register acesss
  constant C_UARTRXFIFO      : natural := 0;
  constant C_UARTTXFIFO      : natural := 1;
  constant C_UARTSTATUS      : natural := 2;
  constant C_UARTCONTROL     : natural := 3;
  constant C_PARALLEL        : natural := 4 * boolean'pos(C_USE_UART = 1);
  constant C_TRACE           : natural := 4 * boolean'pos(C_USE_UART = 1) + boolean'pos(C_PARALLEL = 1);

  -- Both via Dbg_AXI and M_AXI
  constant C_USE_DBG_MEM_ACCESS : boolean :=
    (C_DEBUG_INTERFACE > 0) and
    (C_DBG_MEM_ACCESS = 1 or C_TRACE_OUTPUT = 4 or (C_TRACE_OUTPUT = 1 and C_DBG_REG_ACCESS = 0));
  constant C_USE_DBG_AXI : boolean :=
    (C_DBG_MEM_ACCESS = 0 and (C_TRACE_OUTPUT = 4 or (C_TRACE_OUTPUT = 1 and C_DBG_REG_ACCESS = 0)));

  signal uart_ip2bus_rdack   : std_logic;
  signal uart_ip2bus_wrack   : std_logic;
  signal uart_ip2bus_error   : std_logic;
  signal uart_ip2bus_data    : std_logic_vector(C_REG_DATA_WIDTH-1 downto 0);

  signal dbgreg_ip2bus_rdack : std_logic;
  signal dbgreg_ip2bus_wrack : std_logic;
  signal dbgreg_ip2bus_error : std_logic;
  signal dbgreg_ip2bus_data  : std_logic_vector(C_REG_DATA_WIDTH-1 downto 0);

  signal trace_ip2bus_rdack : std_logic;
  signal trace_ip2bus_wrack : std_logic;
  signal trace_ip2bus_error : std_logic;
  signal trace_ip2bus_data  : std_logic_vector(C_REG_DATA_WIDTH-1 downto 0);

begin  -- architecture IMP

  m_axis_areset <= not M_AXIS_ARESETN;

  config_reset_i <= Config_Reset when C_USE_CONFIG_RESET /= 0 else '0';

  -----------------------------------------------------------------------------
  -- External JTAG signals
  -----------------------------------------------------------------------------
  Ext_JTAG_DRCK    <= DRCK;
  Ext_JTAG_TDI     <= TDI;
  Ext_JTAG_CAPTURE <= CAPTURE;
  Ext_JTAG_SHIFT   <= SHIFT;
  Ext_JTAG_UPDATE  <= UPDATE;
  Ext_JTAG_RESET   <= RESET;
  Ext_JTAG_SEL     <= '0';

  -----------------------------------------------------------------------------
  -- UART
  -----------------------------------------------------------------------------
  Use_Uart : if (C_USE_UART = 1) generate
    -- Read Only
    signal status_Reg : std_logic_vector(7 downto 0);
    -- bit 4 enable_interrupts
    -- bit 3 tx_Buffer_Full
    -- bit 2 tx_Buffer_Empty
    -- bit 1 rx_Buffer_Full
    -- bit 0 rx_Data_Present

    -- Write Only
    -- Control Register
    -- bit 7-5 Dont'Care
    -- bit 4   enable_interrupts
    -- bit 3   Dont'Care
    -- bit 2   Clear Ext BRK signal
    -- bit 1   Reset_RX_FIFO
    -- bit 0   Reset_TX_FIFO

    signal tx_Buffer_Empty_Pre : std_logic;
    signal reset_RX_FIFO_i     : std_logic;
    signal reset_TX_FIFO_i     : std_logic;
  begin
    ---------------------------------------------------------------------------
    -- Acknowledgement and error signals
    ---------------------------------------------------------------------------
    uart_ip2bus_rdack <= bus2ip_rdce(C_UARTRXFIFO) or bus2ip_rdce(C_UARTSTATUS) or bus2ip_rdce(C_UARTTXFIFO)
                         or bus2ip_rdce(C_UARTCONTROL);

    uart_ip2bus_wrack <= bus2ip_wrce(C_UARTTXFIFO) or bus2ip_wrce(C_UARTCONTROL) or bus2ip_wrce(C_UARTRXFIFO)
                         or bus2ip_wrce(C_UARTSTATUS);

    uart_ip2bus_error <= ((bus2ip_rdce(C_UARTRXFIFO) and not rx_Data_Present) or
                          (bus2ip_wrce(C_UARTTXFIFO) and tx_Buffer_Full) );

    ---------------------------------------------------------------------------
    -- Status register
    ---------------------------------------------------------------------------
    status_Reg(0) <= rx_Data_Present;
    status_Reg(1) <= rx_Buffer_Full;
    status_Reg(2) <= tx_Buffer_Empty;
    status_Reg(3) <= tx_Buffer_Full;
    status_Reg(4) <= enable_interrupts;
    status_Reg(7 downto 5) <= "000";

    ---------------------------------------------------------------------------
    -- Control Register
    ---------------------------------------------------------------------------
    CTRL_REG_DFF : process (bus2ip_clk) is
    begin
      if bus2ip_clk'event and bus2ip_clk = '1' then -- rising clock edge
        if bus2ip_resetn = '0' then                 -- synchronous reset (active low)
          enable_interrupts <= '0';
          reset_RX_FIFO_i   <= '1';
          reset_TX_FIFO_i   <= '1';
        elsif (bus2ip_wrce(C_UARTCONTROL) = '1') then  -- Control Register is reg 3
           enable_interrupts <= bus2ip_data(4); -- Bit 4 in control reg
           reset_RX_FIFO_i   <= bus2ip_data(1); -- Bit 1 in control reg
           reset_TX_FIFO_i   <= bus2ip_data(0); -- Bit 0 in control reg
        else
          reset_RX_FIFO_i <= '0';
          reset_TX_FIFO_i <= '0';
        end if;
      end if;
    end process CTRL_REG_DFF;

    reset_RX_FIFO <= reset_RX_FIFO_i or config_reset_i;
    reset_TX_FIFO <= reset_TX_FIFO_i or config_reset_i;
    
    ---------------------------------------------------------------------------
    -- Read bus interface
    ---------------------------------------------------------------------------
    READ_MUX : process (status_reg, bus2ip_rdce, rx_Data) is
    begin
      uart_ip2bus_data <= (others => '0');
      if (bus2ip_rdce(C_UARTSTATUS) = '1') then    -- Status register is reg 2
        uart_ip2bus_data(status_reg'length-1 downto 0) <= status_reg;
      elsif (bus2ip_rdce(C_UARTRXFIFO) = '1') then -- RX FIFO is reg 0
        uart_ip2bus_data(C_UART_WIDTH-1 downto 0) <= rx_Data;
      end if;
    end process READ_MUX;

    ---------------------------------------------------------------------------
    -- Write bus interface
    ---------------------------------------------------------------------------
    tx_Data <= bus2ip_data(C_UART_WIDTH-1 downto 0);

    ---------------------------------------------------------------------------
    -- Read and write pulses to the FIFOs
    ---------------------------------------------------------------------------
    write_TX_FIFO <= bus2ip_wrce(C_UARTTXFIFO) or config_reset_i;  -- TX FIFO is reg 1
    read_RX_FIFO  <= bus2ip_rdce(C_UARTRXFIFO);                    -- RX FIFO is reg 0

    -- Sample the tx_Buffer_Empty signal in order to detect a rising edge
    TX_Buffer_Empty_FDRE : MB_FDRE
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        Q  => tx_Buffer_Empty_Pre,
        C  => bus2ip_clk,
        CE => '1',
        D  => tx_Buffer_Empty,
        R  => write_TX_FIFO);

    ---------------------------------------------------------------------------
    -- Interrupt handling
    ---------------------------------------------------------------------------
    Interrupt <= enable_interrupts and ( rx_Data_Present or
                                         ( tx_Buffer_Empty and
                                           not tx_Buffer_Empty_Pre ) );
  end generate Use_UART;

  No_UART : if (C_USE_UART = 0) generate
  begin
    uart_ip2bus_rdack <= '0';
    uart_ip2bus_wrack <= '0';
    uart_ip2bus_error <= '0';
    uart_ip2bus_data  <= (others => '0');

    Interrupt         <= '0';

    reset_TX_FIFO     <= '1';
    reset_RX_FIFO     <= '1';
    enable_interrupts <= '0';
    tx_Data           <= (others => '0');
    write_TX_FIFO     <= '0';
    read_RX_FIFO      <= '0';
  end generate No_UART;

  -----------------------------------------------------------------------------
  -- AXI bus interface
  -----------------------------------------------------------------------------
  ip2bus_rdack <= uart_ip2bus_rdack or dbgreg_ip2bus_rdack or trace_ip2bus_rdack;
  ip2bus_wrack <= uart_ip2bus_wrack or dbgreg_ip2bus_wrack or trace_ip2bus_wrack;
  ip2bus_error <= uart_ip2bus_error or dbgreg_ip2bus_error or trace_ip2bus_error;
  ip2bus_data  <= uart_ip2bus_data  or dbgreg_ip2bus_data  or trace_ip2bus_data;

  bus_rst <= not bus2ip_resetn;

  Use_Parallel_Access : if (C_DEBUG_INTERFACE > 0) generate
    subtype command_type        is std_logic_vector(7 downto 0);

    constant C_INIT             : std_logic_vector(31 downto 0) := X"00000001";

    constant C_HARTSELLEN       : natural := log2(C_EN_WIDTH);
    constant C_NONEXIST         : boolean := C_EN_WIDTH >  2 and C_EN_WIDTH /= 4  and
                                             C_EN_WIDTH /= 8 and C_EN_WIDTH /= 16 and
                                             C_EN_WIDTH /= 32;

    -- There is a debug module and it conforms to version 1.0 of "RISC-V Debug Support"
    constant C_DM_VERSION       : natural := 3;

    constant C_DMCONTROL_ADDR   : command_type := X"10";
    constant C_DMSTATUS_ADDR    : command_type := X"11";
    constant C_HARTINFO_ADDR    : command_type := X"12";
    constant C_HAWINDOW_ADDR    : command_type := X"15";
    constant C_CONFSTRPTR0_ADDR : command_type := X"19";
    constant C_CONFSTRPTR1_ADDR : command_type := X"1A";
    constant C_CONFSTRPTR2_ADDR : command_type := X"1B";
    constant C_CONFSTRPTR3_ADDR : command_type := X"1C";
    constant C_NEXTDM_ADDR      : command_type := X"1D";
    constant C_DMCS2_ADDR       : command_type := X"32";
    constant C_SBCS_ADDR        : command_type := X"38";
    constant C_SBADDRESS0_ADDR  : command_type := X"39";
    constant C_SBADDRESS1_ADDR  : command_type := X"3A";
    constant C_SBDATA0_ADDR     : command_type := X"3C";
    constant C_HALTSUM0_ADDR    : command_type := X"40";

    constant C_UART_READ_BYTE     : command_type := X"70";
    constant C_UART_WRITE_BYTE    : command_type := X"70";
    constant C_UART_READ_STATUS   : command_type := X"71";
    constant C_UART_WRITE_CONTROL : command_type := X"71";
  
    constant C_DMSTATUS_NDMRESETPENDING : natural := 24;
    constant C_DMSTATUS_IMPEBREAK       : natural := 22;
    constant C_DMSTATUS_ALLHAVERESET : natural := 19;
    constant C_DMSTATUS_ANYHAVERESET : natural := 18;
    constant C_DMSTATUS_ALLRESUMEACK : natural := 17;
    constant C_DMSTATUS_ANYRESUMEACK : natural := 16;
    constant C_DMSTATUS_ANYNONEXIST  : natural := 14;
    constant C_DMSTATUS_ALLUNAVAIL   : natural := 13;
    constant C_DMSTATUS_ANYUNAVAIL   : natural := 12;
    constant C_DMSTATUS_ALLRUNNING   : natural := 11;
    constant C_DMSTATUS_ANYRUNNING   : natural := 10;
    constant C_DMSTATUS_ALLHALTED    : natural := 9;
    constant C_DMSTATUS_ANYHALTED    : natural := 8;
    constant C_DMSTATUS_AUTHENTICATED   : natural := 7;
    constant C_DMSTATUS_HASRESETHALTREQ : natural := 5;

    signal reg_write_data       : std_logic_vector(31 downto 0);
    signal reg_addr             : std_logic_vector(7 downto 0);

    signal dmcontrol_reg_en     : std_logic;
    signal dmstatus_reg_en      : std_logic;
    signal hartinfo_reg_en      : std_logic;
    signal hawindow_reg_en      : std_logic;
    signal confstrptr0_reg_en   : std_logic;
    signal confstrptr1_reg_en   : std_logic;
    signal confstrptr2_reg_en   : std_logic;
    signal confstrptr3_reg_en   : std_logic;
    signal nextdm_reg_en        : std_logic;
    signal dmcs2_reg_en         : std_logic;
    signal sbcs_reg_en          : std_logic;
    signal sbaddress0_reg_en    : std_logic;
    signal sbaddress1_reg_en    : std_logic;
    signal sbdata0_reg_en       : std_logic;
    signal haltsum0_reg_en      : std_logic;

    signal dmcontrol_reg_we     : std_logic;
    signal hawindow_reg_we      : std_logic;

    signal dmcontrol            : std_logic_vector(29 downto 0);
    signal dmcontrol_hartreset  : std_logic;
    signal dmcontrol_hasel      : std_logic;
    signal dmcontrol_hartsel    : std_logic_vector(C_HARTSELLEN - 1 downto 0);
    signal dmcontrol_hartsel_val: natural range 0 to 31;
    signal dmcontrol_ndmreset   : std_logic;
    signal dmcontrol_dmactive   : std_logic;
    signal dmstatus             : std_logic_vector(24 downto 0);
    signal hawindow             : std_logic_vector(C_EN_WIDTH - 1 downto 0) := C_INIT(C_EN_WIDTH - 1 downto 0);
    signal dmcs2                : std_logic_vector(11 downto 0);
    signal sbcs                 : std_logic_vector(31 downto 0);
    signal sbaddress0           : std_logic_vector(31 downto 0);
    signal sbaddress1           : std_logic_vector(31 downto 0);
    signal sbdata0              : std_logic_vector(31 downto 0);
    signal haltsum0             : std_logic_vector(C_EN_WIDTH - 1 downto 0);
 
    signal uart_read_byte       : std_logic;
    signal uart_read_status     : std_logic;
    signal fifo_DOut            : std_logic_vector(0 to C_UART_WIDTH-1);
    signal status_reg           : std_logic_vector(0 to 7) := (others => '0');

    signal mb_debug_enabled_i   : std_logic_vector(C_EN_WIDTH-1 downto 0);
    signal bus2ip_reset         : std_logic;
    signal bus_with_scan_reset  : std_logic;

    signal dbg_waccess          : std_logic;
    signal dbg_raccess          : std_logic;
    signal wrack_bus            : std_logic;
    signal wrack_bus_1          : std_logic;
    signal rdack_bus            : std_logic;
    signal rdack_bus_1          : std_logic;
    signal wrack_nonexist       : std_logic;
    signal rdack_nonexist       : std_logic;
  begin

    -----------------------------------------------------------------------------
    --
    -- Implement parallel Debug Module (DM) registers
    --
    -- See "RISC-V External Debug Support, Version 0.13.2", Chapter 3
    --
    -----------------------------------------------------------------------------

    dmcontrol_reg_en   <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_DMCONTROL_ADDR   else '0';
    dmstatus_reg_en    <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_DMSTATUS_ADDR    else '0';
    hartinfo_reg_en    <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_HARTINFO_ADDR    else '0';
    hawindow_reg_en    <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_HAWINDOW_ADDR    else '0';
    confstrptr0_reg_en <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_CONFSTRPTR0_ADDR else '0';
    confstrptr1_reg_en <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_CONFSTRPTR1_ADDR else '0';
    confstrptr2_reg_en <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_CONFSTRPTR2_ADDR else '0';
    confstrptr3_reg_en <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_CONFSTRPTR3_ADDR else '0';
    nextdm_reg_en      <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_NEXTDM_ADDR      else '0';
    dmcs2_reg_en       <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_DMCS2_ADDR       else '0';
    sbcs_reg_en        <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_SBCS_ADDR        else '0';
    sbaddress0_reg_en  <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_SBADDRESS0_ADDR  else '0';
    sbaddress1_reg_en  <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_SBADDRESS1_ADDR  else '0';
    sbdata0_reg_en     <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_SBDATA0_ADDR     else '0';
    haltsum0_reg_en    <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_HALTSUM0_ADDR    else '0';

    dmcontrol_reg_we   <= bus2ip_wrce(C_PARALLEL) when reg_addr = C_DMCONTROL_ADDR   else '0';
    hawindow_reg_we    <= bus2ip_wrce(C_PARALLEL) when reg_addr = C_HAWINDOW_ADDR    else '0';

    uart_read_byte     <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_UART_READ_BYTE   else '0';
    uart_read_status   <= bus2ip_rdce(C_PARALLEL) when reg_addr = C_UART_READ_STATUS else '0';

    reg_addr           <= '0' & bus2ip_addr(8 downto 2);
    reg_write_data     <= bus2ip_data;

    -------------------------------------------------------------------------------
    -- Handling the dmcontrol register
    -------------------------------------------------------------------------------
    DMControl_Write : process (bus2ip_clk)
    begin
      if bus2ip_clk'event and bus2ip_clk = '1' then
        if bus2ip_resetn = '0' or dmcontrol_dmactive = '0' then
          dmcontrol_hartreset <= '0';
          dmcontrol_hasel     <= '0';
          dmcontrol_hartsel   <= (others => '0');
          dmcontrol_ndmreset  <= '0';
        else
          if dmcontrol_reg_we = '1' then
            dmcontrol_hartreset <= reg_write_data(29);
            if C_MB_DBG_PORTS > 1 then
              dmcontrol_hasel   <= reg_write_data(26);
              dmcontrol_hartsel <= reg_write_data(C_HARTSELLEN + 15 downto 16);
            else
              dmcontrol_hartsel <= (others => '0');
              dmcontrol_hasel   <= '0';
            end if;
            dmcontrol_ndmreset  <= reg_write_data(1);
          end if;
        end if;
        if bus2ip_resetn = '0' then
          dmcontrol_dmactive  <= '0';
        else
          if dmcontrol_reg_we = '1' then
            dmcontrol_dmactive  <= reg_write_data(0);
          end if;
        end if;
      end if;
    end process DMControl_Write;

    Debug_Rst_i     <= dmcontrol_hartreset;
    Debug_SYS_Rst_i <= dmcontrol_ndmreset;

    DMControl_Handle : process(dmcontrol_hartreset, dmcontrol_hasel,
                               dmcontrol_hartsel, dmcontrol_ndmreset, dmcontrol_dmactive)
    begin
      dmcontrol     <= (others => '0');
      dmcontrol(29) <= dmcontrol_hartreset;
      dmcontrol(26) <= dmcontrol_hasel;
      for I in 0 to C_HARTSELLEN - 1 loop
        dmcontrol(I + 16) <= dmcontrol_hartsel(I);
      end loop;
      dmcontrol(1)  <= dmcontrol_ndmreset;
      dmcontrol(0)  <= dmcontrol_dmactive;
    end process DMControl_Handle;

    -------------------------------------------------------------------------------
    -- Handling the dmstatus and hawindow registers
    -------------------------------------------------------------------------------
    More_Than_One_MB : if (C_MB_DBG_PORTS > 1) generate
      signal dmstatus_anyall : std_logic_vector(19 downto 8);
    begin

      dmcontrol_hartsel_val <= to_integer(unsigned(dmcontrol_hartsel));

      DMStatus_AnyAllHandle : process (Dbg_RDATA, Dbg_RDATA_A) is
      begin
        dmstatus_anyall <= (others => '0');
        dmstatus_anyall(C_DMSTATUS_ALLHAVERESET) <= Dbg_RDATA_A(C_DMSTATUS_ALLHAVERESET);
        dmstatus_anyall(C_DMSTATUS_ANYHAVERESET) <= Dbg_RDATA(C_DMSTATUS_ANYHAVERESET);
        dmstatus_anyall(C_DMSTATUS_ALLRESUMEACK) <= Dbg_RDATA_A(C_DMSTATUS_ALLRESUMEACK);
        dmstatus_anyall(C_DMSTATUS_ANYRESUMEACK) <= Dbg_RDATA(C_DMSTATUS_ANYRESUMEACK);
        dmstatus_anyall(C_DMSTATUS_ALLUNAVAIL)   <= Dbg_RDATA_A(C_DMSTATUS_ALLUNAVAIL);
        dmstatus_anyall(C_DMSTATUS_ANYUNAVAIL)   <= Dbg_RDATA(C_DMSTATUS_ANYUNAVAIL);
        dmstatus_anyall(C_DMSTATUS_ALLRUNNING)   <= Dbg_RDATA_A(C_DMSTATUS_ALLRUNNING);
        dmstatus_anyall(C_DMSTATUS_ANYRUNNING)   <= Dbg_RDATA(C_DMSTATUS_ANYRUNNING);
        dmstatus_anyall(C_DMSTATUS_ALLHALTED)    <= Dbg_RDATA_A(C_DMSTATUS_ALLHALTED);
        dmstatus_anyall(C_DMSTATUS_ANYHALTED)    <= Dbg_RDATA(C_DMSTATUS_ANYHALTED);
      end process DMStatus_AnyAllHandle;

      DMStatus_Handle : process (Dbg_RDATA, dmstatus_anyall, dmcontrol_hasel, dmcontrol_ndmreset, dmcontrol_hartsel_val) is
      begin
        dmstatus <= Dbg_RDATA(dmstatus'range);
        dmstatus(dmstatus_anyall'range)  <= dmstatus_anyall;
        if C_NONEXIST and dmcontrol_hasel = '0' and dmcontrol_hartsel_val >= C_EN_WIDTH then
          dmstatus <= (others => '0');
          dmstatus(C_DMSTATUS_IMPEBREAK)       <= '1';
            dmstatus(C_DMSTATUS_ANYNONEXIST) <= '1';
          dmstatus(C_DMSTATUS_AUTHENTICATED)   <= '1';
          dmstatus(C_DMSTATUS_HASRESETHALTREQ) <= '1';
          dmstatus(3 downto 0)                 <= std_logic_vector(to_unsigned(C_DM_VERSION, 4));
          end if;
        dmstatus(C_DMSTATUS_NDMRESETPENDING) <= dmcontrol_ndmreset;
      end process DMStatus_Handle;

      Hawindow_Write : process (bus2ip_clk)
      begin
        if bus2ip_clk'event and bus2ip_clk = '1' then
          if bus2ip_resetn = '0' or dmcontrol_dmactive = '0' then
            hawindow    <= (others => '0');
            hawindow(0) <= '1';
          elsif hawindow_reg_we = '1' then
            hawindow <= reg_write_data(C_MB_DBG_PORTS - 1 downto 0);
          end if;
        end if;
      end process Hawindow_Write;

      Debug_Enable_Handle : process (dmcontrol_hasel, dmcontrol_hartsel_val, hawindow)
      begin
        mb_debug_enabled_i <= (others => '0');
        -- Multiple: Enable harts selected by the hart array mask register
        if dmcontrol_hasel = '1' then
          mb_debug_enabled_i(C_MB_DBG_PORTS-1 downto 0) <= hawindow(C_MB_DBG_PORTS-1 downto 0);
        end if;
        -- Single or multiple: Enable the hart selected by hartsel
        if C_NONEXIST then
          if dmcontrol_hartsel_val < C_EN_WIDTH then
            mb_debug_enabled_i(dmcontrol_hartsel_val) <= '1';
          end if;
        else
          mb_debug_enabled_i(dmcontrol_hartsel_val) <= '1';
        end if;
      end process Debug_Enable_Handle;

    end generate More_Than_One_MB;

    Only_One_MB : if (C_MB_DBG_PORTS = 1) generate
    begin

      DMStatus_Handle : process (Dbg_RDATA, dmcontrol_ndmreset) is
      begin
      dmstatus <= Dbg_RDATA(dmstatus'range);
        dmstatus(C_DMSTATUS_NDMRESETPENDING) <= dmcontrol_ndmreset;
      end process DMStatus_Handle;

      hawindow(0)           <= '1';
      mb_debug_enabled_i(0) <= '1';
      dmcontrol_hartsel_val <=  0;
    end generate Only_One_MB;

    No_MB : if (C_MB_DBG_PORTS = 0) generate
    begin
      dmstatus              <= (others => '0');
      hawindow(0)           <= '0';
      mb_debug_enabled_i(0) <= '0';
      dmcontrol_hartsel_val <=  0;
    end generate No_MB;

    mb_debug_enabled_q <= mb_debug_enabled_i;

    -------------------------------------------------------------------------------
    -- Handling the haltsum0 register
    -------------------------------------------------------------------------------

    Haltsum0_Handle : process (Dbg_RDATA_I)
    begin
      haltsum0 <= (others => '0');
      for I in 0 to C_EN_WIDTH - 1 loop
        haltsum0(I) <= Dbg_RDATA_I(I)(0);
      end loop;
    end process Haltsum0_Handle;

    -------------------------------------------------------------------------------
    -- Read Mux
    -------------------------------------------------------------------------------

    Read_Mux : process(S_AXI_ARADDR, dmcontrol, dmcontrol_reg_en, dmstatus, dmstatus_reg_en,
                       hawindow, hawindow_reg_en, uart_read_byte, fifo_DOut, uart_read_status,
                       status_reg, sbcs, sbcs_reg_en, sbaddress0, sbaddress0_reg_en,
                       sbaddress1, sbaddress1_reg_en, sbdata0, sbdata0_reg_en, haltsum0,
                       haltsum0_reg_en, hartinfo_reg_en, confstrptr0_reg_en, confstrptr1_reg_en,
                       confstrptr2_reg_en, confstrptr3_reg_en, nextdm_reg_en, dmcs2, dmcs2_reg_en, Dbg_RDATA)
    begin
      dbgreg_ip2bus_data <= (others => '0');
      if dmcontrol_reg_en = '1' then
        dbgreg_ip2bus_data(dmcontrol'range) <= dmcontrol;
      elsif dmstatus_reg_en = '1' then
        dbgreg_ip2bus_data(dmstatus'range) <= dmstatus;
      elsif hawindow_reg_en = '1' then
        dbgreg_ip2bus_data(hawindow'range) <= hawindow;
      elsif uart_read_byte = '1' and C_USE_UART = 1 then
        dbgreg_ip2bus_data(C_UART_WIDTH-1 downto 0) <= fifo_DOut;
      elsif uart_read_status = '1' and C_USE_UART = 1 then
        dbgreg_ip2bus_data(status_reg'length-1 downto 0) <= status_reg;
      elsif sbcs_reg_en = '1' and C_DBG_MEM_ACCESS = 1 then
        dbgreg_ip2bus_data <= sbcs;
      elsif sbaddress0_reg_en = '1' and C_DBG_MEM_ACCESS = 1 then
        dbgreg_ip2bus_data <= sbaddress0;
      elsif sbaddress1_reg_en = '1' and C_DBG_MEM_ACCESS = 1 and C_M_AXI_ADDR_WIDTH > 32 then
        dbgreg_ip2bus_data <= sbaddress1;
      elsif sbdata0_reg_en = '1' and C_DBG_MEM_ACCESS = 1 then
        dbgreg_ip2bus_data <= sbdata0;
      elsif haltsum0_reg_en = '1' then
        dbgreg_ip2bus_data(haltsum0'range) <= haltsum0;
      elsif dmcs2_reg_en = '1' and C_USE_CROSS_TRIGGER > 0 then
        dbgreg_ip2bus_data(dmcs2'range) <= dmcs2;
      elsif hartinfo_reg_en = '1'    or
            confstrptr0_reg_en = '1' or
            confstrptr1_reg_en = '1' or
            confstrptr2_reg_en = '1' or
            confstrptr3_reg_en = '1' or
            nextdm_reg_en = '1'      or
            (uart_read_status = '1' and C_USE_UART = 0) or
            (sbcs_reg_en = '1' and C_DBG_MEM_ACCESS = 0) then
        dbgreg_ip2bus_data <= (others => '0');
      else
        dbgreg_ip2bus_data <= Dbg_RDATA;
      end if;
    end process Read_Mux;

    -----------------------------------------------------------------------------
    -- Disable handling
    -----------------------------------------------------------------------------

    bus2ip_reset <= not bus2ip_resetn;

    bus_with_scan_reset_i: xil_scan_reset_control
      port map (
        Scan_En          => Scan_En,
        Scan_Reset_Sel   => Scan_Reset_Sel,
        Scan_Reset       => Scan_Reset,
        Functional_Reset => bus2ip_reset,
        Reset            => bus_with_scan_reset);

    Disable_Updating : process (bus2ip_clk, bus_with_scan_reset)
    begin
      if bus_with_scan_reset = '1' then
        disable <= '1';
      elsif bus2ip_clk'event and bus2ip_clk = '1' then
        if bus2ip_rdce(C_PARALLEL) = '1' or bus2ip_wrce(C_PARALLEL) = '1' then
          disable <= '0';
        end if;
      end if;
    end process Disable_Updating;

    Use_UART : if (C_USE_UART = 1) generate
      signal uart_write_byte    : std_logic;
      signal uart_write_control : std_logic;
      signal execute_rd         : std_logic;
      signal execute_wr         : std_logic;
      signal fifo_Data_Present  : std_logic;
      signal fifo_Read          : std_logic;
      signal fifo_Write         : std_logic;
      signal rx_Buffer_Full_I   : std_logic;
      signal rx_Data_Present_I  : std_logic;
      signal tx_Buffer_Full_I   : std_logic;
      signal tx_buffered        : std_logic;
      signal tx_fifo_wen        : std_logic;
    begin

      uart_write_byte    <= bus2ip_wrce(C_PARALLEL) when reg_addr = C_UART_WRITE_BYTE    else '0';
      uart_write_control <= bus2ip_wrce(C_PARALLEL) when reg_addr = C_UART_WRITE_CONTROL else '0';

      -----------------------------------------------------------------------------
      -- Control Register
      -----------------------------------------------------------------------------

      Control_Register : process (bus2ip_clk)
      begin
        if bus2ip_clk'event and bus2ip_clk = '1' then
          if bus2ip_resetn = '0' then
            tx_buffered <= '0';  -- Non-buffered mode on startup
          elsif uart_write_control = '1' then
            tx_buffered <= reg_write_data(0);
          end if;
        end if;
      end process Control_Register;

      Execute_UART_Read_Command : process (bus2ip_clk)
      begin  -- process Execute_UART_Read_Command
        if bus2ip_clk'event and bus2ip_clk = '1' then
          if bus2ip_resetn = '0' then
            execute_rd <= '0';
          else
            execute_rd <= uart_read_byte;
          end if;
        end if;
      end process Execute_UART_Read_Command;

      fifo_Read <= uart_read_byte and not execute_rd;

      Execute_UART_Write_Command : process (bus2ip_clk)
      begin  -- process Execute_UART_Write_Command
        if bus2ip_clk'event and bus2ip_clk = '1' then
          if bus2ip_resetn = '0' then
            execute_wr <= '0';
          else
            execute_wr <= uart_write_byte;
          end if;
        end if;
      end process Execute_UART_Write_Command;

      fifo_Write <= uart_write_byte and not execute_wr;

    -----------------------------------------------------------------------------
      -- Status Register
      -----------------------------------------------------------------------------

      status_reg(7) <= fifo_Data_Present;
      status_reg(6) <= tx_Buffer_Full_I;
      status_reg(5) <= not rx_Data_Present_I;
      status_reg(4) <= rx_Buffer_Full_I;
      status_reg(3) <= '0';
      status_reg(2) <= '0';
      status_reg(1) <= '0';
      status_reg(0) <= '0';

      ---------------------------------------------------------------------------
      -- FIFO
      ---------------------------------------------------------------------------
      RX_FIFO_I : SRL_FIFO
        generic map (
          C_TARGET    => C_TARGET,                                 -- [TARGET_FAMILY_TYPE]
          C_DATA_BITS => C_UART_WIDTH,                             -- [natural]
          C_DEPTH     => 16,                                       -- [natural]
          C_USE_SRL16 => C_USE_SRL16)                              -- [string]
        port map (
          Clk         => bus2ip_clk,                               -- [in  std_logic]
          Reset       => reset_RX_FIFO,                            -- [in  std_logic]
          FIFO_Write  => fifo_Write,                               -- [in  std_logic]
          Data_In     => reg_write_data(C_UART_WIDTH-1 downto 0),  -- [in  std_logic_vector(0 to C_DATA_BITS-1)]
          FIFO_Read   => read_RX_FIFO,                             -- [in  std_logic]
          Data_Out    => rx_Data,                                  -- [out std_logic_vector(0 to C_DATA_BITS-1)]
          FIFO_Full   => rx_Buffer_Full_I,                         -- [out std_logic]
          Data_Exists => rx_Data_Present_I);                       -- [out std_logic]

      rx_Data_Present <= rx_Data_Present_I;
      rx_Buffer_Full  <= rx_Buffer_Full_I;

      -- Discard transmit data until buffered mode enabled.
      tx_fifo_wen <= Write_TX_FIFO and tx_buffered;

      TX_FIFO_I : SRL_FIFO
        generic map (
          C_TARGET    => C_TARGET,            -- [TARGET_FAMILY_TYPE]
          C_DATA_BITS => C_UART_WIDTH,        -- [natural]
          C_DEPTH     => 16,                  -- [natural]
          C_USE_SRL16 => C_USE_SRL16)         -- [string]
        port map (
          Clk         => bus2ip_clk,          -- [in  std_logic]
          Reset       => Reset_TX_FIFO,       -- [in  std_logic]
          FIFO_Write  => tx_fifo_wen,         -- [in  std_logic]
          Data_In     => TX_Data,             -- [in  std_logic_vector(0 to C_DATA_BITS-1)]
          FIFO_Read   => fifo_Read,           -- [in  std_logic]
          Data_Out    => fifo_DOut,           -- [out std_logic_vector(0 to C_DATA_BITS-1)]
          FIFO_Full   => TX_Buffer_Full_I,    -- [out std_logic]
          Data_Exists => fifo_Data_Present);  -- [out std_logic]

      TX_Buffer_Full  <= TX_Buffer_Full_I;
      TX_Buffer_Empty <= not fifo_Data_Present;

    end generate Use_UART;

    No_UART : if (C_USE_UART = 0) generate
    begin
      rx_Data         <= (others => '0');
      rx_Data_Present <= '0';
      rx_BUFFER_FULL  <= '0';
      tx_Buffer_Full  <= '0';
      tx_Buffer_Empty <= '1';
    end generate No_UART;

    -------------------------------------------------------------------------------
    -- Cross trigger section
    -------------------------------------------------------------------------------
    Use_Cross_Trigger : if (C_USE_CROSS_TRIGGER = 1) generate
      type dmcs2_group_hart_t is array (boolean, C_EN_WIDTH - 1 downto 0) of std_logic_vector(C_GROUP_BITS-1 downto 0);
      type dmcs2_group_ext_t  is array (boolean, 3 downto 0) of std_logic_vector(C_GROUP_BITS-1 downto 0);

      signal dmcs2_reg_we     : std_logic;
      signal dmcs2_group_hart : dmcs2_group_hart_t;
      signal dmcs2_group_ext  : dmcs2_group_ext_t;
    begin

      dmcs2_reg_we <= bus2ip_wrce(0) when reg_addr = C_DMCS2_ADDR else '0';

      -------------------------------------------------------------------------------
      -- Handling the dmcs2 register
      -------------------------------------------------------------------------------
      DMCS2_Write : process (bus2ip_clk)
      begin
        if bus2ip_clk'event and bus2ip_clk = '1' then
          if bus2ip_resetn = '0' or dmcontrol_dmactive = '0' then
            dmcs2_grouptype    <= '0';
            dmcs2_dmexttrigger <= (others => '0');
            dmcs2_group_hart   <= (others => (others => (others => '0')));
            dmcs2_group_ext    <= (others => (others => (others => '0')));
            dmcs2_hgselect     <= '0';
          elsif dmcs2_reg_we = '1'  then
            dmcs2_grouptype    <= reg_write_data(11);
            dmcs2_dmexttrigger <= reg_write_data(8 downto 7);
            dmcs2_hgselect     <= reg_write_data(0);
            if reg_write_data(1) = '1' and unsigned(reg_write_data(6 downto 2)) < C_NUM_GROUPS then
              if reg_write_data(0) = '0' then
                -- Operate on harts
                for i in 0 to C_EN_WIDTH-1 loop
                  if (dmcontrol_hasel = '1' and hawindow(i) = '1' and C_MB_DBG_PORTS > 1) or
                     dmcontrol_hartsel_val = i then
                    dmcs2_group_hart(reg_write_data(11) = '1', i) <=
                      reg_write_data(C_GROUP_BITS + 1 downto 2);
                  end if;
                end loop;
              else
                -- Operate on external triggers
                dmcs2_group_ext(reg_write_data(11) = '1', to_integer(unsigned(reg_write_data(8 downto 7)))) <=
                  reg_write_data(C_GROUP_BITS + 1 downto 2);
              end if;
            end if;
          end if;
        end if;
      end process DMCS2_Write;

      DMCS2_Handle : process(dmcs2_grouptype, dmcs2_dmexttrigger, dmcs2_hgselect,
                             dmcs2_group_hart, dmcs2_group_ext, dmcontrol_hartsel_val)
      begin
        dmcs2                 <= (others => '0');
        dmcs2(11)             <= dmcs2_grouptype;
        dmcs2(8 downto 7)     <= dmcs2_dmexttrigger;
        if dmcs2_hgselect = '0' then
          -- Group of the hart specified by hartsel
          dmcs2(C_GROUP_BITS + 1 downto 2) <= dmcs2_group_hart(dmcs2_grouptype = '1', dmcontrol_hartsel_val);
        else
          -- Group of the external trigger selected by dmexttrigger
          dmcs2(C_GROUP_BITS + 1 downto 2)   <= dmcs2_group_ext(dmcs2_grouptype = '1', to_integer(unsigned(dmcs2_dmexttrigger)));
        end if;
        dmcs2(0)              <= dmcs2_hgselect;
      end process DMCS2_Handle;

      Assign_DMCS2 : process(dmcs2_group_hart, dmcs2_group_ext) is
      begin  -- process Assign_DMCS2
        for I in 0 to 1 loop
          for K in 0 to C_EN_WIDTH - 1 loop
            dmcs2_group_hart_i((I * C_EN_WIDTH + K + 1) * C_GROUP_BITS - 1 downto
                               (I * C_EN_WIDTH + K) * C_GROUP_BITS) <= dmcs2_group_hart(I = 1, K);
          end loop;
          for K in 0 to 3 loop
            dmcs2_group_ext_i((I * 4 + K + 1) * C_GROUP_BITS - 1 downto
                              (I * 4 + K) * C_GROUP_BITS) <= dmcs2_group_ext(I = 1, K);
          end loop;
        end loop;
      end process Assign_DMCS2;

    end generate Use_Cross_Trigger;

    No_Cross_Trigger : if (C_USE_CROSS_TRIGGER = 0) generate
    begin
      dmcs2_grouptype    <= '0';
      dmcs2_dmexttrigger <= (others => '0');
      dmcs2_group_hart_i <= (others => '0');
      dmcs2_group_ext_i  <= (others => '0');
      dmcs2_hgselect     <= '0';

      dmcs2              <= (others => '0');
    end generate No_Cross_Trigger;

    -----------------------------------------------------------------------------
    -- Bus Master Debug Memory Access section
    -----------------------------------------------------------------------------

    Use_Dbg_Mem_Access : if (C_USE_DBG_MEM_ACCESS) generate
      signal sbcs_reg_we       : std_logic;
      signal sbaddress0_reg_we : std_logic;
      signal sbaddress1_reg_we : std_logic;
      signal sbdata0_reg_we    : std_logic;

      signal sbaddress         : std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
      signal sbbusyerror       : std_logic;
      signal sbbusy            : std_logic;
      signal sbreadonaddr      : std_logic;
      signal sbaccess          : std_logic_vector(2 downto 0) := "010";
      signal sbautoincrement   : std_logic;
      signal sbreadondata      : std_logic;
      signal sberror           : std_logic_vector(2 downto 0) := "000";

      signal wr_access         : std_logic;
      signal execute           : std_logic;
      signal do_execute        : std_logic;
      signal master_error      : std_logic;
      signal rd_resp_zero      : boolean;
      signal wr_resp_zero      : boolean;
      signal access_idle       : std_logic;
    begin

      sbcs_reg_we       <= bus2ip_wrce(C_PARALLEL) when reg_addr = C_SBCS_ADDR       else '0';
      sbaddress0_reg_we <= bus2ip_wrce(C_PARALLEL) when reg_addr = C_SBADDRESS0_ADDR else '0';
      sbaddress1_reg_we <= bus2ip_wrce(C_PARALLEL) when reg_addr = C_SBADDRESS1_ADDR else '0';
      sbdata0_reg_we    <= bus2ip_wrce(C_PARALLEL) when reg_addr = C_SBDATA0_ADDR    else '0';

      -------------------------------------------------------------------------------
      -- Handling the sbcs register
      -------------------------------------------------------------------------------
      SBCS_Write : process (bus2ip_clk)
      begin
        if bus2ip_clk'event and bus2ip_clk = '1' then
          if bus2ip_resetn = '0' or dmcontrol_dmactive = '0' then
            sbreadonaddr     <= '0';
            sbaccess         <= "010";
            sbautoincrement  <= '0';
            sbreadondata     <= '0';
          elsif sbcs_reg_we = '1' then
            sbreadonaddr     <= reg_write_data(20);
            sbaccess         <= reg_write_data(19 downto 17);
            sbautoincrement  <= reg_write_data(16);
            sbreadondata     <= reg_write_data(15);
          end if;
        end if;
      end process SBCS_Write;

      SBCS_Handle : process(sbbusyerror, sbbusy, sbreadonaddr, sbaccess,
                            sbautoincrement, sbreadondata, sberror)
      begin
        sbcs               <= (others => '0');
        sbcs(31 downto 29) <= "001";            -- sbversion = 1
        sbcs(22)           <= sbbusyerror;
        sbcs(21)           <= sbbusy;
        sbcs(20)           <= sbreadonaddr;
        sbcs(19 downto 17) <= sbaccess;
        sbcs(16)           <= sbautoincrement;  
        sbcs(15)           <= sbreadondata;
        sbcs(14 downto 12) <= sberror;
        sbcs(11 downto 5)  <= "0100000";         -- sbasize = 32
        sbcs(4 downto 0)   <= "00100";           -- sbaccess32
      end process SBCS_Handle;

      -------------------------------------------------------------------------------
      -- Handling write to sbaddress and sbdata registers
      -------------------------------------------------------------------------------

      SBAddressData_Write : process (bus2ip_clk)
      begin
        if bus2ip_clk'event and bus2ip_clk = '1' then
          if bus2ip_resetn = '0' or dmcontrol_dmactive = '0' then
            sbaddress        <= (others => '0');
            sbdata0          <= (others => '0');
            sbbusyerror      <= '0';
            sbbusy           <= '0';
            sberror          <= "000";
            wr_access        <= '0';
          else
            -- Clear busy when access completed
            if access_idle = '1' then
              sbbusy <= '0';
            end if;

            -- Write address when allowed and set flags
            if sbaddress0_reg_we = '1' then
              if access_idle = '0' then
                sbbusyerror <= '1';
              else
                sbaddress(31 downto 0) <= reg_write_data(31 downto 0);
                if sbaccess /= "010" then
                  sberror <= "100";
                elsif sberror = "000" and sbbusyerror = '0' and sbreadonaddr = '1' then
                  sbbusy    <= '1';
                  wr_access <= '0';
                end if;
              end if;
            end if;

            if sbaddress1_reg_we = '1' and C_M_AXI_ADDR_WIDTH > 32 then
              if access_idle = '0' then
                sbbusyerror <= '1';
              else
                sbaddress(C_M_AXI_ADDR_WIDTH - 1 downto 32) <= reg_write_data(C_M_AXI_ADDR_WIDTH - 32 - 1 downto 0);
              end if;
            end if;

          -- Write data when allowed and set flags
            if sbdata0_reg_we = '1' then
              if sberror = "000" and sbbusyerror = '0' then
                if access_idle = '0' then
                  sbbusyerror <= '1';
                else
                  sbdata0 <= reg_write_data(31 downto 0);
                  if sbaccess /= "010" then
                    sberror <= "100";
                  else
                    sbbusy    <= '1';
                    wr_access <= '1';
                  end if;
                end if;
              end if;
            end if;

            -- Save read data and set flags when reading data
            if sbdata0_reg_en = '1' then
              sbdata0 <= Master_data_out;
              if sberror = "000" and sbbusyerror = '0' then
                if access_idle = '0' then
                  sbbusyerror <= '1';
                elsif sbaccess /= "010" then
                  sberror <= "100";
                elsif sbreadondata = '1' then
                  sbbusy    <= '1';
                  wr_access <= '0';
                end if;
              end if;
            end if;

            -- Auto increment address when read or write succeeded
            if sbbusy = '1' and access_idle = '1' and sbautoincrement = '1' and master_error = '0' then
              sbaddress <= std_logic_vector(unsigned(sbaddress) + 4);
            end if;

            -- Set error status
            if sbbusy = '1' and master_error = '1' then
              sberror  <= "111";  -- TODO: report "010" for AXI decode error
            end if;

            -- Clear sbbusyerror and sberror when write-to-clear to SBCS
            if sbcs_reg_we = '1' then
              sbbusyerror <= sbbusyerror and not reg_write_data(22);
              sberror     <= sberror and not reg_write_data(14 downto 12);
            end if;
          end if;
        end if;
      end process SBAddressData_Write;

      sbaddress0 <= sbaddress(31 downto 0);

      Use_Ext_Addr: if C_M_AXI_ADDR_WIDTH > 32 generate
      begin
        Assign_Addr: process (sbaddress) is
        begin  -- process Assign_Addr
          sbaddress1 <= (others => '0');
          sbaddress1(C_M_AXI_ADDR_WIDTH - 33 downto 0) <= sbaddress(C_M_AXI_ADDR_WIDTH - 1 downto 32);
        end process Assign_Addr;
      end generate Use_Ext_Addr;

      No_Ext_Addr: if C_M_AXI_ADDR_WIDTH <= 32 generate
      begin
        sbaddress1 <= (others => '0');
      end generate No_Ext_Addr;

      master_rd_addr_i <= sbaddress;
      master_wr_addr_i <= sbaddress;
      master_data_in_i <= sbdata0;     -- TODO: other data widths than 32

      Master_rd_addr <= master_rd_addr_i;
      Master_wr_addr <= master_wr_addr_i;
      Master_data_in <= master_data_in_i;

      -------------------------------------------------------------------------------
      -- Handling start of bus access
      -------------------------------------------------------------------------------

      Start_Bus_Access : process (bus2ip_clk)
      begin
        if bus2ip_clk'event and bus2ip_clk = '1' then
          if bus2ip_resetn = '0' or dmcontrol_dmactive = '0' then
            execute <= '0';
          elsif do_execute = '1' then
            execute <= '0';
          else
            -- Start a read when allowed and sbreadonaddr is set
            if sbaddress0_reg_we = '1' then
              if sberror = "000" and sbbusyerror = '0' and
                 access_idle = '1' and sbaccess = "010" and sbreadonaddr = '1' then
                execute <= '1';
              end if;
            end if;

            -- Start a write when allowed
            if sbdata0_reg_we = '1' then
              if sberror = "000" and sbbusyerror = '0' and
                 access_idle = '1' and sbaccess = "010" then
                execute <= '1';
              end if;
            end if;

            -- Start a read when allowed and sbreadondata is set
            if sbdata0_reg_en = '1' then
              if sberror = "000" and sbbusyerror = '0' and
                 access_idle = '1' and sbaccess = "010" and sbreadondata = '1' then
                execute <= '1';
              end if;
            end if;
          end if;
        end if;
      end process Start_Bus_Access;

      access_idle <= Master_rd_idle and Master_wr_idle;

      -------------------------------------------------------------------------------
      -- Command execution in M_AXI_ACLK region
      -------------------------------------------------------------------------------
      Execute_Data_Command : process (M_AXI_ACLK)
      begin  -- process Execute_Data_Command
        if M_AXI_ACLK'event and M_AXI_ACLK = '1' then
          if M_AXI_ARESETn = '0' then
            do_execute      <= '0';
            Master_data_wr  <= '0';
            Master_data_rd  <= '0';
            Master_rd_start <= '0';
            Master_wr_start <= '0';
            master_error    <= '0';
            rd_resp_zero    <= true;
            wr_resp_zero    <= true;
          else
            Master_data_wr  <= '0';
            Master_data_rd  <= '0';
            Master_wr_start <= '0';
            Master_rd_start <= '0';
            if (do_execute = '0') and (execute = '1') then
              if (Master_rd_idle = '1') and (Master_wr_idle = '1') then
                if (wr_access = '1') then
                  Master_data_wr  <= '1';
                  Master_wr_start <= '1';
                end if;
                if (wr_access = '0') then
                  Master_data_rd  <= '1';
                  Master_rd_start <= '1';
                end if;
                master_error <= '0';
              end if;
            end if;
            do_execute <= execute;

            if (Master_rd_resp /= "00" and rd_resp_zero) or (Master_wr_resp /= "00" and wr_resp_zero) then
              master_error <= '1';
            end if;
            rd_resp_zero <= Master_rd_resp = "00";
            wr_resp_zero <= Master_wr_resp = "00";
          end if;
        end if;
      end process Execute_Data_Command;

      Master_rd_size  <= sbaccess(1 downto 0);
      Master_wr_size  <= sbaccess(1 downto 0);
      Master_rd_len   <= (others => '0');
      Master_wr_len   <= (others => '0');

      -- Unused
      Master_rd_excl  <= '0';
      Master_wr_excl  <= '0';
      Master_dwr_addr <= (others => '0');
      Master_dwr_len  <= (others => '0');
    end generate Use_Dbg_Mem_Access;

    No_Dbg_Mem_Access : if (not C_USE_DBG_MEM_ACCESS) generate
    begin
      sbcs              <= (others => '0');
      sbaddress0        <= (others => '0');
      sbaddress1        <= (others => '0');
      sbdata0           <= (others => '0');

      Master_rd_start   <= '0';
      Master_rd_addr    <= (others => '0');
      Master_rd_len     <= (others => '0');
      Master_rd_size    <= (others => '0');
      Master_rd_excl    <= '0';
      Master_wr_start   <= '0';
      Master_wr_addr    <= (others => '0');
      Master_wr_len     <= (others => '0');
      Master_wr_size    <= (others => '0');
      Master_wr_excl    <= '0';
      Master_data_rd    <= '0';
      Master_data_wr    <= '0';
      Master_data_in    <= (others => '0');
      Master_dwr_addr   <= (others => '0');
      Master_dwr_len    <= (others => '0');
    end generate No_Dbg_Mem_Access;


    -------------------------------------------------------------------------------
    -- Debug bus handling
    -------------------------------------------------------------------------------

    Dbg_AWADDR  <= "00000" & reg_addr;
    Dbg_WDATA   <= reg_write_data;
    Dbg_ARADDR  <= "00000" & reg_addr;

    Valid_DFF: process (bus2ip_clk) is
      variable dbg_raccess_1 : std_logic;
    begin
      if bus2ip_clk'event and bus2ip_clk = '1' then  -- rising clock edge
        if bus2ip_resetn = '0' then                  -- synchronous reset (active low)
          Dbg_AWVALID_I  <= '0';
          Dbg_WVALID_I   <= '0';
          Dbg_ARVALID_I  <= '0';
          Dbg_ARALL      <= '0';
          dbg_waccess    <= '0';
          dbg_raccess    <= '0';
          rdack_nonexist <= '0';
          dbg_raccess_1  := '0';
        else
          if Dbg_AWREADY = '1' then
            Dbg_AWVALID_I <= '0';
          end if;
          if Dbg_WREADY = '1' then
            Dbg_WVALID_I <= '0';
          end if;
          if bus2ip_wrce(C_PARALLEL) = '1' and dbg_waccess = '0' then
            Dbg_AWVALID_I <= '1';
            Dbg_WVALID_I  <= '1';
            dbg_waccess   <= '1';
          end if;

          if Dbg_ARREADY = '1' then
            Dbg_ARVALID_I <= '0';
            Dbg_ARALL     <= '0';
          end if;
          if bus2ip_rdce(C_PARALLEL) = '1' and dbg_raccess = '0' then
            Dbg_ARVALID_I <= '1';
            Dbg_ARALL     <= dmstatus_reg_en or haltsum0_reg_en;
            dbg_raccess   <= '1';
          end if;
          if C_NONEXIST then
            rdack_nonexist <= dmstatus(C_DMSTATUS_ANYNONEXIST) and dbg_raccess_1 and not rdack_nonexist;
            dbg_raccess_1  := dbg_raccess;
          end if;

          if (Dbg_BVALID = '1' or wrack_nonexist = '1') and (dbg_waccess = '1') then
            dbg_waccess <= '0';
          end if;
          if (Dbg_RVALID = '1' or rdack_nonexist = '1') and (dbg_raccess = '1') then
            dbg_raccess <= '0';
          end if;
        end if;
      end if;
    end process Valid_DFF;

    Ack_DFF: process (bus2ip_clk) is
    begin
      if bus2ip_clk'event and bus2ip_clk = '1' then  -- rising clock edge
        if bus2ip_resetn = '0' then                  -- synchronous reset (active low)
          wrack_bus_1 <= '0';
          rdack_bus_1 <= '0';
        else
          wrack_bus_1 <= wrack_bus;
          rdack_bus_1 <= rdack_bus;
        end if;
      end if;
    end process Ack_DFF;

    wrack_nonexist <= dmstatus(C_DMSTATUS_ANYNONEXIST) when C_NONEXIST else
                      '0';

    wrack_bus <= (Dbg_BVALID or wrack_nonexist) and dbg_waccess and not wrack_bus_1;
    rdack_bus <= (Dbg_RVALID or rdack_nonexist) and dbg_raccess and not rdack_bus_1;

    dbgreg_ip2bus_wrack <= wrack_bus;
    dbgreg_ip2bus_rdack <= rdack_bus;
    dbgreg_ip2bus_error <= (Dbg_BRESP and dbg_waccess) or (Dbg_RRESP and dbg_raccess);

    -- Unused
    JTAG_TDO      <= '0';
    SEL           <= '0';
    TDI           <= '0';
    RESET         <= '0';
    SHIFT         <= '0';
    CAPTURE       <= '0';
    Dbg_TDO       <= '0';
    Dbg_All_TDO   <= '0';
  end generate Use_Parallel_Access;

  Use_Serial_Access : if (C_DEBUG_INTERFACE = 0) generate
  begin
    Debug_Rst_i        <= Debug_Rst_jtag;
    Debug_SYS_Rst_i    <= Debug_SYS_Rst_jtag;

    dbgreg_ip2bus_data  <= (others => '0');
    dbgreg_ip2bus_wrack <= '0';
    dbgreg_ip2bus_rdack <= '0';
    dbgreg_ip2bus_error <= '0';

    mb_debug_enabled_q <= mb_debug_enabled_i;

    SEL            <= JTAG_SEL;
    TDI            <= JTAG_TDI;
    RESET          <= JTAG_RESET;
    SHIFT          <= JTAG_SHIFT;
    CAPTURE        <= JTAG_CAPTURE;
    JTAG_TDO       <= TDO;
  end generate Use_Serial_Access;

  -- Unused
  DbgReg_DRCK    <= '0';
  DbgReg_UPDATE  <= '0';
  DbgReg_Select  <= '0';
  Master_dwr_data  <= (others => '0');
  Master_dwr_start <= '0';

  -----------------------------------------------------------------------------
  -- Trace: External Output, AXI Stream Output and AXI Master Output
  -----------------------------------------------------------------------------
  Use_Trace : if (C_TRACE_OUTPUT > 0 and C_TRACE_OUTPUT /= 4) generate
    subtype REG_ADDR_TYPE          is std_logic_vector(11 downto 0);
    --Register address constants
    -- Funnel component resides at base address 4K and
    -- PIB Sink component start at 8K.
    constant C_TRFUNNELCONTROL_ADDR : REG_ADDR_TYPE := "010000000000";
    constant C_TRFUNNELIMPL_ADDR    : REG_ADDR_TYPE := "010000000001";
    constant C_TRPIBCONTROL_ADDR    : REG_ADDR_TYPE := "100000000000";
    constant C_TRPIBIMPL_ADDR       : REG_ADDR_TYPE := "100000000001";

    type TrData_Type is array(0 to 31) of std_logic_vector(0 to 35);

    signal Dbg_TrData         : TrData_Type;
    signal Dbg_TrValid        : std_logic_vector(31 downto 0);
    signal trace_trdata       : std_logic_vector(35 downto 0);
    signal reg_addr           : REG_ADDR_TYPE;
    signal funnel_ip2bus_data : std_logic_vector(C_REG_DATA_WIDTH-1 downto 0);
    signal pib_ip2bus_data    : std_logic_vector(C_REG_DATA_WIDTH-1 downto 0);
    signal rd_mdm_reg         : boolean;
    signal wr_mdm_reg         : boolean;
    signal rd_reg_addr        : std_logic_vector(11 downto 0);
    signal wr_reg_addr        : std_logic_vector(11 downto 0);
  begin

    reg_addr           <= bus2ip_addr(13 downto 2);

    Use_Dbg_AXI: if C_USE_DBG_AXI generate
    begin
      rd_mdm_reg  <= master_rd_addr_i(20 downto 14) = "0000000";
      wr_mdm_reg  <= master_wr_addr_i(20 downto 14) = "0000000";
      rd_reg_addr <= master_rd_addr_i(13 downto  2);
      wr_reg_addr <= master_wr_addr_i(13 downto  2);
    end generate Use_Dbg_AXI;

    
    trace_ip2bus_rdack <= bus2ip_rdce(C_TRACE);
    trace_ip2bus_wrack <= bus2ip_wrce(C_TRACE);
    trace_ip2bus_error <= '0';
    trace_ip2bus_data  <= funnel_ip2bus_data or pib_ip2bus_data;
    
    -- Implement Trace Funnel (RISC-V Trace Control Interface Specification, Chapter 8)
    More_Than_One_MB : if (C_MB_DBG_PORTS > 1) generate
      constant C_LOG2_MB_DBG_PORTS : natural := log2(C_MB_DBG_PORTS);

      signal index              : std_logic_vector(C_LOG2_MB_DBG_PORTS-1 downto 0);
      signal valid              : std_logic;
      signal idle               : std_logic;
      signal trace_index        : std_logic_vector(4  downto 0);
      signal end_trace_mess     : std_logic;
      signal trace_last_word_d  : std_logic;
      signal requests           : std_logic_vector(C_MB_DBG_PORTS-1 downto 0);
      
      -----------------------------------------------------------------------------
      -- Trace Funnel registers
      -----------------------------------------------------------------------------
      -- trFunnelControl register
      signal trFunnelActive     : std_logic;
      signal trFunnelEnable     : std_logic;
      signal trFunnelEmpty      : std_logic;
      -- trFunnelImpl register
      --  Bit   Name              Value
      --  3: 0  trFunnelVerMajor   1
      --  7: 4  trFunnelVerMinor   0
      -- 11: 8  trFunnelCompType   8
      constant TRFUNNELIMPL     : std_logic_vector(31 downto 0) := X"00000801";

      signal trFunnelControl_en : std_logic;
      signal trFunnelControl_we : std_logic;
      signal trFunnelImpl_en    : std_logic;

    begin

      trFunnelEmpty <= '1' when trFunnelActive = '0' or Dbg_TrValid(C_EN_WIDTH-1 downto 0) = (C_EN_WIDTH-1 downto 0 => '0') else '0';
      Use_S_AXI: if C_DBG_REG_ACCESS = 1 generate
      begin
        -- Trace Funnel registers: trFunnelControl, trFunnelImpl
        trFunnelControl_en  <= bus2ip_rdce(C_TRACE) when reg_addr = C_TRFUNNELCONTROL_ADDR else '0';
        trFunnelImpl_en     <= bus2ip_rdce(C_TRACE) when reg_addr = C_TRFUNNELIMPL_ADDR    else '0';
        trFunnelControl_we  <= bus2ip_wrce(C_TRACE) when reg_addr = C_TRFUNNELCONTROL_ADDR else '0';

        Handle_trFunnelControl_Reg_Write : process (bus2ip_clk) is
        begin  -- process Handle_trFunnelControl_Reg_Write
          if bus2ip_clk'event and bus2ip_clk = '1' then  -- rising clock edge
            if bus2ip_resetn = '0' then                  -- synchronous reset (active high)
              trFunnelActive <= '0';
              trFunnelEnable <= '0';
            else
              if trFunnelControl_we = '1' then  -- trFunnelControl register is reg 4
                trFunnelActive <= bus2ip_data(0);
                trFunnelEnable <= bus2ip_data(1);
              end if;
            end if;
          end if;
        end process Handle_trFunnelControl_Reg_Write;

        Handle_trFunnel_Reg_Read : process (trFunnelActive, trFunnelEnable, trFunnelEmpty,
                                 trFunnelControl_en, trFunnelImpl_en) is
        begin  -- Handle_Reg_Read
          funnel_ip2bus_data <= (others => '0');
          if (trFunnelControl_en = '1') then  -- trFunnelControl register is reg 4
            funnel_ip2bus_data(0) <= trFunnelActive;
            funnel_ip2bus_data(1) <= trFunnelEnable;
            funnel_ip2bus_data(3) <= trFunnelEmpty;
          elsif (trFunnelImpl_en = '1') then  -- trFunnelImpl register is reg 5
            funnel_ip2bus_data    <= TRFUNNELIMPL;
          end if;
        end process Handle_trFunnel_Reg_Read;
        -- Unused signal
        funnel_master_data_out               <= (others => '0');
      end generate Use_S_AXI;


      Use_Dbg_AXI: if C_DBG_REG_ACCESS = 0 generate
      begin
        -- Trace Funnel registers: trFunnelControl, trFunnelImpl
        trFunnelControl_en <= master_rd_start_i when rd_mdm_reg and rd_reg_addr = C_TRFUNNELCONTROL_ADDR else '0';
        trFunnelImpl_en    <= master_rd_start_i when rd_mdm_reg and rd_reg_addr = C_TRFUNNELIMPL_ADDR    else '0';
        trFunnelControl_we <= master_wr_start_i when wr_mdm_reg and wr_reg_addr = C_TRFUNNELCONTROL_ADDR else '0';

        Handle_trFunnelControl_Reg_Write : process (M_AXI_ACLK) is
        begin  -- process Handle_trFunnelControl_Reg_Write
          if M_AXI_ACLK'event and M_AXI_ACLK = '1' then
            if M_AXI_ARESETn = '0' then
              trFunnelActive    <= '0';
              trFunnelEnable    <= '0';
            else
              if trFunnelControl_we = '1' then
                trFunnelActive  <= master_data_in_i(0);
                trFunnelEnable  <= master_data_in_i(1);
              end if;
            end if;
          end if;
        end process Handle_trFunnelControl_Reg_Write;

        Handle_trFunnel_Reg_Read : process (trFunnelActive, trFunnelEnable, trFunnelEmpty,
                                                   trFunnelControl_en, trFunnelImpl_en) is
        begin  -- Handle_Reg_Read
          funnel_master_data_out               <= (others => '0');
          if (trFunnelControl_en = '1') then
            funnel_master_data_out(0)          <= trFunnelActive;
            funnel_master_data_out(1)          <= trFunnelEnable;
            funnel_master_data_out(3)          <= trFunnelEmpty;
          elsif (trFunnelImpl_en = '1') then
            funnel_master_data_out             <= TRFUNNELIMPL;
          end if;
        end process Handle_trFunnel_Reg_Read;
        -- Unused signal
        funnel_ip2bus_data <= (others => '0');        
      end generate Use_Dbg_AXI;
      
      

      Handle_Requests : process (Dbg_TrValid, Dbg_TrReady) is
      begin
        for i in 0 to C_MB_DBG_PORTS-1 loop
          requests(i) <= Dbg_TrValid(i) and not Dbg_TrReady(i); 
        end loop;
      end process Handle_Requests;
      
      Arbiter_i : Arbiter
        generic map (
          C_TARGET  => C_TARGET,                                -- [TARGET_FAMILY_TYPE]
          Size      => C_MB_DBG_PORTS,                          -- [natural]
          Size_Log2 => C_LOG2_MB_DBG_PORTS)                     -- [natural]
        port map (
          Clk       => trace_clk_i,                             -- [in  std_logic]
          Reset     => trace_reset,                             -- [in  std_logic]
          Enable    => '0',                                     -- [in  std_logic]
          Requests  => requests,                                -- [in  std_logic_vector(Size-1 downto 0)]
          Granted   => open,                                    -- [out std_logic_vector(Size-1 downto 0)]
          Valid_Sel => valid,                                   -- [out std_logic]
          Selected  => index                                    -- [out std_logic_vector(Size_Log2-1 downto 0)]
          );

      Arbiter_Keep: process (trace_clk_i) is
      begin  -- process Arbiter_Keep
        if trace_clk_i'event and trace_clk_i = '1' then      -- rising clock edge
          trace_last_word_d <= trace_last_word;
          if trace_reset = '1' or trFunnelActive = '0' then  -- synchronous reset (active high)
            trace_index(C_LOG2_MB_DBG_PORTS-1 downto 0) <= (others => '0');
            idle        <= '1';
          else
            if idle = '1' or trace_last_word = '1' then
              if trFunnelEnable = '0' then
                idle        <= '1';
              else
                trace_index(C_LOG2_MB_DBG_PORTS-1 downto 0) <= index;
                idle        <= not valid;
              end if;
            elsif trace_valid = '0' and trace_last_word_d = '1' then
              idle <= '1';
            end if;
          end if;
        end if;
      end process Arbiter_Keep;

      trace_valid <= Dbg_TrValid(to_integer(unsigned(trace_index))) when
                     idle = '0' else '0';
      
      trace_index(4 downto C_LOG2_MB_DBG_PORTS) <= (others => '0');

      trace_trdata <= Dbg_TrData(to_integer(unsigned(trace_index)));

      Assign_Ready: process (trace_trready, trace_index) is
      begin  -- process Assign_Ready
        Dbg_TrReady      <= (others => '0');
        Dbg_TrReady(to_integer(unsigned(trace_index))) <= trace_trready;
      end process Assign_Ready;

    end generate More_Than_One_MB;

    Only_One_MB : if (C_MB_DBG_PORTS = 1) generate
      signal funnel_rdce : std_logic;
      signal funnel_wrce : std_logic;
    begin
      trace_trdata           <= Dbg_TrData(0);
      trace_valid            <= Dbg_TrValid(0);
      Dbg_TrReady(0)         <= trace_trready;
      Dbg_TrReady(1 to 31)   <= (others => '0');
      funnel_ip2bus_data     <= (others => '0');
      funnel_master_data_out <= (others => '0');
    end generate Only_One_MB;

    No_MB : if (C_MB_DBG_PORTS = 0) generate
    begin
      trace_trdata           <= (others => '0');
      trace_valid            <= '0';
      Dbg_TrReady            <= (others => '0');
      funnel_ip2bus_data     <= (others => '0');
      trace_last_word        <= '0';
      funnel_master_data_out <= (others => '0');
    end generate No_MB;

    No_Trace_External : if (C_TRACE_OUTPUT /= 1) generate
    begin
      pib_ip2bus_data     <= (others => '0');
      pib_master_data_out <= (others => '0');
    end generate No_Trace_External;

    trace_word <= trace_trdata(31 downto 0);

    Dbg_TrData(0)  <= Dbg_TrData_0;
    Dbg_TrData(1)  <= Dbg_TrData_1;
    Dbg_TrData(2)  <= Dbg_TrData_2;
    Dbg_TrData(3)  <= Dbg_TrData_3;
    Dbg_TrData(4)  <= Dbg_TrData_4;
    Dbg_TrData(5)  <= Dbg_TrData_5;
    Dbg_TrData(6)  <= Dbg_TrData_6;
    Dbg_TrData(7)  <= Dbg_TrData_7;
    Dbg_TrData(8)  <= Dbg_TrData_8;
    Dbg_TrData(9)  <= Dbg_TrData_9;
    Dbg_TrData(10) <= Dbg_TrData_10;
    Dbg_TrData(11) <= Dbg_TrData_11;
    Dbg_TrData(12) <= Dbg_TrData_12;
    Dbg_TrData(13) <= Dbg_TrData_13;
    Dbg_TrData(14) <= Dbg_TrData_14;
    Dbg_TrData(15) <= Dbg_TrData_15;
    Dbg_TrData(16) <= Dbg_TrData_16;
    Dbg_TrData(17) <= Dbg_TrData_17;
    Dbg_TrData(18) <= Dbg_TrData_18;
    Dbg_TrData(19) <= Dbg_TrData_19;
    Dbg_TrData(20) <= Dbg_TrData_20;
    Dbg_TrData(21) <= Dbg_TrData_21;
    Dbg_TrData(22) <= Dbg_TrData_22;
    Dbg_TrData(23) <= Dbg_TrData_23;
    Dbg_TrData(24) <= Dbg_TrData_24;
    Dbg_TrData(25) <= Dbg_TrData_25;
    Dbg_TrData(26) <= Dbg_TrData_26;
    Dbg_TrData(27) <= Dbg_TrData_27;
    Dbg_TrData(28) <= Dbg_TrData_28;
    Dbg_TrData(29) <= Dbg_TrData_29;
    Dbg_TrData(30) <= Dbg_TrData_30;
    Dbg_TrData(31) <= Dbg_TrData_31;

    Dbg_TrValid(0)  <= Dbg_TrValid_0;
    Dbg_TrValid(1)  <= Dbg_TrValid_1;
    Dbg_TrValid(2)  <= Dbg_TrValid_2;
    Dbg_TrValid(3)  <= Dbg_TrValid_3;
    Dbg_TrValid(4)  <= Dbg_TrValid_4;
    Dbg_TrValid(5)  <= Dbg_TrValid_5;
    Dbg_TrValid(6)  <= Dbg_TrValid_6;
    Dbg_TrValid(7)  <= Dbg_TrValid_7;
    Dbg_TrValid(8)  <= Dbg_TrValid_8;
    Dbg_TrValid(9)  <= Dbg_TrValid_9;
    Dbg_TrValid(10) <= Dbg_TrValid_10;
    Dbg_TrValid(11) <= Dbg_TrValid_11;
    Dbg_TrValid(12) <= Dbg_TrValid_12;
    Dbg_TrValid(13) <= Dbg_TrValid_13;
    Dbg_TrValid(14) <= Dbg_TrValid_14;
    Dbg_TrValid(15) <= Dbg_TrValid_15;
    Dbg_TrValid(16) <= Dbg_TrValid_16;
    Dbg_TrValid(17) <= Dbg_TrValid_17;
    Dbg_TrValid(18) <= Dbg_TrValid_18;
    Dbg_TrValid(19) <= Dbg_TrValid_19;
    Dbg_TrValid(20) <= Dbg_TrValid_20;
    Dbg_TrValid(21) <= Dbg_TrValid_21;
    Dbg_TrValid(22) <= Dbg_TrValid_22;
    Dbg_TrValid(23) <= Dbg_TrValid_23;
    Dbg_TrValid(24) <= Dbg_TrValid_24;
    Dbg_TrValid(25) <= Dbg_TrValid_25;
    Dbg_TrValid(26) <= Dbg_TrValid_26;
    Dbg_TrValid(27) <= Dbg_TrValid_27;
    Dbg_TrValid(28) <= Dbg_TrValid_28;
    Dbg_TrValid(29) <= Dbg_TrValid_29;
    Dbg_TrValid(30) <= Dbg_TrValid_30;
    Dbg_TrValid(31) <= Dbg_TrValid_31;

    -- Implement Trace PIB Sink (RISC-V Trace Control Interface Specification, Chapter 9)
    Use_Trace_External : if (C_TRACE_OUTPUT = 1) generate
      type pattern_select_type is (PAT_FF, PAT_00, PAT_55, PAT_AA);

      signal pattern_sel      : pattern_select_type := PAT_FF;
      signal pattern          : std_logic_vector(C_TRACE_DATA_WIDTH - 1 downto 0);
      signal next_pattern     : std_logic_vector(15 downto 0);
      signal pattern_start    : boolean;
      signal pattern_stop     : boolean;

      signal testing          : std_logic := '0';
      signal test_ctl         : std_logic := '1';
      signal trace_clk_div2   : std_logic := '0';
      signal trace_data_i     : std_logic_vector(C_TRACE_DATA_WIDTH-1 downto 0)  := (others => '0');
      signal trace_ctl_i      : std_logic := '1';
      signal trace_ctl_o      : std_logic := '1';
      signal trace_ctl_next   : std_logic;

      signal trPibControl_en  : std_logic;
      signal trPibControl_we  : std_logic;
      signal trPibImpl_en     : std_logic;

      -- trPibControl register
      -- Allowed modes: 0, 9, 10, 11, 12
      signal trPibActive      : std_logic;
      signal trPibEnable      : std_logic;
      signal trPibEmpty       : std_logic;
      signal trPibMode        : std_logic_vector(7 downto 4);
      signal trPibCalibrate   : std_logic;

      -- trPibImpl register
      --  Bit   Name           Value
      --  3: 0  trPibVerMajor   1
      --  7: 4  trPibVerMinor   0
      -- 11: 8  trPibCompType   A
      constant TRPIBIMPL      : std_logic_vector(31 downto 0) := X"00000A01";

      signal pattern_cnt_sig : natural range 1 to 8;
      attribute dont_touch : string;
      attribute dont_touch of trace_ctl_i : signal is "true";  -- Keep FF for internal use
      attribute dont_touch of trace_ctl_o : signal is "true";  -- Keep FF for IOB insertion

    begin

      Use_S_AXI: if C_DBG_REG_ACCESS = 1 generate
        -- Trace PIB Sink registers: trPibControl, trPibImpl
        trPibControl_en <= bus2ip_rdce(C_TRACE) when reg_addr = C_TRPIBCONTROL_ADDR else '0';
        trPibImpl_en    <= bus2ip_rdce(C_TRACE) when reg_addr = C_TRPIBIMPL_ADDR    else '0';
        trPibControl_we <= bus2ip_wrce(C_TRACE) when reg_addr = C_TRPIBCONTROL_ADDR else '0';

        Handle_trPibControl_Reg_Write : process (bus2ip_clk) is
        begin  -- process Handle_trPibControl_Reg_Write
          if bus2ip_clk'event and bus2ip_clk = '1' then  -- rising clock edge
            if bus2ip_resetn = '0' then                  -- synchronous reset (active high)
              trPibActive    <= '0';
              trPibEnable    <= '0';
              trPibMode      <= "0000";
              trPibCalibrate <= '0';
            else
              if trPibControl_we = '1' then
                trPibActive    <= bus2ip_data(0);
                trPibEnable    <= bus2ip_data(1);
                if (bus2ip_data(7 downto 4) = X"0") or
                  (bus2ip_data(7 downto 4) = X"9" and C_TRACE_DATA_WIDTH = 2)  or
                  (bus2ip_data(7 downto 4) = X"A" and C_TRACE_DATA_WIDTH = 4)  or
                  (bus2ip_data(7 downto 4) = X"B" and C_TRACE_DATA_WIDTH = 8)  or
                  (bus2ip_data(7 downto 4) = X"C" and C_TRACE_DATA_WIDTH = 16) then
                  trPibMode    <= bus2ip_data(7 downto  4);
                end if;
                trPibCalibrate <= bus2ip_data(9);
              end if;
            end if;
          end if;
        end process Handle_trPibControl_Reg_Write;

      trPibEmpty <= '1' when trPibActive = '0' or Dbg_TrValid(C_EN_WIDTH-1 downto 0) = (C_EN_WIDTH-1 downto 0 => '0') else '0';

        Handle_trPib_Reg_Read : process (trPibActive, trPibEnable, trPibEmpty, trPibMode,
                                         trPibCalibrate, trPibControl_en, trPibImpl_en) is
        begin  -- Handle_Reg_Read
          pib_ip2bus_data <= (others => '0');
          if (trPibControl_en = '1') then
            pib_ip2bus_data(0)          <= trPibActive;
            pib_ip2bus_data(1)          <= trPibEnable;
            pib_ip2bus_data(3)          <= trPibEmpty;
            pib_ip2bus_data(7 downto 4) <= trPibMode;
            pib_ip2bus_data(9)          <= trPibCalibrate;
          elsif (trPibImpl_en = '1') then
            pib_ip2bus_data             <= TRPIBIMPL;
          end if;
        end process Handle_trPib_Reg_Read;
        -- Unused signal
        pib_master_data_out <= (others => '0');
      end generate Use_S_AXI;

      Use_Dbg_AXI: if C_DBG_REG_ACCESS = 0 generate
      begin
        -- Trace PIB Sink registers: trPibControl, trPibImpl
        trPibControl_en <= master_rd_start_i when rd_mdm_reg and rd_reg_addr = C_TRPIBCONTROL_ADDR else '0';
        trPibImpl_en    <= master_rd_start_i when rd_mdm_reg and rd_reg_addr = C_TRPIBIMPL_ADDR    else '0';
        trPibControl_we <= master_wr_start_i when wr_mdm_reg and wr_reg_addr = C_TRPIBCONTROL_ADDR else '0';

        Handle_trPibControl_Reg_Write : process (M_AXI_ACLK) is
        begin  -- process Handle_trPibControl_Reg_Write
          if M_AXI_ACLK'event and M_AXI_ACLK = '1' then
            if M_AXI_ARESETn = '0' then
              trPibActive    <= '0';
              trPibEnable    <= '0';
              trPibMode      <= "0000";
              trPibCalibrate <= '0';
            else
              if trPibControl_we = '1' then
                trPibActive    <= master_data_in_i(0);
                trPibEnable    <= master_data_in_i(1);
                if (master_data_in_i(7 downto 4) = X"0") or
                   (master_data_in_i(7 downto 4) = X"9" and C_TRACE_DATA_WIDTH = 2)  or
                   (master_data_in_i(7 downto 4) = X"A" and C_TRACE_DATA_WIDTH = 4)  or
                   (master_data_in_i(7 downto 4) = X"B" and C_TRACE_DATA_WIDTH = 8)  or
                   (master_data_in_i(7 downto 4) = X"C" and C_TRACE_DATA_WIDTH = 16) then
                  trPibMode    <= master_data_in_i(7 downto  4);
                end if;
                trPibCalibrate <= master_data_in_i(9);
              end if;
            end if;
          end if;
        end process Handle_trPibControl_Reg_Write;

        trPibEmpty <= not trace_valid;

        Handle_trPib_Reg_Read : process (trPibActive, trPibEnable, trPibEmpty, trPibMode,
                                         trPibCalibrate, trPibControl_en, trPibImpl_en) is
        begin  -- Handle_Reg_Read
          pib_master_data_out               <= (others => '0');
          if (trPibControl_en = '1') then
            pib_master_data_out(0)          <= trPibActive;
            pib_master_data_out(1)          <= trPibEnable;
            pib_master_data_out(3)          <= trPibEmpty;
            pib_master_data_out(7 downto 4) <= trPibMode;
            pib_master_data_out(9)          <= trPibCalibrate;
          elsif (trPibImpl_en = '1') then
            pib_master_data_out             <= TRPIBIMPL;
          end if;
        end process Handle_trPib_Reg_Read;
        -- Unused signal
        pib_ip2bus_data <= (others => '0');
      end generate Use_Dbg_AXI;

      
      --trace_ctl_next <= '0';

      -- Generate calibration patterns (Table 55)
      -- trPibMode =  9   2-bit parallel  66 66 CC 33              2,1,2,1,2,1,2,1,0,3,0,3,3,0,3,0
      -- trPibMode = 10   4-bit parallel  5A 5A F0 0F              A,5,A,5,0,F,F,0
      -- trPibMode = 11   8-bit parallel  AA 55 00 FF              AA,55,00,FF
      -- trPibMode = 12  16.bit parallel  AA AA 55 55 00 00 FF FF  AAAA,5555,0000,FFFF
      pattern_start <= trPibEnable = '1' and trPibMode /= X"0" and trPibCalibrate = '1';
      pattern_stop  <= not pattern_start;

      pattern      <= next_pattern(C_TRACE_DATA_WIDTH - 1 downto 0);
      next_pattern <= X"AAAA" when pattern_sel = PAT_AA else
                      X"5555" when pattern_sel = PAT_55 else
                      X"0000" when pattern_sel = PAT_00 else
                      X"FFFF";

      Pattern_DFF: process (trace_clk_i) is
        type state_type is (IDLE, STARTING, PAT_FF, PAT_00, PAT_AA, PAT_55);

        variable state       : state_type := IDLE;
        variable pattern_cnt : natural range 1 to 8;
      begin  -- process Pattern_DFF
        if trace_clk_i'event and trace_clk_i = '1' then   -- rising clock edge
          if trace_reset = '1' or trPibActive = '0' then  -- synchronous reset (active high)
            pattern_sel <= PAT_FF;
            pattern_cnt := 1;
            testing     <= '0';
            test_ctl    <= '1';
            state       := IDLE;
          else
            case state is
              when IDLE =>
                pattern_sel <= PAT_FF;
                pattern_cnt := 1;
                testing     <= '0';
                test_ctl    <= '1';
                if pattern_start then
                  state := STARTING;
                end if;
              when STARTING =>
                pattern_sel <= PAT_AA;
                pattern_cnt := 1;
                if trace_started = '0' then
                  testing  <= '1';
                  test_ctl <= '0';
                  pattern_sel <= PAT_AA;
                  state := PAT_AA;
                end if;
              when PAT_FF =>
                if pattern_stop and (trPibMode = X"C" or trPibMode = X"B") then
                  test_ctl <= '1';
                  pattern_sel <= PAT_FF;
                  state := IDLE;
                elsif (trPibMode = X"9" and pattern_cnt = 6) or
                  (trPibMode = X"A" and pattern_cnt = 3) then
                  pattern_sel <= PAT_FF;
                  state := PAT_FF;
                elsif (trPibMode = X"9") or (trPibMode = X"A") then
                  pattern_sel <= PAT_00;
                  state := PAT_00;
                else
                  pattern_sel <= PAT_AA;
                  state := PAT_AA;
                end if;
                if pattern_cnt = 8 then
                  pattern_cnt := 1;
                else
                  pattern_cnt := pattern_cnt + 1;
                end if;
              when PAT_00 =>
                if (trPibMode = X"9" and (pattern_cnt = 1 or pattern_cnt = 8)) or
                  (trPibMode = X"A" and pattern_cnt = 5) then
                  if pattern_cnt = 5 or pattern_cnt = 1 then
                    pattern_cnt := 1;
                    if pattern_stop then
                      pattern_sel <= PAT_FF;
                      test_ctl <= '1';
                      state := IDLE;                  
                    else
                      pattern_sel <= PAT_AA;
                      state := PAT_AA;
                    end if;
                  else
                    pattern_sel <= PAT_FF;
                    state := PAT_FF;
                  end if;
                else
                  pattern_sel <= PAT_FF;
                  state := PAT_FF;
                end if;
              when PAT_55 =>
                if (trPibMode = X"9" and pattern_cnt = 4) or
                  (trPibMode = X"A" and pattern_cnt = 2) or
                  (trPibMode = X"B") or (trPibMode = X"C") then
                  pattern_sel <= PAT_00;
                  state := PAT_00;
                else
                  pattern_sel <= PAT_AA;
                  state := PAT_AA;
                end if;
                if pattern_cnt = 8 then
                  pattern_cnt := 1;
                else
                  pattern_cnt := pattern_cnt + 1;
                end if;
              when PAT_AA =>
                pattern_sel <= PAT_55;
                state := PAT_55;

              -- coverage off
              when others =>
                null;
            -- coverage on
            end case;
            pattern_cnt_sig <= pattern_cnt;
          end if;
        end if;
      end process Pattern_DFF;

      -- Output data or test pattern according to width
      Has_Full_Width: if C_TRACE_DATA_WIDTH = 32 generate
      begin

        Data_Output: process (trace_clk_i) is
        begin  -- process Data_Output
          if trace_clk_i'event and trace_clk_i = '1' then   -- rising clock edge
            if trace_reset = '1' or trPibActive = '0' then  -- synchronous reset (active high)
              trace_data_i <= (others => '1');
              trace_ctl_i  <= '1';
              trace_ctl_o  <= '1';
            else
              if testing = '1' then
                trace_ctl_i  <= test_ctl;
                trace_ctl_o  <= test_ctl;
                trace_data_i <= pattern(C_TRACE_DATA_WIDTH - 1 downto 0);
              elsif trPibEnable = '0' then
                trace_data_i <= (others => '1');
                trace_ctl_i  <= '1';
                trace_ctl_o  <= '1';
              else
                trace_ctl_i  <= trace_ctl_next;
                trace_ctl_o  <= trace_ctl_next;
                trace_data_i <= trace_word;
              end if;
            end if;
          end if;
        end process Data_Output;

        trace_ready      <= (not testing) and trPibEnable;
        trace_count_last <= '1';
        trace_last_word  <= '1' when trace_word(25 downto 24) = "11" or
                                     trace_word(17 downto 16) = "11" or
                                     trace_word(9  downto  8) = "11" or
                                     trace_word(1  downto  0) = "11" else
                            '0';


      end generate Has_Full_Width;

      Not_Full_Width: if C_TRACE_DATA_WIDTH < 32 generate
        constant C_COUNTER_WIDTH : integer := log2(32 / C_TRACE_DATA_WIDTH);

        signal data_count        : std_logic_vector(0 to C_COUNTER_WIDTH - 1) := (others => '0');
        signal idle              : boolean;
        signal mseo_end_of_mess  : std_logic_vector(3 downto 0);
      begin

        Data_Output: process (trace_clk_i) is
          variable data_index : trace_index_type;
        begin  -- process Data_Output
          if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
            if trace_reset = '1' or trPibActive = '0' then  -- synchronous reset (active high)
              trace_data_i    <= (others => '1');
              data_count      <= (others => '0');
              trace_ctl_i     <= '1';
              trace_ctl_o     <= '1';
              idle            <= true;
              trace_started   <= '0';
            else
              if testing = '1' then
                trace_ctl_i  <= test_ctl;
                trace_ctl_o  <= test_ctl;
                trace_data_i <= pattern(C_TRACE_DATA_WIDTH - 1 downto 0);
                data_count   <= (others => '0');
              elsif trace_started = '0' and trPibEnable = '0' then
                trace_data_i    <= (others => '1');
                data_count      <= (others => '0');
                trace_ctl_i     <= '1';
                trace_ctl_o     <= '1';
              else
                trace_ctl_i  <= trace_ctl_next;
                trace_ctl_o  <= trace_ctl_next;
                data_index   := to_integer(unsigned(data_count));
                if trace_valid = '1' then
                  trace_started <= '1';
                  if trace_count_last = '1' or trace_last_word = '1' then
                    data_count    <= (others => '0');
                  else
                    data_count    <= std_logic_vector(unsigned(data_count) + 1);
                  end if;
                else
                  data_count    <= (others => '0');
                  trace_started <= '0';
                end if;
                trace_data_i <= trace_data_mux(trace_word, data_index);
                if trace_ctl_next = '1' then
                  trace_data_i    <= (others => '1'); -- Indicates trace disable when TRACE_CTL = '1'
                end if;
              end if;
            end if;
          end if;
        end process Data_Output;

        trace_trready    <= trace_last_word or trace_count_last;
        trace_count_last <= '1' when data_count = (data_count'range => '1') else '0';
        trace_ready      <= (not trace_ctl_i) and trace_count_last and trPibEnable;

        Handle_mseo_end_of_mess: process (trace_word) is
        begin
          for i in 0 to 3 loop
            if trace_word(i*8+1 downto i*8) = "11" then
              mseo_end_of_mess(i) <= '1';
            else
              mseo_end_of_mess(i) <= '0';
            end if;

          end loop;
        end process Handle_mseo_end_of_mess;

        Handle_trace_last_word: process (mseo_end_of_mess, data_count) is
          variable data_index : trace_index_type;
        begin
          data_index   := to_integer(unsigned(data_count));
          trace_last_word <= '0';
          if C_TRACE_DATA_WIDTH = 16 and
            ((data_index = 0 and mseo_end_of_mess(1) = '1') or
             (data_index = 1 and mseo_end_of_mess(3) = '1')) then
            trace_last_word <= '1';
          end if;
          if C_TRACE_DATA_WIDTH = 8 and
            ((data_index = 0 and mseo_end_of_mess(0) = '1' ) or
             (data_index = 1 and mseo_end_of_mess(1) = '1' ) or
             (data_index = 2 and mseo_end_of_mess(2) = '1' ) or
             (data_index = 3 and mseo_end_of_mess(3) = '1' )) then
            trace_last_word <= '1';
          end if;
          
          if C_TRACE_DATA_WIDTH = 4 and
            ((data_index = 1 and mseo_end_of_mess(0) = '1' ) or
             (data_index = 3 and mseo_end_of_mess(1) = '1' ) or
             (data_index = 5 and mseo_end_of_mess(2) = '1' ) or
             (data_index = 7 and mseo_end_of_mess(3) = '1' )) then
            trace_last_word <= '1';
          end if;

          if C_TRACE_DATA_WIDTH = 2 and
            ((data_index =  3 and mseo_end_of_mess(0) = '1' ) or
             (data_index =  7 and mseo_end_of_mess(1) = '1' ) or
             (data_index = 11 and mseo_end_of_mess(2) = '1' ) or
             (data_index = 15 and mseo_end_of_mess(3) = '1' )) then
            trace_last_word <= '1';
          end if;
        end process Handle_trace_last_word;

      end generate Not_Full_Width;

      trace_ctl_next <= not trace_valid;

      -- Synchronize reset
      Reset_DFF: process (trace_clk_i) is
        variable sample : std_logic_vector(0 to 1) := "11";

        attribute ASYNC_REG : string;
        attribute ASYNC_REG of sample : variable is "TRUE";
      begin  -- process Sync_Reset
        if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
          trace_reset <= sample(1);
          sample(1)   := sample(0);
          sample(0)   := Debug_SYS_Rst_i or config_reset_i;
        end if;
      end process Reset_DFF;

      -- Generate half frequency output clock
      Use_PLL: if C_TRACE_CLK_OUT_PHASE /= 0 generate
        constant C_CLKFBOUT_MULT  : integer := (800000000 + C_TRACE_CLK_FREQ_HZ - 1000000) / C_TRACE_CLK_FREQ_HZ;
        constant C_CLKIN_PERIOD   : real    := 1000000000.0 / real(C_TRACE_CLK_FREQ_HZ);
        constant C_CLKOUT0_DIVIDE : integer := C_CLKFBOUT_MULT * 2;
        constant C_CLKOUT0_PHASE  : real    := real(C_TRACE_CLK_OUT_PHASE);

        signal trace_clk_o        : std_logic;
        signal trace_clk_fbin     : std_logic;
        signal trace_clk_fbout    : std_logic;
      begin

        PLL_TRACE_CLK : MB_PLLE2_BASE
          generic map (
            C_TARGET           => C_TARGET,
            BANDWIDTH          => "OPTIMIZED",
            CLKFBOUT_MULT      => C_CLKFBOUT_MULT,
            CLKFBOUT_PHASE     => 0.000,
            CLKIN1_PERIOD      => C_CLKIN_PERIOD,
            CLKOUT0_DIVIDE     => C_CLKOUT0_DIVIDE,
            CLKOUT0_DUTY_CYCLE => 0.500,
            CLKOUT0_PHASE      => C_CLKOUT0_PHASE,
            CLKOUT1_DIVIDE     => 1,
            CLKOUT1_DUTY_CYCLE => 0.500,
            CLKOUT1_PHASE      => 0.000,
            CLKOUT2_DIVIDE     => 1,
            CLKOUT2_DUTY_CYCLE => 0.500,
            CLKOUT2_PHASE      => 0.000,
            CLKOUT3_DIVIDE     => 1,
            CLKOUT3_DUTY_CYCLE => 0.500,
            CLKOUT3_PHASE      => 0.000,
            CLKOUT4_DIVIDE     => 1,
            CLKOUT4_DUTY_CYCLE => 0.500,
            CLKOUT4_PHASE      => 0.000,
            CLKOUT5_DIVIDE     => 1,
            CLKOUT5_DUTY_CYCLE => 0.500,
            CLKOUT5_PHASE      => 0.000,
            DIVCLK_DIVIDE      => 1,
            REF_JITTER1        => 0.010,
            STARTUP_WAIT       => "FALSE"
            )
          port map (
            CLKFBOUT => trace_clk_fbout,
            CLKOUT0  => trace_clk_div2,
            CLKOUT1  => open,
            CLKOUT2  => open,
            CLKOUT3  => open,
            CLKOUT4  => open,
            CLKOUT5  => open,
            LOCKED   => open,
            CLKFBIN  => trace_clk_fbin,
            CLKIN1   => trace_clk_i,
            PWRDWN   => '0',
            RST      => trace_reset
            );

        BUFG_TRACE_CLK_FB : MB_BUFG
          generic map (
            C_TARGET => C_TARGET
            )
          port map (
            O => trace_clk_fbin,
            I => trace_clk_fbout
            );

        BUFG_TRACE_CLK : MB_BUFG
          generic map (
            C_TARGET => C_TARGET
            )
          port map (
            O => trace_clk_o,
            I => trace_clk_div2
            );

        TRACE_CLK_OUT <= trace_clk_o;

      end generate Use_PLL;

      No_PLL: if C_TRACE_CLK_OUT_PHASE = 0 generate
        signal trace_clk_div2 : std_logic := '0';
        signal trace_clk_o    : std_logic := '0';

        attribute dont_touch : string;
        attribute dont_touch of trace_clk_o : signal is "true";  -- Keep FF for IOB insertion
      begin

        TRACE_CLK_OUT_DFF: process (trace_clk_i) is
        begin  -- process TRACE_CLK_OUT_DFF
          if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
            trace_clk_div2 <= not trace_clk_div2;
            trace_clk_o    <= trace_clk_div2;
          end if;
        end process TRACE_CLK_OUT_DFF;

        TRACE_CLK_OUT <= trace_clk_o;  -- Any clock delay, phase shift or buffering is done outside MDM

      end generate No_PLL;

      TRACE_CTL   <= trace_ctl_o;
      TRACE_DATA  <= trace_data_i;

      trace_clk_i <= TRACE_CLK;  -- Any clock doubling from external port is done outside MDM
    end generate Use_Trace_External;
  end generate Use_Trace;

  No_Trace : if (C_TRACE_OUTPUT = 0 or C_TRACE_OUTPUT = 4) generate
  begin
    Dbg_TrReady         <= (others => '0');

    trace_clk_i         <= '0';
    trace_reset         <= '0';
    trace_word          <= (others => '0');
    trace_valid         <= '0';
    trace_last_word     <= '0';
    trace_ready         <= '0';
    trace_trready       <= '0';
    trace_started       <= '0';
    trace_count_last    <= '0';

    trace_ip2bus_data   <= (others => '0');
    trace_ip2bus_rdack  <= '0';
    trace_ip2bus_wrack  <= '0';
    trace_ip2bus_error  <= '0';

    TRACE_CLK_OUT       <= '0';
    TRACE_CTL           <= '1';
    TRACE_DATA          <= (others => '0');
  end generate No_Trace;

  Dbg_TrClk <= trace_clk_i;

  ---------------------------------------------------------------------------
  -- Instantiating the receive and transmit modules
  ---------------------------------------------------------------------------
  JTAG_CONTROL_I : JTAG_CONTROL
    generic map (
      C_TARGET               => C_TARGET,
      C_USE_BSCAN            => C_USE_BSCAN,
      C_DTM_IDCODE           => C_DTM_IDCODE,
      C_MB_DBG_PORTS         => C_MB_DBG_PORTS,
      C_USE_CONFIG_RESET     => C_USE_CONFIG_RESET,
      C_USE_SRL16            => C_USE_SRL16,
      C_DEBUG_INTERFACE      => C_DEBUG_INTERFACE,
      C_DBG_REG_ACCESS       => C_DBG_REG_ACCESS,
      C_DBG_MEM_ACCESS       => C_DBG_MEM_ACCESS,
      C_M_AXI_ADDR_WIDTH     => C_M_AXI_ADDR_WIDTH,
      C_M_AXI_DATA_WIDTH     => C_M_AXI_DATA_WIDTH,
      C_USE_CROSS_TRIGGER    => C_USE_CROSS_TRIGGER,
      C_EXT_TRIG_RESET_VALUE => C_EXT_TRIG_RESET_VALUE,
      C_NUM_GROUPS           => C_NUM_GROUPS,
      C_GROUP_BITS           => C_GROUP_BITS,
      C_TRACE_OUTPUT         => C_TRACE_OUTPUT,
      C_USE_UART             => C_USE_UART,
      C_UART_WIDTH           => C_UART_WIDTH,
      C_EN_WIDTH             => C_EN_WIDTH
    )
    port map (
      Config_Reset       => config_reset_i,      -- [in  std_logic]
      Scan_Reset_Sel     => Scan_Reset_Sel,      -- [in  std_logic]
      Scan_Reset         => Scan_Reset,          -- [in  std_logic]
      Scan_En            => Scan_En,             -- [in  std_logic]

      Clk                => bus2ip_clk,          -- [in  std_logic]
      Rst                => bus_rst,             -- [in  std_logic]

      Read_RX_FIFO       => read_RX_FIFO,        -- [in  std_logic]
      Reset_RX_FIFO      => reset_RX_FIFO,       -- [in  std_logic]
      RX_Data            => rx_Data_i,           -- [out std_logic_vector(0 to 7)]
      RX_Data_Present    => rx_Data_Present_i,   -- [out std_logic]
      RX_Buffer_Full     => rx_Buffer_Full_i,    -- [out std_logic]

      Write_TX_FIFO      => write_TX_FIFO,       -- [in  std_logic]
      Reset_TX_FIFO      => reset_TX_FIFO,       -- [in  std_logic]
      TX_Data            => tx_Data,             -- [in  std_logic_vector(0 to 7)]
      TX_Buffer_Full     => tx_Buffer_Full_i,    -- [out std_logic]
      TX_Buffer_Empty    => tx_Buffer_Empty_i,   -- [out std_logic]

      Debug_SYS_Rst      => Debug_SYS_Rst_jtag,  -- [out  std_logic]
      Debug_Rst          => Debug_Rst_jtag,      -- [out  std_logic]

      -- BSCAN signals
      TDI                => TDI,                 -- [in  std_logic]
      TMS                => TMS,                 -- [in  std_logic]
      TCK                => TCK,                 -- [in  std_logic]
      TDO                => TDO,                 -- [out std_logic]

      -- AXI Master signals
      M_AXI_ACLK         => M_AXI_ACLK,          -- [in  std_logic]
      M_AXI_ARESETn      => M_AXI_ARESETn,       -- [in  std_logic]

      Master_rd_start    => master_rd_start_i,   -- [out std_logic]
      Master_rd_addr     => master_rd_addr_i,    -- [out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0)]
      Master_rd_len      => master_rd_len_i,     -- [out std_logic_vector(4 downto 0)]
      Master_rd_size     => master_rd_size_i,    -- [out std_logic_vector(1 downto 0)]
      Master_rd_excl     => master_rd_excl_i,    -- [out std_logic]
      Master_rd_idle     => Master_rd_idle,      -- [in  std_logic]
      Master_rd_resp     => Master_rd_resp,      -- [in  std_logic_vector(1 downto 0)]
      Master_wr_start    => master_wr_start_i,   -- [out std_logic]
      Master_wr_addr     => master_wr_addr_i,    -- [out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0)]
      Master_wr_len      => master_wr_len_i,     -- [out std_logic_vector(4 downto 0)]
      Master_wr_size     => master_wr_size_i,    -- [out std_logic_vector(1 downto 0)]
      Master_wr_excl     => master_wr_excl_i,    -- [out std_logic]
      Master_wr_idle     => Master_wr_idle,      -- [in  std_logic]
      Master_wr_resp     => Master_wr_resp,      -- [in  std_logic_vector(1 downto 0)]
      Master_data_rd     => master_data_rd_i,    -- [out std_logic]
      Master_data_out    => master_data_out_i,   -- [in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0)]
      Master_data_exists => Master_data_exists,  -- [in  std_logic]
      Master_data_wr     => master_data_wr_i,    -- [out std_logic]
      Master_data_in     => master_data_in_i,    -- [out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0)]
      Master_data_empty  => Master_data_empty,   -- [in  std_logic]

      Master_dwr_addr    => master_dwr_addr_i,   -- [out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0)]
      Master_dwr_len     => master_dwr_len_i,    -- [out std_logic_vector(4 downto 0)]
      Master_dwr_done    => Master_dwr_done,     -- [in  std_logic]
      Master_dwr_resp    => Master_dwr_resp,     -- [in  std_logic]

      -- MicroBlaze Debug Signals
      MB_Debug_Enabled => mb_debug_enabled_i,    -- [out std_logic_vector(7 downto 0)]
      Dbg_Disable      => jtag_disable,          -- [out std_logic]
      Dbg_Clk          => Dbg_Clk,               -- [out std_logic]
      Dbg_TDI          => Dbg_TDI,               -- [out std_logic]
      Dbg_TDO          => Dbg_TDO,               -- [in  std_logic]
      Dbg_All_TDO      => Dbg_All_TDO,           -- [in  std_logic]
      Dbg_TDO_I        => Dbg_TDO_I,             -- [in  std_logic_vector(0 to 31)]
      Dbg_Reg_En       => Dbg_Reg_En,            -- [out std_logic_vector(0 to 7)]
      Dbg_Capture      => Dbg_Capture,           -- [out std_logic]
      Dbg_Shift        => Dbg_Shift,             -- [out std_logic]
      Dbg_Update       => Dbg_Update,            -- [out std_logic]

      Dbg_data_cmd     => Dbg_data_cmd,          -- [out std_logic]
      Dbg_command      => Dbg_command,           -- [out std_logic_vector(0 to 7)]

      -- MicroBlaze Cross Trigger Signals
      DMCS2_group_hart     => dmcs2_group_hart_i,  -- [in  std_logic_vector(C_EN_WIDTH * C_GROUP_BITS - 1 downto 0)]
      DMCS2_group_ext      => dmcs2_group_ext_i,   -- [in  std_logic_vector(4 * C_GROUP_BITS - 1 downto 0)]

      Dbg_Trig_In_0        => Dbg_Trig_In_0,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_1        => Dbg_Trig_In_1,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_2        => Dbg_Trig_In_2,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_3        => Dbg_Trig_In_3,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_4        => Dbg_Trig_In_4,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_5        => Dbg_Trig_In_5,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_6        => Dbg_Trig_In_6,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_7        => Dbg_Trig_In_7,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_8        => Dbg_Trig_In_8,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_9        => Dbg_Trig_In_9,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_10       => Dbg_Trig_In_10,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_11       => Dbg_Trig_In_11,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_12       => Dbg_Trig_In_12,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_13       => Dbg_Trig_In_13,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_14       => Dbg_Trig_In_14,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_15       => Dbg_Trig_In_15,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_16       => Dbg_Trig_In_16,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_17       => Dbg_Trig_In_17,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_18       => Dbg_Trig_In_18,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_19       => Dbg_Trig_In_19,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_20       => Dbg_Trig_In_20,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_21       => Dbg_Trig_In_21,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_22       => Dbg_Trig_In_22,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_23       => Dbg_Trig_In_23,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_24       => Dbg_Trig_In_24,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_25       => Dbg_Trig_In_25,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_26       => Dbg_Trig_In_26,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_27       => Dbg_Trig_In_27,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_28       => Dbg_Trig_In_28,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_29       => Dbg_Trig_In_29,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_30       => Dbg_Trig_In_30,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_31       => Dbg_Trig_In_31,      -- [in  std_logic_vector(0 to 7)]

      Dbg_Trig_Ack_In_0    => Dbg_Trig_Ack_In_0,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_1    => Dbg_Trig_Ack_In_1,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_2    => Dbg_Trig_Ack_In_2,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_3    => Dbg_Trig_Ack_In_3,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_4    => Dbg_Trig_Ack_In_4,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_5    => Dbg_Trig_Ack_In_5,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_6    => Dbg_Trig_Ack_In_6,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_7    => Dbg_Trig_Ack_In_7,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_8    => Dbg_Trig_Ack_In_8,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_9    => Dbg_Trig_Ack_In_9,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_10   => Dbg_Trig_Ack_In_10,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_11   => Dbg_Trig_Ack_In_11,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_12   => Dbg_Trig_Ack_In_12,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_13   => Dbg_Trig_Ack_In_13,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_14   => Dbg_Trig_Ack_In_14,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_15   => Dbg_Trig_Ack_In_15,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_16   => Dbg_Trig_Ack_In_16,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_17   => Dbg_Trig_Ack_In_17,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_18   => Dbg_Trig_Ack_In_18,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_19   => Dbg_Trig_Ack_In_19,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_20   => Dbg_Trig_Ack_In_20,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_21   => Dbg_Trig_Ack_In_21,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_22   => Dbg_Trig_Ack_In_22,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_23   => Dbg_Trig_Ack_In_23,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_24   => Dbg_Trig_Ack_In_24,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_25   => Dbg_Trig_Ack_In_25,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_26   => Dbg_Trig_Ack_In_26,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_27   => Dbg_Trig_Ack_In_27,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_28   => Dbg_Trig_Ack_In_28,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_29   => Dbg_Trig_Ack_In_29,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_30   => Dbg_Trig_Ack_In_30,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_31   => Dbg_Trig_Ack_In_31,  -- [out std_logic_vector(0 to 7)]

      Dbg_Trig_Out_0       => Dbg_Trig_Out_0,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_1       => Dbg_Trig_Out_1,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_2       => Dbg_Trig_Out_2,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_3       => Dbg_Trig_Out_3,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_4       => Dbg_Trig_Out_4,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_5       => Dbg_Trig_Out_5,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_6       => Dbg_Trig_Out_6,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_7       => Dbg_Trig_Out_7,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_8       => Dbg_Trig_Out_8,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_9       => Dbg_Trig_Out_9,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_10      => Dbg_Trig_Out_10,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_11      => Dbg_Trig_Out_11,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_12      => Dbg_Trig_Out_12,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_13      => Dbg_Trig_Out_13,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_14      => Dbg_Trig_Out_14,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_15      => Dbg_Trig_Out_15,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_16      => Dbg_Trig_Out_16,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_17      => Dbg_Trig_Out_17,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_18      => Dbg_Trig_Out_18,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_19      => Dbg_Trig_Out_19,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_20      => Dbg_Trig_Out_20,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_21      => Dbg_Trig_Out_21,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_22      => Dbg_Trig_Out_22,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_23      => Dbg_Trig_Out_23,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_24      => Dbg_Trig_Out_24,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_25      => Dbg_Trig_Out_25,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_26      => Dbg_Trig_Out_26,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_27      => Dbg_Trig_Out_27,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_28      => Dbg_Trig_Out_28,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_29      => Dbg_Trig_Out_29,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_30      => Dbg_Trig_Out_30,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_31      => Dbg_Trig_Out_31,     -- [out std_logic_vector(0 to 7)]

      Dbg_Trig_Ack_Out_0   => Dbg_Trig_Ack_Out_0,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_1   => Dbg_Trig_Ack_Out_1,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_2   => Dbg_Trig_Ack_Out_2,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_3   => Dbg_Trig_Ack_Out_3,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_4   => Dbg_Trig_Ack_Out_4,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_5   => Dbg_Trig_Ack_Out_5,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_6   => Dbg_Trig_Ack_Out_6,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_7   => Dbg_Trig_Ack_Out_7,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_8   => Dbg_Trig_Ack_Out_8,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_9   => Dbg_Trig_Ack_Out_9,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_10  => Dbg_Trig_Ack_Out_10, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_11  => Dbg_Trig_Ack_Out_11, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_12  => Dbg_Trig_Ack_Out_12, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_13  => Dbg_Trig_Ack_Out_13, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_14  => Dbg_Trig_Ack_Out_14, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_15  => Dbg_Trig_Ack_Out_15, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_16  => Dbg_Trig_Ack_Out_16, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_17  => Dbg_Trig_Ack_Out_17, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_18  => Dbg_Trig_Ack_Out_18, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_19  => Dbg_Trig_Ack_Out_19, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_20  => Dbg_Trig_Ack_Out_20, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_21  => Dbg_Trig_Ack_Out_21, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_22  => Dbg_Trig_Ack_Out_22, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_23  => Dbg_Trig_Ack_Out_23, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_24  => Dbg_Trig_Ack_Out_24, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_25  => Dbg_Trig_Ack_Out_25, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_26  => Dbg_Trig_Ack_Out_26, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_27  => Dbg_Trig_Ack_Out_27, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_28  => Dbg_Trig_Ack_Out_28, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_29  => Dbg_Trig_Ack_Out_29, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_30  => Dbg_Trig_Ack_Out_30, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_31  => Dbg_Trig_Ack_Out_31, -- [in  std_logic_vector(0 to 7)]

      Ext_Trig_In          => Ext_Trig_In,         -- [in  std_logic_vector(0 to 3)]
      Ext_Trig_Ack_In      => Ext_Trig_Ack_In,     -- [out std_logic_vector(0 to 3)]
      Ext_Trig_Out         => Ext_Trig_Out,        -- [out std_logic_vector(0 to 3)]
      Ext_Trig_Ack_Out     => Ext_Trig_Ack_Out     -- [in  std_logic_vector(0 to 3)]
    );

  Generate_UART_Signals : if (C_DEBUG_INTERFACE = 0) generate
  begin
    rx_Data         <= rx_Data_i;
    rx_Data_Present <= rx_Data_Present_i;
    rx_BUFFER_FULL  <= rx_Buffer_Full_i;
    tx_Buffer_Full  <= tx_Buffer_Full_i;
    tx_Buffer_Empty <= tx_Buffer_Empty_i;
  end generate Generate_UART_Signals;

  Generate_Bus_Master_Signals : if (C_DEBUG_INTERFACE = 0) generate
  begin
    Master_rd_addr  <= master_rd_addr_i;
    Master_rd_len   <= master_rd_len_i;
    Master_rd_size  <= master_rd_size_i;
    Master_rd_excl  <= master_rd_excl_i;
    Master_wr_addr  <= master_wr_addr_i;
    Master_wr_len   <= master_wr_len_i;
    Master_wr_size  <= master_wr_size_i;
    Master_wr_excl  <= master_wr_excl_i;
    Master_data_in  <= master_data_in_i;
    Master_dwr_addr <= master_dwr_addr_i;
    Master_dwr_len  <= master_dwr_len_i;

    Generate_Dbg_AXI_Signals : if (C_DBG_MEM_ACCESS = 0 and C_TRACE_OUTPUT = 1 and C_DBG_REG_ACCESS = 0) generate
    begin
      Master_rd_start <= master_rd_start_i when master_rd_addr_i(20 downto 15) /= "000000" else '0';
      Master_wr_start <= master_wr_start_i when master_wr_addr_i(20 downto 15) /= "000000" else '0';
      Master_data_rd  <= master_data_rd_i  when master_rd_addr_i(20 downto 15) /= "000000" else '0';
      Master_data_wr  <= master_data_wr_i  when master_wr_addr_i(20 downto 15) /= "000000" else '0';
      Mux_and_hold : process (M_AXI_ACLK)
      begin  -- process Mux_and_hold
        if M_AXI_ACLK'event and M_AXI_ACLK = '1' then
          if M_AXI_ARESETn = '0' then
            master_data_out_i <= (others => '0');
          else
            if master_rd_addr_i(20 downto 15) /= "000000" then
              if Master_rd_idle = '0' then
                master_data_out_i <= Master_data_out;
              end if;
            else
              if master_rd_start_i = '1' then
                master_data_out_i <= (pib_master_data_out or funnel_master_data_out);
              end if;
            end if;
          end if;
        end if;
      end process Mux_and_hold;
    end generate Generate_Dbg_AXI_Signals;

    Generate_M_AXI_Signals : if (not (C_DBG_MEM_ACCESS = 0 and C_TRACE_OUTPUT = 1 and C_DBG_REG_ACCESS = 0)) generate
    begin
      Master_rd_start <= master_rd_start_i;
      Master_wr_start <= master_wr_start_i;
      master_data_out_i <= Master_data_out;
      Master_data_rd  <= master_data_rd_i;
      Master_data_wr  <= master_data_wr_i;
    end generate Generate_M_AXI_Signals;
    
  end generate Generate_Bus_Master_Signals;

  -----------------------------------------------------------------------------
  -- Enables for each debug port
  -----------------------------------------------------------------------------
  Generate_Dbg_Port_Signals : process (mb_debug_enabled_q, Debug_Rst_I, disable)
  begin  -- process Generate_Dbg_Port_Signals
    for I in 0 to C_EN_WIDTH-1 loop
      if (mb_debug_enabled_q(I) = '1') then
        Dbg_Rst_I(I)    <= Debug_Rst_i;
      else
        Dbg_Rst_I(I)    <= '0';
      end if;
      Dbg_Disable(I)    <= disable;
    end loop;  -- I
    for I in C_EN_WIDTH to 31 loop
      Dbg_Rst_I(I)      <= '0';
      Dbg_Disable(I)    <= '1';
    end loop;  -- I
  end process Generate_Dbg_Port_Signals;

  Debug_SYS_Rst <= Debug_SYS_Rst_i;

  MB_Debug_Enabled <= mb_debug_enabled_q;

  Dbg_Disable_0 <= Dbg_Disable(0);
  Dbg_Rst_0     <= Dbg_Rst_I(0);
  Dbg_TrClk_0   <= Dbg_TrClk;
  Dbg_TrReady_0 <= Dbg_TrReady(0);

  Dbg_Disable_1 <= Dbg_Disable(1);
  Dbg_Rst_1     <= Dbg_Rst_I(1);
  Dbg_TrClk_1   <= Dbg_TrClk;
  Dbg_TrReady_1 <= Dbg_TrReady(1);

  Dbg_Disable_2 <= Dbg_Disable(2);
  Dbg_Rst_2     <= Dbg_Rst_I(2);
  Dbg_TrClk_2   <= Dbg_TrClk;
  Dbg_TrReady_2 <= Dbg_TrReady(2);

  Dbg_Disable_3 <= Dbg_Disable(3);
  Dbg_Rst_3     <= Dbg_Rst_I(3);
  Dbg_TrClk_3   <= Dbg_TrClk;
  Dbg_TrReady_3 <= Dbg_TrReady(3);

  Dbg_Disable_4 <= Dbg_Disable(4);
  Dbg_Rst_4     <= Dbg_Rst_I(4);
  Dbg_TrClk_4   <= Dbg_TrClk;
  Dbg_TrReady_4 <= Dbg_TrReady(4);

  Dbg_Disable_5 <= Dbg_Disable(5);
  Dbg_Rst_5     <= Dbg_Rst_I(5);
  Dbg_TrClk_5   <= Dbg_TrClk;
  Dbg_TrReady_5 <= Dbg_TrReady(5);

  Dbg_Disable_6 <= Dbg_Disable(6);
  Dbg_Rst_6     <= Dbg_Rst_I(6);
  Dbg_TrClk_6   <= Dbg_TrClk;
  Dbg_TrReady_6 <= Dbg_TrReady(6);

  Dbg_Disable_7 <= Dbg_Disable(7);
  Dbg_Rst_7     <= Dbg_Rst_I(7);
  Dbg_TrClk_7   <= Dbg_TrClk;
  Dbg_TrReady_7 <= Dbg_TrReady(7);

  Dbg_Disable_8 <= Dbg_Disable(8);
  Dbg_Rst_8     <= Dbg_Rst_I(8);
  Dbg_TrClk_8   <= Dbg_TrClk;
  Dbg_TrReady_8 <= Dbg_TrReady(8);

  Dbg_Disable_9 <= Dbg_Disable(9);
  Dbg_Rst_9     <= Dbg_Rst_I(9);
  Dbg_TrClk_9   <= Dbg_TrClk;
  Dbg_TrReady_9 <= Dbg_TrReady(9);

  Dbg_Disable_10 <= Dbg_Disable(10);
  Dbg_Rst_10     <= Dbg_Rst_I(10);
  Dbg_TrClk_10   <= Dbg_TrClk;
  Dbg_TrReady_10 <= Dbg_TrReady(10);

  Dbg_Disable_11 <= Dbg_Disable(11);
  Dbg_Rst_11     <= Dbg_Rst_I(11);
  Dbg_TrClk_11   <= Dbg_TrClk;
  Dbg_TrReady_11 <= Dbg_TrReady(11);

  Dbg_Disable_12 <= Dbg_Disable(12);
  Dbg_Rst_12     <= Dbg_Rst_I(12);
  Dbg_TrClk_12   <= Dbg_TrClk;
  Dbg_TrReady_12 <= Dbg_TrReady(12);

  Dbg_Disable_13 <= Dbg_Disable(13);
  Dbg_Rst_13     <= Dbg_Rst_I(13);
  Dbg_TrClk_13   <= Dbg_TrClk;
  Dbg_TrReady_13 <= Dbg_TrReady(13);

  Dbg_Disable_14 <= Dbg_Disable(14);
  Dbg_Rst_14     <= Dbg_Rst_I(14);
  Dbg_TrClk_14   <= Dbg_TrClk;
  Dbg_TrReady_14 <= Dbg_TrReady(14);

  Dbg_Disable_15 <= Dbg_Disable(15);
  Dbg_Rst_15     <= Dbg_Rst_I(15);
  Dbg_TrClk_15   <= Dbg_TrClk;
  Dbg_TrReady_15 <= Dbg_TrReady(15);

  Dbg_Disable_16 <= Dbg_Disable(16);
  Dbg_Rst_16     <= Dbg_Rst_I(16);
  Dbg_TrClk_16   <= Dbg_TrClk;
  Dbg_TrReady_16 <= Dbg_TrReady(16);

  Dbg_Disable_17 <= Dbg_Disable(17);
  Dbg_Rst_17     <= Dbg_Rst_I(17);
  Dbg_TrClk_17   <= Dbg_TrClk;
  Dbg_TrReady_17 <= Dbg_TrReady(17);

  Dbg_Disable_18 <= Dbg_Disable(18);
  Dbg_Rst_18     <= Dbg_Rst_I(18);
  Dbg_TrClk_18   <= Dbg_TrClk;
  Dbg_TrReady_18 <= Dbg_TrReady(18);

  Dbg_Disable_19 <= Dbg_Disable(19);
  Dbg_Rst_19     <= Dbg_Rst_I(19);
  Dbg_TrClk_19   <= Dbg_TrClk;
  Dbg_TrReady_19 <= Dbg_TrReady(19);

  Dbg_Disable_20 <= Dbg_Disable(20);
  Dbg_Rst_20     <= Dbg_Rst_I(20);
  Dbg_TrClk_20   <= Dbg_TrClk;
  Dbg_TrReady_20 <= Dbg_TrReady(20);

  Dbg_Disable_21 <= Dbg_Disable(21);
  Dbg_Rst_21     <= Dbg_Rst_I(21);
  Dbg_TrClk_21   <= Dbg_TrClk;
  Dbg_TrReady_21 <= Dbg_TrReady(21);

  Dbg_Disable_22 <= Dbg_Disable(22);
  Dbg_Rst_22     <= Dbg_Rst_I(22);
  Dbg_TrClk_22   <= Dbg_TrClk;
  Dbg_TrReady_22 <= Dbg_TrReady(22);

  Dbg_Disable_23 <= Dbg_Disable(23);
  Dbg_Rst_23     <= Dbg_Rst_I(23);
  Dbg_TrClk_23   <= Dbg_TrClk;
  Dbg_TrReady_23 <= Dbg_TrReady(23);

  Dbg_Disable_24 <= Dbg_Disable(24);
  Dbg_Rst_24     <= Dbg_Rst_I(24);
  Dbg_TrClk_24   <= Dbg_TrClk;
  Dbg_TrReady_24 <= Dbg_TrReady(24);

  Dbg_Disable_25 <= Dbg_Disable(25);
  Dbg_Rst_25     <= Dbg_Rst_I(25);
  Dbg_TrClk_25   <= Dbg_TrClk;
  Dbg_TrReady_25 <= Dbg_TrReady(25);

  Dbg_Disable_26 <= Dbg_Disable(26);
  Dbg_Rst_26     <= Dbg_Rst_I(26);
  Dbg_TrClk_26   <= Dbg_TrClk;
  Dbg_TrReady_26 <= Dbg_TrReady(26);

  Dbg_Disable_27 <= Dbg_Disable(27);
  Dbg_Rst_27     <= Dbg_Rst_I(27);
  Dbg_TrClk_27   <= Dbg_TrClk;
  Dbg_TrReady_27 <= Dbg_TrReady(27);

  Dbg_Disable_28 <= Dbg_Disable(28);
  Dbg_Rst_28     <= Dbg_Rst_I(28);
  Dbg_TrClk_28   <= Dbg_TrClk;
  Dbg_TrReady_28 <= Dbg_TrReady(28);

  Dbg_Disable_29 <= Dbg_Disable(29);
  Dbg_Rst_29     <= Dbg_Rst_I(29);
  Dbg_TrClk_29   <= Dbg_TrClk;
  Dbg_TrReady_29 <= Dbg_TrReady(29);

  Dbg_Disable_30 <= Dbg_Disable(30);
  Dbg_Rst_30     <= Dbg_Rst_I(30);
  Dbg_TrClk_30   <= Dbg_TrClk;
  Dbg_TrReady_30 <= Dbg_TrReady(30);

  Dbg_Disable_31 <= Dbg_Disable(31);
  Dbg_Rst_31     <= Dbg_Rst_I(31);
  Dbg_TrClk_31   <= Dbg_TrClk;
  Dbg_TrReady_31 <= Dbg_TrReady(31);

  Use_Serial : if C_DEBUG_INTERFACE = 0 generate
  begin
    disable  <= jtag_disable;

    Generate_Dbg_Port_Signals : process (mb_debug_enabled_q, Dbg_Reg_En, Dbg_TDO_I)
      variable dbg_tdo_or  : std_logic;
      variable dbg_tdo_and : std_logic;
    begin  -- process Generate_Dbg_Port_Signals
      dbg_tdo_or   := '0';
      dbg_tdo_and  := '1';
      for I in 0 to C_EN_WIDTH-1 loop
        if (mb_debug_enabled_q(I) = '1') then
          Dbg_Reg_En_I(I) <= Dbg_Reg_En;
          dbg_tdo_or  := dbg_tdo_or  or  Dbg_TDO_I(I);
          dbg_tdo_and := dbg_tdo_and and Dbg_TDO_I(I);
        else
          Dbg_Reg_En_I(I) <= (others => '0');
        end if;
      end loop;  -- I
      for I in C_EN_WIDTH to 31 loop
        Dbg_Reg_En_I(I)   <= (others => '0');
      end loop;  -- I
      Dbg_TDO             <= dbg_tdo_or;
      Dbg_All_TDO         <= dbg_tdo_and;
    end process Generate_Dbg_Port_Signals;

    Dbg_Clk_0     <= Dbg_Clk;
    Dbg_TDI_0     <= Dbg_TDI;
    Dbg_Reg_En_0  <= Dbg_Reg_En_I(0);
    Dbg_Capture_0 <= Dbg_Capture;
    Dbg_Shift_0   <= Dbg_Shift;
    Dbg_Update_0  <= Dbg_Update;
    Dbg_TDO_I(0)  <= Dbg_TDO_0;

    Dbg_Clk_1     <= Dbg_Clk;
    Dbg_TDI_1     <= Dbg_TDI;
    Dbg_Reg_En_1  <= Dbg_Reg_En_I(1);
    Dbg_Capture_1 <= Dbg_Capture;
    Dbg_Shift_1   <= Dbg_Shift;
    Dbg_Update_1  <= Dbg_Update;
    Dbg_TDO_I(1)  <= Dbg_TDO_1;

    Dbg_Clk_2     <= Dbg_Clk;
    Dbg_TDI_2     <= Dbg_TDI;
    Dbg_Reg_En_2  <= Dbg_Reg_En_I(2);
    Dbg_Capture_2 <= Dbg_Capture;
    Dbg_Shift_2   <= Dbg_Shift;
    Dbg_Update_2  <= Dbg_Update;
    Dbg_TDO_I(2)  <= Dbg_TDO_2;

    Dbg_Clk_3     <= Dbg_Clk;
    Dbg_TDI_3     <= Dbg_TDI;
    Dbg_Reg_En_3  <= Dbg_Reg_En_I(3);
    Dbg_Capture_3 <= Dbg_Capture;
    Dbg_Shift_3   <= Dbg_Shift;
    Dbg_Update_3  <= Dbg_Update;
    Dbg_TDO_I(3)  <= Dbg_TDO_3;

    Dbg_Clk_4     <= Dbg_Clk;
    Dbg_TDI_4     <= Dbg_TDI;
    Dbg_Reg_En_4  <= Dbg_Reg_En_I(4);
    Dbg_Capture_4 <= Dbg_Capture;
    Dbg_Shift_4   <= Dbg_Shift;
    Dbg_Update_4  <= Dbg_Update;
    Dbg_TDO_I(4)  <= Dbg_TDO_4;

    Dbg_Clk_5     <= Dbg_Clk;
    Dbg_TDI_5     <= Dbg_TDI;
    Dbg_Reg_En_5  <= Dbg_Reg_En_I(5);
    Dbg_Capture_5 <= Dbg_Capture;
    Dbg_Shift_5   <= Dbg_Shift;
    Dbg_Update_5  <= Dbg_Update;
    Dbg_TDO_I(5)  <= Dbg_TDO_5;

    Dbg_Clk_6     <= Dbg_Clk;
    Dbg_TDI_6     <= Dbg_TDI;
    Dbg_Reg_En_6  <= Dbg_Reg_En_I(6);
    Dbg_Capture_6 <= Dbg_Capture;
    Dbg_Shift_6   <= Dbg_Shift;
    Dbg_Update_6  <= Dbg_Update;
    Dbg_TDO_I(6)  <= Dbg_TDO_6;

    Dbg_Clk_7     <= Dbg_Clk;
    Dbg_TDI_7     <= Dbg_TDI;
    Dbg_Reg_En_7  <= Dbg_Reg_En_I(7);
    Dbg_Capture_7 <= Dbg_Capture;
    Dbg_Shift_7   <= Dbg_Shift;
    Dbg_Update_7  <= Dbg_Update;
    Dbg_TDO_I(7)  <= Dbg_TDO_7;

    Dbg_Clk_8     <= Dbg_Clk;
    Dbg_TDI_8     <= Dbg_TDI;
    Dbg_Reg_En_8  <= Dbg_Reg_En_I(8);
    Dbg_Capture_8 <= Dbg_Capture;
    Dbg_Shift_8   <= Dbg_Shift;
    Dbg_Update_8  <= Dbg_Update;
    Dbg_TDO_I(8)  <= Dbg_TDO_8;

    Dbg_Clk_9     <= Dbg_Clk;
    Dbg_TDI_9     <= Dbg_TDI;
    Dbg_Reg_En_9  <= Dbg_Reg_En_I(9);
    Dbg_Capture_9 <= Dbg_Capture;
    Dbg_Shift_9   <= Dbg_Shift;
    Dbg_Update_9  <= Dbg_Update;
    Dbg_TDO_I(9)  <= Dbg_TDO_9;

    Dbg_Clk_10     <= Dbg_Clk;
    Dbg_TDI_10     <= Dbg_TDI;
    Dbg_Reg_En_10  <= Dbg_Reg_En_I(10);
    Dbg_Capture_10 <= Dbg_Capture;
    Dbg_Shift_10   <= Dbg_Shift;
    Dbg_Update_10  <= Dbg_Update;
    Dbg_TDO_I(10)  <= Dbg_TDO_10;

    Dbg_Clk_11     <= Dbg_Clk;
    Dbg_TDI_11     <= Dbg_TDI;
    Dbg_Reg_En_11  <= Dbg_Reg_En_I(11);
    Dbg_Capture_11 <= Dbg_Capture;
    Dbg_Shift_11   <= Dbg_Shift;
    Dbg_Update_11  <= Dbg_Update;
    Dbg_TDO_I(11)  <= Dbg_TDO_11;

    Dbg_Clk_12     <= Dbg_Clk;
    Dbg_TDI_12     <= Dbg_TDI;
    Dbg_Reg_En_12  <= Dbg_Reg_En_I(12);
    Dbg_Capture_12 <= Dbg_Capture;
    Dbg_Shift_12   <= Dbg_Shift;
    Dbg_Update_12  <= Dbg_Update;
    Dbg_TDO_I(12)  <= Dbg_TDO_12;

    Dbg_Clk_13     <= Dbg_Clk;
    Dbg_TDI_13     <= Dbg_TDI;
    Dbg_Reg_En_13  <= Dbg_Reg_En_I(13);
    Dbg_Capture_13 <= Dbg_Capture;
    Dbg_Shift_13   <= Dbg_Shift;
    Dbg_Update_13  <= Dbg_Update;
    Dbg_TDO_I(13)  <= Dbg_TDO_13;

    Dbg_Clk_14     <= Dbg_Clk;
    Dbg_TDI_14     <= Dbg_TDI;
    Dbg_Reg_En_14  <= Dbg_Reg_En_I(14);
    Dbg_Capture_14 <= Dbg_Capture;
    Dbg_Shift_14   <= Dbg_Shift;
    Dbg_Update_14  <= Dbg_Update;
    Dbg_TDO_I(14)  <= Dbg_TDO_14;

    Dbg_Clk_15     <= Dbg_Clk;
    Dbg_TDI_15     <= Dbg_TDI;
    Dbg_Reg_En_15  <= Dbg_Reg_En_I(15);
    Dbg_Capture_15 <= Dbg_Capture;
    Dbg_Shift_15   <= Dbg_Shift;
    Dbg_Update_15  <= Dbg_Update;
    Dbg_TDO_I(15)  <= Dbg_TDO_15;

    Dbg_Clk_16     <= Dbg_Clk;
    Dbg_TDI_16     <= Dbg_TDI;
    Dbg_Reg_En_16  <= Dbg_Reg_En_I(16);
    Dbg_Capture_16 <= Dbg_Capture;
    Dbg_Shift_16   <= Dbg_Shift;
    Dbg_Update_16  <= Dbg_Update;
    Dbg_TDO_I(16)  <= Dbg_TDO_16;

    Dbg_Clk_17     <= Dbg_Clk;
    Dbg_TDI_17     <= Dbg_TDI;
    Dbg_Reg_En_17  <= Dbg_Reg_En_I(17);
    Dbg_Capture_17 <= Dbg_Capture;
    Dbg_Shift_17   <= Dbg_Shift;
    Dbg_Update_17  <= Dbg_Update;
    Dbg_TDO_I(17)  <= Dbg_TDO_17;

    Dbg_Clk_18     <= Dbg_Clk;
    Dbg_TDI_18     <= Dbg_TDI;
    Dbg_Reg_En_18  <= Dbg_Reg_En_I(18);
    Dbg_Capture_18 <= Dbg_Capture;
    Dbg_Shift_18   <= Dbg_Shift;
    Dbg_Update_18  <= Dbg_Update;
    Dbg_TDO_I(18)  <= Dbg_TDO_18;

    Dbg_Clk_19     <= Dbg_Clk;
    Dbg_TDI_19     <= Dbg_TDI;
    Dbg_Reg_En_19  <= Dbg_Reg_En_I(19);
    Dbg_Capture_19 <= Dbg_Capture;
    Dbg_Shift_19   <= Dbg_Shift;
    Dbg_Update_19  <= Dbg_Update;
    Dbg_TDO_I(19)  <= Dbg_TDO_19;

    Dbg_Clk_20     <= Dbg_Clk;
    Dbg_TDI_20     <= Dbg_TDI;
    Dbg_Reg_En_20  <= Dbg_Reg_En_I(20);
    Dbg_Capture_20 <= Dbg_Capture;
    Dbg_Shift_20   <= Dbg_Shift;
    Dbg_Update_20  <= Dbg_Update;
    Dbg_TDO_I(20)  <= Dbg_TDO_20;

    Dbg_Clk_21     <= Dbg_Clk;
    Dbg_TDI_21     <= Dbg_TDI;
    Dbg_Reg_En_21  <= Dbg_Reg_En_I(21);
    Dbg_Capture_21 <= Dbg_Capture;
    Dbg_Shift_21   <= Dbg_Shift;
    Dbg_Update_21  <= Dbg_Update;
    Dbg_TDO_I(21)  <= Dbg_TDO_21;

    Dbg_Clk_22     <= Dbg_Clk;
    Dbg_TDI_22     <= Dbg_TDI;
    Dbg_Reg_En_22  <= Dbg_Reg_En_I(22);
    Dbg_Capture_22 <= Dbg_Capture;
    Dbg_Shift_22   <= Dbg_Shift;
    Dbg_Update_22  <= Dbg_Update;
    Dbg_TDO_I(22)  <= Dbg_TDO_22;

    Dbg_Clk_23     <= Dbg_Clk;
    Dbg_TDI_23     <= Dbg_TDI;
    Dbg_Reg_En_23  <= Dbg_Reg_En_I(23);
    Dbg_Capture_23 <= Dbg_Capture;
    Dbg_Shift_23   <= Dbg_Shift;
    Dbg_Update_23  <= Dbg_Update;
    Dbg_TDO_I(23)  <= Dbg_TDO_23;

    Dbg_Clk_24     <= Dbg_Clk;
    Dbg_TDI_24     <= Dbg_TDI;
    Dbg_Reg_En_24  <= Dbg_Reg_En_I(24);
    Dbg_Capture_24 <= Dbg_Capture;
    Dbg_Shift_24   <= Dbg_Shift;
    Dbg_Update_24  <= Dbg_Update;
    Dbg_TDO_I(24)  <= Dbg_TDO_24;

    Dbg_Clk_25     <= Dbg_Clk;
    Dbg_TDI_25     <= Dbg_TDI;
    Dbg_Reg_En_25  <= Dbg_Reg_En_I(25);
    Dbg_Capture_25 <= Dbg_Capture;
    Dbg_Shift_25   <= Dbg_Shift;
    Dbg_Update_25  <= Dbg_Update;
    Dbg_TDO_I(25)  <= Dbg_TDO_25;

    Dbg_Clk_26     <= Dbg_Clk;
    Dbg_TDI_26     <= Dbg_TDI;
    Dbg_Reg_En_26  <= Dbg_Reg_En_I(26);
    Dbg_Capture_26 <= Dbg_Capture;
    Dbg_Shift_26   <= Dbg_Shift;
    Dbg_Update_26  <= Dbg_Update;
    Dbg_TDO_I(26)  <= Dbg_TDO_26;

    Dbg_Clk_27     <= Dbg_Clk;
    Dbg_TDI_27     <= Dbg_TDI;
    Dbg_Reg_En_27  <= Dbg_Reg_En_I(27);
    Dbg_Capture_27 <= Dbg_Capture;
    Dbg_Shift_27   <= Dbg_Shift;
    Dbg_Update_27  <= Dbg_Update;
    Dbg_TDO_I(27)  <= Dbg_TDO_27;

    Dbg_Clk_28     <= Dbg_Clk;
    Dbg_TDI_28     <= Dbg_TDI;
    Dbg_Reg_En_28  <= Dbg_Reg_En_I(28);
    Dbg_Capture_28 <= Dbg_Capture;
    Dbg_Shift_28   <= Dbg_Shift;
    Dbg_Update_28  <= Dbg_Update;
    Dbg_TDO_I(28)  <= Dbg_TDO_28;

    Dbg_Clk_29     <= Dbg_Clk;
    Dbg_TDI_29     <= Dbg_TDI;
    Dbg_Reg_En_29  <= Dbg_Reg_En_I(29);
    Dbg_Capture_29 <= Dbg_Capture;
    Dbg_Shift_29   <= Dbg_Shift;
    Dbg_Update_29  <= Dbg_Update;
    Dbg_TDO_I(29)  <= Dbg_TDO_29;

    Dbg_Clk_30     <= Dbg_Clk;
    Dbg_TDI_30     <= Dbg_TDI;
    Dbg_Reg_En_30  <= Dbg_Reg_En_I(30);
    Dbg_Capture_30 <= Dbg_Capture;
    Dbg_Shift_30   <= Dbg_Shift;
    Dbg_Update_30  <= Dbg_Update;
    Dbg_TDO_I(30)  <= Dbg_TDO_30;

    Dbg_Clk_31     <= Dbg_Clk;
    Dbg_TDI_31     <= Dbg_TDI;
    Dbg_Reg_En_31  <= Dbg_Reg_En_I(31);
    Dbg_Capture_31 <= Dbg_Capture;
    Dbg_Shift_31   <= Dbg_Shift;
    Dbg_Update_31  <= Dbg_Update;
    Dbg_TDO_I(31)  <= Dbg_TDO_31;

    -- Parallel signals used for Debug Trace and/or Debug Profiling
    Using_Dbg_AXI : if C_USE_DBG_AXI generate
      signal m_axi_wvalid_i  : std_logic_vector(0  to 31);
      signal m_axi_awvalid_i : std_logic_vector(0  to 31);
      signal m_axi_bready_i  : std_logic_vector(0  to 31);
      signal m_axi_arvalid_i : std_logic_vector(0  to 31);
      signal m_axi_rready_i  : std_logic_vector(0  to 31);

      signal m_axi_awready_i : std_logic_vector(0 to 31);
      signal m_axi_wready_i  : std_logic_vector(0 to 31);
      signal m_axi_bresp_i   : Resp_ARRAY;
      signal m_axi_bvalid_i  : std_logic_vector(0 to 31);
      signal m_axi_arready_i : std_logic_vector(0 to 31);
      signal m_axi_rdata_i   : RData_ARRAY;
      signal m_axi_rresp_i   : Resp_ARRAY;
      signal m_axi_rvalid_i  : std_logic_vector(0 to 31);
    begin

      Generate_Dbg_Port_Signals : process (m_axi_awready_i, m_axi_wready_i, m_axi_arready_i, m_axi_bresp_i,
                                           m_axi_bvalid_i, m_axi_rdata_i, m_axi_rresp_i, m_axi_rvalid_i,
                                           M_AXI_AWADDR, M_AXI_ARADDR, M_AXI_WVALID, M_AXI_AWVALID,
                                           M_AXI_BREADY, M_AXI_ARVALID, M_AXI_RREADY) is
        variable m_axi_awready_or : std_logic;
        variable m_axi_wready_or  : std_logic;
        variable m_axi_bresp_or   : std_logic_vector(1 downto 0);
        variable m_axi_bvalid_or  : std_logic;
        variable m_axi_arready_or : std_logic;
        variable m_axi_rdata_or   : std_logic_vector(31 downto 0);
        variable m_axi_rresp_or   : std_logic_vector(1 downto 0);
        variable m_axi_rvalid_or  : std_logic;

        variable awsel            : integer range 0 to 32;
        variable arsel            : integer range 0 to 32;
      begin  -- process Generate_Dbg_Port_Signals
        m_axi_wvalid_i   <= (others => '0');
        m_axi_awvalid_i  <= (others => '0');
        m_axi_bready_i   <= (others => '0');
        m_axi_arvalid_i  <= (others => '0');
        m_axi_rready_i   <= (others => '0');

        m_axi_awready_or := '0';
        m_axi_wready_or  := '0';
        m_axi_arready_or := '0';
        m_axi_bresp_or   := (others => '0');
        m_axi_bvalid_or  := '0';
        m_axi_rdata_or   := (others => '0');
        m_axi_rresp_or   := (others => '0');
        m_axi_rvalid_or  := '0';

        awsel := to_integer(unsigned(M_AXI_AWADDR(20 downto 15)));
        arsel := to_integer(unsigned(M_AXI_ARADDR(20 downto 15)));

        for I in 1 to C_EN_WIDTH loop
          if I = awsel then
            m_axi_wvalid_i(I-1)  <= M_AXI_WVALID;
            m_axi_awvalid_i(I-1) <= M_AXI_AWVALID;
            m_axi_bready_i(I-1)  <= M_AXI_BREADY;
          end if;
          if I = arsel then
            m_axi_arvalid_i(I-1) <= M_AXI_ARVALID;
            m_axi_rready_i(I-1)  <= M_AXI_RREADY;
          end if;

          m_axi_awready_or := m_axi_awready_or or m_axi_awready_i(I-1);
          m_axi_wready_or  := m_axi_wready_or  or m_axi_wready_i(I-1);
          m_axi_arready_or := m_axi_arready_or or m_axi_arready_i(I-1);
          m_axi_bresp_or   := m_axi_bresp_or   or m_axi_bresp_i(I-1);
          m_axi_bvalid_or  := m_axi_bvalid_or  or m_axi_bvalid_i(I-1);
          m_axi_rdata_or   := m_axi_rdata_or   or m_axi_rdata_i(I-1);
          m_axi_rresp_or   := m_axi_rresp_or   or m_axi_rresp_i(I-1);
          m_axi_rvalid_or  := m_axi_rvalid_or  or m_axi_rvalid_i(I-1);
        end loop;

        M_AXI_AWREADY       <= m_axi_awready_or;
        M_AXI_WREADY        <= m_axi_wready_or;
        M_AXI_BRESP         <= m_axi_bresp_or;
        M_AXI_BVALID        <= m_axi_bvalid_or;
        M_AXI_ARREADY       <= m_axi_arready_or;
        M_AXI_RDATA         <= m_axi_rdata_or;
        M_AXI_RRESP         <= m_axi_rresp_or;
        M_AXI_RVALID        <= m_axi_rvalid_or;
      end process Generate_Dbg_Port_Signals;

      Dbg_AWADDR_0        <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_0         <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_0        <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_0       <= m_axi_awvalid_i(0);
      Dbg_WVALID_0        <= m_axi_wvalid_i(0);
      Dbg_BREADY_0        <= m_axi_bready_i(0);
      Dbg_ARVALID_0       <= m_axi_arvalid_i(0);
      Dbg_RREADY_0        <= m_axi_rready_i(0);
      m_axi_awready_i(0)  <= Dbg_AWREADY_0;
      m_axi_wready_i(0)   <= Dbg_WREADY_0;
      m_axi_bresp_i(0)    <= Dbg_BRESP_0;
      m_axi_bvalid_i(0)   <= Dbg_BVALID_0;
      m_axi_arready_i(0)  <= Dbg_ARREADY_0;
      m_axi_rdata_i(0)    <= Dbg_RDATA_0;
      m_axi_rresp_i(0)    <= Dbg_RRESP_0;
      m_axi_rvalid_i(0)   <= Dbg_RVALID_0;

      Dbg_AWADDR_1        <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_1         <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_1        <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_1       <= m_axi_awvalid_i(1);
      Dbg_WVALID_1        <= m_axi_wvalid_i(1);
      Dbg_BREADY_1        <= m_axi_bready_i(1);
      Dbg_ARVALID_1       <= m_axi_arvalid_i(1);
      Dbg_RREADY_1        <= m_axi_rready_i(1);
      m_axi_awready_i(1)  <= Dbg_AWREADY_1;
      m_axi_wready_i(1)   <= Dbg_WREADY_1;
      m_axi_bresp_i(1)    <= Dbg_BRESP_1;
      m_axi_bvalid_i(1)   <= Dbg_BVALID_1;
      m_axi_arready_i(1)  <= Dbg_ARREADY_1;
      m_axi_rdata_i(1)    <= Dbg_RDATA_1;
      m_axi_rresp_i(1)    <= Dbg_RRESP_1;
      m_axi_rvalid_i(1)   <= Dbg_RVALID_1;

      Dbg_AWADDR_2        <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_2         <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_2        <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_2       <= m_axi_awvalid_i(2);
      Dbg_WVALID_2        <= m_axi_wvalid_i(2);
      Dbg_BREADY_2        <= m_axi_bready_i(2);
      Dbg_ARVALID_2       <= m_axi_arvalid_i(2);
      Dbg_RREADY_2        <= m_axi_rready_i(2);
      m_axi_awready_i(2)  <= Dbg_AWREADY_2;
      m_axi_wready_i(2)   <= Dbg_WREADY_2;
      m_axi_bresp_i(2)    <= Dbg_BRESP_2;
      m_axi_bvalid_i(2)   <= Dbg_BVALID_2;
      m_axi_arready_i(2)  <= Dbg_ARREADY_2;
      m_axi_rdata_i(2)    <= Dbg_RDATA_2;
      m_axi_rresp_i(2)    <= Dbg_RRESP_2;
      m_axi_rvalid_i(2)   <= Dbg_RVALID_2;

      Dbg_AWADDR_3        <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_3         <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_3        <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_3       <= m_axi_awvalid_i(3);
      Dbg_WVALID_3        <= m_axi_wvalid_i(3);
      Dbg_BREADY_3        <= m_axi_bready_i(3);
      Dbg_ARVALID_3       <= m_axi_arvalid_i(3);
      Dbg_RREADY_3        <= m_axi_rready_i(3);
      m_axi_awready_i(3)  <= Dbg_AWREADY_3;
      m_axi_wready_i(3)   <= Dbg_WREADY_3;
      m_axi_bresp_i(3)    <= Dbg_BRESP_3;
      m_axi_bvalid_i(3)   <= Dbg_BVALID_3;
      m_axi_arready_i(3)  <= Dbg_ARREADY_3;
      m_axi_rdata_i(3)    <= Dbg_RDATA_3;
      m_axi_rresp_i(3)    <= Dbg_RRESP_3;
      m_axi_rvalid_i(3)   <= Dbg_RVALID_3;

      Dbg_AWADDR_4        <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_4         <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_4        <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_4       <= m_axi_awvalid_i(4);
      Dbg_WVALID_4        <= m_axi_wvalid_i(4);
      Dbg_BREADY_4        <= m_axi_bready_i(4);
      Dbg_ARVALID_4       <= m_axi_arvalid_i(4);
      Dbg_RREADY_4        <= m_axi_rready_i(4);
      m_axi_awready_i(4)  <= Dbg_AWREADY_4;
      m_axi_wready_i(4)   <= Dbg_WREADY_4;
      m_axi_bresp_i(4)    <= Dbg_BRESP_4;
      m_axi_bvalid_i(4)   <= Dbg_BVALID_4;
      m_axi_arready_i(4)  <= Dbg_ARREADY_4;
      m_axi_rdata_i(4)    <= Dbg_RDATA_4;
      m_axi_rresp_i(4)    <= Dbg_RRESP_4;
      m_axi_rvalid_i(4)   <= Dbg_RVALID_4;

      Dbg_AWADDR_5        <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_5         <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_5        <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_5       <= m_axi_awvalid_i(5);
      Dbg_WVALID_5        <= m_axi_wvalid_i(5);
      Dbg_BREADY_5        <= m_axi_bready_i(5);
      Dbg_ARVALID_5       <= m_axi_arvalid_i(5);
      Dbg_RREADY_5        <= m_axi_rready_i(5);
      m_axi_awready_i(5)  <= Dbg_AWREADY_5;
      m_axi_wready_i(5)   <= Dbg_WREADY_5;
      m_axi_bresp_i(5)    <= Dbg_BRESP_5;
      m_axi_bvalid_i(5)   <= Dbg_BVALID_5;
      m_axi_arready_i(5)  <= Dbg_ARREADY_5;
      m_axi_rdata_i(5)    <= Dbg_RDATA_5;
      m_axi_rresp_i(5)    <= Dbg_RRESP_5;
      m_axi_rvalid_i(5)   <= Dbg_RVALID_5;

      Dbg_AWADDR_6        <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_6         <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_6        <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_6       <= m_axi_awvalid_i(6);
      Dbg_WVALID_6        <= m_axi_wvalid_i(6);
      Dbg_BREADY_6        <= m_axi_bready_i(6);
      Dbg_ARVALID_6       <= m_axi_arvalid_i(6);
      Dbg_RREADY_6        <= m_axi_rready_i(6);
      m_axi_awready_i(6)  <= Dbg_AWREADY_6;
      m_axi_wready_i(6)   <= Dbg_WREADY_6;
      m_axi_bresp_i(6)    <= Dbg_BRESP_6;
      m_axi_bvalid_i(6)   <= Dbg_BVALID_6;
      m_axi_arready_i(6)  <= Dbg_ARREADY_6;
      m_axi_rdata_i(6)    <= Dbg_RDATA_6;
      m_axi_rresp_i(6)    <= Dbg_RRESP_6;
      m_axi_rvalid_i(6)   <= Dbg_RVALID_6;

      Dbg_AWADDR_7        <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_7         <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_7        <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_7       <= m_axi_awvalid_i(7);
      Dbg_WVALID_7        <= m_axi_wvalid_i(7);
      Dbg_BREADY_7        <= m_axi_bready_i(7);
      Dbg_ARVALID_7       <= m_axi_arvalid_i(7);
      Dbg_RREADY_7        <= m_axi_rready_i(7);
      m_axi_awready_i(7)  <= Dbg_AWREADY_7;
      m_axi_wready_i(7)   <= Dbg_WREADY_7;
      m_axi_bresp_i(7)    <= Dbg_BRESP_7;
      m_axi_bvalid_i(7)   <= Dbg_BVALID_7;
      m_axi_arready_i(7)  <= Dbg_ARREADY_7;
      m_axi_rdata_i(7)    <= Dbg_RDATA_7;
      m_axi_rresp_i(7)    <= Dbg_RRESP_7;
      m_axi_rvalid_i(7)   <= Dbg_RVALID_7;

      Dbg_AWADDR_8        <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_8         <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_8        <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_8       <= m_axi_awvalid_i(8);
      Dbg_WVALID_8        <= m_axi_wvalid_i(8);
      Dbg_BREADY_8        <= m_axi_bready_i(8);
      Dbg_ARVALID_8       <= m_axi_arvalid_i(8);
      Dbg_RREADY_8        <= m_axi_rready_i(8);
      m_axi_awready_i(8)  <= Dbg_AWREADY_8;
      m_axi_wready_i(8)   <= Dbg_WREADY_8;
      m_axi_bresp_i(8)    <= Dbg_BRESP_8;
      m_axi_bvalid_i(8)   <= Dbg_BVALID_8;
      m_axi_arready_i(8)  <= Dbg_ARREADY_8;
      m_axi_rdata_i(8)    <= Dbg_RDATA_8;
      m_axi_rresp_i(8)    <= Dbg_RRESP_8;
      m_axi_rvalid_i(8)   <= Dbg_RVALID_8;

      Dbg_AWADDR_9        <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_9         <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_9        <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_9       <= m_axi_awvalid_i(9);
      Dbg_WVALID_9        <= m_axi_wvalid_i(9);
      Dbg_BREADY_9        <= m_axi_bready_i(9);
      Dbg_ARVALID_9       <= m_axi_arvalid_i(9);
      Dbg_RREADY_9        <= m_axi_rready_i(9);
      m_axi_awready_i(9)  <= Dbg_AWREADY_9;
      m_axi_wready_i(9)   <= Dbg_WREADY_9;
      m_axi_bresp_i(9)    <= Dbg_BRESP_9;
      m_axi_bvalid_i(9)   <= Dbg_BVALID_9;
      m_axi_arready_i(9)  <= Dbg_ARREADY_9;
      m_axi_rdata_i(9)    <= Dbg_RDATA_9;
      m_axi_rresp_i(9)    <= Dbg_RRESP_9;
      m_axi_rvalid_i(9)   <= Dbg_RVALID_9;

      Dbg_AWADDR_10       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_10        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_10       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_10      <= m_axi_awvalid_i(10);
      Dbg_WVALID_10       <= m_axi_wvalid_i(10);
      Dbg_BREADY_10       <= m_axi_bready_i(10);
      Dbg_ARVALID_10      <= m_axi_arvalid_i(10);
      Dbg_RREADY_10       <= m_axi_rready_i(10);
      m_axi_awready_i(10) <= Dbg_AWREADY_10;
      m_axi_wready_i(10)  <= Dbg_WREADY_10;
      m_axi_bresp_i(10)   <= Dbg_BRESP_10;
      m_axi_bvalid_i(10)  <= Dbg_BVALID_10;
      m_axi_arready_i(10) <= Dbg_ARREADY_10;
      m_axi_rdata_i(10)   <= Dbg_RDATA_10;
      m_axi_rresp_i(10)   <= Dbg_RRESP_10;
      m_axi_rvalid_i(10)  <= Dbg_RVALID_10;

      Dbg_AWADDR_11       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_11        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_11       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_11      <= m_axi_awvalid_i(11);
      Dbg_WVALID_11       <= m_axi_wvalid_i(11);
      Dbg_BREADY_11       <= m_axi_bready_i(11);
      Dbg_ARVALID_11      <= m_axi_arvalid_i(11);
      Dbg_RREADY_11       <= m_axi_rready_i(11);
      m_axi_awready_i(11) <= Dbg_AWREADY_11;
      m_axi_wready_i(11)  <= Dbg_WREADY_11;
      m_axi_bresp_i(11)   <= Dbg_BRESP_11;
      m_axi_bvalid_i(11)  <= Dbg_BVALID_11;
      m_axi_arready_i(11) <= Dbg_ARREADY_11;
      m_axi_rdata_i(11)   <= Dbg_RDATA_11;
      m_axi_rresp_i(11)   <= Dbg_RRESP_11;
      m_axi_rvalid_i(11)  <= Dbg_RVALID_11;

      Dbg_AWADDR_12       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_12        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_12       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_12      <= m_axi_awvalid_i(12);
      Dbg_WVALID_12       <= m_axi_wvalid_i(12);
      Dbg_BREADY_12       <= m_axi_bready_i(12);
      Dbg_ARVALID_12      <= m_axi_arvalid_i(12);
      Dbg_RREADY_12       <= m_axi_rready_i(12);
      m_axi_awready_i(12) <= Dbg_AWREADY_12;
      m_axi_wready_i(12)  <= Dbg_WREADY_12;
      m_axi_bresp_i(12)   <= Dbg_BRESP_12;
      m_axi_bvalid_i(12)  <= Dbg_BVALID_12;
      m_axi_arready_i(12) <= Dbg_ARREADY_12;
      m_axi_rdata_i(12)   <= Dbg_RDATA_12;
      m_axi_rresp_i(12)   <= Dbg_RRESP_12;
      m_axi_rvalid_i(12)  <= Dbg_RVALID_12;

      Dbg_AWADDR_13       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_13        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_13       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_13      <= m_axi_awvalid_i(13);
      Dbg_WVALID_13       <= m_axi_wvalid_i(13);
      Dbg_BREADY_13       <= m_axi_bready_i(13);
      Dbg_ARVALID_13      <= m_axi_arvalid_i(13);
      Dbg_RREADY_13       <= m_axi_rready_i(13);
      m_axi_awready_i(13) <= Dbg_AWREADY_13;
      m_axi_wready_i(13)  <= Dbg_WREADY_13;
      m_axi_bresp_i(13)   <= Dbg_BRESP_13;
      m_axi_bvalid_i(13)  <= Dbg_BVALID_13;
      m_axi_arready_i(13) <= Dbg_ARREADY_13;
      m_axi_rdata_i(13)   <= Dbg_RDATA_13;
      m_axi_rresp_i(13)   <= Dbg_RRESP_13;
      m_axi_rvalid_i(13)  <= Dbg_RVALID_13;

      Dbg_AWADDR_14       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_14        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_14       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_14      <= m_axi_awvalid_i(14);
      Dbg_WVALID_14       <= m_axi_wvalid_i(14);
      Dbg_BREADY_14       <= m_axi_bready_i(14);
      Dbg_ARVALID_14      <= m_axi_arvalid_i(14);
      Dbg_RREADY_14       <= m_axi_rready_i(14);
      m_axi_awready_i(14) <= Dbg_AWREADY_14;
      m_axi_wready_i(14)  <= Dbg_WREADY_14;
      m_axi_bresp_i(14)   <= Dbg_BRESP_14;
      m_axi_bvalid_i(14)  <= Dbg_BVALID_14;
      m_axi_arready_i(14) <= Dbg_ARREADY_14;
      m_axi_rdata_i(14)   <= Dbg_RDATA_14;
      m_axi_rresp_i(14)   <= Dbg_RRESP_14;
      m_axi_rvalid_i(14)  <= Dbg_RVALID_14;

      Dbg_AWADDR_15       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_15        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_15       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_15      <= m_axi_awvalid_i(15);
      Dbg_WVALID_15       <= m_axi_wvalid_i(15);
      Dbg_BREADY_15       <= m_axi_bready_i(15);
      Dbg_ARVALID_15      <= m_axi_arvalid_i(15);
      Dbg_RREADY_15       <= m_axi_rready_i(15);
      m_axi_awready_i(15) <= Dbg_AWREADY_15;
      m_axi_wready_i(15)  <= Dbg_WREADY_15;
      m_axi_bresp_i(15)   <= Dbg_BRESP_15;
      m_axi_bvalid_i(15)  <= Dbg_BVALID_15;
      m_axi_arready_i(15) <= Dbg_ARREADY_15;
      m_axi_rdata_i(15)   <= Dbg_RDATA_15;
      m_axi_rresp_i(15)   <= Dbg_RRESP_15;
      m_axi_rvalid_i(15)  <= Dbg_RVALID_15;

      Dbg_AWADDR_16       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_16        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_16       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_16      <= m_axi_awvalid_i(16);
      Dbg_WVALID_16       <= m_axi_wvalid_i(16);
      Dbg_BREADY_16       <= m_axi_bready_i(16);
      Dbg_ARVALID_16      <= m_axi_arvalid_i(16);
      Dbg_RREADY_16       <= m_axi_rready_i(16);
      m_axi_awready_i(16) <= Dbg_AWREADY_16;
      m_axi_wready_i(16)  <= Dbg_WREADY_16;
      m_axi_bresp_i(16)   <= Dbg_BRESP_16;
      m_axi_bvalid_i(16)  <= Dbg_BVALID_16;
      m_axi_arready_i(16) <= Dbg_ARREADY_16;
      m_axi_rdata_i(16)   <= Dbg_RDATA_16;
      m_axi_rresp_i(16)   <= Dbg_RRESP_16;
      m_axi_rvalid_i(16)  <= Dbg_RVALID_16;

      Dbg_AWADDR_17       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_17        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_17       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_17      <= m_axi_awvalid_i(17);
      Dbg_WVALID_17       <= m_axi_wvalid_i(17);
      Dbg_BREADY_17       <= m_axi_bready_i(17);
      Dbg_ARVALID_17      <= m_axi_arvalid_i(17);
      Dbg_RREADY_17       <= m_axi_rready_i(17);
      m_axi_awready_i(17) <= Dbg_AWREADY_17;
      m_axi_wready_i(17)  <= Dbg_WREADY_17;
      m_axi_bresp_i(17)   <= Dbg_BRESP_17;
      m_axi_bvalid_i(17)  <= Dbg_BVALID_17;
      m_axi_arready_i(17) <= Dbg_ARREADY_17;
      m_axi_rdata_i(17)   <= Dbg_RDATA_17;
      m_axi_rresp_i(17)   <= Dbg_RRESP_17;
      m_axi_rvalid_i(17)  <= Dbg_RVALID_17;

      Dbg_AWADDR_18       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_18        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_18       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_18      <= m_axi_awvalid_i(18);
      Dbg_WVALID_18       <= m_axi_wvalid_i(18);
      Dbg_BREADY_18       <= m_axi_bready_i(18);
      Dbg_ARVALID_18      <= m_axi_arvalid_i(18);
      Dbg_RREADY_18       <= m_axi_rready_i(18);
      m_axi_awready_i(18) <= Dbg_AWREADY_18;
      m_axi_wready_i(18)  <= Dbg_WREADY_18;
      m_axi_bresp_i(18)   <= Dbg_BRESP_18;
      m_axi_bvalid_i(18)  <= Dbg_BVALID_18;
      m_axi_arready_i(18) <= Dbg_ARREADY_18;
      m_axi_rdata_i(18)   <= Dbg_RDATA_18;
      m_axi_rresp_i(18)   <= Dbg_RRESP_18;
      m_axi_rvalid_i(18)  <= Dbg_RVALID_18;

      Dbg_AWADDR_19       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_19        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_19       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_19      <= m_axi_awvalid_i(19);
      Dbg_WVALID_19       <= m_axi_wvalid_i(19);
      Dbg_BREADY_19       <= m_axi_bready_i(19);
      Dbg_ARVALID_19      <= m_axi_arvalid_i(19);
      Dbg_RREADY_19       <= m_axi_rready_i(19);
      m_axi_awready_i(19) <= Dbg_AWREADY_19;
      m_axi_wready_i(19)  <= Dbg_WREADY_19;
      m_axi_bresp_i(19)   <= Dbg_BRESP_19;
      m_axi_bvalid_i(19)  <= Dbg_BVALID_19;
      m_axi_arready_i(19) <= Dbg_ARREADY_19;
      m_axi_rdata_i(19)   <= Dbg_RDATA_19;
      m_axi_rresp_i(19)   <= Dbg_RRESP_19;
      m_axi_rvalid_i(19)  <= Dbg_RVALID_19;

      Dbg_AWADDR_20       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_20        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_20       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_20      <= m_axi_awvalid_i(20);
      Dbg_WVALID_20       <= m_axi_wvalid_i(20);
      Dbg_BREADY_20       <= m_axi_bready_i(20);
      Dbg_ARVALID_20      <= m_axi_arvalid_i(20);
      Dbg_RREADY_20       <= m_axi_rready_i(20);
      m_axi_awready_i(20) <= Dbg_AWREADY_20;
      m_axi_wready_i(20)  <= Dbg_WREADY_20;
      m_axi_bresp_i(20)   <= Dbg_BRESP_20;
      m_axi_bvalid_i(20)  <= Dbg_BVALID_20;
      m_axi_arready_i(20) <= Dbg_ARREADY_20;
      m_axi_rdata_i(20)   <= Dbg_RDATA_20;
      m_axi_rresp_i(20)   <= Dbg_RRESP_20;
      m_axi_rvalid_i(20)  <= Dbg_RVALID_20;

      Dbg_AWADDR_21       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_21        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_21       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_21      <= m_axi_awvalid_i(21);
      Dbg_WVALID_21       <= m_axi_wvalid_i(21);
      Dbg_BREADY_21       <= m_axi_bready_i(21);
      Dbg_ARVALID_21      <= m_axi_arvalid_i(21);
      Dbg_RREADY_21       <= m_axi_rready_i(21);
      m_axi_awready_i(21) <= Dbg_AWREADY_21;
      m_axi_wready_i(21)  <= Dbg_WREADY_21;
      m_axi_bresp_i(21)   <= Dbg_BRESP_21;
      m_axi_bvalid_i(21)  <= Dbg_BVALID_21;
      m_axi_arready_i(21) <= Dbg_ARREADY_21;
      m_axi_rdata_i(21)   <= Dbg_RDATA_21;
      m_axi_rresp_i(21)   <= Dbg_RRESP_21;
      m_axi_rvalid_i(21)  <= Dbg_RVALID_21;

      Dbg_AWADDR_22       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_22        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_22       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_22      <= m_axi_awvalid_i(22);
      Dbg_WVALID_22       <= m_axi_wvalid_i(22);
      Dbg_BREADY_22       <= m_axi_bready_i(22);
      Dbg_ARVALID_22      <= m_axi_arvalid_i(22);
      Dbg_RREADY_22       <= m_axi_rready_i(22);
      m_axi_awready_i(22) <= Dbg_AWREADY_22;
      m_axi_wready_i(22)  <= Dbg_WREADY_22;
      m_axi_bresp_i(22)   <= Dbg_BRESP_22;
      m_axi_bvalid_i(22)  <= Dbg_BVALID_22;
      m_axi_arready_i(22) <= Dbg_ARREADY_22;
      m_axi_rdata_i(22)   <= Dbg_RDATA_22;
      m_axi_rresp_i(22)   <= Dbg_RRESP_22;
      m_axi_rvalid_i(22)  <= Dbg_RVALID_22;

      Dbg_AWADDR_23       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_23        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_23       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_23      <= m_axi_awvalid_i(23);
      Dbg_WVALID_23       <= m_axi_wvalid_i(23);
      Dbg_BREADY_23       <= m_axi_bready_i(23);
      Dbg_ARVALID_23      <= m_axi_arvalid_i(23);
      Dbg_RREADY_23       <= m_axi_rready_i(23);
      m_axi_awready_i(23) <= Dbg_AWREADY_23;
      m_axi_wready_i(23)  <= Dbg_WREADY_23;
      m_axi_bresp_i(23)   <= Dbg_BRESP_23;
      m_axi_bvalid_i(23)  <= Dbg_BVALID_23;
      m_axi_arready_i(23) <= Dbg_ARREADY_23;
      m_axi_rdata_i(23)   <= Dbg_RDATA_23;
      m_axi_rresp_i(23)   <= Dbg_RRESP_23;
      m_axi_rvalid_i(23)  <= Dbg_RVALID_23;

      Dbg_AWADDR_24       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_24        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_24       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_24      <= m_axi_awvalid_i(24);
      Dbg_WVALID_24       <= m_axi_wvalid_i(24);
      Dbg_BREADY_24       <= m_axi_bready_i(24);
      Dbg_ARVALID_24      <= m_axi_arvalid_i(24);
      Dbg_RREADY_24       <= m_axi_rready_i(24);
      m_axi_awready_i(24) <= Dbg_AWREADY_24;
      m_axi_wready_i(24)  <= Dbg_WREADY_24;
      m_axi_bresp_i(24)   <= Dbg_BRESP_24;
      m_axi_bvalid_i(24)  <= Dbg_BVALID_24;
      m_axi_arready_i(24) <= Dbg_ARREADY_24;
      m_axi_rdata_i(24)   <= Dbg_RDATA_24;
      m_axi_rresp_i(24)   <= Dbg_RRESP_24;
      m_axi_rvalid_i(24)  <= Dbg_RVALID_24;

      Dbg_AWADDR_25       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_25        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_25       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_25      <= m_axi_awvalid_i(25);
      Dbg_WVALID_25       <= m_axi_wvalid_i(25);
      Dbg_BREADY_25       <= m_axi_bready_i(25);
      Dbg_ARVALID_25      <= m_axi_arvalid_i(25);
      Dbg_RREADY_25       <= m_axi_rready_i(25);
      m_axi_awready_i(25) <= Dbg_AWREADY_25;
      m_axi_wready_i(25)  <= Dbg_WREADY_25;
      m_axi_bresp_i(25)   <= Dbg_BRESP_25;
      m_axi_bvalid_i(25)  <= Dbg_BVALID_25;
      m_axi_arready_i(25) <= Dbg_ARREADY_25;
      m_axi_rdata_i(25)   <= Dbg_RDATA_25;
      m_axi_rresp_i(25)   <= Dbg_RRESP_25;
      m_axi_rvalid_i(25)  <= Dbg_RVALID_25;

      Dbg_AWADDR_26       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_26        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_26       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_26      <= m_axi_awvalid_i(26);
      Dbg_WVALID_26       <= m_axi_wvalid_i(26);
      Dbg_BREADY_26       <= m_axi_bready_i(26);
      Dbg_ARVALID_26      <= m_axi_arvalid_i(26);
      Dbg_RREADY_26       <= m_axi_rready_i(26);
      m_axi_awready_i(26) <= Dbg_AWREADY_26;
      m_axi_wready_i(26)  <= Dbg_WREADY_26;
      m_axi_bresp_i(26)   <= Dbg_BRESP_26;
      m_axi_bvalid_i(26)  <= Dbg_BVALID_26;
      m_axi_arready_i(26) <= Dbg_ARREADY_26;
      m_axi_rdata_i(26)   <= Dbg_RDATA_26;
      m_axi_rresp_i(26)   <= Dbg_RRESP_26;
      m_axi_rvalid_i(26)  <= Dbg_RVALID_26;

      Dbg_AWADDR_27       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_27        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_27       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_27      <= m_axi_awvalid_i(27);
      Dbg_WVALID_27       <= m_axi_wvalid_i(27);
      Dbg_BREADY_27       <= m_axi_bready_i(27);
      Dbg_ARVALID_27      <= m_axi_arvalid_i(27);
      Dbg_RREADY_27       <= m_axi_rready_i(27);
      m_axi_awready_i(27) <= Dbg_AWREADY_27;
      m_axi_wready_i(27)  <= Dbg_WREADY_27;
      m_axi_bresp_i(27)   <= Dbg_BRESP_27;
      m_axi_bvalid_i(27)  <= Dbg_BVALID_27;
      m_axi_arready_i(27) <= Dbg_ARREADY_27;
      m_axi_rdata_i(27)   <= Dbg_RDATA_27;
      m_axi_rresp_i(27)   <= Dbg_RRESP_27;
      m_axi_rvalid_i(27)  <= Dbg_RVALID_27;

      Dbg_AWADDR_28       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_28        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_28       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_28      <= m_axi_awvalid_i(28);
      Dbg_WVALID_28       <= m_axi_wvalid_i(28);
      Dbg_BREADY_28       <= m_axi_bready_i(28);
      Dbg_ARVALID_28      <= m_axi_arvalid_i(28);
      Dbg_RREADY_28       <= m_axi_rready_i(28);
      m_axi_awready_i(28) <= Dbg_AWREADY_28;
      m_axi_wready_i(28)  <= Dbg_WREADY_28;
      m_axi_bresp_i(28)   <= Dbg_BRESP_28;
      m_axi_bvalid_i(28)  <= Dbg_BVALID_28;
      m_axi_arready_i(28) <= Dbg_ARREADY_28;
      m_axi_rdata_i(28)   <= Dbg_RDATA_28;
      m_axi_rresp_i(28)   <= Dbg_RRESP_28;
      m_axi_rvalid_i(28)  <= Dbg_RVALID_28;

      Dbg_AWADDR_29       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_29        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_29       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_29      <= m_axi_awvalid_i(29);
      Dbg_WVALID_29       <= m_axi_wvalid_i(29);
      Dbg_BREADY_29       <= m_axi_bready_i(29);
      Dbg_ARVALID_29      <= m_axi_arvalid_i(29);
      Dbg_RREADY_29       <= m_axi_rready_i(29);
      m_axi_awready_i(29) <= Dbg_AWREADY_29;
      m_axi_wready_i(29)  <= Dbg_WREADY_29;
      m_axi_bresp_i(29)   <= Dbg_BRESP_29;
      m_axi_bvalid_i(29)  <= Dbg_BVALID_29;
      m_axi_arready_i(29) <= Dbg_ARREADY_29;
      m_axi_rdata_i(29)   <= Dbg_RDATA_29;
      m_axi_rresp_i(29)   <= Dbg_RRESP_29;
      m_axi_rvalid_i(29)  <= Dbg_RVALID_29;

      Dbg_AWADDR_30       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_30        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_30       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_30      <= m_axi_awvalid_i(30);
      Dbg_WVALID_30       <= m_axi_wvalid_i(30);
      Dbg_BREADY_30       <= m_axi_bready_i(30);
      Dbg_ARVALID_30      <= m_axi_arvalid_i(30);
      Dbg_RREADY_30       <= m_axi_rready_i(30);
      m_axi_awready_i(30) <= Dbg_AWREADY_30;
      m_axi_wready_i(30)  <= Dbg_WREADY_30;
      m_axi_bresp_i(30)   <= Dbg_BRESP_30;
      m_axi_bvalid_i(30)  <= Dbg_BVALID_30;
      m_axi_arready_i(30) <= Dbg_ARREADY_30;
      m_axi_rdata_i(30)   <= Dbg_RDATA_30;
      m_axi_rresp_i(30)   <= Dbg_RRESP_30;
      m_axi_rvalid_i(30)  <= Dbg_RVALID_30;

      Dbg_AWADDR_31       <= M_AXI_AWADDR(14 downto 2);
      Dbg_WDATA_31        <= M_AXI_WDATA(31 downto 0);
      Dbg_ARADDR_31       <= M_AXI_ARADDR(14 downto 2);
      Dbg_AWVALID_31      <= m_axi_awvalid_i(31);
      Dbg_WVALID_31       <= m_axi_wvalid_i(31);
      Dbg_BREADY_31       <= m_axi_bready_i(31);
      Dbg_ARVALID_31      <= m_axi_arvalid_i(31);
      Dbg_RREADY_31       <= m_axi_rready_i(31);
      m_axi_awready_i(31) <= Dbg_AWREADY_31;
      m_axi_wready_i(31)  <= Dbg_WREADY_31;
      m_axi_bresp_i(31)   <= Dbg_BRESP_31;
      m_axi_bvalid_i(31)  <= Dbg_BVALID_31;
      m_axi_arready_i(31) <= Dbg_ARREADY_31;
      m_axi_rdata_i(31)   <= Dbg_RDATA_31;
      m_axi_rresp_i(31)   <= Dbg_RRESP_31;
      m_axi_rvalid_i(31)  <= Dbg_RVALID_31;
    end generate Using_Dbg_AXI;

    -- Unused parallel signals
    No_Dbg_AXI : if (not C_USE_DBG_AXI) generate
    begin
    Dbg_AWADDR_0       <= (others => '0');
    Dbg_AWVALID_0      <= '0';
    Dbg_AWREADY_I(0)   <= '0';
    Dbg_WDATA_0        <= (others => '0');
    Dbg_WVALID_0       <= '0';
    Dbg_WREADY_I(0)    <= '0';
    Dbg_BRESP_I(0)     <= (others => '0');
    Dbg_BVALID_I(0)    <= '0';
    Dbg_BREADY_0       <= '0';
    Dbg_ARADDR_0       <= (others => '0');
    Dbg_ARVALID_0      <= '0';
    Dbg_ARREADY_I(0)   <= '0';
    Dbg_RDATA_I(0)     <= (others => '0');
    Dbg_RRESP_I(0)     <= (others => '0');
    Dbg_RVALID_I(0)    <= '0';
    Dbg_RREADY_0       <= '0';

    Dbg_AWADDR_1       <= (others => '0');
    Dbg_AWVALID_1      <= '0';
    Dbg_AWREADY_I(1)   <= '0';
    Dbg_WDATA_1        <= (others => '0');
    Dbg_WVALID_1       <= '0';
    Dbg_WREADY_I(1)    <= '0';
    Dbg_BRESP_I(1)     <= (others => '0');
    Dbg_BVALID_I(1)    <= '0';
    Dbg_BREADY_1       <= '0';
    Dbg_ARADDR_1       <= (others => '0');
    Dbg_ARVALID_1      <= '0';
    Dbg_ARREADY_I(1)   <= '0';
    Dbg_RDATA_I(1)     <= (others => '0');
    Dbg_RRESP_I(1)     <= (others => '0');
    Dbg_RVALID_I(1)    <= '0';
    Dbg_RREADY_1       <= '0';

    Dbg_AWADDR_2       <= (others => '0');
    Dbg_AWVALID_2      <= '0';
    Dbg_AWREADY_I(2)   <= '0';
    Dbg_WDATA_2        <= (others => '0');
    Dbg_WVALID_2       <= '0';
    Dbg_WREADY_I(2)    <= '0';
    Dbg_BRESP_I(2)     <= (others => '0');
    Dbg_BVALID_I(2)    <= '0';
    Dbg_BREADY_2       <= '0';
    Dbg_ARADDR_2       <= (others => '0');
    Dbg_ARVALID_2      <= '0';
    Dbg_ARREADY_I(2)   <= '0';
    Dbg_RDATA_I(2)     <= (others => '0');
    Dbg_RRESP_I(2)     <= (others => '0');
    Dbg_RVALID_I(2)    <= '0';
    Dbg_RREADY_2       <= '0';

    Dbg_AWADDR_3       <= (others => '0');
    Dbg_AWVALID_3      <= '0';
    Dbg_AWREADY_I(3)   <= '0';
    Dbg_WDATA_3        <= (others => '0');
    Dbg_WVALID_3       <= '0';
    Dbg_WREADY_I(3)    <= '0';
    Dbg_BRESP_I(3)     <= (others => '0');
    Dbg_BVALID_I(3)    <= '0';
    Dbg_BREADY_3       <= '0';
    Dbg_ARADDR_3       <= (others => '0');
    Dbg_ARVALID_3      <= '0';
    Dbg_ARREADY_I(3)   <= '0';
    Dbg_RDATA_I(3)     <= (others => '0');
    Dbg_RRESP_I(3)     <= (others => '0');
    Dbg_RVALID_I(3)    <= '0';
    Dbg_RREADY_3       <= '0';

    Dbg_AWADDR_4       <= (others => '0');
    Dbg_AWVALID_4      <= '0';
    Dbg_AWREADY_I(4)   <= '0';
    Dbg_WDATA_4        <= (others => '0');
    Dbg_WVALID_4       <= '0';
    Dbg_WREADY_I(4)    <= '0';
    Dbg_BRESP_I(4)     <= (others => '0');
    Dbg_BVALID_I(4)    <= '0';
    Dbg_BREADY_4       <= '0';
    Dbg_ARADDR_4       <= (others => '0');
    Dbg_ARVALID_4      <= '0';
    Dbg_ARREADY_I(4)   <= '0';
    Dbg_RDATA_I(4)     <= (others => '0');
    Dbg_RRESP_I(4)     <= (others => '0');
    Dbg_RVALID_I(4)    <= '0';
    Dbg_RREADY_4       <= '0';

    Dbg_AWADDR_5       <= (others => '0');
    Dbg_AWVALID_5      <= '0';
    Dbg_AWREADY_I(5)   <= '0';
    Dbg_WDATA_5        <= (others => '0');
    Dbg_WVALID_5       <= '0';
    Dbg_WREADY_I(5)    <= '0';
    Dbg_BRESP_I(5)     <= (others => '0');
    Dbg_BVALID_I(5)    <= '0';
    Dbg_BREADY_5       <= '0';
    Dbg_ARADDR_5       <= (others => '0');
    Dbg_ARVALID_5      <= '0';
    Dbg_ARREADY_I(5)   <= '0';
    Dbg_RDATA_I(5)     <= (others => '0');
    Dbg_RRESP_I(5)     <= (others => '0');
    Dbg_RVALID_I(5)    <= '0';
    Dbg_RREADY_5       <= '0';

    Dbg_AWADDR_6       <= (others => '0');
    Dbg_AWVALID_6      <= '0';
    Dbg_AWREADY_I(6)   <= '0';
    Dbg_WDATA_6        <= (others => '0');
    Dbg_WVALID_6       <= '0';
    Dbg_WREADY_I(6)    <= '0';
    Dbg_BRESP_I(6)     <= (others => '0');
    Dbg_BVALID_I(6)    <= '0';
    Dbg_BREADY_6       <= '0';
    Dbg_ARADDR_6       <= (others => '0');
    Dbg_ARVALID_6      <= '0';
    Dbg_ARREADY_I(6)   <= '0';
    Dbg_RDATA_I(6)     <= (others => '0');
    Dbg_RRESP_I(6)     <= (others => '0');
    Dbg_RVALID_I(6)    <= '0';
    Dbg_RREADY_6       <= '0';

    Dbg_AWADDR_7       <= (others => '0');
    Dbg_AWVALID_7      <= '0';
    Dbg_AWREADY_I(7)   <= '0';
    Dbg_WDATA_7        <= (others => '0');
    Dbg_WVALID_7       <= '0';
    Dbg_WREADY_I(7)    <= '0';
    Dbg_BRESP_I(7)     <= (others => '0');
    Dbg_BVALID_I(7)    <= '0';
    Dbg_BREADY_7       <= '0';
    Dbg_ARADDR_7       <= (others => '0');
    Dbg_ARVALID_7      <= '0';
    Dbg_ARREADY_I(7)   <= '0';
    Dbg_RDATA_I(7)     <= (others => '0');
    Dbg_RRESP_I(7)     <= (others => '0');
    Dbg_RVALID_I(7)    <= '0';
    Dbg_RREADY_7       <= '0';

    Dbg_AWADDR_8       <= (others => '0');
    Dbg_AWVALID_8      <= '0';
    Dbg_AWREADY_I(8)   <= '0';
    Dbg_WDATA_8        <= (others => '0');
    Dbg_WVALID_8       <= '0';
    Dbg_WREADY_I(8)    <= '0';
    Dbg_BRESP_I(8)     <= (others => '0');
    Dbg_BVALID_I(8)    <= '0';
    Dbg_BREADY_8       <= '0';
    Dbg_ARADDR_8       <= (others => '0');
    Dbg_ARVALID_8      <= '0';
    Dbg_ARREADY_I(8)   <= '0';
    Dbg_RDATA_I(8)     <= (others => '0');
    Dbg_RRESP_I(8)     <= (others => '0');
    Dbg_RVALID_I(8)    <= '0';
    Dbg_RREADY_8       <= '0';

    Dbg_AWADDR_9       <= (others => '0');
    Dbg_AWVALID_9      <= '0';
    Dbg_AWREADY_I(9)   <= '0';
    Dbg_WDATA_9        <= (others => '0');
    Dbg_WVALID_9       <= '0';
    Dbg_WREADY_I(9)    <= '0';
    Dbg_BRESP_I(9)     <= (others => '0');
    Dbg_BVALID_I(9)    <= '0';
    Dbg_BREADY_9       <= '0';
    Dbg_ARADDR_9       <= (others => '0');
    Dbg_ARVALID_9      <= '0';
    Dbg_ARREADY_I(9)   <= '0';
    Dbg_RDATA_I(9)     <= (others => '0');
    Dbg_RRESP_I(9)     <= (others => '0');
    Dbg_RVALID_I(9)    <= '0';
    Dbg_RREADY_9       <= '0';

    Dbg_AWADDR_10       <= (others => '0');
    Dbg_AWVALID_10      <= '0';
    Dbg_AWREADY_I(10)   <= '0';
    Dbg_WDATA_10        <= (others => '0');
    Dbg_WVALID_10       <= '0';
    Dbg_WREADY_I(10)    <= '0';
    Dbg_BRESP_I(10)     <= (others => '0');
    Dbg_BVALID_I(10)    <= '0';
    Dbg_BREADY_10       <= '0';
    Dbg_ARADDR_10       <= (others => '0');
    Dbg_ARVALID_10      <= '0';
    Dbg_ARREADY_I(10)   <= '0';
    Dbg_RDATA_I(10)     <= (others => '0');
    Dbg_RRESP_I(10)     <= (others => '0');
    Dbg_RVALID_I(10)    <= '0';
    Dbg_RREADY_10       <= '0';

    Dbg_AWADDR_11       <= (others => '0');
    Dbg_AWVALID_11      <= '0';
    Dbg_AWREADY_I(11)   <= '0';
    Dbg_WDATA_11        <= (others => '0');
    Dbg_WVALID_11       <= '0';
    Dbg_WREADY_I(11)    <= '0';
    Dbg_BRESP_I(11)     <= (others => '0');
    Dbg_BVALID_I(11)    <= '0';
    Dbg_BREADY_11       <= '0';
    Dbg_ARADDR_11       <= (others => '0');
    Dbg_ARVALID_11      <= '0';
    Dbg_ARREADY_I(11)   <= '0';
    Dbg_RDATA_I(11)     <= (others => '0');
    Dbg_RRESP_I(11)     <= (others => '0');
    Dbg_RVALID_I(11)    <= '0';
    Dbg_RREADY_11       <= '0';

    Dbg_AWADDR_12       <= (others => '0');
    Dbg_AWVALID_12      <= '0';
    Dbg_AWREADY_I(12)   <= '0';
    Dbg_WDATA_12        <= (others => '0');
    Dbg_WVALID_12       <= '0';
    Dbg_WREADY_I(12)    <= '0';
    Dbg_BRESP_I(12)     <= (others => '0');
    Dbg_BVALID_I(12)    <= '0';
    Dbg_BREADY_12       <= '0';
    Dbg_ARADDR_12       <= (others => '0');
    Dbg_ARVALID_12      <= '0';
    Dbg_ARREADY_I(12)   <= '0';
    Dbg_RDATA_I(12)     <= (others => '0');
    Dbg_RRESP_I(12)     <= (others => '0');
    Dbg_RVALID_I(12)    <= '0';
    Dbg_RREADY_12       <= '0';

    Dbg_AWADDR_13       <= (others => '0');
    Dbg_AWVALID_13      <= '0';
    Dbg_AWREADY_I(13)   <= '0';
    Dbg_WDATA_13        <= (others => '0');
    Dbg_WVALID_13       <= '0';
    Dbg_WREADY_I(13)    <= '0';
    Dbg_BRESP_I(13)     <= (others => '0');
    Dbg_BVALID_I(13)    <= '0';
    Dbg_BREADY_13       <= '0';
    Dbg_ARADDR_13       <= (others => '0');
    Dbg_ARVALID_13      <= '0';
    Dbg_ARREADY_I(13)   <= '0';
    Dbg_RDATA_I(13)     <= (others => '0');
    Dbg_RRESP_I(13)     <= (others => '0');
    Dbg_RVALID_I(13)    <= '0';
    Dbg_RREADY_13       <= '0';

    Dbg_AWADDR_14       <= (others => '0');
    Dbg_AWVALID_14      <= '0';
    Dbg_AWREADY_I(14)   <= '0';
    Dbg_WDATA_14        <= (others => '0');
    Dbg_WVALID_14       <= '0';
    Dbg_WREADY_I(14)    <= '0';
    Dbg_BRESP_I(14)     <= (others => '0');
    Dbg_BVALID_I(14)    <= '0';
    Dbg_BREADY_14       <= '0';
    Dbg_ARADDR_14       <= (others => '0');
    Dbg_ARVALID_14      <= '0';
    Dbg_ARREADY_I(14)   <= '0';
    Dbg_RDATA_I(14)     <= (others => '0');
    Dbg_RRESP_I(14)     <= (others => '0');
    Dbg_RVALID_I(14)    <= '0';
    Dbg_RREADY_14       <= '0';

    Dbg_AWADDR_15       <= (others => '0');
    Dbg_AWVALID_15      <= '0';
    Dbg_AWREADY_I(15)   <= '0';
    Dbg_WDATA_15        <= (others => '0');
    Dbg_WVALID_15       <= '0';
    Dbg_WREADY_I(15)    <= '0';
    Dbg_BRESP_I(15)     <= (others => '0');
    Dbg_BVALID_I(15)    <= '0';
    Dbg_BREADY_15       <= '0';
    Dbg_ARADDR_15       <= (others => '0');
    Dbg_ARVALID_15      <= '0';
    Dbg_ARREADY_I(15)   <= '0';
    Dbg_RDATA_I(15)     <= (others => '0');
    Dbg_RRESP_I(15)     <= (others => '0');
    Dbg_RVALID_I(15)    <= '0';
    Dbg_RREADY_15       <= '0';

    Dbg_AWADDR_16       <= (others => '0');
    Dbg_AWVALID_16      <= '0';
    Dbg_AWREADY_I(16)   <= '0';
    Dbg_WDATA_16        <= (others => '0');
    Dbg_WVALID_16       <= '0';
    Dbg_WREADY_I(16)    <= '0';
    Dbg_BRESP_I(16)     <= (others => '0');
    Dbg_BVALID_I(16)    <= '0';
    Dbg_BREADY_16       <= '0';
    Dbg_ARADDR_16       <= (others => '0');
    Dbg_ARVALID_16      <= '0';
    Dbg_ARREADY_I(16)   <= '0';
    Dbg_RDATA_I(16)     <= (others => '0');
    Dbg_RRESP_I(16)     <= (others => '0');
    Dbg_RVALID_I(16)    <= '0';
    Dbg_RREADY_16       <= '0';

    Dbg_AWADDR_17       <= (others => '0');
    Dbg_AWVALID_17      <= '0';
    Dbg_AWREADY_I(17)   <= '0';
    Dbg_WDATA_17        <= (others => '0');
    Dbg_WVALID_17       <= '0';
    Dbg_WREADY_I(17)    <= '0';
    Dbg_BRESP_I(17)     <= (others => '0');
    Dbg_BVALID_I(17)    <= '0';
    Dbg_BREADY_17       <= '0';
    Dbg_ARADDR_17       <= (others => '0');
    Dbg_ARVALID_17      <= '0';
    Dbg_ARREADY_I(17)   <= '0';
    Dbg_RDATA_I(17)     <= (others => '0');
    Dbg_RRESP_I(17)     <= (others => '0');
    Dbg_RVALID_I(17)    <= '0';
    Dbg_RREADY_17       <= '0';

    Dbg_AWADDR_18       <= (others => '0');
    Dbg_AWVALID_18      <= '0';
    Dbg_AWREADY_I(18)   <= '0';
    Dbg_WDATA_18        <= (others => '0');
    Dbg_WVALID_18       <= '0';
    Dbg_WREADY_I(18)    <= '0';
    Dbg_BRESP_I(18)     <= (others => '0');
    Dbg_BVALID_I(18)    <= '0';
    Dbg_BREADY_18       <= '0';
    Dbg_ARADDR_18       <= (others => '0');
    Dbg_ARVALID_18      <= '0';
    Dbg_ARREADY_I(18)   <= '0';
    Dbg_RDATA_I(18)     <= (others => '0');
    Dbg_RRESP_I(18)     <= (others => '0');
    Dbg_RVALID_I(18)    <= '0';
    Dbg_RREADY_18       <= '0';

    Dbg_AWADDR_19       <= (others => '0');
    Dbg_AWVALID_19      <= '0';
    Dbg_AWREADY_I(19)   <= '0';
    Dbg_WDATA_19        <= (others => '0');
    Dbg_WVALID_19       <= '0';
    Dbg_WREADY_I(19)    <= '0';
    Dbg_BRESP_I(19)     <= (others => '0');
    Dbg_BVALID_I(19)    <= '0';
    Dbg_BREADY_19       <= '0';
    Dbg_ARADDR_19       <= (others => '0');
    Dbg_ARVALID_19      <= '0';
    Dbg_ARREADY_I(19)   <= '0';
    Dbg_RDATA_I(19)     <= (others => '0');
    Dbg_RRESP_I(19)     <= (others => '0');
    Dbg_RVALID_I(19)    <= '0';
    Dbg_RREADY_19       <= '0';

    Dbg_AWADDR_20       <= (others => '0');
    Dbg_AWVALID_20      <= '0';
    Dbg_AWREADY_I(20)   <= '0';
    Dbg_WDATA_20        <= (others => '0');
    Dbg_WVALID_20       <= '0';
    Dbg_WREADY_I(20)    <= '0';
    Dbg_BRESP_I(20)     <= (others => '0');
    Dbg_BVALID_I(20)    <= '0';
    Dbg_BREADY_20       <= '0';
    Dbg_ARADDR_20       <= (others => '0');
    Dbg_ARVALID_20      <= '0';
    Dbg_ARREADY_I(20)   <= '0';
    Dbg_RDATA_I(20)     <= (others => '0');
    Dbg_RRESP_I(20)     <= (others => '0');
    Dbg_RVALID_I(20)    <= '0';
    Dbg_RREADY_20       <= '0';

    Dbg_AWADDR_21       <= (others => '0');
    Dbg_AWVALID_21      <= '0';
    Dbg_AWREADY_I(21)   <= '0';
    Dbg_WDATA_21        <= (others => '0');
    Dbg_WVALID_21       <= '0';
    Dbg_WREADY_I(21)    <= '0';
    Dbg_BRESP_I(21)     <= (others => '0');
    Dbg_BVALID_I(21)    <= '0';
    Dbg_BREADY_21       <= '0';
    Dbg_ARADDR_21       <= (others => '0');
    Dbg_ARVALID_21      <= '0';
    Dbg_ARREADY_I(21)   <= '0';
    Dbg_RDATA_I(21)     <= (others => '0');
    Dbg_RRESP_I(21)     <= (others => '0');
    Dbg_RVALID_I(21)    <= '0';
    Dbg_RREADY_21       <= '0';

    Dbg_AWADDR_22       <= (others => '0');
    Dbg_AWVALID_22      <= '0';
    Dbg_AWREADY_I(22)   <= '0';
    Dbg_WDATA_22        <= (others => '0');
    Dbg_WVALID_22       <= '0';
    Dbg_WREADY_I(22)    <= '0';
    Dbg_BRESP_I(22)     <= (others => '0');
    Dbg_BVALID_I(22)    <= '0';
    Dbg_BREADY_22       <= '0';
    Dbg_ARADDR_22       <= (others => '0');
    Dbg_ARVALID_22      <= '0';
    Dbg_ARREADY_I(22)   <= '0';
    Dbg_RDATA_I(22)     <= (others => '0');
    Dbg_RRESP_I(22)     <= (others => '0');
    Dbg_RVALID_I(22)    <= '0';
    Dbg_RREADY_22       <= '0';

    Dbg_AWADDR_23       <= (others => '0');
    Dbg_AWVALID_23      <= '0';
    Dbg_AWREADY_I(23)   <= '0';
    Dbg_WDATA_23        <= (others => '0');
    Dbg_WVALID_23       <= '0';
    Dbg_WREADY_I(23)    <= '0';
    Dbg_BRESP_I(23)     <= (others => '0');
    Dbg_BVALID_I(23)    <= '0';
    Dbg_BREADY_23       <= '0';
    Dbg_ARADDR_23       <= (others => '0');
    Dbg_ARVALID_23      <= '0';
    Dbg_ARREADY_I(23)   <= '0';
    Dbg_RDATA_I(23)     <= (others => '0');
    Dbg_RRESP_I(23)     <= (others => '0');
    Dbg_RVALID_I(23)    <= '0';
    Dbg_RREADY_23       <= '0';

    Dbg_AWADDR_24       <= (others => '0');
    Dbg_AWVALID_24      <= '0';
    Dbg_AWREADY_I(24)   <= '0';
    Dbg_WDATA_24        <= (others => '0');
    Dbg_WVALID_24       <= '0';
    Dbg_WREADY_I(24)    <= '0';
    Dbg_BRESP_I(24)     <= (others => '0');
    Dbg_BVALID_I(24)    <= '0';
    Dbg_BREADY_24       <= '0';
    Dbg_ARADDR_24       <= (others => '0');
    Dbg_ARVALID_24      <= '0';
    Dbg_ARREADY_I(24)   <= '0';
    Dbg_RDATA_I(24)     <= (others => '0');
    Dbg_RRESP_I(24)     <= (others => '0');
    Dbg_RVALID_I(24)    <= '0';
    Dbg_RREADY_24       <= '0';

    Dbg_AWADDR_25       <= (others => '0');
    Dbg_AWVALID_25      <= '0';
    Dbg_AWREADY_I(25)   <= '0';
    Dbg_WDATA_25        <= (others => '0');
    Dbg_WVALID_25       <= '0';
    Dbg_WREADY_I(25)    <= '0';
    Dbg_BRESP_I(25)     <= (others => '0');
    Dbg_BVALID_I(25)    <= '0';
    Dbg_BREADY_25       <= '0';
    Dbg_ARADDR_25       <= (others => '0');
    Dbg_ARVALID_25      <= '0';
    Dbg_ARREADY_I(25)   <= '0';
    Dbg_RDATA_I(25)     <= (others => '0');
    Dbg_RRESP_I(25)     <= (others => '0');
    Dbg_RVALID_I(25)    <= '0';
    Dbg_RREADY_25       <= '0';

    Dbg_AWADDR_26       <= (others => '0');
    Dbg_AWVALID_26      <= '0';
    Dbg_AWREADY_I(26)   <= '0';
    Dbg_WDATA_26        <= (others => '0');
    Dbg_WVALID_26       <= '0';
    Dbg_WREADY_I(26)    <= '0';
    Dbg_BRESP_I(26)     <= (others => '0');
    Dbg_BVALID_I(26)    <= '0';
    Dbg_BREADY_26       <= '0';
    Dbg_ARADDR_26       <= (others => '0');
    Dbg_ARVALID_26      <= '0';
    Dbg_ARREADY_I(26)   <= '0';
    Dbg_RDATA_I(26)     <= (others => '0');
    Dbg_RRESP_I(26)     <= (others => '0');
    Dbg_RVALID_I(26)    <= '0';
    Dbg_RREADY_26       <= '0';

    Dbg_AWADDR_27       <= (others => '0');
    Dbg_AWVALID_27      <= '0';
    Dbg_AWREADY_I(27)   <= '0';
    Dbg_WDATA_27        <= (others => '0');
    Dbg_WVALID_27       <= '0';
    Dbg_WREADY_I(27)    <= '0';
    Dbg_BRESP_I(27)     <= (others => '0');
    Dbg_BVALID_I(27)    <= '0';
    Dbg_BREADY_27       <= '0';
    Dbg_ARADDR_27       <= (others => '0');
    Dbg_ARVALID_27      <= '0';
    Dbg_ARREADY_I(27)   <= '0';
    Dbg_RDATA_I(27)     <= (others => '0');
    Dbg_RRESP_I(27)     <= (others => '0');
    Dbg_RVALID_I(27)    <= '0';
    Dbg_RREADY_27       <= '0';

    Dbg_AWADDR_28       <= (others => '0');
    Dbg_AWVALID_28      <= '0';
    Dbg_AWREADY_I(28)   <= '0';
    Dbg_WDATA_28        <= (others => '0');
    Dbg_WVALID_28       <= '0';
    Dbg_WREADY_I(28)    <= '0';
    Dbg_BRESP_I(28)     <= (others => '0');
    Dbg_BVALID_I(28)    <= '0';
    Dbg_BREADY_28       <= '0';
    Dbg_ARADDR_28       <= (others => '0');
    Dbg_ARVALID_28      <= '0';
    Dbg_ARREADY_I(28)   <= '0';
    Dbg_RDATA_I(28)     <= (others => '0');
    Dbg_RRESP_I(28)     <= (others => '0');
    Dbg_RVALID_I(28)    <= '0';
    Dbg_RREADY_28       <= '0';

    Dbg_AWADDR_29       <= (others => '0');
    Dbg_AWVALID_29      <= '0';
    Dbg_AWREADY_I(29)   <= '0';
    Dbg_WDATA_29        <= (others => '0');
    Dbg_WVALID_29       <= '0';
    Dbg_WREADY_I(29)    <= '0';
    Dbg_BRESP_I(29)     <= (others => '0');
    Dbg_BVALID_I(29)    <= '0';
    Dbg_BREADY_29       <= '0';
    Dbg_ARADDR_29       <= (others => '0');
    Dbg_ARVALID_29      <= '0';
    Dbg_ARREADY_I(29)   <= '0';
    Dbg_RDATA_I(29)     <= (others => '0');
    Dbg_RRESP_I(29)     <= (others => '0');
    Dbg_RVALID_I(29)    <= '0';
    Dbg_RREADY_29       <= '0';

    Dbg_AWADDR_30       <= (others => '0');
    Dbg_AWVALID_30      <= '0';
    Dbg_AWREADY_I(30)   <= '0';
    Dbg_WDATA_30        <= (others => '0');
    Dbg_WVALID_30       <= '0';
    Dbg_WREADY_I(30)    <= '0';
    Dbg_BRESP_I(30)     <= (others => '0');
    Dbg_BVALID_I(30)    <= '0';
    Dbg_BREADY_30       <= '0';
    Dbg_ARADDR_30       <= (others => '0');
    Dbg_ARVALID_30      <= '0';
    Dbg_ARREADY_I(30)   <= '0';
    Dbg_RDATA_I(30)     <= (others => '0');
    Dbg_RRESP_I(30)     <= (others => '0');
    Dbg_RVALID_I(30)    <= '0';
    Dbg_RREADY_30       <= '0';

    Dbg_AWADDR_31       <= (others => '0');
    Dbg_AWVALID_31      <= '0';
    Dbg_AWREADY_I(31)   <= '0';
    Dbg_WDATA_31        <= (others => '0');
    Dbg_WVALID_31       <= '0';
    Dbg_WREADY_I(31)    <= '0';
    Dbg_BRESP_I(31)     <= (others => '0');
    Dbg_BVALID_I(31)    <= '0';
    Dbg_BREADY_31       <= '0';
    Dbg_ARADDR_31       <= (others => '0');
    Dbg_ARVALID_31      <= '0';
    Dbg_ARREADY_I(31)   <= '0';
    Dbg_RDATA_I(31)     <= (others => '0');
    Dbg_RRESP_I(31)     <= (others => '0');
    Dbg_RVALID_I(31)    <= '0';
    Dbg_RREADY_31       <= '0';
    end generate No_Dbg_AXI;

    Dbg_BRESP            <= '0';
    Dbg_BVALID           <= '0';
    Dbg_RDATA            <= (others => '0');
    Dbg_RRESP            <= '0';
    Dbg_RVALID           <= '0';

    dmcs2_grouptype      <= '0';
    dmcs2_dmexttrigger   <= (others => '0');
    dmcs2_group_hart_i   <= (others => '0');
    dmcs2_group_ext_i    <= (others => '0');
    dmcs2_hgselect       <= '0';
  end generate Use_Serial;

  Use_Parallel_or_No_Dbg_AXI : if (C_DEBUG_INTERFACE > 0 or C_DBG_MEM_ACCESS = 1 or C_TRACE_OUTPUT = 0) generate
  begin
    M_AXI_AWREADY       <= '0';
    M_AXI_WREADY        <= '0';
    M_AXI_BRESP         <= (others => '0');
    M_AXI_BVALID        <= '0';
    M_AXI_ARREADY       <= '0';
    M_AXI_RDATA         <= (others => '0');
    M_AXI_RRESP         <= (others => '0');
    M_AXI_RVALID        <= '0';
  end generate Use_Parallel_or_No_Dbg_AXI;

  Use_Parallel : if C_DEBUG_INTERFACE > 0 generate
  begin

    Generate_Dbg_Port_Signals : process (mb_debug_enabled_q, Dbg_ARALL,
                                         Dbg_AWVALID_I, Dbg_AWREADY_I,
                                         Dbg_WVALID_I,  Dbg_WREADY_I,
                                         Dbg_ARVALID_I, Dbg_ARREADY_I,
                                         Dbg_BRESP_I,   Dbg_BVALID_I,
                                         Dbg_RDATA_I,   Dbg_RRESP_I, Dbg_RVALID_I)
      variable dbg_awready_or : std_logic;
      variable dbg_wready_or  : std_logic;
      variable dbg_arready_or : std_logic;
      variable dbg_bresp_or   : std_logic;
      variable dbg_bvalid_or  : std_logic;
      variable dbg_rdata_or   : std_logic_vector(31 downto 0);
      variable dbg_rdata_and  : std_logic_vector(31 downto 0);
      variable dbg_rresp_or   : std_logic;
      variable dbg_rvalid_or  : std_logic;
    begin  -- process Generate_Dbg_Port_Signals
      dbg_awready_or := '0';
      dbg_wready_or  := '0';
      dbg_arready_or := '0';
      dbg_bresp_or   := '0';
      dbg_bvalid_or  := '0';
      dbg_rdata_or   := (others => '0');
      dbg_rdata_and  := (others => '1');
      dbg_rresp_or   := '0';
      dbg_rvalid_or  := '0';
      for I in 0 to C_EN_WIDTH-1 loop
        if (mb_debug_enabled_q(I) = '1') then
          Dbg_AWVALID(I) <= Dbg_AWVALID_I;
          Dbg_WVALID(I)  <= Dbg_WVALID_I;
          Dbg_ARVALID(I) <= Dbg_ARVALID_I;
          dbg_rdata_or   := dbg_rdata_or   or Dbg_RDATA_I(I);
          dbg_rdata_and  := dbg_rdata_and and Dbg_RDATA_I(I);
        else
          Dbg_AWVALID(I) <= '0';
          Dbg_WVALID(I)  <= '0';
          Dbg_ARVALID(I) <= Dbg_ARALL;
        end if;
        Dbg_BREADY(I)    <= '1';
        Dbg_RREADY(I)    <= '1';
        dbg_awready_or   := dbg_awready_or or Dbg_AWREADY_I(I);
        dbg_wready_or    := dbg_wready_or  or Dbg_WREADY_I(I);
        dbg_arready_or   := dbg_arready_or or Dbg_ARREADY_I(I);
        dbg_bresp_or     := dbg_bresp_or   or Dbg_BRESP_I(I)(1);
        dbg_bvalid_or    := dbg_bvalid_or  or Dbg_BVALID_I(I);
        dbg_rresp_or     := dbg_rresp_or   or Dbg_RRESP_I(I)(1);
        dbg_rvalid_or    := dbg_rvalid_or  or Dbg_RVALID_I(I);
      end loop;  -- I
      for I in C_EN_WIDTH to 31 loop
        Dbg_AWVALID(I)   <= '0';
        Dbg_WVALID(I)    <= '0';
        Dbg_ARVALID(I)   <= '0';
        Dbg_BREADY(I)    <= '0';
        Dbg_RREADY(I)    <= '0';
      end loop;  -- I
      Dbg_AWREADY <= dbg_awready_or;
      Dbg_WREADY  <= dbg_wready_or;
      Dbg_ARREADY <= dbg_arready_or;
      Dbg_BRESP   <= dbg_bresp_or;
      Dbg_BVALID  <= dbg_bvalid_or;
      Dbg_RDATA   <= dbg_rdata_or;
      Dbg_RDATA_A <= dbg_rdata_and;
      Dbg_RRESP   <= dbg_rresp_or;
      Dbg_RVALID  <= dbg_rvalid_or;
    end process Generate_Dbg_Port_Signals;

    Dbg_AWADDR_0       <= Dbg_AWADDR;
    Dbg_AWVALID_0      <= Dbg_WVALID(0);
    Dbg_AWREADY_I(0)   <= Dbg_AWREADY_0;
    Dbg_WDATA_0        <= Dbg_WDATA;
    Dbg_WVALID_0       <= Dbg_AWVALID(0);
    Dbg_WREADY_I(0)    <= Dbg_WREADY_0;
    Dbg_BRESP_I(0)     <= Dbg_BRESP_0;
    Dbg_BVALID_I(0)    <= Dbg_BVALID_0;
    Dbg_BREADY_0       <= Dbg_BREADY(0);
    Dbg_ARADDR_0       <= Dbg_ARADDR;
    Dbg_ARVALID_0      <= Dbg_ARVALID(0);
    Dbg_ARREADY_I(0)   <= Dbg_ARREADY_0;
    Dbg_RDATA_I(0)     <= Dbg_RDATA_0;
    Dbg_RRESP_I(0)     <= Dbg_RRESP_0;
    Dbg_RVALID_I(0)    <= Dbg_RVALID_0;
    Dbg_RREADY_0       <= Dbg_RREADY(0);

    Dbg_AWADDR_1       <= Dbg_AWADDR;
    Dbg_AWVALID_1      <= Dbg_WVALID(1);
    Dbg_AWREADY_I(1)   <= Dbg_AWREADY_1;
    Dbg_WDATA_1        <= Dbg_WDATA;
    Dbg_WVALID_1       <= Dbg_AWVALID(1);
    Dbg_WREADY_I(1)    <= Dbg_WREADY_1;
    Dbg_BRESP_I(1)     <= Dbg_BRESP_1;
    Dbg_BVALID_I(1)    <= Dbg_BVALID_1;
    Dbg_BREADY_1       <= Dbg_BREADY(1);
    Dbg_ARADDR_1       <= Dbg_ARADDR;
    Dbg_ARVALID_1      <= Dbg_ARVALID(1);
    Dbg_ARREADY_I(1)   <= Dbg_ARREADY_1;
    Dbg_RDATA_I(1)     <= Dbg_RDATA_1;
    Dbg_RRESP_I(1)     <= Dbg_RRESP_1;
    Dbg_RVALID_I(1)    <= Dbg_RVALID_1;
    Dbg_RREADY_1       <= Dbg_RREADY(1);

    Dbg_AWADDR_2       <= Dbg_AWADDR;
    Dbg_AWVALID_2      <= Dbg_WVALID(2);
    Dbg_AWREADY_I(2)   <= Dbg_AWREADY_2;
    Dbg_WDATA_2        <= Dbg_WDATA;
    Dbg_WVALID_2       <= Dbg_AWVALID(2);
    Dbg_WREADY_I(2)    <= Dbg_WREADY_2;
    Dbg_BRESP_I(2)     <= Dbg_BRESP_2;
    Dbg_BVALID_I(2)    <= Dbg_BVALID_2;
    Dbg_BREADY_2       <= Dbg_BREADY(2);
    Dbg_ARADDR_2       <= Dbg_ARADDR;
    Dbg_ARVALID_2      <= Dbg_ARVALID(2);
    Dbg_ARREADY_I(2)   <= Dbg_ARREADY_2;
    Dbg_RDATA_I(2)     <= Dbg_RDATA_2;
    Dbg_RRESP_I(2)     <= Dbg_RRESP_2;
    Dbg_RVALID_I(2)    <= Dbg_RVALID_2;
    Dbg_RREADY_2       <= Dbg_RREADY(2);

    Dbg_AWADDR_3       <= Dbg_AWADDR;
    Dbg_AWVALID_3      <= Dbg_WVALID(3);
    Dbg_AWREADY_I(3)   <= Dbg_AWREADY_3;
    Dbg_WDATA_3        <= Dbg_WDATA;
    Dbg_WVALID_3       <= Dbg_AWVALID(3);
    Dbg_WREADY_I(3)    <= Dbg_WREADY_3;
    Dbg_BRESP_I(3)     <= Dbg_BRESP_3;
    Dbg_BVALID_I(3)    <= Dbg_BVALID_3;
    Dbg_BREADY_3       <= Dbg_BREADY(3);
    Dbg_ARADDR_3       <= Dbg_ARADDR;
    Dbg_ARVALID_3      <= Dbg_ARVALID(3);
    Dbg_ARREADY_I(3)   <= Dbg_ARREADY_3;
    Dbg_RDATA_I(3)     <= Dbg_RDATA_3;
    Dbg_RRESP_I(3)     <= Dbg_RRESP_3;
    Dbg_RVALID_I(3)    <= Dbg_RVALID_3;
    Dbg_RREADY_3       <= Dbg_RREADY(3);

    Dbg_AWADDR_4       <= Dbg_AWADDR;
    Dbg_AWVALID_4      <= Dbg_WVALID(4);
    Dbg_AWREADY_I(4)   <= Dbg_AWREADY_4;
    Dbg_WDATA_4        <= Dbg_WDATA;
    Dbg_WVALID_4       <= Dbg_AWVALID(4);
    Dbg_WREADY_I(4)    <= Dbg_WREADY_4;
    Dbg_BRESP_I(4)     <= Dbg_BRESP_4;
    Dbg_BVALID_I(4)    <= Dbg_BVALID_4;
    Dbg_BREADY_4       <= Dbg_BREADY(4);
    Dbg_ARADDR_4       <= Dbg_ARADDR;
    Dbg_ARVALID_4      <= Dbg_ARVALID(4);
    Dbg_ARREADY_I(4)   <= Dbg_ARREADY_4;
    Dbg_RDATA_I(4)     <= Dbg_RDATA_4;
    Dbg_RRESP_I(4)     <= Dbg_RRESP_4;
    Dbg_RVALID_I(4)    <= Dbg_RVALID_4;
    Dbg_RREADY_4       <= Dbg_RREADY(4);

    Dbg_AWADDR_5       <= Dbg_AWADDR;
    Dbg_AWVALID_5      <= Dbg_WVALID(5);
    Dbg_AWREADY_I(5)   <= Dbg_AWREADY_5;
    Dbg_WDATA_5        <= Dbg_WDATA;
    Dbg_WVALID_5       <= Dbg_AWVALID(5);
    Dbg_WREADY_I(5)    <= Dbg_WREADY_5;
    Dbg_BRESP_I(5)     <= Dbg_BRESP_5;
    Dbg_BVALID_I(5)    <= Dbg_BVALID_5;
    Dbg_BREADY_5       <= Dbg_BREADY(5);
    Dbg_ARADDR_5       <= Dbg_ARADDR;
    Dbg_ARVALID_5      <= Dbg_ARVALID(5);
    Dbg_ARREADY_I(5)   <= Dbg_ARREADY_5;
    Dbg_RDATA_I(5)     <= Dbg_RDATA_5;
    Dbg_RRESP_I(5)     <= Dbg_RRESP_5;
    Dbg_RVALID_I(5)    <= Dbg_RVALID_5;
    Dbg_RREADY_5       <= Dbg_RREADY(5);

    Dbg_AWADDR_6       <= Dbg_AWADDR;
    Dbg_AWVALID_6      <= Dbg_WVALID(6);
    Dbg_AWREADY_I(6)   <= Dbg_AWREADY_6;
    Dbg_WDATA_6        <= Dbg_WDATA;
    Dbg_WVALID_6       <= Dbg_AWVALID(6);
    Dbg_WREADY_I(6)    <= Dbg_WREADY_6;
    Dbg_BRESP_I(6)     <= Dbg_BRESP_6;
    Dbg_BVALID_I(6)    <= Dbg_BVALID_6;
    Dbg_BREADY_6       <= Dbg_BREADY(6);
    Dbg_ARADDR_6       <= Dbg_ARADDR;
    Dbg_ARVALID_6      <= Dbg_ARVALID(6);
    Dbg_ARREADY_I(6)   <= Dbg_ARREADY_6;
    Dbg_RDATA_I(6)     <= Dbg_RDATA_6;
    Dbg_RRESP_I(6)     <= Dbg_RRESP_6;
    Dbg_RVALID_I(6)    <= Dbg_RVALID_6;
    Dbg_RREADY_6       <= Dbg_RREADY(6);

    Dbg_AWADDR_7       <= Dbg_AWADDR;
    Dbg_AWVALID_7      <= Dbg_WVALID(7);
    Dbg_AWREADY_I(7)   <= Dbg_AWREADY_7;
    Dbg_WDATA_7        <= Dbg_WDATA;
    Dbg_WVALID_7       <= Dbg_AWVALID(7);
    Dbg_WREADY_I(7)    <= Dbg_WREADY_7;
    Dbg_BRESP_I(7)     <= Dbg_BRESP_7;
    Dbg_BVALID_I(7)    <= Dbg_BVALID_7;
    Dbg_BREADY_7       <= Dbg_BREADY(7);
    Dbg_ARADDR_7       <= Dbg_ARADDR;
    Dbg_ARVALID_7      <= Dbg_ARVALID(7);
    Dbg_ARREADY_I(7)   <= Dbg_ARREADY_7;
    Dbg_RDATA_I(7)     <= Dbg_RDATA_7;
    Dbg_RRESP_I(7)     <= Dbg_RRESP_7;
    Dbg_RVALID_I(7)    <= Dbg_RVALID_7;
    Dbg_RREADY_7       <= Dbg_RREADY(7);

    Dbg_AWADDR_8       <= Dbg_AWADDR;
    Dbg_AWVALID_8      <= Dbg_WVALID(8);
    Dbg_AWREADY_I(8)   <= Dbg_AWREADY_8;
    Dbg_WDATA_8        <= Dbg_WDATA;
    Dbg_WVALID_8       <= Dbg_AWVALID(8);
    Dbg_WREADY_I(8)    <= Dbg_WREADY_8;
    Dbg_BRESP_I(8)     <= Dbg_BRESP_8;
    Dbg_BVALID_I(8)    <= Dbg_BVALID_8;
    Dbg_BREADY_8       <= Dbg_BREADY(8);
    Dbg_ARADDR_8       <= Dbg_ARADDR;
    Dbg_ARVALID_8      <= Dbg_ARVALID(8);
    Dbg_ARREADY_I(8)   <= Dbg_ARREADY_8;
    Dbg_RDATA_I(8)     <= Dbg_RDATA_8;
    Dbg_RRESP_I(8)     <= Dbg_RRESP_8;
    Dbg_RVALID_I(8)    <= Dbg_RVALID_8;
    Dbg_RREADY_8       <= Dbg_RREADY(8);

    Dbg_AWADDR_9       <= Dbg_AWADDR;
    Dbg_AWVALID_9      <= Dbg_WVALID(9);
    Dbg_AWREADY_I(9)   <= Dbg_AWREADY_9;
    Dbg_WDATA_9        <= Dbg_WDATA;
    Dbg_WVALID_9       <= Dbg_AWVALID(9);
    Dbg_WREADY_I(9)    <= Dbg_WREADY_9;
    Dbg_BRESP_I(9)     <= Dbg_BRESP_9;
    Dbg_BVALID_I(9)    <= Dbg_BVALID_9;
    Dbg_BREADY_9       <= Dbg_BREADY(9);
    Dbg_ARADDR_9       <= Dbg_ARADDR;
    Dbg_ARVALID_9      <= Dbg_ARVALID(9);
    Dbg_ARREADY_I(9)   <= Dbg_ARREADY_9;
    Dbg_RDATA_I(9)     <= Dbg_RDATA_9;
    Dbg_RRESP_I(9)     <= Dbg_RRESP_9;
    Dbg_RVALID_I(9)    <= Dbg_RVALID_9;
    Dbg_RREADY_9       <= Dbg_RREADY(9);

    Dbg_AWADDR_10       <= Dbg_AWADDR;
    Dbg_AWVALID_10      <= Dbg_WVALID(10);
    Dbg_AWREADY_I(10)   <= Dbg_AWREADY_10;
    Dbg_WDATA_10        <= Dbg_WDATA;
    Dbg_WVALID_10       <= Dbg_AWVALID(10);
    Dbg_WREADY_I(10)    <= Dbg_WREADY_10;
    Dbg_BRESP_I(10)     <= Dbg_BRESP_10;
    Dbg_BVALID_I(10)    <= Dbg_BVALID_10;
    Dbg_BREADY_10       <= Dbg_BREADY(10);
    Dbg_ARADDR_10       <= Dbg_ARADDR;
    Dbg_ARVALID_10      <= Dbg_ARVALID(10);
    Dbg_ARREADY_I(10)   <= Dbg_ARREADY_10;
    Dbg_RDATA_I(10)     <= Dbg_RDATA_10;
    Dbg_RRESP_I(10)     <= Dbg_RRESP_10;
    Dbg_RVALID_I(10)    <= Dbg_RVALID_10;
    Dbg_RREADY_10       <= Dbg_RREADY(10);

    Dbg_AWADDR_11       <= Dbg_AWADDR;
    Dbg_AWVALID_11      <= Dbg_WVALID(11);
    Dbg_AWREADY_I(11)   <= Dbg_AWREADY_11;
    Dbg_WDATA_11        <= Dbg_WDATA;
    Dbg_WVALID_11       <= Dbg_AWVALID(11);
    Dbg_WREADY_I(11)    <= Dbg_WREADY_11;
    Dbg_BRESP_I(11)     <= Dbg_BRESP_11;
    Dbg_BVALID_I(11)    <= Dbg_BVALID_11;
    Dbg_BREADY_11       <= Dbg_BREADY(11);
    Dbg_ARADDR_11       <= Dbg_ARADDR;
    Dbg_ARVALID_11      <= Dbg_ARVALID(11);
    Dbg_ARREADY_I(11)   <= Dbg_ARREADY_11;
    Dbg_RDATA_I(11)     <= Dbg_RDATA_11;
    Dbg_RRESP_I(11)     <= Dbg_RRESP_11;
    Dbg_RVALID_I(11)    <= Dbg_RVALID_11;
    Dbg_RREADY_11       <= Dbg_RREADY(11);

    Dbg_AWADDR_12       <= Dbg_AWADDR;
    Dbg_AWVALID_12      <= Dbg_WVALID(12);
    Dbg_AWREADY_I(12)   <= Dbg_AWREADY_12;
    Dbg_WDATA_12        <= Dbg_WDATA;
    Dbg_WVALID_12       <= Dbg_AWVALID(12);
    Dbg_WREADY_I(12)    <= Dbg_WREADY_12;
    Dbg_BRESP_I(12)     <= Dbg_BRESP_12;
    Dbg_BVALID_I(12)    <= Dbg_BVALID_12;
    Dbg_BREADY_12       <= Dbg_BREADY(12);
    Dbg_ARADDR_12       <= Dbg_ARADDR;
    Dbg_ARVALID_12      <= Dbg_ARVALID(12);
    Dbg_ARREADY_I(12)   <= Dbg_ARREADY_12;
    Dbg_RDATA_I(12)     <= Dbg_RDATA_12;
    Dbg_RRESP_I(12)     <= Dbg_RRESP_12;
    Dbg_RVALID_I(12)    <= Dbg_RVALID_12;
    Dbg_RREADY_12       <= Dbg_RREADY(12);

    Dbg_AWADDR_13       <= Dbg_AWADDR;
    Dbg_AWVALID_13      <= Dbg_WVALID(13);
    Dbg_AWREADY_I(13)   <= Dbg_AWREADY_13;
    Dbg_WDATA_13        <= Dbg_WDATA;
    Dbg_WVALID_13       <= Dbg_AWVALID(13);
    Dbg_WREADY_I(13)    <= Dbg_WREADY_13;
    Dbg_BRESP_I(13)     <= Dbg_BRESP_13;
    Dbg_BVALID_I(13)    <= Dbg_BVALID_13;
    Dbg_BREADY_13       <= Dbg_BREADY(13);
    Dbg_ARADDR_13       <= Dbg_ARADDR;
    Dbg_ARVALID_13      <= Dbg_ARVALID(13);
    Dbg_ARREADY_I(13)   <= Dbg_ARREADY_13;
    Dbg_RDATA_I(13)     <= Dbg_RDATA_13;
    Dbg_RRESP_I(13)     <= Dbg_RRESP_13;
    Dbg_RVALID_I(13)    <= Dbg_RVALID_13;
    Dbg_RREADY_13       <= Dbg_RREADY(13);

    Dbg_AWADDR_14       <= Dbg_AWADDR;
    Dbg_AWVALID_14      <= Dbg_WVALID(14);
    Dbg_AWREADY_I(14)   <= Dbg_AWREADY_14;
    Dbg_WDATA_14        <= Dbg_WDATA;
    Dbg_WVALID_14       <= Dbg_AWVALID(14);
    Dbg_WREADY_I(14)    <= Dbg_WREADY_14;
    Dbg_BRESP_I(14)     <= Dbg_BRESP_14;
    Dbg_BVALID_I(14)    <= Dbg_BVALID_14;
    Dbg_BREADY_14       <= Dbg_BREADY(14);
    Dbg_ARADDR_14       <= Dbg_ARADDR;
    Dbg_ARVALID_14      <= Dbg_ARVALID(14);
    Dbg_ARREADY_I(14)   <= Dbg_ARREADY_14;
    Dbg_RDATA_I(14)     <= Dbg_RDATA_14;
    Dbg_RRESP_I(14)     <= Dbg_RRESP_14;
    Dbg_RVALID_I(14)    <= Dbg_RVALID_14;
    Dbg_RREADY_14       <= Dbg_RREADY(14);

    Dbg_AWADDR_15       <= Dbg_AWADDR;
    Dbg_AWVALID_15      <= Dbg_WVALID(15);
    Dbg_AWREADY_I(15)   <= Dbg_AWREADY_15;
    Dbg_WDATA_15        <= Dbg_WDATA;
    Dbg_WVALID_15       <= Dbg_AWVALID(15);
    Dbg_WREADY_I(15)    <= Dbg_WREADY_15;
    Dbg_BRESP_I(15)     <= Dbg_BRESP_15;
    Dbg_BVALID_I(15)    <= Dbg_BVALID_15;
    Dbg_BREADY_15       <= Dbg_BREADY(15);
    Dbg_ARADDR_15       <= Dbg_ARADDR;
    Dbg_ARVALID_15      <= Dbg_ARVALID(15);
    Dbg_ARREADY_I(15)   <= Dbg_ARREADY_15;
    Dbg_RDATA_I(15)     <= Dbg_RDATA_15;
    Dbg_RRESP_I(15)     <= Dbg_RRESP_15;
    Dbg_RVALID_I(15)    <= Dbg_RVALID_15;
    Dbg_RREADY_15       <= Dbg_RREADY(15);

    Dbg_AWADDR_16       <= Dbg_AWADDR;
    Dbg_AWVALID_16      <= Dbg_WVALID(16);
    Dbg_AWREADY_I(16)   <= Dbg_AWREADY_16;
    Dbg_WDATA_16        <= Dbg_WDATA;
    Dbg_WVALID_16       <= Dbg_AWVALID(16);
    Dbg_WREADY_I(16)    <= Dbg_WREADY_16;
    Dbg_BRESP_I(16)     <= Dbg_BRESP_16;
    Dbg_BVALID_I(16)    <= Dbg_BVALID_16;
    Dbg_BREADY_16       <= Dbg_BREADY(16);
    Dbg_ARADDR_16       <= Dbg_ARADDR;
    Dbg_ARVALID_16      <= Dbg_ARVALID(16);
    Dbg_ARREADY_I(16)   <= Dbg_ARREADY_16;
    Dbg_RDATA_I(16)     <= Dbg_RDATA_16;
    Dbg_RRESP_I(16)     <= Dbg_RRESP_16;
    Dbg_RVALID_I(16)    <= Dbg_RVALID_16;
    Dbg_RREADY_16       <= Dbg_RREADY(16);

    Dbg_AWADDR_17       <= Dbg_AWADDR;
    Dbg_AWVALID_17      <= Dbg_WVALID(17);
    Dbg_AWREADY_I(17)   <= Dbg_AWREADY_17;
    Dbg_WDATA_17        <= Dbg_WDATA;
    Dbg_WVALID_17       <= Dbg_AWVALID(17);
    Dbg_WREADY_I(17)    <= Dbg_WREADY_17;
    Dbg_BRESP_I(17)     <= Dbg_BRESP_17;
    Dbg_BVALID_I(17)    <= Dbg_BVALID_17;
    Dbg_BREADY_17       <= Dbg_BREADY(17);
    Dbg_ARADDR_17       <= Dbg_ARADDR;
    Dbg_ARVALID_17      <= Dbg_ARVALID(17);
    Dbg_ARREADY_I(17)   <= Dbg_ARREADY_17;
    Dbg_RDATA_I(17)     <= Dbg_RDATA_17;
    Dbg_RRESP_I(17)     <= Dbg_RRESP_17;
    Dbg_RVALID_I(17)    <= Dbg_RVALID_17;
    Dbg_RREADY_17       <= Dbg_RREADY(17);

    Dbg_AWADDR_18       <= Dbg_AWADDR;
    Dbg_AWVALID_18      <= Dbg_WVALID(18);
    Dbg_AWREADY_I(18)   <= Dbg_AWREADY_18;
    Dbg_WDATA_18        <= Dbg_WDATA;
    Dbg_WVALID_18       <= Dbg_AWVALID(18);
    Dbg_WREADY_I(18)    <= Dbg_WREADY_18;
    Dbg_BRESP_I(18)     <= Dbg_BRESP_18;
    Dbg_BVALID_I(18)    <= Dbg_BVALID_18;
    Dbg_BREADY_18       <= Dbg_BREADY(18);
    Dbg_ARADDR_18       <= Dbg_ARADDR;
    Dbg_ARVALID_18      <= Dbg_ARVALID(18);
    Dbg_ARREADY_I(18)   <= Dbg_ARREADY_18;
    Dbg_RDATA_I(18)     <= Dbg_RDATA_18;
    Dbg_RRESP_I(18)     <= Dbg_RRESP_18;
    Dbg_RVALID_I(18)    <= Dbg_RVALID_18;
    Dbg_RREADY_18       <= Dbg_RREADY(18);

    Dbg_AWADDR_19       <= Dbg_AWADDR;
    Dbg_AWVALID_19      <= Dbg_WVALID(19);
    Dbg_AWREADY_I(19)   <= Dbg_AWREADY_19;
    Dbg_WDATA_19        <= Dbg_WDATA;
    Dbg_WVALID_19       <= Dbg_AWVALID(19);
    Dbg_WREADY_I(19)    <= Dbg_WREADY_19;
    Dbg_BRESP_I(19)     <= Dbg_BRESP_19;
    Dbg_BVALID_I(19)    <= Dbg_BVALID_19;
    Dbg_BREADY_19       <= Dbg_BREADY(19);
    Dbg_ARADDR_19       <= Dbg_ARADDR;
    Dbg_ARVALID_19      <= Dbg_ARVALID(19);
    Dbg_ARREADY_I(19)   <= Dbg_ARREADY_19;
    Dbg_RDATA_I(19)     <= Dbg_RDATA_19;
    Dbg_RRESP_I(19)     <= Dbg_RRESP_19;
    Dbg_RVALID_I(19)    <= Dbg_RVALID_19;
    Dbg_RREADY_19       <= Dbg_RREADY(19);

    Dbg_AWADDR_20       <= Dbg_AWADDR;
    Dbg_AWVALID_20      <= Dbg_WVALID(20);
    Dbg_AWREADY_I(20)   <= Dbg_AWREADY_20;
    Dbg_WDATA_20        <= Dbg_WDATA;
    Dbg_WVALID_20       <= Dbg_AWVALID(20);
    Dbg_WREADY_I(20)    <= Dbg_WREADY_20;
    Dbg_BRESP_I(20)     <= Dbg_BRESP_20;
    Dbg_BVALID_I(20)    <= Dbg_BVALID_20;
    Dbg_BREADY_20       <= Dbg_BREADY(20);
    Dbg_ARADDR_20       <= Dbg_ARADDR;
    Dbg_ARVALID_20      <= Dbg_ARVALID(20);
    Dbg_ARREADY_I(20)   <= Dbg_ARREADY_20;
    Dbg_RDATA_I(20)     <= Dbg_RDATA_20;
    Dbg_RRESP_I(20)     <= Dbg_RRESP_20;
    Dbg_RVALID_I(20)    <= Dbg_RVALID_20;
    Dbg_RREADY_20       <= Dbg_RREADY(20);

    Dbg_AWADDR_21       <= Dbg_AWADDR;
    Dbg_AWVALID_21      <= Dbg_WVALID(21);
    Dbg_AWREADY_I(21)   <= Dbg_AWREADY_21;
    Dbg_WDATA_21        <= Dbg_WDATA;
    Dbg_WVALID_21       <= Dbg_AWVALID(21);
    Dbg_WREADY_I(21)    <= Dbg_WREADY_21;
    Dbg_BRESP_I(21)     <= Dbg_BRESP_21;
    Dbg_BVALID_I(21)    <= Dbg_BVALID_21;
    Dbg_BREADY_21       <= Dbg_BREADY(21);
    Dbg_ARADDR_21       <= Dbg_ARADDR;
    Dbg_ARVALID_21      <= Dbg_ARVALID(21);
    Dbg_ARREADY_I(21)   <= Dbg_ARREADY_21;
    Dbg_RDATA_I(21)     <= Dbg_RDATA_21;
    Dbg_RRESP_I(21)     <= Dbg_RRESP_21;
    Dbg_RVALID_I(21)    <= Dbg_RVALID_21;
    Dbg_RREADY_21       <= Dbg_RREADY(21);

    Dbg_AWADDR_22       <= Dbg_AWADDR;
    Dbg_AWVALID_22      <= Dbg_WVALID(22);
    Dbg_AWREADY_I(22)   <= Dbg_AWREADY_22;
    Dbg_WDATA_22        <= Dbg_WDATA;
    Dbg_WVALID_22       <= Dbg_AWVALID(22);
    Dbg_WREADY_I(22)    <= Dbg_WREADY_22;
    Dbg_BRESP_I(22)     <= Dbg_BRESP_22;
    Dbg_BVALID_I(22)    <= Dbg_BVALID_22;
    Dbg_BREADY_22       <= Dbg_BREADY(22);
    Dbg_ARADDR_22       <= Dbg_ARADDR;
    Dbg_ARVALID_22      <= Dbg_ARVALID(22);
    Dbg_ARREADY_I(22)   <= Dbg_ARREADY_22;
    Dbg_RDATA_I(22)     <= Dbg_RDATA_22;
    Dbg_RRESP_I(22)     <= Dbg_RRESP_22;
    Dbg_RVALID_I(22)    <= Dbg_RVALID_22;
    Dbg_RREADY_22       <= Dbg_RREADY(22);

    Dbg_AWADDR_23       <= Dbg_AWADDR;
    Dbg_AWVALID_23      <= Dbg_WVALID(23);
    Dbg_AWREADY_I(23)   <= Dbg_AWREADY_23;
    Dbg_WDATA_23        <= Dbg_WDATA;
    Dbg_WVALID_23       <= Dbg_AWVALID(23);
    Dbg_WREADY_I(23)    <= Dbg_WREADY_23;
    Dbg_BRESP_I(23)     <= Dbg_BRESP_23;
    Dbg_BVALID_I(23)    <= Dbg_BVALID_23;
    Dbg_BREADY_23       <= Dbg_BREADY(23);
    Dbg_ARADDR_23       <= Dbg_ARADDR;
    Dbg_ARVALID_23      <= Dbg_ARVALID(23);
    Dbg_ARREADY_I(23)   <= Dbg_ARREADY_23;
    Dbg_RDATA_I(23)     <= Dbg_RDATA_23;
    Dbg_RRESP_I(23)     <= Dbg_RRESP_23;
    Dbg_RVALID_I(23)    <= Dbg_RVALID_23;
    Dbg_RREADY_23       <= Dbg_RREADY(23);

    Dbg_AWADDR_24       <= Dbg_AWADDR;
    Dbg_AWVALID_24      <= Dbg_WVALID(24);
    Dbg_AWREADY_I(24)   <= Dbg_AWREADY_24;
    Dbg_WDATA_24        <= Dbg_WDATA;
    Dbg_WVALID_24       <= Dbg_AWVALID(24);
    Dbg_WREADY_I(24)    <= Dbg_WREADY_24;
    Dbg_BRESP_I(24)     <= Dbg_BRESP_24;
    Dbg_BVALID_I(24)    <= Dbg_BVALID_24;
    Dbg_BREADY_24       <= Dbg_BREADY(24);
    Dbg_ARADDR_24       <= Dbg_ARADDR;
    Dbg_ARVALID_24      <= Dbg_ARVALID(24);
    Dbg_ARREADY_I(24)   <= Dbg_ARREADY_24;
    Dbg_RDATA_I(24)     <= Dbg_RDATA_24;
    Dbg_RRESP_I(24)     <= Dbg_RRESP_24;
    Dbg_RVALID_I(24)    <= Dbg_RVALID_24;
    Dbg_RREADY_24       <= Dbg_RREADY(24);

    Dbg_AWADDR_25       <= Dbg_AWADDR;
    Dbg_AWVALID_25      <= Dbg_WVALID(25);
    Dbg_AWREADY_I(25)   <= Dbg_AWREADY_25;
    Dbg_WDATA_25        <= Dbg_WDATA;
    Dbg_WVALID_25       <= Dbg_AWVALID(25);
    Dbg_WREADY_I(25)    <= Dbg_WREADY_25;
    Dbg_BRESP_I(25)     <= Dbg_BRESP_25;
    Dbg_BVALID_I(25)    <= Dbg_BVALID_25;
    Dbg_BREADY_25       <= Dbg_BREADY(25);
    Dbg_ARADDR_25       <= Dbg_ARADDR;
    Dbg_ARVALID_25      <= Dbg_ARVALID(25);
    Dbg_ARREADY_I(25)   <= Dbg_ARREADY_25;
    Dbg_RDATA_I(25)     <= Dbg_RDATA_25;
    Dbg_RRESP_I(25)     <= Dbg_RRESP_25;
    Dbg_RVALID_I(25)    <= Dbg_RVALID_25;
    Dbg_RREADY_25       <= Dbg_RREADY(25);

    Dbg_AWADDR_26       <= Dbg_AWADDR;
    Dbg_AWVALID_26      <= Dbg_WVALID(26);
    Dbg_AWREADY_I(26)   <= Dbg_AWREADY_26;
    Dbg_WDATA_26        <= Dbg_WDATA;
    Dbg_WVALID_26       <= Dbg_AWVALID(26);
    Dbg_WREADY_I(26)    <= Dbg_WREADY_26;
    Dbg_BRESP_I(26)     <= Dbg_BRESP_26;
    Dbg_BVALID_I(26)    <= Dbg_BVALID_26;
    Dbg_BREADY_26       <= Dbg_BREADY(26);
    Dbg_ARADDR_26       <= Dbg_ARADDR;
    Dbg_ARVALID_26      <= Dbg_ARVALID(26);
    Dbg_ARREADY_I(26)   <= Dbg_ARREADY_26;
    Dbg_RDATA_I(26)     <= Dbg_RDATA_26;
    Dbg_RRESP_I(26)     <= Dbg_RRESP_26;
    Dbg_RVALID_I(26)    <= Dbg_RVALID_26;
    Dbg_RREADY_26       <= Dbg_RREADY(26);

    Dbg_AWADDR_27       <= Dbg_AWADDR;
    Dbg_AWVALID_27      <= Dbg_WVALID(27);
    Dbg_AWREADY_I(27)   <= Dbg_AWREADY_27;
    Dbg_WDATA_27        <= Dbg_WDATA;
    Dbg_WVALID_27       <= Dbg_AWVALID(27);
    Dbg_WREADY_I(27)    <= Dbg_WREADY_27;
    Dbg_BRESP_I(27)     <= Dbg_BRESP_27;
    Dbg_BVALID_I(27)    <= Dbg_BVALID_27;
    Dbg_BREADY_27       <= Dbg_BREADY(27);
    Dbg_ARADDR_27       <= Dbg_ARADDR;
    Dbg_ARVALID_27      <= Dbg_ARVALID(27);
    Dbg_ARREADY_I(27)   <= Dbg_ARREADY_27;
    Dbg_RDATA_I(27)     <= Dbg_RDATA_27;
    Dbg_RRESP_I(27)     <= Dbg_RRESP_27;
    Dbg_RVALID_I(27)    <= Dbg_RVALID_27;
    Dbg_RREADY_27       <= Dbg_RREADY(27);

    Dbg_AWADDR_28       <= Dbg_AWADDR;
    Dbg_AWVALID_28      <= Dbg_WVALID(28);
    Dbg_AWREADY_I(28)   <= Dbg_AWREADY_28;
    Dbg_WDATA_28        <= Dbg_WDATA;
    Dbg_WVALID_28       <= Dbg_AWVALID(28);
    Dbg_WREADY_I(28)    <= Dbg_WREADY_28;
    Dbg_BRESP_I(28)     <= Dbg_BRESP_28;
    Dbg_BVALID_I(28)    <= Dbg_BVALID_28;
    Dbg_BREADY_28       <= Dbg_BREADY(28);
    Dbg_ARADDR_28       <= Dbg_ARADDR;
    Dbg_ARVALID_28      <= Dbg_ARVALID(28);
    Dbg_ARREADY_I(28)   <= Dbg_ARREADY_28;
    Dbg_RDATA_I(28)     <= Dbg_RDATA_28;
    Dbg_RRESP_I(28)     <= Dbg_RRESP_28;
    Dbg_RVALID_I(28)    <= Dbg_RVALID_28;
    Dbg_RREADY_28       <= Dbg_RREADY(28);

    Dbg_AWADDR_29       <= Dbg_AWADDR;
    Dbg_AWVALID_29      <= Dbg_WVALID(29);
    Dbg_AWREADY_I(29)   <= Dbg_AWREADY_29;
    Dbg_WDATA_29        <= Dbg_WDATA;
    Dbg_WVALID_29       <= Dbg_AWVALID(29);
    Dbg_WREADY_I(29)    <= Dbg_WREADY_29;
    Dbg_BRESP_I(29)     <= Dbg_BRESP_29;
    Dbg_BVALID_I(29)    <= Dbg_BVALID_29;
    Dbg_BREADY_29       <= Dbg_BREADY(29);
    Dbg_ARADDR_29       <= Dbg_ARADDR;
    Dbg_ARVALID_29      <= Dbg_ARVALID(29);
    Dbg_ARREADY_I(29)   <= Dbg_ARREADY_29;
    Dbg_RDATA_I(29)     <= Dbg_RDATA_29;
    Dbg_RRESP_I(29)     <= Dbg_RRESP_29;
    Dbg_RVALID_I(29)    <= Dbg_RVALID_29;
    Dbg_RREADY_29       <= Dbg_RREADY(29);

    Dbg_AWADDR_30       <= Dbg_AWADDR;
    Dbg_AWVALID_30      <= Dbg_WVALID(30);
    Dbg_AWREADY_I(30)   <= Dbg_AWREADY_30;
    Dbg_WDATA_30        <= Dbg_WDATA;
    Dbg_WVALID_30       <= Dbg_AWVALID(30);
    Dbg_WREADY_I(30)    <= Dbg_WREADY_30;
    Dbg_BRESP_I(30)     <= Dbg_BRESP_30;
    Dbg_BVALID_I(30)    <= Dbg_BVALID_30;
    Dbg_BREADY_30       <= Dbg_BREADY(30);
    Dbg_ARADDR_30       <= Dbg_ARADDR;
    Dbg_ARVALID_30      <= Dbg_ARVALID(30);
    Dbg_ARREADY_I(30)   <= Dbg_ARREADY_30;
    Dbg_RDATA_I(30)     <= Dbg_RDATA_30;
    Dbg_RRESP_I(30)     <= Dbg_RRESP_30;
    Dbg_RVALID_I(30)    <= Dbg_RVALID_30;
    Dbg_RREADY_30       <= Dbg_RREADY(30);

    Dbg_AWADDR_31       <= Dbg_AWADDR;
    Dbg_AWVALID_31      <= Dbg_WVALID(31);
    Dbg_AWREADY_I(31)   <= Dbg_AWREADY_31;
    Dbg_WDATA_31        <= Dbg_WDATA;
    Dbg_WVALID_31       <= Dbg_AWVALID(31);
    Dbg_WREADY_I(31)    <= Dbg_WREADY_31;
    Dbg_BRESP_I(31)     <= Dbg_BRESP_31;
    Dbg_BVALID_I(31)    <= Dbg_BVALID_31;
    Dbg_BREADY_31       <= Dbg_BREADY(31);
    Dbg_ARADDR_31       <= Dbg_ARADDR;
    Dbg_ARVALID_31      <= Dbg_ARVALID(31);
    Dbg_ARREADY_I(31)   <= Dbg_ARREADY_31;
    Dbg_RDATA_I(31)     <= Dbg_RDATA_31;
    Dbg_RRESP_I(31)     <= Dbg_RRESP_31;
    Dbg_RVALID_I(31)    <= Dbg_RVALID_31;
    Dbg_RREADY_31       <= Dbg_RREADY(31);

    -- Unused serial signals
    Dbg_Reg_En_I   <= (others => (others => '0'));

    Dbg_Clk_0      <= '0';
    Dbg_TDI_0      <= '0';
    Dbg_TDO_I(0)   <= '0';
    Dbg_Reg_En_0   <= (others => '0');
    Dbg_Capture_0  <= '0';
    Dbg_Shift_0    <= '0';
    Dbg_Update_0   <= '0';

    Dbg_Clk_1      <= '0';
    Dbg_TDI_1      <= '0';
    Dbg_TDO_I(1)   <= '0';
    Dbg_Reg_En_1   <= (others => '0');
    Dbg_Capture_1  <= '0';
    Dbg_Shift_1    <= '0';
    Dbg_Update_1   <= '0';

    Dbg_Clk_2      <= '0';
    Dbg_TDI_2      <= '0';
    Dbg_TDO_I(2)   <= '0';
    Dbg_Reg_En_2   <= (others => '0');
    Dbg_Capture_2  <= '0';
    Dbg_Shift_2    <= '0';
    Dbg_Update_2   <= '0';

    Dbg_Clk_3      <= '0';
    Dbg_TDI_3      <= '0';
    Dbg_TDO_I(3)   <= '0';
    Dbg_Reg_En_3   <= (others => '0');
    Dbg_Capture_3  <= '0';
    Dbg_Shift_3    <= '0';
    Dbg_Update_3   <= '0';

    Dbg_Clk_4      <= '0';
    Dbg_TDI_4      <= '0';
    Dbg_TDO_I(4)   <= '0';
    Dbg_Reg_En_4   <= (others => '0');
    Dbg_Capture_4  <= '0';
    Dbg_Shift_4    <= '0';
    Dbg_Update_4   <= '0';

    Dbg_Clk_5      <= '0';
    Dbg_TDI_5      <= '0';
    Dbg_TDO_I(5)   <= '0';
    Dbg_Reg_En_5   <= (others => '0');
    Dbg_Capture_5  <= '0';
    Dbg_Shift_5    <= '0';
    Dbg_Update_5   <= '0';

    Dbg_Clk_6      <= '0';
    Dbg_TDI_6      <= '0';
    Dbg_TDO_I(6)   <= '0';
    Dbg_Reg_En_6   <= (others => '0');
    Dbg_Capture_6  <= '0';
    Dbg_Shift_6    <= '0';
    Dbg_Update_6   <= '0';

    Dbg_Clk_7      <= '0';
    Dbg_TDI_7      <= '0';
    Dbg_TDO_I(7)   <= '0';
    Dbg_Reg_En_7   <= (others => '0');
    Dbg_Capture_7  <= '0';
    Dbg_Shift_7    <= '0';
    Dbg_Update_7   <= '0';

    Dbg_Clk_8      <= '0';
    Dbg_TDI_8      <= '0';
    Dbg_TDO_I(8)   <= '0';
    Dbg_Reg_En_8   <= (others => '0');
    Dbg_Capture_8  <= '0';
    Dbg_Shift_8    <= '0';
    Dbg_Update_8   <= '0';

    Dbg_Clk_9      <= '0';
    Dbg_TDI_9      <= '0';
    Dbg_TDO_I(9)   <= '0';
    Dbg_Reg_En_9   <= (others => '0');
    Dbg_Capture_9  <= '0';
    Dbg_Shift_9    <= '0';
    Dbg_Update_9   <= '0';

    Dbg_Clk_10      <= '0';
    Dbg_TDI_10      <= '0';
    Dbg_TDO_I(10)   <= '0';
    Dbg_Reg_En_10   <= (others => '0');
    Dbg_Capture_10  <= '0';
    Dbg_Shift_10    <= '0';
    Dbg_Update_10   <= '0';

    Dbg_Clk_11      <= '0';
    Dbg_TDI_11      <= '0';
    Dbg_TDO_I(11)   <= '0';
    Dbg_Reg_En_11   <= (others => '0');
    Dbg_Capture_11  <= '0';
    Dbg_Shift_11    <= '0';
    Dbg_Update_11   <= '0';

    Dbg_Clk_12      <= '0';
    Dbg_TDI_12      <= '0';
    Dbg_TDO_I(12)   <= '0';
    Dbg_Reg_En_12   <= (others => '0');
    Dbg_Capture_12  <= '0';
    Dbg_Shift_12    <= '0';
    Dbg_Update_12   <= '0';

    Dbg_Clk_13      <= '0';
    Dbg_TDI_13      <= '0';
    Dbg_TDO_I(13)   <= '0';
    Dbg_Reg_En_13   <= (others => '0');
    Dbg_Capture_13  <= '0';
    Dbg_Shift_13    <= '0';
    Dbg_Update_13   <= '0';

    Dbg_Clk_14      <= '0';
    Dbg_TDI_14      <= '0';
    Dbg_TDO_I(14)   <= '0';
    Dbg_Reg_En_14   <= (others => '0');
    Dbg_Capture_14  <= '0';
    Dbg_Shift_14    <= '0';
    Dbg_Update_14   <= '0';

    Dbg_Clk_15      <= '0';
    Dbg_TDI_15      <= '0';
    Dbg_TDO_I(15)   <= '0';
    Dbg_Reg_En_15   <= (others => '0');
    Dbg_Capture_15  <= '0';
    Dbg_Shift_15    <= '0';
    Dbg_Update_15   <= '0';

    Dbg_Clk_16      <= '0';
    Dbg_TDI_16      <= '0';
    Dbg_TDO_I(16)   <= '0';
    Dbg_Reg_En_16   <= (others => '0');
    Dbg_Capture_16  <= '0';
    Dbg_Shift_16    <= '0';
    Dbg_Update_16   <= '0';

    Dbg_Clk_17      <= '0';
    Dbg_TDI_17      <= '0';
    Dbg_TDO_I(17)   <= '0';
    Dbg_Reg_En_17   <= (others => '0');
    Dbg_Capture_17  <= '0';
    Dbg_Shift_17    <= '0';
    Dbg_Update_17   <= '0';

    Dbg_Clk_18      <= '0';
    Dbg_TDI_18      <= '0';
    Dbg_TDO_I(18)   <= '0';
    Dbg_Reg_En_18   <= (others => '0');
    Dbg_Capture_18  <= '0';
    Dbg_Shift_18    <= '0';
    Dbg_Update_18   <= '0';

    Dbg_Clk_19      <= '0';
    Dbg_TDI_19      <= '0';
    Dbg_TDO_I(19)   <= '0';
    Dbg_Reg_En_19   <= (others => '0');
    Dbg_Capture_19  <= '0';
    Dbg_Shift_19    <= '0';
    Dbg_Update_19   <= '0';

    Dbg_Clk_20      <= '0';
    Dbg_TDI_20      <= '0';
    Dbg_TDO_I(20)   <= '0';
    Dbg_Reg_En_20   <= (others => '0');
    Dbg_Capture_20  <= '0';
    Dbg_Shift_20    <= '0';
    Dbg_Update_20   <= '0';

    Dbg_Clk_21      <= '0';
    Dbg_TDI_21      <= '0';
    Dbg_TDO_I(21)   <= '0';
    Dbg_Reg_En_21   <= (others => '0');
    Dbg_Capture_21  <= '0';
    Dbg_Shift_21    <= '0';
    Dbg_Update_21   <= '0';

    Dbg_Clk_22      <= '0';
    Dbg_TDI_22      <= '0';
    Dbg_TDO_I(22)   <= '0';
    Dbg_Reg_En_22   <= (others => '0');
    Dbg_Capture_22  <= '0';
    Dbg_Shift_22    <= '0';
    Dbg_Update_22   <= '0';

    Dbg_Clk_23      <= '0';
    Dbg_TDI_23      <= '0';
    Dbg_TDO_I(23)   <= '0';
    Dbg_Reg_En_23   <= (others => '0');
    Dbg_Capture_23  <= '0';
    Dbg_Shift_23    <= '0';
    Dbg_Update_23   <= '0';

    Dbg_Clk_24      <= '0';
    Dbg_TDI_24      <= '0';
    Dbg_TDO_I(24)   <= '0';
    Dbg_Reg_En_24   <= (others => '0');
    Dbg_Capture_24  <= '0';
    Dbg_Shift_24    <= '0';
    Dbg_Update_24   <= '0';

    Dbg_Clk_25      <= '0';
    Dbg_TDI_25      <= '0';
    Dbg_TDO_I(25)   <= '0';
    Dbg_Reg_En_25   <= (others => '0');
    Dbg_Capture_25  <= '0';
    Dbg_Shift_25    <= '0';
    Dbg_Update_25   <= '0';

    Dbg_Clk_26      <= '0';
    Dbg_TDI_26      <= '0';
    Dbg_TDO_I(26)   <= '0';
    Dbg_Reg_En_26   <= (others => '0');
    Dbg_Capture_26  <= '0';
    Dbg_Shift_26    <= '0';
    Dbg_Update_26   <= '0';

    Dbg_Clk_27      <= '0';
    Dbg_TDI_27      <= '0';
    Dbg_TDO_I(27)   <= '0';
    Dbg_Reg_En_27   <= (others => '0');
    Dbg_Capture_27  <= '0';
    Dbg_Shift_27    <= '0';
    Dbg_Update_27   <= '0';

    Dbg_Clk_28      <= '0';
    Dbg_TDI_28      <= '0';
    Dbg_TDO_I(28)   <= '0';
    Dbg_Reg_En_28   <= (others => '0');
    Dbg_Capture_28  <= '0';
    Dbg_Shift_28    <= '0';
    Dbg_Update_28   <= '0';

    Dbg_Clk_29      <= '0';
    Dbg_TDI_29      <= '0';
    Dbg_TDO_I(29)   <= '0';
    Dbg_Reg_En_29   <= (others => '0');
    Dbg_Capture_29  <= '0';
    Dbg_Shift_29    <= '0';
    Dbg_Update_29   <= '0';

    Dbg_Clk_30      <= '0';
    Dbg_TDI_30      <= '0';
    Dbg_TDO_I(30)   <= '0';
    Dbg_Reg_En_30   <= (others => '0');
    Dbg_Capture_30  <= '0';
    Dbg_Shift_30    <= '0';
    Dbg_Update_30   <= '0';

    Dbg_Clk_31      <= '0';
    Dbg_TDI_31      <= '0';
    Dbg_TDO_I(31)   <= '0';
    Dbg_Reg_En_31   <= (others => '0');
    Dbg_Capture_31  <= '0';
    Dbg_Shift_31    <= '0';
    Dbg_Update_31   <= '0';
  end generate Use_Parallel;

end architecture IMP;


-------------------------------------------------------------------------------
-- mdm_riscv.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        mdm.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93/02
-------------------------------------------------------------------------------
-- Structure:
--              mdm_riscv.vhd
--
-------------------------------------------------------------------------------
-- Author:          stefana
--
-- History:
--   stefana 2019-11-04    Initial version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_7;
use mdm_riscv_v1_0_7.all;
use mdm_riscv_v1_0_7.mdm_funcs.all;

library axi_lite_ipif_v3_0_4;
use axi_lite_ipif_v3_0_4.axi_lite_ipif;
use axi_lite_ipif_v3_0_4.ipif_pkg.all;

entity MDM_RISCV is
  generic (
    C_FAMILY                : string                        := "virtex7";
    C_DEVICE                : string                        := "";
    C_JTAG_CHAIN            : integer                       := 2;
    C_USE_BSCAN             : integer                       := 0;
    C_BSCANID               : integer                       := 0;
    C_USE_BSCAN_SWITCH      : integer                       := 1;
    C_USE_JTAG_BSCAN        : integer                       := 1;
    C_DTM_IDCODE            : integer                       := 2323;
    C_USE_CONFIG_RESET      : integer                       := 0;
    C_AVOID_PRIMITIVES      : integer                       := 0;
    C_INTERCONNECT          : integer                       := 0;
    C_DEBUG_INTERFACE       : integer                       := 0;
    C_MB_DBG_PORTS          : integer                       := 1;
    C_DBG_REG_ACCESS        : integer                       := 0;
    C_DBG_MEM_ACCESS        : integer                       := 0;
    C_USE_UART              : integer                       := 1;
    C_USE_CROSS_TRIGGER     : integer                       := 0;
    C_EXT_TRIG_RESET_VALUE  : std_logic_vector(0 to 19)     := X"F1234";
    C_TRACE_OUTPUT          : integer                       := 0;
    C_TRACE_DATA_WIDTH      : integer range 2 to 32         := 32;
    C_TRACE_ASYNC_RESET     : integer                       := 0;
    C_TRACE_CLK_FREQ_HZ     : integer                       := 200000000;
    C_TRACE_CLK_OUT_PHASE   : integer range 0 to 360        := 90;
    C_TRACE_PROTOCOL        : integer                       := 0;
    C_TRACE_ID              : integer                       := 110;
    C_S_AXI_ACLK_FREQ_HZ    : integer                       := 100000000;
    C_S_AXI_ADDR_WIDTH      : integer range 4  to 16        := 9;  -- 4, 9, 10, or 14
    C_S_AXI_DATA_WIDTH      : integer range 32 to 128       := 32;
    C_M_AXI_ADDR_WIDTH      : integer range 32 to 64        := 32;
    C_M_AXI_DATA_WIDTH      : integer range 32 to 32        := 32;
    C_M_AXI_THREAD_ID_WIDTH : integer                       := 1;
    C_ADDR_SIZE             : integer range 32 to 64        := 32;
    C_DATA_SIZE             : integer range 32 to 32        := 32;
    C_LMB_PROTOCOL          : integer range 0  to 1         := 0;
    C_M_AXIS_DATA_WIDTH     : integer range 2  to 32        := 32;
    C_M_AXIS_ID_WIDTH       : integer range 1  to 7         := 7
  );

  port (
    -- Global signals
    Config_Reset    : in std_logic := '0';
    Scan_Reset_Sel  : in std_logic := '0';
    Scan_Reset      : in std_logic := '0';
    Scan_En         : in std_logic := '0';

    S_AXI_ACLK      : in std_logic;
    S_AXI_ARESETN   : in std_logic;

    M_AXI_ACLK      : in std_logic;
    M_AXI_ARESETN   : in std_logic;

    M_AXIS_ACLK     : in std_logic;
    M_AXIS_ARESETN  : in std_logic;

    Interrupt       : out std_logic;
    Ext_BRK         : out std_logic;
    Ext_NM_BRK      : out std_logic;
    Debug_SYS_Rst   : out std_logic;

    -- External cross trigger signals
    Trig_In_0      : in  std_logic;
    Trig_Ack_In_0  : out std_logic;
    Trig_Out_0     : out std_logic;
    Trig_Ack_Out_0 : in  std_logic;

    Trig_In_1      : in  std_logic;
    Trig_Ack_In_1  : out std_logic;
    Trig_Out_1     : out std_logic;
    Trig_Ack_Out_1 : in  std_logic;

    Trig_In_2      : in  std_logic;
    Trig_Ack_In_2  : out std_logic;
    Trig_Out_2     : out std_logic;
    Trig_Ack_Out_2 : in  std_logic;

    Trig_In_3      : in  std_logic;
    Trig_Ack_In_3  : out std_logic;
    Trig_Out_3     : out std_logic;
    Trig_Ack_Out_3 : in  std_logic;

    -- AXI slave signals
    S_AXI_AWADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_AWVALID : in  std_logic;
    S_AXI_AWREADY : out std_logic;
    S_AXI_WDATA   : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_WSTRB   : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI_WVALID  : in  std_logic;
    S_AXI_WREADY  : out std_logic;
    S_AXI_BRESP   : out std_logic_vector(1 downto 0);
    S_AXI_BVALID  : out std_logic;
    S_AXI_BREADY  : in  std_logic;
    S_AXI_ARADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_ARVALID : in  std_logic;
    S_AXI_ARREADY : out std_logic;
    S_AXI_RDATA   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_RRESP   : out std_logic_vector(1 downto 0);
    S_AXI_RVALID  : out std_logic;
    S_AXI_RREADY  : in  std_logic;

    -- Bus master signals
    M_AXI_AWID          : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_AWADDR        : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_AWLEN         : out std_logic_vector(7 downto 0);
    M_AXI_AWSIZE        : out std_logic_vector(2 downto 0);
    M_AXI_AWBURST       : out std_logic_vector(1 downto 0);
    M_AXI_AWLOCK        : out std_logic;
    M_AXI_AWCACHE       : out std_logic_vector(3 downto 0);
    M_AXI_AWPROT        : out std_logic_vector(2 downto 0);
    M_AXI_AWQOS         : out std_logic_vector(3 downto 0);
    M_AXI_AWVALID       : out std_logic;
    M_AXI_AWREADY       : in  std_logic;
    M_AXI_WDATA         : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_WSTRB         : out std_logic_vector((C_M_AXI_DATA_WIDTH/8)-1 downto 0);
    M_AXI_WLAST         : out std_logic;
    M_AXI_WVALID        : out std_logic;
    M_AXI_WREADY        : in  std_logic;
    M_AXI_BRESP         : in  std_logic_vector(1 downto 0);
    M_AXI_BID           : in  std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_BVALID        : in  std_logic;
    M_AXI_BREADY        : out std_logic;
    M_AXI_ARID          : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_ARADDR        : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_ARLEN         : out std_logic_vector(7 downto 0);
    M_AXI_ARSIZE        : out std_logic_vector(2 downto 0);
    M_AXI_ARBURST       : out std_logic_vector(1 downto 0);
    M_AXI_ARLOCK        : out std_logic;
    M_AXI_ARCACHE       : out std_logic_vector(3 downto 0);
    M_AXI_ARPROT        : out std_logic_vector(2 downto 0);
    M_AXI_ARQOS         : out std_logic_vector(3 downto 0);
    M_AXI_ARVALID       : out std_logic;
    M_AXI_ARREADY       : in  std_logic;
    M_AXI_RID           : in  std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_RDATA         : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_RRESP         : in  std_logic_vector(1 downto 0);
    M_AXI_RLAST         : in  std_logic;
    M_AXI_RVALID        : in  std_logic;
    M_AXI_RREADY        : out std_logic;

    LMB_Data_Addr_0     : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_0     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_0    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_0   : out std_logic;
    LMB_Read_Strobe_0   : out std_logic;
    LMB_Write_Strobe_0  : out std_logic;
    LMB_Ready_0         : in  std_logic;
    LMB_Wait_0          : in  std_logic;
    LMB_CE_0            : in  std_logic;
    LMB_UE_0            : in  std_logic;
    LMB_Byte_Enable_0   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_1     : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_1     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_1    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_1   : out std_logic;
    LMB_Read_Strobe_1   : out std_logic;
    LMB_Write_Strobe_1  : out std_logic;
    LMB_Ready_1         : in  std_logic;
    LMB_Wait_1          : in  std_logic;
    LMB_CE_1            : in  std_logic;
    LMB_UE_1            : in  std_logic;
    LMB_Byte_Enable_1   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_2     : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_2     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_2    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_2   : out std_logic;
    LMB_Read_Strobe_2   : out std_logic;
    LMB_Write_Strobe_2  : out std_logic;
    LMB_Ready_2         : in  std_logic;
    LMB_Wait_2          : in  std_logic;
    LMB_CE_2            : in  std_logic;
    LMB_UE_2            : in  std_logic;
    LMB_Byte_Enable_2   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_3     : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_3     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_3    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_3   : out std_logic;
    LMB_Read_Strobe_3   : out std_logic;
    LMB_Write_Strobe_3  : out std_logic;
    LMB_Ready_3         : in  std_logic;
    LMB_Wait_3          : in  std_logic;
    LMB_CE_3            : in  std_logic;
    LMB_UE_3            : in  std_logic;
    LMB_Byte_Enable_3   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_4     : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_4     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_4    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_4   : out std_logic;
    LMB_Read_Strobe_4   : out std_logic;
    LMB_Write_Strobe_4  : out std_logic;
    LMB_Ready_4         : in  std_logic;
    LMB_Wait_4          : in  std_logic;
    LMB_CE_4            : in  std_logic;
    LMB_UE_4            : in  std_logic;
    LMB_Byte_Enable_4   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_5     : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_5     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_5    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_5   : out std_logic;
    LMB_Read_Strobe_5   : out std_logic;
    LMB_Write_Strobe_5  : out std_logic;
    LMB_Ready_5         : in  std_logic;
    LMB_Wait_5          : in  std_logic;
    LMB_CE_5            : in  std_logic;
    LMB_UE_5            : in  std_logic;
    LMB_Byte_Enable_5   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_6     : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_6     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_6    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_6   : out std_logic;
    LMB_Read_Strobe_6   : out std_logic;
    LMB_Write_Strobe_6  : out std_logic;
    LMB_Ready_6         : in  std_logic;
    LMB_Wait_6          : in  std_logic;
    LMB_CE_6            : in  std_logic;
    LMB_UE_6            : in  std_logic;
    LMB_Byte_Enable_6   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_7     : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_7     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_7    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_7   : out std_logic;
    LMB_Read_Strobe_7   : out std_logic;
    LMB_Write_Strobe_7  : out std_logic;
    LMB_Ready_7         : in  std_logic;
    LMB_Wait_7          : in  std_logic;
    LMB_CE_7            : in  std_logic;
    LMB_UE_7            : in  std_logic;
    LMB_Byte_Enable_7   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_8     : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_8     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_8    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_8   : out std_logic;
    LMB_Read_Strobe_8   : out std_logic;
    LMB_Write_Strobe_8  : out std_logic;
    LMB_Ready_8         : in  std_logic;
    LMB_Wait_8          : in  std_logic;
    LMB_CE_8            : in  std_logic;
    LMB_UE_8            : in  std_logic;
    LMB_Byte_Enable_8   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_9     : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_9     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_9    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_9   : out std_logic;
    LMB_Read_Strobe_9   : out std_logic;
    LMB_Write_Strobe_9  : out std_logic;
    LMB_Ready_9         : in  std_logic;
    LMB_Wait_9          : in  std_logic;
    LMB_CE_9            : in  std_logic;
    LMB_UE_9            : in  std_logic;
    LMB_Byte_Enable_9   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_10    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_10    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_10   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_10  : out std_logic;
    LMB_Read_Strobe_10  : out std_logic;
    LMB_Write_Strobe_10 : out std_logic;
    LMB_Ready_10        : in  std_logic;
    LMB_Wait_10         : in  std_logic;
    LMB_CE_10           : in  std_logic;
    LMB_UE_10           : in  std_logic;
    LMB_Byte_Enable_10  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_11    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_11    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_11   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_11  : out std_logic;
    LMB_Read_Strobe_11  : out std_logic;
    LMB_Write_Strobe_11 : out std_logic;
    LMB_Ready_11        : in  std_logic;
    LMB_Wait_11         : in  std_logic;
    LMB_CE_11           : in  std_logic;
    LMB_UE_11           : in  std_logic;
    LMB_Byte_Enable_11  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_12    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_12    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_12   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_12  : out std_logic;
    LMB_Read_Strobe_12  : out std_logic;
    LMB_Write_Strobe_12 : out std_logic;
    LMB_Ready_12        : in  std_logic;
    LMB_Wait_12         : in  std_logic;
    LMB_CE_12           : in  std_logic;
    LMB_UE_12           : in  std_logic;
    LMB_Byte_Enable_12  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_13    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_13    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_13   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_13  : out std_logic;
    LMB_Read_Strobe_13  : out std_logic;
    LMB_Write_Strobe_13 : out std_logic;
    LMB_Ready_13        : in  std_logic;
    LMB_Wait_13         : in  std_logic;
    LMB_CE_13           : in  std_logic;
    LMB_UE_13           : in  std_logic;
    LMB_Byte_Enable_13  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_14    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_14    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_14   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_14  : out std_logic;
    LMB_Read_Strobe_14  : out std_logic;
    LMB_Write_Strobe_14 : out std_logic;
    LMB_Ready_14        : in  std_logic;
    LMB_Wait_14         : in  std_logic;
    LMB_CE_14           : in  std_logic;
    LMB_UE_14           : in  std_logic;
    LMB_Byte_Enable_14  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_15    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_15    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_15   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_15  : out std_logic;
    LMB_Read_Strobe_15  : out std_logic;
    LMB_Write_Strobe_15 : out std_logic;
    LMB_Ready_15        : in  std_logic;
    LMB_Wait_15         : in  std_logic;
    LMB_CE_15           : in  std_logic;
    LMB_UE_15           : in  std_logic;
    LMB_Byte_Enable_15  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_16    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_16    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_16   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_16  : out std_logic;
    LMB_Read_Strobe_16  : out std_logic;
    LMB_Write_Strobe_16 : out std_logic;
    LMB_Ready_16        : in  std_logic;
    LMB_Wait_16         : in  std_logic;
    LMB_CE_16           : in  std_logic;
    LMB_UE_16           : in  std_logic;
    LMB_Byte_Enable_16  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_17    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_17    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_17   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_17  : out std_logic;
    LMB_Read_Strobe_17  : out std_logic;
    LMB_Write_Strobe_17 : out std_logic;
    LMB_Ready_17        : in  std_logic;
    LMB_Wait_17         : in  std_logic;
    LMB_CE_17           : in  std_logic;
    LMB_UE_17           : in  std_logic;
    LMB_Byte_Enable_17  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_18    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_18    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_18   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_18  : out std_logic;
    LMB_Read_Strobe_18  : out std_logic;
    LMB_Write_Strobe_18 : out std_logic;
    LMB_Ready_18        : in  std_logic;
    LMB_Wait_18         : in  std_logic;
    LMB_CE_18           : in  std_logic;
    LMB_UE_18           : in  std_logic;
    LMB_Byte_Enable_18  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_19    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_19    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_19   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_19  : out std_logic;
    LMB_Read_Strobe_19  : out std_logic;
    LMB_Write_Strobe_19 : out std_logic;
    LMB_Ready_19        : in  std_logic;
    LMB_Wait_19         : in  std_logic;
    LMB_CE_19           : in  std_logic;
    LMB_UE_19           : in  std_logic;
    LMB_Byte_Enable_19  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_20    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_20    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_20   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_20  : out std_logic;
    LMB_Read_Strobe_20  : out std_logic;
    LMB_Write_Strobe_20 : out std_logic;
    LMB_Ready_20        : in  std_logic;
    LMB_Wait_20         : in  std_logic;
    LMB_CE_20           : in  std_logic;
    LMB_UE_20           : in  std_logic;
    LMB_Byte_Enable_20  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_21    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_21    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_21   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_21  : out std_logic;
    LMB_Read_Strobe_21  : out std_logic;
    LMB_Write_Strobe_21 : out std_logic;
    LMB_Ready_21        : in  std_logic;
    LMB_Wait_21         : in  std_logic;
    LMB_CE_21           : in  std_logic;
    LMB_UE_21           : in  std_logic;
    LMB_Byte_Enable_21  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_22    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_22    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_22   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_22  : out std_logic;
    LMB_Read_Strobe_22  : out std_logic;
    LMB_Write_Strobe_22 : out std_logic;
    LMB_Ready_22        : in  std_logic;
    LMB_Wait_22         : in  std_logic;
    LMB_CE_22           : in  std_logic;
    LMB_UE_22           : in  std_logic;
    LMB_Byte_Enable_22  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_23    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_23    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_23   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_23  : out std_logic;
    LMB_Read_Strobe_23  : out std_logic;
    LMB_Write_Strobe_23 : out std_logic;
    LMB_Ready_23        : in  std_logic;
    LMB_Wait_23         : in  std_logic;
    LMB_CE_23           : in  std_logic;
    LMB_UE_23           : in  std_logic;
    LMB_Byte_Enable_23  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_24    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_24    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_24   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_24  : out std_logic;
    LMB_Read_Strobe_24  : out std_logic;
    LMB_Write_Strobe_24 : out std_logic;
    LMB_Ready_24        : in  std_logic;
    LMB_Wait_24         : in  std_logic;
    LMB_CE_24           : in  std_logic;
    LMB_UE_24           : in  std_logic;
    LMB_Byte_Enable_24  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_25    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_25    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_25   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_25  : out std_logic;
    LMB_Read_Strobe_25  : out std_logic;
    LMB_Write_Strobe_25 : out std_logic;
    LMB_Ready_25        : in  std_logic;
    LMB_Wait_25         : in  std_logic;
    LMB_CE_25           : in  std_logic;
    LMB_UE_25           : in  std_logic;
    LMB_Byte_Enable_25  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_26    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_26    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_26   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_26  : out std_logic;
    LMB_Read_Strobe_26  : out std_logic;
    LMB_Write_Strobe_26 : out std_logic;
    LMB_Ready_26        : in  std_logic;
    LMB_Wait_26         : in  std_logic;
    LMB_CE_26           : in  std_logic;
    LMB_UE_26           : in  std_logic;
    LMB_Byte_Enable_26  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_27    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_27    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_27   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_27  : out std_logic;
    LMB_Read_Strobe_27  : out std_logic;
    LMB_Write_Strobe_27 : out std_logic;
    LMB_Ready_27        : in  std_logic;
    LMB_Wait_27         : in  std_logic;
    LMB_CE_27           : in  std_logic;
    LMB_UE_27           : in  std_logic;
    LMB_Byte_Enable_27  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_28    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_28    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_28   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_28  : out std_logic;
    LMB_Read_Strobe_28  : out std_logic;
    LMB_Write_Strobe_28 : out std_logic;
    LMB_Ready_28        : in  std_logic;
    LMB_Wait_28         : in  std_logic;
    LMB_CE_28           : in  std_logic;
    LMB_UE_28           : in  std_logic;
    LMB_Byte_Enable_28  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_29    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_29    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_29   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_29  : out std_logic;
    LMB_Read_Strobe_29  : out std_logic;
    LMB_Write_Strobe_29 : out std_logic;
    LMB_Ready_29        : in  std_logic;
    LMB_Wait_29         : in  std_logic;
    LMB_CE_29           : in  std_logic;
    LMB_UE_29           : in  std_logic;
    LMB_Byte_Enable_29  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_30    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_30    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_30   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_30  : out std_logic;
    LMB_Read_Strobe_30  : out std_logic;
    LMB_Write_Strobe_30 : out std_logic;
    LMB_Ready_30        : in  std_logic;
    LMB_Wait_30         : in  std_logic;
    LMB_CE_30           : in  std_logic;
    LMB_UE_30           : in  std_logic;
    LMB_Byte_Enable_30  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    LMB_Data_Addr_31    : out std_logic_vector(0 to C_ADDR_SIZE-1);
    LMB_Data_Read_31    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_31   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_31  : out std_logic;
    LMB_Read_Strobe_31  : out std_logic;
    LMB_Write_Strobe_31 : out std_logic;
    LMB_Ready_31        : in  std_logic;
    LMB_Wait_31         : in  std_logic;
    LMB_CE_31           : in  std_logic;
    LMB_UE_31           : in  std_logic;
    LMB_Byte_Enable_31  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    -- External Trace AXI Stream output
    M_AXIS_TDATA       : out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS_TID         : out std_logic_vector(C_M_AXIS_ID_WIDTH-1 downto 0);
    M_AXIS_TREADY      : in  std_logic;
    M_AXIS_TVALID      : out std_logic;

    -- External Trace output
    TRACE_CLK_OUT      : out std_logic;
    TRACE_CLK          : in  std_logic;
    TRACE_CTL          : out std_logic;
    TRACE_DATA         : out std_logic_vector(C_TRACE_DATA_WIDTH-1 downto 0);

    -- MicroBlaze Debug Signals
    Dbg_Disable_0      : out std_logic;
    Dbg_Clk_0          : out std_logic;
    Dbg_TDI_0          : out std_logic;
    Dbg_TDO_0          : in  std_logic;
    Dbg_Reg_En_0       : out std_logic_vector(0 to 7);
    Dbg_Capture_0      : out std_logic;
    Dbg_Shift_0        : out std_logic;
    Dbg_Update_0       : out std_logic;
    Dbg_Rst_0          : out std_logic;
    Dbg_Trig_In_0      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_0  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_0     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_0 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_0        : out std_logic;
    Dbg_TrData_0       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_0      : out std_logic;
    Dbg_TrValid_0      : in  std_logic;
    Dbg_AWADDR_0       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_0      : out std_logic;
    Dbg_AWREADY_0      : in  std_logic;
    Dbg_WDATA_0        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_0       : out std_logic;
    Dbg_WREADY_0       : in  std_logic;
    Dbg_BRESP_0        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_0       : in  std_logic;
    Dbg_BREADY_0       : out std_logic;
    Dbg_ARADDR_0       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_0      : out std_logic;
    Dbg_ARREADY_0      : in  std_logic;
    Dbg_RDATA_0        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_0        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_0       : in  std_logic;
    Dbg_RREADY_0       : out std_logic;

    Dbg_Disable_1      : out std_logic;
    Dbg_Clk_1          : out std_logic;
    Dbg_TDI_1          : out std_logic;
    Dbg_TDO_1          : in  std_logic;
    Dbg_Reg_En_1       : out std_logic_vector(0 to 7);
    Dbg_Capture_1      : out std_logic;
    Dbg_Shift_1        : out std_logic;
    Dbg_Update_1       : out std_logic;
    Dbg_Rst_1          : out std_logic;
    Dbg_Trig_In_1      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_1  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_1     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_1 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_1        : out std_logic;
    Dbg_TrData_1       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_1      : out std_logic;
    Dbg_TrValid_1      : in  std_logic;
    Dbg_AWADDR_1       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_1      : out std_logic;
    Dbg_AWREADY_1      : in  std_logic;
    Dbg_WDATA_1        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_1       : out std_logic;
    Dbg_WREADY_1       : in  std_logic;
    Dbg_BRESP_1        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_1       : in  std_logic;
    Dbg_BREADY_1       : out std_logic;
    Dbg_ARADDR_1       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_1      : out std_logic;
    Dbg_ARREADY_1      : in  std_logic;
    Dbg_RDATA_1        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_1        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_1       : in  std_logic;
    Dbg_RREADY_1       : out std_logic;

    Dbg_Disable_2      : out std_logic;
    Dbg_Clk_2          : out std_logic;
    Dbg_TDI_2          : out std_logic;
    Dbg_TDO_2          : in  std_logic;
    Dbg_Reg_En_2       : out std_logic_vector(0 to 7);
    Dbg_Capture_2      : out std_logic;
    Dbg_Shift_2        : out std_logic;
    Dbg_Update_2       : out std_logic;
    Dbg_Rst_2          : out std_logic;
    Dbg_Trig_In_2      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_2  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_2     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_2 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_2        : out std_logic;
    Dbg_TrData_2       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_2      : out std_logic;
    Dbg_TrValid_2      : in  std_logic;
    Dbg_AWADDR_2       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_2      : out std_logic;
    Dbg_AWREADY_2      : in  std_logic;
    Dbg_WDATA_2        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_2       : out std_logic;
    Dbg_WREADY_2       : in  std_logic;
    Dbg_BRESP_2        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_2       : in  std_logic;
    Dbg_BREADY_2       : out std_logic;
    Dbg_ARADDR_2       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_2      : out std_logic;
    Dbg_ARREADY_2      : in  std_logic;
    Dbg_RDATA_2        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_2        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_2       : in  std_logic;
    Dbg_RREADY_2       : out std_logic;

    Dbg_Disable_3      : out std_logic;
    Dbg_Clk_3          : out std_logic;
    Dbg_TDI_3          : out std_logic;
    Dbg_TDO_3          : in  std_logic;
    Dbg_Reg_En_3       : out std_logic_vector(0 to 7);
    Dbg_Capture_3      : out std_logic;
    Dbg_Shift_3        : out std_logic;
    Dbg_Update_3       : out std_logic;
    Dbg_Rst_3          : out std_logic;
    Dbg_Trig_In_3      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_3  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_3     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_3 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_3        : out std_logic;
    Dbg_TrData_3       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_3      : out std_logic;
    Dbg_TrValid_3      : in  std_logic;
    Dbg_AWADDR_3       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_3      : out std_logic;
    Dbg_AWREADY_3      : in  std_logic;
    Dbg_WDATA_3        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_3       : out std_logic;
    Dbg_WREADY_3       : in  std_logic;
    Dbg_BRESP_3        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_3       : in  std_logic;
    Dbg_BREADY_3       : out std_logic;
    Dbg_ARADDR_3       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_3      : out std_logic;
    Dbg_ARREADY_3      : in  std_logic;
    Dbg_RDATA_3        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_3        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_3       : in  std_logic;
    Dbg_RREADY_3       : out std_logic;

    Dbg_Disable_4      : out std_logic;
    Dbg_Clk_4          : out std_logic;
    Dbg_TDI_4          : out std_logic;
    Dbg_TDO_4          : in  std_logic;
    Dbg_Reg_En_4       : out std_logic_vector(0 to 7);
    Dbg_Capture_4      : out std_logic;
    Dbg_Shift_4        : out std_logic;
    Dbg_Update_4       : out std_logic;
    Dbg_Rst_4          : out std_logic;
    Dbg_Trig_In_4      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_4  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_4     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_4 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_4        : out std_logic;
    Dbg_TrData_4       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_4      : out std_logic;
    Dbg_TrValid_4      : in  std_logic;
    Dbg_AWADDR_4       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_4      : out std_logic;
    Dbg_AWREADY_4      : in  std_logic;
    Dbg_WDATA_4        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_4       : out std_logic;
    Dbg_WREADY_4       : in  std_logic;
    Dbg_BRESP_4        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_4       : in  std_logic;
    Dbg_BREADY_4       : out std_logic;
    Dbg_ARADDR_4       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_4      : out std_logic;
    Dbg_ARREADY_4      : in  std_logic;
    Dbg_RDATA_4        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_4        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_4       : in  std_logic;
    Dbg_RREADY_4       : out std_logic;

    Dbg_Disable_5      : out std_logic;
    Dbg_Clk_5          : out std_logic;
    Dbg_TDI_5          : out std_logic;
    Dbg_TDO_5          : in  std_logic;
    Dbg_Reg_En_5       : out std_logic_vector(0 to 7);
    Dbg_Capture_5      : out std_logic;
    Dbg_Shift_5        : out std_logic;
    Dbg_Update_5       : out std_logic;
    Dbg_Rst_5          : out std_logic;
    Dbg_Trig_In_5      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_5  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_5     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_5 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_5        : out std_logic;
    Dbg_TrData_5       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_5      : out std_logic;
    Dbg_TrValid_5      : in  std_logic;
    Dbg_AWADDR_5       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_5      : out std_logic;
    Dbg_AWREADY_5      : in  std_logic;
    Dbg_WDATA_5        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_5       : out std_logic;
    Dbg_WREADY_5       : in  std_logic;
    Dbg_BRESP_5        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_5       : in  std_logic;
    Dbg_BREADY_5       : out std_logic;
    Dbg_ARADDR_5       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_5      : out std_logic;
    Dbg_ARREADY_5      : in  std_logic;
    Dbg_RDATA_5        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_5        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_5       : in  std_logic;
    Dbg_RREADY_5       : out std_logic;

    Dbg_Disable_6      : out std_logic;
    Dbg_Clk_6          : out std_logic;
    Dbg_TDI_6          : out std_logic;
    Dbg_TDO_6          : in  std_logic;
    Dbg_Reg_En_6       : out std_logic_vector(0 to 7);
    Dbg_Capture_6      : out std_logic;
    Dbg_Shift_6        : out std_logic;
    Dbg_Update_6       : out std_logic;
    Dbg_Rst_6          : out std_logic;
    Dbg_Trig_In_6      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_6  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_6     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_6 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_6        : out std_logic;
    Dbg_TrData_6       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_6      : out std_logic;
    Dbg_TrValid_6      : in  std_logic;
    Dbg_AWADDR_6       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_6      : out std_logic;
    Dbg_AWREADY_6      : in  std_logic;
    Dbg_WDATA_6        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_6       : out std_logic;
    Dbg_WREADY_6       : in  std_logic;
    Dbg_BRESP_6        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_6       : in  std_logic;
    Dbg_BREADY_6       : out std_logic;
    Dbg_ARADDR_6       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_6      : out std_logic;
    Dbg_ARREADY_6      : in  std_logic;
    Dbg_RDATA_6        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_6        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_6       : in  std_logic;
    Dbg_RREADY_6       : out std_logic;

    Dbg_Disable_7      : out std_logic;
    Dbg_Clk_7          : out std_logic;
    Dbg_TDI_7          : out std_logic;
    Dbg_TDO_7          : in  std_logic;
    Dbg_Reg_En_7       : out std_logic_vector(0 to 7);
    Dbg_Capture_7      : out std_logic;
    Dbg_Shift_7        : out std_logic;
    Dbg_Update_7       : out std_logic;
    Dbg_Rst_7          : out std_logic;
    Dbg_Trig_In_7      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_7  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_7     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_7 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_7        : out std_logic;
    Dbg_TrData_7       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_7      : out std_logic;
    Dbg_TrValid_7      : in  std_logic;
    Dbg_AWADDR_7       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_7      : out std_logic;
    Dbg_AWREADY_7      : in  std_logic;
    Dbg_WDATA_7        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_7       : out std_logic;
    Dbg_WREADY_7       : in  std_logic;
    Dbg_BRESP_7        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_7       : in  std_logic;
    Dbg_BREADY_7       : out std_logic;
    Dbg_ARADDR_7       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_7      : out std_logic;
    Dbg_ARREADY_7      : in  std_logic;
    Dbg_RDATA_7        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_7        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_7       : in  std_logic;
    Dbg_RREADY_7       : out std_logic;

    Dbg_Disable_8      : out std_logic;
    Dbg_Clk_8          : out std_logic;
    Dbg_TDI_8          : out std_logic;
    Dbg_TDO_8          : in  std_logic;
    Dbg_Reg_En_8       : out std_logic_vector(0 to 7);
    Dbg_Capture_8      : out std_logic;
    Dbg_Shift_8        : out std_logic;
    Dbg_Update_8       : out std_logic;
    Dbg_Rst_8          : out std_logic;
    Dbg_Trig_In_8      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_8  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_8     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_8 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_8        : out std_logic;
    Dbg_TrData_8       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_8      : out std_logic;
    Dbg_TrValid_8      : in  std_logic;
    Dbg_AWADDR_8       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_8      : out std_logic;
    Dbg_AWREADY_8      : in  std_logic;
    Dbg_WDATA_8        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_8       : out std_logic;
    Dbg_WREADY_8       : in  std_logic;
    Dbg_BRESP_8        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_8       : in  std_logic;
    Dbg_BREADY_8       : out std_logic;
    Dbg_ARADDR_8       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_8      : out std_logic;
    Dbg_ARREADY_8      : in  std_logic;
    Dbg_RDATA_8        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_8        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_8       : in  std_logic;
    Dbg_RREADY_8       : out std_logic;

    Dbg_Disable_9      : out std_logic;
    Dbg_Clk_9          : out std_logic;
    Dbg_TDI_9          : out std_logic;
    Dbg_TDO_9          : in  std_logic;
    Dbg_Reg_En_9       : out std_logic_vector(0 to 7);
    Dbg_Capture_9      : out std_logic;
    Dbg_Shift_9        : out std_logic;
    Dbg_Update_9       : out std_logic;
    Dbg_Rst_9          : out std_logic;
    Dbg_Trig_In_9      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_9  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_9     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_9 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_9        : out std_logic;
    Dbg_TrData_9       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_9      : out std_logic;
    Dbg_TrValid_9      : in  std_logic;
    Dbg_AWADDR_9       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_9      : out std_logic;
    Dbg_AWREADY_9      : in  std_logic;
    Dbg_WDATA_9        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_9       : out std_logic;
    Dbg_WREADY_9       : in  std_logic;
    Dbg_BRESP_9        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_9       : in  std_logic;
    Dbg_BREADY_9       : out std_logic;
    Dbg_ARADDR_9       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_9      : out std_logic;
    Dbg_ARREADY_9      : in  std_logic;
    Dbg_RDATA_9        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_9        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_9       : in  std_logic;
    Dbg_RREADY_9       : out std_logic;

    Dbg_Disable_10      : out std_logic;
    Dbg_Clk_10          : out std_logic;
    Dbg_TDI_10          : out std_logic;
    Dbg_TDO_10          : in  std_logic;
    Dbg_Reg_En_10       : out std_logic_vector(0 to 7);
    Dbg_Capture_10      : out std_logic;
    Dbg_Shift_10        : out std_logic;
    Dbg_Update_10       : out std_logic;
    Dbg_Rst_10          : out std_logic;
    Dbg_Trig_In_10      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_10  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_10     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_10 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_10        : out std_logic;
    Dbg_TrData_10       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_10      : out std_logic;
    Dbg_TrValid_10      : in  std_logic;
    Dbg_AWADDR_10       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_10      : out std_logic;
    Dbg_AWREADY_10      : in  std_logic;
    Dbg_WDATA_10        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_10       : out std_logic;
    Dbg_WREADY_10       : in  std_logic;
    Dbg_BRESP_10        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_10       : in  std_logic;
    Dbg_BREADY_10       : out std_logic;
    Dbg_ARADDR_10       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_10      : out std_logic;
    Dbg_ARREADY_10      : in  std_logic;
    Dbg_RDATA_10        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_10        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_10       : in  std_logic;
    Dbg_RREADY_10       : out std_logic;

    Dbg_Disable_11      : out std_logic;
    Dbg_Clk_11          : out std_logic;
    Dbg_TDI_11          : out std_logic;
    Dbg_TDO_11          : in  std_logic;
    Dbg_Reg_En_11       : out std_logic_vector(0 to 7);
    Dbg_Capture_11      : out std_logic;
    Dbg_Shift_11        : out std_logic;
    Dbg_Update_11       : out std_logic;
    Dbg_Rst_11          : out std_logic;
    Dbg_Trig_In_11      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_11  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_11     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_11 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_11        : out std_logic;
    Dbg_TrData_11       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_11      : out std_logic;
    Dbg_TrValid_11      : in  std_logic;
    Dbg_AWADDR_11       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_11      : out std_logic;
    Dbg_AWREADY_11      : in  std_logic;
    Dbg_WDATA_11        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_11       : out std_logic;
    Dbg_WREADY_11       : in  std_logic;
    Dbg_BRESP_11        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_11       : in  std_logic;
    Dbg_BREADY_11       : out std_logic;
    Dbg_ARADDR_11       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_11      : out std_logic;
    Dbg_ARREADY_11      : in  std_logic;
    Dbg_RDATA_11        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_11        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_11       : in  std_logic;
    Dbg_RREADY_11       : out std_logic;

    Dbg_Disable_12      : out std_logic;
    Dbg_Clk_12          : out std_logic;
    Dbg_TDI_12          : out std_logic;
    Dbg_TDO_12          : in  std_logic;
    Dbg_Reg_En_12       : out std_logic_vector(0 to 7);
    Dbg_Capture_12      : out std_logic;
    Dbg_Shift_12        : out std_logic;
    Dbg_Update_12       : out std_logic;
    Dbg_Rst_12          : out std_logic;
    Dbg_Trig_In_12      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_12  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_12     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_12 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_12        : out std_logic;
    Dbg_TrData_12       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_12      : out std_logic;
    Dbg_TrValid_12      : in  std_logic;
    Dbg_AWADDR_12       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_12      : out std_logic;
    Dbg_AWREADY_12      : in  std_logic;
    Dbg_WDATA_12        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_12       : out std_logic;
    Dbg_WREADY_12       : in  std_logic;
    Dbg_BRESP_12        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_12       : in  std_logic;
    Dbg_BREADY_12       : out std_logic;
    Dbg_ARADDR_12       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_12      : out std_logic;
    Dbg_ARREADY_12      : in  std_logic;
    Dbg_RDATA_12        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_12        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_12       : in  std_logic;
    Dbg_RREADY_12       : out std_logic;

    Dbg_Disable_13      : out std_logic;
    Dbg_Clk_13          : out std_logic;
    Dbg_TDI_13          : out std_logic;
    Dbg_TDO_13          : in  std_logic;
    Dbg_Reg_En_13       : out std_logic_vector(0 to 7);
    Dbg_Capture_13      : out std_logic;
    Dbg_Shift_13        : out std_logic;
    Dbg_Update_13       : out std_logic;
    Dbg_Rst_13          : out std_logic;
    Dbg_Trig_In_13      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_13  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_13     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_13 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_13        : out std_logic;
    Dbg_TrData_13       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_13      : out std_logic;
    Dbg_TrValid_13      : in  std_logic;
    Dbg_AWADDR_13       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_13      : out std_logic;
    Dbg_AWREADY_13      : in  std_logic;
    Dbg_WDATA_13        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_13       : out std_logic;
    Dbg_WREADY_13       : in  std_logic;
    Dbg_BRESP_13        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_13       : in  std_logic;
    Dbg_BREADY_13       : out std_logic;
    Dbg_ARADDR_13       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_13      : out std_logic;
    Dbg_ARREADY_13      : in  std_logic;
    Dbg_RDATA_13        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_13        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_13       : in  std_logic;
    Dbg_RREADY_13       : out std_logic;

    Dbg_Disable_14      : out std_logic;
    Dbg_Clk_14          : out std_logic;
    Dbg_TDI_14          : out std_logic;
    Dbg_TDO_14          : in  std_logic;
    Dbg_Reg_En_14       : out std_logic_vector(0 to 7);
    Dbg_Capture_14      : out std_logic;
    Dbg_Shift_14        : out std_logic;
    Dbg_Update_14       : out std_logic;
    Dbg_Rst_14          : out std_logic;
    Dbg_Trig_In_14      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_14  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_14     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_14 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_14        : out std_logic;
    Dbg_TrData_14       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_14      : out std_logic;
    Dbg_TrValid_14      : in  std_logic;
    Dbg_AWADDR_14       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_14      : out std_logic;
    Dbg_AWREADY_14      : in  std_logic;
    Dbg_WDATA_14        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_14       : out std_logic;
    Dbg_WREADY_14       : in  std_logic;
    Dbg_BRESP_14        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_14       : in  std_logic;
    Dbg_BREADY_14       : out std_logic;
    Dbg_ARADDR_14       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_14      : out std_logic;
    Dbg_ARREADY_14      : in  std_logic;
    Dbg_RDATA_14        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_14        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_14       : in  std_logic;
    Dbg_RREADY_14       : out std_logic;

    Dbg_Disable_15      : out std_logic;
    Dbg_Clk_15          : out std_logic;
    Dbg_TDI_15          : out std_logic;
    Dbg_TDO_15          : in  std_logic;
    Dbg_Reg_En_15       : out std_logic_vector(0 to 7);
    Dbg_Capture_15      : out std_logic;
    Dbg_Shift_15        : out std_logic;
    Dbg_Update_15       : out std_logic;
    Dbg_Rst_15          : out std_logic;
    Dbg_Trig_In_15      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_15  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_15     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_15 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_15        : out std_logic;
    Dbg_TrData_15       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_15      : out std_logic;
    Dbg_TrValid_15      : in  std_logic;
    Dbg_AWADDR_15       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_15      : out std_logic;
    Dbg_AWREADY_15      : in  std_logic;
    Dbg_WDATA_15        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_15       : out std_logic;
    Dbg_WREADY_15       : in  std_logic;
    Dbg_BRESP_15        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_15       : in  std_logic;
    Dbg_BREADY_15       : out std_logic;
    Dbg_ARADDR_15       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_15      : out std_logic;
    Dbg_ARREADY_15      : in  std_logic;
    Dbg_RDATA_15        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_15        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_15       : in  std_logic;
    Dbg_RREADY_15       : out std_logic;

    Dbg_Disable_16      : out std_logic;
    Dbg_Clk_16          : out std_logic;
    Dbg_TDI_16          : out std_logic;
    Dbg_TDO_16          : in  std_logic;
    Dbg_Reg_En_16       : out std_logic_vector(0 to 7);
    Dbg_Capture_16      : out std_logic;
    Dbg_Shift_16        : out std_logic;
    Dbg_Update_16       : out std_logic;
    Dbg_Rst_16          : out std_logic;
    Dbg_Trig_In_16      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_16  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_16     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_16 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_16        : out std_logic;
    Dbg_TrData_16       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_16      : out std_logic;
    Dbg_TrValid_16      : in  std_logic;
    Dbg_AWADDR_16       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_16      : out std_logic;
    Dbg_AWREADY_16      : in  std_logic;
    Dbg_WDATA_16        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_16       : out std_logic;
    Dbg_WREADY_16       : in  std_logic;
    Dbg_BRESP_16        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_16       : in  std_logic;
    Dbg_BREADY_16       : out std_logic;
    Dbg_ARADDR_16       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_16      : out std_logic;
    Dbg_ARREADY_16      : in  std_logic;
    Dbg_RDATA_16        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_16        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_16       : in  std_logic;
    Dbg_RREADY_16       : out std_logic;

    Dbg_Disable_17      : out std_logic;
    Dbg_Clk_17          : out std_logic;
    Dbg_TDI_17          : out std_logic;
    Dbg_TDO_17          : in  std_logic;
    Dbg_Reg_En_17       : out std_logic_vector(0 to 7);
    Dbg_Capture_17      : out std_logic;
    Dbg_Shift_17        : out std_logic;
    Dbg_Update_17       : out std_logic;
    Dbg_Rst_17          : out std_logic;
    Dbg_Trig_In_17      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_17  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_17     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_17 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_17        : out std_logic;
    Dbg_TrData_17       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_17      : out std_logic;
    Dbg_TrValid_17      : in  std_logic;
    Dbg_AWADDR_17       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_17      : out std_logic;
    Dbg_AWREADY_17      : in  std_logic;
    Dbg_WDATA_17        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_17       : out std_logic;
    Dbg_WREADY_17       : in  std_logic;
    Dbg_BRESP_17        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_17       : in  std_logic;
    Dbg_BREADY_17       : out std_logic;
    Dbg_ARADDR_17       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_17      : out std_logic;
    Dbg_ARREADY_17      : in  std_logic;
    Dbg_RDATA_17        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_17        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_17       : in  std_logic;
    Dbg_RREADY_17       : out std_logic;

    Dbg_Disable_18      : out std_logic;
    Dbg_Clk_18          : out std_logic;
    Dbg_TDI_18          : out std_logic;
    Dbg_TDO_18          : in  std_logic;
    Dbg_Reg_En_18       : out std_logic_vector(0 to 7);
    Dbg_Capture_18      : out std_logic;
    Dbg_Shift_18        : out std_logic;
    Dbg_Update_18       : out std_logic;
    Dbg_Rst_18          : out std_logic;
    Dbg_Trig_In_18      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_18  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_18     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_18 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_18        : out std_logic;
    Dbg_TrData_18       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_18      : out std_logic;
    Dbg_TrValid_18      : in  std_logic;
    Dbg_AWADDR_18       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_18      : out std_logic;
    Dbg_AWREADY_18      : in  std_logic;
    Dbg_WDATA_18        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_18       : out std_logic;
    Dbg_WREADY_18       : in  std_logic;
    Dbg_BRESP_18        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_18       : in  std_logic;
    Dbg_BREADY_18       : out std_logic;
    Dbg_ARADDR_18       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_18      : out std_logic;
    Dbg_ARREADY_18      : in  std_logic;
    Dbg_RDATA_18        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_18        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_18       : in  std_logic;
    Dbg_RREADY_18       : out std_logic;

    Dbg_Disable_19      : out std_logic;
    Dbg_Clk_19          : out std_logic;
    Dbg_TDI_19          : out std_logic;
    Dbg_TDO_19          : in  std_logic;
    Dbg_Reg_En_19       : out std_logic_vector(0 to 7);
    Dbg_Capture_19      : out std_logic;
    Dbg_Shift_19        : out std_logic;
    Dbg_Update_19       : out std_logic;
    Dbg_Rst_19          : out std_logic;
    Dbg_Trig_In_19      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_19  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_19     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_19 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_19        : out std_logic;
    Dbg_TrData_19       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_19      : out std_logic;
    Dbg_TrValid_19      : in  std_logic;
    Dbg_AWADDR_19       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_19      : out std_logic;
    Dbg_AWREADY_19      : in  std_logic;
    Dbg_WDATA_19        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_19       : out std_logic;
    Dbg_WREADY_19       : in  std_logic;
    Dbg_BRESP_19        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_19       : in  std_logic;
    Dbg_BREADY_19       : out std_logic;
    Dbg_ARADDR_19       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_19      : out std_logic;
    Dbg_ARREADY_19      : in  std_logic;
    Dbg_RDATA_19        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_19        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_19       : in  std_logic;
    Dbg_RREADY_19       : out std_logic;

    Dbg_Disable_20      : out std_logic;
    Dbg_Clk_20          : out std_logic;
    Dbg_TDI_20          : out std_logic;
    Dbg_TDO_20          : in  std_logic;
    Dbg_Reg_En_20       : out std_logic_vector(0 to 7);
    Dbg_Capture_20      : out std_logic;
    Dbg_Shift_20        : out std_logic;
    Dbg_Update_20       : out std_logic;
    Dbg_Rst_20          : out std_logic;
    Dbg_Trig_In_20      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_20  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_20     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_20 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_20        : out std_logic;
    Dbg_TrData_20       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_20      : out std_logic;
    Dbg_TrValid_20      : in  std_logic;
    Dbg_AWADDR_20       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_20      : out std_logic;
    Dbg_AWREADY_20      : in  std_logic;
    Dbg_WDATA_20        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_20       : out std_logic;
    Dbg_WREADY_20       : in  std_logic;
    Dbg_BRESP_20        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_20       : in  std_logic;
    Dbg_BREADY_20       : out std_logic;
    Dbg_ARADDR_20       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_20      : out std_logic;
    Dbg_ARREADY_20      : in  std_logic;
    Dbg_RDATA_20        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_20        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_20       : in  std_logic;
    Dbg_RREADY_20       : out std_logic;

    Dbg_Disable_21      : out std_logic;
    Dbg_Clk_21          : out std_logic;
    Dbg_TDI_21          : out std_logic;
    Dbg_TDO_21          : in  std_logic;
    Dbg_Reg_En_21       : out std_logic_vector(0 to 7);
    Dbg_Capture_21      : out std_logic;
    Dbg_Shift_21        : out std_logic;
    Dbg_Update_21       : out std_logic;
    Dbg_Rst_21          : out std_logic;
    Dbg_Trig_In_21      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_21  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_21     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_21 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_21        : out std_logic;
    Dbg_TrData_21       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_21      : out std_logic;
    Dbg_TrValid_21      : in  std_logic;
    Dbg_AWADDR_21       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_21      : out std_logic;
    Dbg_AWREADY_21      : in  std_logic;
    Dbg_WDATA_21        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_21       : out std_logic;
    Dbg_WREADY_21       : in  std_logic;
    Dbg_BRESP_21        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_21       : in  std_logic;
    Dbg_BREADY_21       : out std_logic;
    Dbg_ARADDR_21       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_21      : out std_logic;
    Dbg_ARREADY_21      : in  std_logic;
    Dbg_RDATA_21        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_21        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_21       : in  std_logic;
    Dbg_RREADY_21       : out std_logic;

    Dbg_Disable_22      : out std_logic;
    Dbg_Clk_22          : out std_logic;
    Dbg_TDI_22          : out std_logic;
    Dbg_TDO_22          : in  std_logic;
    Dbg_Reg_En_22       : out std_logic_vector(0 to 7);
    Dbg_Capture_22      : out std_logic;
    Dbg_Shift_22        : out std_logic;
    Dbg_Update_22       : out std_logic;
    Dbg_Rst_22          : out std_logic;
    Dbg_Trig_In_22      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_22  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_22     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_22 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_22        : out std_logic;
    Dbg_TrData_22       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_22      : out std_logic;
    Dbg_TrValid_22      : in  std_logic;
    Dbg_AWADDR_22       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_22      : out std_logic;
    Dbg_AWREADY_22      : in  std_logic;
    Dbg_WDATA_22        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_22       : out std_logic;
    Dbg_WREADY_22       : in  std_logic;
    Dbg_BRESP_22        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_22       : in  std_logic;
    Dbg_BREADY_22       : out std_logic;
    Dbg_ARADDR_22       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_22      : out std_logic;
    Dbg_ARREADY_22      : in  std_logic;
    Dbg_RDATA_22        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_22        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_22       : in  std_logic;
    Dbg_RREADY_22       : out std_logic;

    Dbg_Disable_23      : out std_logic;
    Dbg_Clk_23          : out std_logic;
    Dbg_TDI_23          : out std_logic;
    Dbg_TDO_23          : in  std_logic;
    Dbg_Reg_En_23       : out std_logic_vector(0 to 7);
    Dbg_Capture_23      : out std_logic;
    Dbg_Shift_23        : out std_logic;
    Dbg_Update_23       : out std_logic;
    Dbg_Rst_23          : out std_logic;
    Dbg_Trig_In_23      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_23  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_23     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_23 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_23        : out std_logic;
    Dbg_TrData_23       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_23      : out std_logic;
    Dbg_TrValid_23      : in  std_logic;
    Dbg_AWADDR_23       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_23      : out std_logic;
    Dbg_AWREADY_23      : in  std_logic;
    Dbg_WDATA_23        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_23       : out std_logic;
    Dbg_WREADY_23       : in  std_logic;
    Dbg_BRESP_23        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_23       : in  std_logic;
    Dbg_BREADY_23       : out std_logic;
    Dbg_ARADDR_23       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_23      : out std_logic;
    Dbg_ARREADY_23      : in  std_logic;
    Dbg_RDATA_23        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_23        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_23       : in  std_logic;
    Dbg_RREADY_23       : out std_logic;

    Dbg_Disable_24      : out std_logic;
    Dbg_Clk_24          : out std_logic;
    Dbg_TDI_24          : out std_logic;
    Dbg_TDO_24          : in  std_logic;
    Dbg_Reg_En_24       : out std_logic_vector(0 to 7);
    Dbg_Capture_24      : out std_logic;
    Dbg_Shift_24        : out std_logic;
    Dbg_Update_24       : out std_logic;
    Dbg_Rst_24          : out std_logic;
    Dbg_Trig_In_24      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_24  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_24     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_24 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_24        : out std_logic;
    Dbg_TrData_24       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_24      : out std_logic;
    Dbg_TrValid_24      : in  std_logic;
    Dbg_AWADDR_24       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_24      : out std_logic;
    Dbg_AWREADY_24      : in  std_logic;
    Dbg_WDATA_24        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_24       : out std_logic;
    Dbg_WREADY_24       : in  std_logic;
    Dbg_BRESP_24        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_24       : in  std_logic;
    Dbg_BREADY_24       : out std_logic;
    Dbg_ARADDR_24       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_24      : out std_logic;
    Dbg_ARREADY_24      : in  std_logic;
    Dbg_RDATA_24        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_24        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_24       : in  std_logic;
    Dbg_RREADY_24       : out std_logic;

    Dbg_Disable_25      : out std_logic;
    Dbg_Clk_25          : out std_logic;
    Dbg_TDI_25          : out std_logic;
    Dbg_TDO_25          : in  std_logic;
    Dbg_Reg_En_25       : out std_logic_vector(0 to 7);
    Dbg_Capture_25      : out std_logic;
    Dbg_Shift_25        : out std_logic;
    Dbg_Update_25       : out std_logic;
    Dbg_Rst_25          : out std_logic;
    Dbg_Trig_In_25      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_25  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_25     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_25 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_25        : out std_logic;
    Dbg_TrData_25       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_25      : out std_logic;
    Dbg_TrValid_25      : in  std_logic;
    Dbg_AWADDR_25       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_25      : out std_logic;
    Dbg_AWREADY_25      : in  std_logic;
    Dbg_WDATA_25        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_25       : out std_logic;
    Dbg_WREADY_25       : in  std_logic;
    Dbg_BRESP_25        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_25       : in  std_logic;
    Dbg_BREADY_25       : out std_logic;
    Dbg_ARADDR_25       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_25      : out std_logic;
    Dbg_ARREADY_25      : in  std_logic;
    Dbg_RDATA_25        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_25        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_25       : in  std_logic;
    Dbg_RREADY_25       : out std_logic;

    Dbg_Disable_26      : out std_logic;
    Dbg_Clk_26          : out std_logic;
    Dbg_TDI_26          : out std_logic;
    Dbg_TDO_26          : in  std_logic;
    Dbg_Reg_En_26       : out std_logic_vector(0 to 7);
    Dbg_Capture_26      : out std_logic;
    Dbg_Shift_26        : out std_logic;
    Dbg_Update_26       : out std_logic;
    Dbg_Rst_26          : out std_logic;
    Dbg_Trig_In_26      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_26  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_26     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_26 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_26        : out std_logic;
    Dbg_TrData_26       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_26      : out std_logic;
    Dbg_TrValid_26      : in  std_logic;
    Dbg_AWADDR_26       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_26      : out std_logic;
    Dbg_AWREADY_26      : in  std_logic;
    Dbg_WDATA_26        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_26       : out std_logic;
    Dbg_WREADY_26       : in  std_logic;
    Dbg_BRESP_26        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_26       : in  std_logic;
    Dbg_BREADY_26       : out std_logic;
    Dbg_ARADDR_26       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_26      : out std_logic;
    Dbg_ARREADY_26      : in  std_logic;
    Dbg_RDATA_26        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_26        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_26       : in  std_logic;
    Dbg_RREADY_26       : out std_logic;

    Dbg_Disable_27      : out std_logic;
    Dbg_Clk_27          : out std_logic;
    Dbg_TDI_27          : out std_logic;
    Dbg_TDO_27          : in  std_logic;
    Dbg_Reg_En_27       : out std_logic_vector(0 to 7);
    Dbg_Capture_27      : out std_logic;
    Dbg_Shift_27        : out std_logic;
    Dbg_Update_27       : out std_logic;
    Dbg_Rst_27          : out std_logic;
    Dbg_Trig_In_27      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_27  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_27     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_27 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_27        : out std_logic;
    Dbg_TrData_27       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_27      : out std_logic;
    Dbg_TrValid_27      : in  std_logic;
    Dbg_AWADDR_27       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_27      : out std_logic;
    Dbg_AWREADY_27      : in  std_logic;
    Dbg_WDATA_27        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_27       : out std_logic;
    Dbg_WREADY_27       : in  std_logic;
    Dbg_BRESP_27        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_27       : in  std_logic;
    Dbg_BREADY_27       : out std_logic;
    Dbg_ARADDR_27       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_27      : out std_logic;
    Dbg_ARREADY_27      : in  std_logic;
    Dbg_RDATA_27        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_27        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_27       : in  std_logic;
    Dbg_RREADY_27       : out std_logic;

    Dbg_Disable_28      : out std_logic;
    Dbg_Clk_28          : out std_logic;
    Dbg_TDI_28          : out std_logic;
    Dbg_TDO_28          : in  std_logic;
    Dbg_Reg_En_28       : out std_logic_vector(0 to 7);
    Dbg_Capture_28      : out std_logic;
    Dbg_Shift_28        : out std_logic;
    Dbg_Update_28       : out std_logic;
    Dbg_Rst_28          : out std_logic;
    Dbg_Trig_In_28      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_28  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_28     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_28 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_28        : out std_logic;
    Dbg_TrData_28       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_28      : out std_logic;
    Dbg_TrValid_28      : in  std_logic;
    Dbg_AWADDR_28       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_28      : out std_logic;
    Dbg_AWREADY_28      : in  std_logic;
    Dbg_WDATA_28        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_28       : out std_logic;
    Dbg_WREADY_28       : in  std_logic;
    Dbg_BRESP_28        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_28       : in  std_logic;
    Dbg_BREADY_28       : out std_logic;
    Dbg_ARADDR_28       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_28      : out std_logic;
    Dbg_ARREADY_28      : in  std_logic;
    Dbg_RDATA_28        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_28        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_28       : in  std_logic;
    Dbg_RREADY_28       : out std_logic;

    Dbg_Disable_29      : out std_logic;
    Dbg_Clk_29          : out std_logic;
    Dbg_TDI_29          : out std_logic;
    Dbg_TDO_29          : in  std_logic;
    Dbg_Reg_En_29       : out std_logic_vector(0 to 7);
    Dbg_Capture_29      : out std_logic;
    Dbg_Shift_29        : out std_logic;
    Dbg_Update_29       : out std_logic;
    Dbg_Rst_29          : out std_logic;
    Dbg_Trig_In_29      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_29  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_29     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_29 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_29        : out std_logic;
    Dbg_TrData_29       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_29      : out std_logic;
    Dbg_TrValid_29      : in  std_logic;
    Dbg_AWADDR_29       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_29      : out std_logic;
    Dbg_AWREADY_29      : in  std_logic;
    Dbg_WDATA_29        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_29       : out std_logic;
    Dbg_WREADY_29       : in  std_logic;
    Dbg_BRESP_29        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_29       : in  std_logic;
    Dbg_BREADY_29       : out std_logic;
    Dbg_ARADDR_29       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_29      : out std_logic;
    Dbg_ARREADY_29      : in  std_logic;
    Dbg_RDATA_29        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_29        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_29       : in  std_logic;
    Dbg_RREADY_29       : out std_logic;

    Dbg_Disable_30      : out std_logic;
    Dbg_Clk_30          : out std_logic;
    Dbg_TDI_30          : out std_logic;
    Dbg_TDO_30          : in  std_logic;
    Dbg_Reg_En_30       : out std_logic_vector(0 to 7);
    Dbg_Capture_30      : out std_logic;
    Dbg_Shift_30        : out std_logic;
    Dbg_Update_30       : out std_logic;
    Dbg_Rst_30          : out std_logic;
    Dbg_Trig_In_30      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_30  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_30     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_30 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_30        : out std_logic;
    Dbg_TrData_30       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_30      : out std_logic;
    Dbg_TrValid_30      : in  std_logic;
    Dbg_AWADDR_30       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_30      : out std_logic;
    Dbg_AWREADY_30      : in  std_logic;
    Dbg_WDATA_30        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_30       : out std_logic;
    Dbg_WREADY_30       : in  std_logic;
    Dbg_BRESP_30        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_30       : in  std_logic;
    Dbg_BREADY_30       : out std_logic;
    Dbg_ARADDR_30       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_30      : out std_logic;
    Dbg_ARREADY_30      : in  std_logic;
    Dbg_RDATA_30        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_30        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_30       : in  std_logic;
    Dbg_RREADY_30       : out std_logic;

    Dbg_Disable_31      : out std_logic;
    Dbg_Clk_31          : out std_logic;
    Dbg_TDI_31          : out std_logic;
    Dbg_TDO_31          : in  std_logic;
    Dbg_Reg_En_31       : out std_logic_vector(0 to 7);
    Dbg_Capture_31      : out std_logic;
    Dbg_Shift_31        : out std_logic;
    Dbg_Update_31       : out std_logic;
    Dbg_Rst_31          : out std_logic;
    Dbg_Trig_In_31      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_31  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_31     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_31 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_31        : out std_logic;
    Dbg_TrData_31       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_31      : out std_logic;
    Dbg_TrValid_31      : in  std_logic;
    Dbg_AWADDR_31       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_31      : out std_logic;
    Dbg_AWREADY_31      : in  std_logic;
    Dbg_WDATA_31        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_31       : out std_logic;
    Dbg_WREADY_31       : in  std_logic;
    Dbg_BRESP_31        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_31       : in  std_logic;
    Dbg_BREADY_31       : out std_logic;
    Dbg_ARADDR_31       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_31      : out std_logic;
    Dbg_ARREADY_31      : in  std_logic;
    Dbg_RDATA_31        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_31        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_31       : in  std_logic;
    Dbg_RREADY_31       : out std_logic;

    -- External BSCAN inputs
    -- These signals are used when C_USE_BSCAN = 2 (EXTERNAL) or 4 (EXTERNAL_HIDDEN)
    bscan_ext_tdi        : in  std_logic;
    bscan_ext_reset      : in  std_logic;
    bscan_ext_shift      : in  std_logic;
    bscan_ext_update     : in  std_logic;
    bscan_ext_capture    : in  std_logic;
    bscan_ext_sel        : in  std_logic;
    bscan_ext_drck       : in  std_logic;
    bscan_ext_tdo        : out std_logic;
    bscan_ext_tck        : in  std_logic;
    bscan_ext_tms        : in  std_logic;
    bscan_ext_bscanid_en : in  std_logic;

    -- External JTAG ports
    Ext_JTAG_DRCK    : out std_logic;
    Ext_JTAG_RESET   : out std_logic;
    Ext_JTAG_SEL     : out std_logic;
    Ext_JTAG_CAPTURE : out std_logic;
    Ext_JTAG_SHIFT   : out std_logic;
    Ext_JTAG_UPDATE  : out std_logic;
    Ext_JTAG_TDI     : out std_logic;
    Ext_JTAG_TDO     : in  std_logic
  );

  attribute BSCAN_DEBUG_CORE : string;
  attribute BSCAN_DEBUG_CORE of MDM_RISCV : entity is BSCAN_Versal(C_FAMILY, C_DEVICE, C_USE_BSCAN);

  constant C_BSCAN_IF : string := "xilinx.com:interface:bscan:1.0 BSCAN ";

  attribute BSCAN_DEBUG_INTERFACE : string;
  attribute BSCAN_DEBUG_INTERFACE of bscan_ext_tdi     : signal is C_BSCAN_IF & "TDI";
  attribute BSCAN_DEBUG_INTERFACE of bscan_ext_reset   : signal is C_BSCAN_IF & "RESET";
  attribute BSCAN_DEBUG_INTERFACE of bscan_ext_shift   : signal is C_BSCAN_IF & "SHIFT";
  attribute BSCAN_DEBUG_INTERFACE of bscan_ext_update  : signal is C_BSCAN_IF & "UPDATE";
  attribute BSCAN_DEBUG_INTERFACE of bscan_ext_capture : signal is C_BSCAN_IF & "CAPTURE";
  attribute BSCAN_DEBUG_INTERFACE of bscan_ext_sel     : signal is C_BSCAN_IF & "SEL";
  attribute BSCAN_DEBUG_INTERFACE of bscan_ext_drck    : signal is C_BSCAN_IF & "DRCK";
  attribute BSCAN_DEBUG_INTERFACE of bscan_ext_tdo     : signal is C_BSCAN_IF & "TDO";
  attribute BSCAN_DEBUG_INTERFACE of bscan_ext_tck     : signal is C_BSCAN_IF & "TCK";
  attribute BSCAN_DEBUG_INTERFACE of bscan_ext_tms     : signal is C_BSCAN_IF & "TMS";

  attribute DONT_TOUCH : string;
  attribute DONT_TOUCH of MDM_RISCV         : entity is BSCAN_Versal(C_FAMILY, C_DEVICE, C_USE_BSCAN);
  attribute DONT_TOUCH of bscan_ext_tdi     : signal is BSCAN_Versal(C_FAMILY, C_DEVICE, C_USE_BSCAN);
  attribute DONT_TOUCH of bscan_ext_reset   : signal is BSCAN_Versal(C_FAMILY, C_DEVICE, C_USE_BSCAN);
  attribute DONT_TOUCH of bscan_ext_shift   : signal is BSCAN_Versal(C_FAMILY, C_DEVICE, C_USE_BSCAN);
  attribute DONT_TOUCH of bscan_ext_update  : signal is BSCAN_Versal(C_FAMILY, C_DEVICE, C_USE_BSCAN);
  attribute DONT_TOUCH of bscan_ext_capture : signal is BSCAN_Versal(C_FAMILY, C_DEVICE, C_USE_BSCAN);
  attribute DONT_TOUCH of bscan_ext_sel     : signal is BSCAN_Versal(C_FAMILY, C_DEVICE, C_USE_BSCAN);
  attribute DONT_TOUCH of bscan_ext_drck    : signal is BSCAN_Versal(C_FAMILY, C_DEVICE, C_USE_BSCAN);
  attribute DONT_TOUCH of bscan_ext_tdo     : signal is BSCAN_Versal(C_FAMILY, C_DEVICE, C_USE_BSCAN);
  attribute DONT_TOUCH of bscan_ext_tck     : signal is BSCAN_Versal(C_FAMILY, C_DEVICE, C_USE_BSCAN);
  attribute DONT_TOUCH of bscan_ext_tms     : signal is BSCAN_Versal(C_FAMILY, C_DEVICE, C_USE_BSCAN);

end entity MDM_RISCV;

library IEEE;
use IEEE.numeric_std.all;

architecture IMP of MDM_RISCV is

  subtype addr_t is std_logic_vector(31 downto 0);

  function bool2std (val : boolean) return std_logic is
  begin  -- function bool2std
    if val then
      return '1';
    else
      return '0';
    end if;
  end function bool2std;

  function bool_to_string (b : boolean) return string is
  begin
    if b then
      return "yes";
    end if;
    return "no";
  end function bool_to_string;

  function reg_num_ce_0 (C_PARALLEL, C_USE_UART, C_USE_TRACE : natural) return natural is
  begin
    if C_USE_UART = 1 then
      return 4;
    end if;
    if C_PARALLEl = 1 then
      return 1;
    end if;
    if C_USE_TRACE = 1 then
      return 1;
    end if;
    return 1;
  end function reg_num_ce_0;

  function reg_num_ce_1 (C_PARALLEL, C_USE_UART, C_USE_TRACE : natural) return natural is
  begin
    if C_PARALLEl = 1 and C_USE_UART = 1 then
      return 1;
    end if;
    if C_USE_TRACE = 1 then
      return 1;
    end if;
    return 0;
  end function reg_num_ce_1;

  function ard_ranges (C_PARALLEL, C_USE_UART, C_USE_TRACE : natural) return natural is
  begin
    if C_PARALLEL > 0 or C_USE_UART > 0 or C_USE_TRACE > 0 then
      return C_PARALLEL + C_USE_UART + C_USE_TRACE;
    end if;
    return 1;
  end function ard_ranges;

  function reg_num_ce (C_PARALLEL, C_USE_UART, C_USE_TRACE : natural) return natural is
  begin
    if C_PARALLEL > 0 or C_USE_UART > 0 or C_USE_TRACE > 0 then
      return C_PARALLEL + 4*C_USE_UART + C_USE_TRACE;
    end if;
    return 1;
  end function reg_num_ce;

  function s_axi_base_0 (C_PARALLEL, C_USE_UART, C_USE_TRACE : natural) return addr_t is
  begin
    if C_PARALLEL = 1 or C_USE_UART = 1 then
      return X"00000000";
    end if;
    if C_USE_TRACE = 1 then
      return X"00001000";
    end if;
    return X"00000000";
  end function s_axi_base_0;

  function s_axi_base_1 (C_PARALLEL, C_USE_UART, C_USE_TRACE : natural) return addr_t is
  begin
    if C_PARALLEL = 1 and C_USE_UART = 1 then
      return X"00000200";
    end if;
    if C_PARALLEL = 1 or C_USE_UART = 1 then
      if C_USE_TRACE = 1 then
        return X"00001000";
      end if;
    end if;
    return X"00000000";
  end function s_axi_base_1;

  function s_axi_base_2 (C_PARALLEL, C_USE_UART, C_USE_TRACE : natural) return addr_t is
  begin
    if C_PARALLEL = 1 and C_USE_UART = 1 and C_USE_TRACE = 1 then
      return X"00001000";
    end if;
    return X"00000000";
  end function s_axi_base_2;

  function s_axi_min_size (C_PARALLEL, C_USE_UART, C_USE_TRACE : natural) return addr_t is
  begin
    if C_USE_TRACE = 1 then
      return X"00003FFF";
    end if;
    if C_PARALLEL = 1 and C_USE_UART = 1 then
      return X"000003FF";
    end if;
    if C_PARALLEL = 1 then
      return X"000001FF";
    end if;
    if C_USE_UART = 1 then
      return X"0000000F";
    end if;
    return X"0000000F";
  end function s_axi_min_size;

  function s_axi_min_size_0 (C_PARALLEL, C_USE_UART, C_USE_TRACE : natural) return addr_t is
  begin
    if C_USE_UART = 1 then
      return X"0000000F";
    end if;
    if C_PARALLEL = 1 then
      return X"000001FF";
    end if;
    if C_USE_TRACE = 1 then
      return X"00002FFF";
    end if;
    return X"0000000F";
  end function s_axi_min_size_0;

  function s_axi_min_size_1 (C_PARALLEL, C_USE_UART, C_USE_TRACE : natural) return addr_t is
  begin
    if C_PARALLEL = 1 and C_USE_UART = 1 then
      return X"000003FF";
    end if;
    if C_PARALLEL = 1 or C_USE_UART = 1 then
      if C_USE_TRACE = 1 then
        return X"00002FFF";
      end if;
    end if;
    return X"00000000";
  end function s_axi_min_size_1;

  function s_axi_min_size_2 (C_PARALLEL, C_USE_UART, C_USE_TRACE : natural) return addr_t is
  begin
    if C_PARALLEL = 1 and C_USE_UART = 1 and C_USE_TRACE = 1 then
        return X"00002FFF";
    end if;
    return X"0000000F";
  end function s_axi_min_size_2;

  --------------------------------------------------------------------------
  -- Constant declarations
  --------------------------------------------------------------------------

  constant C_TARGET : TARGET_FAMILY_TYPE := String_To_Family(C_FAMILY, C_DEVICE, false);

  constant C_USE_SRL16 : string := bool_to_string( C_AVOID_PRIMITIVES = 0 );

  constant C_USE_BSCANE2  : boolean := (C_USE_BSCAN /= 2 and C_USE_BSCAN /= 3 and C_USE_BSCAN /= 4);
  constant C_USE_JTAG_DAP : boolean := C_USE_BSCANE2 and C_DEBUG_INTERFACE > 0 and C_DBG_REG_ACCESS = 0;

  constant C_USE_DBG_MEM_ACCESS : boolean := (C_DBG_MEM_ACCESS = 1 or C_TRACE_OUTPUT = 4 or (C_TRACE_OUTPUT = 1 and C_DBG_REG_ACCESS = 0));
  constant C_USE_DBG_AXI        : boolean := (C_DBG_MEM_ACCESS = 0 and (C_TRACE_OUTPUT = 4 or (C_TRACE_OUTPUT = 1 and C_DBG_REG_ACCESS = 0)));

  constant C_PARALLEL      : natural := boolean'pos(C_DBG_REG_ACCESS = 1 and C_DEBUG_INTERFACE > 0 and not C_USE_JTAG_DAP);
  constant C_USE_TRACE     : natural := boolean'pos(C_TRACE_OUTPUT = 1);
  constant C_USE_PIB_SINK  : natural := boolean'pos(C_USE_TRACE = 1 and C_TRACE_OUTPUT /= 4);
  constant C_USE_SMEM_SINK : natural := boolean'pos(C_USE_TRACE = 1 and C_TRACE_OUTPUT = 4);
  constant C_USE_FUNNEL    : natural := boolean'pos(C_USE_TRACE = 1 and C_MB_DBG_PORTS > 1);

  constant ZEROES : std_logic_vector(31 downto 0) := X"00000000";

  constant C_REG_NUM_CE_0   : integer := reg_num_ce_0(C_PARALLEL, C_USE_UART, C_USE_TRACE);  -- 1, 2 or 4
  constant C_REG_NUM_CE_1   : integer := reg_num_ce_1(C_PARALLEL, C_USE_UART, C_USE_TRACE);  -- 1 or 2
  constant C_REG_DATA_WIDTH : integer := 32;
  constant C_ARD_RANGES     : integer := ard_ranges(C_PARALLEL, C_USE_UART, C_USE_TRACE);    -- 1, 2, 3 or 4
  constant C_REG_NUM_CE     : integer := reg_num_ce(C_PARALLEL, C_USE_UART, C_USE_TRACE);    -- 1 to 9

  constant C_S_AXI_BASE_0     : std_logic_vector(31 downto 0) := s_axi_base_0(C_PARALLEL, C_USE_UART, C_USE_TRACE);
  constant C_S_AXI_BASE_1     : std_logic_vector(31 downto 0) := s_axi_base_1(C_PARALLEL, C_USE_UART, C_USE_TRACE);
  constant C_S_AXI_BASE_2     : std_logic_vector(31 downto 0) := s_axi_base_2(C_PARALLEL, C_USE_UART, C_USE_TRACE);

  constant C_S_AXI_MIN_SIZE   : std_logic_vector(31 downto 0) := s_axi_min_size  (C_PARALLEL, C_USE_UART, C_USE_TRACE);
  constant C_S_AXI_MIN_SIZE_0 : std_logic_vector(31 downto 0) := s_axi_min_size_0(C_PARALLEL, C_USE_UART, C_USE_TRACE);
  constant C_S_AXI_MIN_SIZE_1 : std_logic_vector(31 downto 0) := s_axi_min_size_1(C_PARALLEL, C_USE_UART, C_USE_TRACE);
  constant C_S_AXI_MIN_SIZE_2 : std_logic_vector(31 downto 0) := s_axi_min_size_2(C_PARALLEL, C_USE_UART, C_USE_TRACE);

  -- 0000 - 000F : UART
  -- 0000 - 01FF : PARALLEL and not UART
  -- 0200 - 03FF : PARALLEL and UART
  -- 1000 - 2FFF : FUNNEL and SINK
  constant C_ARD_ADDR_RANGE_ARRAY : SLV64_ARRAY_TYPE := (
    ZEROES & C_S_AXI_BASE_0,      -- 0000, 0000, 1000
    ZEROES & C_S_AXI_MIN_SIZE_0,  -- 01FF, 000F, 2FFF

    ZEROES & C_S_AXI_BASE_1,      -- 0200, 1000
    ZEROES & C_S_AXI_MIN_SIZE_1,  -- 03FF, 2FFF

    ZEROES & C_S_AXI_BASE_2,      -- 1000
    ZEROES & C_S_AXI_MIN_SIZE_2   -- 2FFF
  );

  constant C_ARD_NUM_CE_ARRAY : INTEGER_ARRAY_TYPE := (
    0 => C_REG_NUM_CE_0,  -- PARALLEL (1) or UART (4) or TRACE (1)
    1 => C_REG_NUM_CE_1,  -- PARALLEL (1) or TRACE (1)
    2 => 1                -- TRACE (1)
  );

  constant C_USE_WSTRB      : integer := 0;
  constant C_DPHASE_TIMEOUT : integer := 0;

  constant C_TRACE_AXI_MASTER : boolean := C_TRACE_OUTPUT = 3;

  --------------------------------------------------------------------------
  -- Component declarations
  --------------------------------------------------------------------------

  component MDM_Core
    generic (
      C_TARGET               : TARGET_FAMILY_TYPE;
      C_JTAG_CHAIN           : integer;
      C_USE_BSCAN            : integer;
      C_DTM_IDCODE           : integer;
      C_USE_CONFIG_RESET     : integer;
      C_USE_SRL16            : string;
      C_DEBUG_INTERFACE      : integer;
      C_MB_DBG_PORTS         : integer;
      C_EN_WIDTH             : integer;
      C_DBG_REG_ACCESS       : integer;
      C_REG_NUM_CE           : integer;
      C_REG_DATA_WIDTH       : integer;
      C_DBG_MEM_ACCESS       : integer;
      C_S_AXI_ADDR_WIDTH     : integer;
      C_S_AXI_ACLK_FREQ_HZ   : integer;
      C_M_AXI_ADDR_WIDTH     : integer;
      C_M_AXI_DATA_WIDTH     : integer;
      C_USE_CROSS_TRIGGER    : integer;
      C_EXT_TRIG_RESET_VALUE : std_logic_vector(0 to 19);
      C_TRACE_OUTPUT         : integer;
      C_TRACE_DATA_WIDTH     : integer;
      C_TRACE_ASYNC_RESET    : integer;
      C_TRACE_CLK_FREQ_HZ    : integer;
      C_TRACE_CLK_OUT_PHASE  : integer;
      C_USE_UART             : integer;
      C_UART_WIDTH           : integer;
      C_M_AXIS_DATA_WIDTH    : integer;
      C_M_AXIS_ID_WIDTH      : integer);

    port (
      -- Global signals
      Config_Reset    : in std_logic;
      Scan_Reset_Sel  : in std_logic;
      Scan_Reset      : in std_logic;
      Scan_En         : in std_logic;

      M_AXIS_ACLK     : in std_logic;
      M_AXIS_ARESETN  : in std_logic;

      Interrupt       : out std_logic;
      Debug_SYS_Rst   : out std_logic;

      -- Debug Register Access signals
      DbgReg_DRCK   : out std_logic;
      DbgReg_UPDATE : out std_logic;
      DbgReg_Select : out std_logic;
      JTAG_Busy     : in  std_logic;
      S_AXI_AWADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      S_AXI_ARADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);

      -- AXI IPIC signals
      bus2ip_clk    : in  std_logic;
      bus2ip_resetn : in  std_logic;
      bus2ip_addr   : in  std_logic_vector(13 downto 0);
      bus2ip_data   : in  std_logic_vector(C_REG_DATA_WIDTH-1 downto 0);
      bus2ip_rdce   : in  std_logic_vector(0 to C_REG_NUM_CE-1);
      bus2ip_wrce   : in  std_logic_vector(0 to C_REG_NUM_CE-1);
      ip2bus_rdack  : out std_logic;
      ip2bus_wrack  : out std_logic;
      ip2bus_error  : out std_logic;
      ip2bus_data   : out std_logic_vector(C_REG_DATA_WIDTH-1 downto 0);

      -- Bus Master signals
      MB_Debug_Enabled   : out std_logic_vector(C_EN_WIDTH-1 downto 0);

      M_AXI_ACLK         : in  std_logic;
      M_AXI_ARESETn      : in  std_logic;

      Master_rd_start    : out std_logic;
      Master_rd_addr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Master_rd_len      : out std_logic_vector(4 downto 0);
      Master_rd_size     : out std_logic_vector(1 downto 0);
      Master_rd_excl     : out std_logic;
      Master_rd_idle     : in  std_logic;
      Master_rd_resp     : in  std_logic_vector(1 downto 0);
      Master_wr_start    : out std_logic;
      Master_wr_addr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Master_wr_len      : out std_logic_vector(4 downto 0);
      Master_wr_size     : out std_logic_vector(1 downto 0);
      Master_wr_excl     : out std_logic;
      Master_wr_idle     : in  std_logic;
      Master_wr_resp     : in  std_logic_vector(1 downto 0);
      Master_data_rd     : out std_logic;
      Master_data_out    : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Master_data_exists : in  std_logic;
      Master_data_wr     : out std_logic;
      Master_data_in     : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Master_data_empty  : in  std_logic;

      Master_dwr_addr    : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Master_dwr_len     : out std_logic_vector(4 downto 0);
      Master_dwr_data    : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Master_dwr_start   : out std_logic;
      Master_dwr_next    : in  std_logic;
      Master_dwr_done    : in  std_logic;
      Master_dwr_resp    : in  std_logic_vector(1 downto 0);

      M_AXI_AWADDR        : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      M_AXI_AWVALID       : in  std_logic;
      M_AXI_AWREADY       : out std_logic;
      M_AXI_WDATA         : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      M_AXI_WVALID        : in  std_logic;
      M_AXI_WREADY        : out std_logic;
      M_AXI_BRESP         : out std_logic_vector(1 downto 0);
      M_AXI_BVALID        : out std_logic;
      M_AXI_BREADY        : in  std_logic;
      M_AXI_ARADDR        : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      M_AXI_ARVALID       : in  std_logic;
      M_AXI_ARREADY       : out std_logic;
      M_AXI_RDATA         : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      M_AXI_RRESP         : out std_logic_vector(1 downto 0);
      M_AXI_RVALID        : out std_logic;
      M_AXI_RREADY        : in  std_logic;

      -- JTAG signals
      JTAG_TDI     : in  std_logic;
      TMS          : in  std_logic;
      TCK          : in  std_logic;
      JTAG_RESET   : in  std_logic;
      UPDATE       : in  std_logic;
      JTAG_SHIFT   : in  std_logic;
      JTAG_CAPTURE : in  std_logic;
      JTAG_SEL     : in  std_logic;
      DRCK         : in  std_logic;
      JTAG_TDO     : out std_logic;

      -- External Trace output
      TRACE_CLK_OUT      : out std_logic;
      TRACE_CLK          : in  std_logic;
      TRACE_CTL          : out std_logic;
      TRACE_DATA         : out std_logic_vector(C_TRACE_DATA_WIDTH-1 downto 0);

      -- MicroBlaze Debug Signals
      Dbg_Disable_0      : out std_logic;
      Dbg_Clk_0          : out std_logic;
      Dbg_TDI_0          : out std_logic;
      Dbg_TDO_0          : in  std_logic;
      Dbg_Reg_En_0       : out std_logic_vector(0 to 7);
      Dbg_Capture_0      : out std_logic;
      Dbg_Shift_0        : out std_logic;
      Dbg_Update_0       : out std_logic;
      Dbg_Rst_0          : out std_logic;
      Dbg_Trig_In_0      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_0  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_0     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_0 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_0        : out std_logic;
      Dbg_TrData_0       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_0      : out std_logic;
      Dbg_TrValid_0      : in  std_logic;
      Dbg_AWADDR_0       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_0      : out std_logic;
      Dbg_AWREADY_0      : in  std_logic;
      Dbg_WDATA_0        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_0       : out std_logic;
      Dbg_WREADY_0       : in  std_logic;
      Dbg_BRESP_0        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_0       : in  std_logic;
      Dbg_BREADY_0       : out std_logic;
      Dbg_ARADDR_0       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_0      : out std_logic;
      Dbg_ARREADY_0      : in  std_logic;
      Dbg_RDATA_0        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_0        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_0       : in  std_logic;
      Dbg_RREADY_0       : out std_logic;

      Dbg_Disable_1      : out std_logic;
      Dbg_Clk_1          : out std_logic;
      Dbg_TDI_1          : out std_logic;
      Dbg_TDO_1          : in  std_logic;
      Dbg_Reg_En_1       : out std_logic_vector(0 to 7);
      Dbg_Capture_1      : out std_logic;
      Dbg_Shift_1        : out std_logic;
      Dbg_Update_1       : out std_logic;
      Dbg_Rst_1          : out std_logic;
      Dbg_Trig_In_1      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_1  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_1     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_1 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_1        : out std_logic;
      Dbg_TrData_1       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_1      : out std_logic;
      Dbg_TrValid_1      : in  std_logic;
      Dbg_AWADDR_1       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_1      : out std_logic;
      Dbg_AWREADY_1      : in  std_logic;
      Dbg_WDATA_1        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_1       : out std_logic;
      Dbg_WREADY_1       : in  std_logic;
      Dbg_BRESP_1        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_1       : in  std_logic;
      Dbg_BREADY_1       : out std_logic;
      Dbg_ARADDR_1       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_1      : out std_logic;
      Dbg_ARREADY_1      : in  std_logic;
      Dbg_RDATA_1        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_1        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_1       : in  std_logic;
      Dbg_RREADY_1       : out std_logic;

      Dbg_Disable_2      : out std_logic;
      Dbg_Clk_2          : out std_logic;
      Dbg_TDI_2          : out std_logic;
      Dbg_TDO_2          : in  std_logic;
      Dbg_Reg_En_2       : out std_logic_vector(0 to 7);
      Dbg_Capture_2      : out std_logic;
      Dbg_Shift_2        : out std_logic;
      Dbg_Update_2       : out std_logic;
      Dbg_Rst_2          : out std_logic;
      Dbg_Trig_In_2      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_2  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_2     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_2 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_2        : out std_logic;
      Dbg_TrData_2       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_2      : out std_logic;
      Dbg_TrValid_2      : in  std_logic;
      Dbg_AWADDR_2       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_2      : out std_logic;
      Dbg_AWREADY_2      : in  std_logic;
      Dbg_WDATA_2        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_2       : out std_logic;
      Dbg_WREADY_2       : in  std_logic;
      Dbg_BRESP_2        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_2       : in  std_logic;
      Dbg_BREADY_2       : out std_logic;
      Dbg_ARADDR_2       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_2      : out std_logic;
      Dbg_ARREADY_2      : in  std_logic;
      Dbg_RDATA_2        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_2        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_2       : in  std_logic;
      Dbg_RREADY_2       : out std_logic;

      Dbg_Disable_3      : out std_logic;
      Dbg_Clk_3          : out std_logic;
      Dbg_TDI_3          : out std_logic;
      Dbg_TDO_3          : in  std_logic;
      Dbg_Reg_En_3       : out std_logic_vector(0 to 7);
      Dbg_Capture_3      : out std_logic;
      Dbg_Shift_3        : out std_logic;
      Dbg_Update_3       : out std_logic;
      Dbg_Rst_3          : out std_logic;
      Dbg_Trig_In_3      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_3  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_3     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_3 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_3        : out std_logic;
      Dbg_TrData_3       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_3      : out std_logic;
      Dbg_TrValid_3      : in  std_logic;
      Dbg_AWADDR_3       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_3      : out std_logic;
      Dbg_AWREADY_3      : in  std_logic;
      Dbg_WDATA_3        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_3       : out std_logic;
      Dbg_WREADY_3       : in  std_logic;
      Dbg_BRESP_3        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_3       : in  std_logic;
      Dbg_BREADY_3       : out std_logic;
      Dbg_ARADDR_3       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_3      : out std_logic;
      Dbg_ARREADY_3      : in  std_logic;
      Dbg_RDATA_3        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_3        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_3       : in  std_logic;
      Dbg_RREADY_3       : out std_logic;

      Dbg_Disable_4      : out std_logic;
      Dbg_Clk_4          : out std_logic;
      Dbg_TDI_4          : out std_logic;
      Dbg_TDO_4          : in  std_logic;
      Dbg_Reg_En_4       : out std_logic_vector(0 to 7);
      Dbg_Capture_4      : out std_logic;
      Dbg_Shift_4        : out std_logic;
      Dbg_Update_4       : out std_logic;
      Dbg_Rst_4          : out std_logic;
      Dbg_Trig_In_4      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_4  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_4     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_4 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_4        : out std_logic;
      Dbg_TrData_4       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_4      : out std_logic;
      Dbg_TrValid_4      : in  std_logic;
      Dbg_AWADDR_4       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_4      : out std_logic;
      Dbg_AWREADY_4      : in  std_logic;
      Dbg_WDATA_4        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_4       : out std_logic;
      Dbg_WREADY_4       : in  std_logic;
      Dbg_BRESP_4        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_4       : in  std_logic;
      Dbg_BREADY_4       : out std_logic;
      Dbg_ARADDR_4       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_4      : out std_logic;
      Dbg_ARREADY_4      : in  std_logic;
      Dbg_RDATA_4        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_4        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_4       : in  std_logic;
      Dbg_RREADY_4       : out std_logic;

      Dbg_Disable_5      : out std_logic;
      Dbg_Clk_5          : out std_logic;
      Dbg_TDI_5          : out std_logic;
      Dbg_TDO_5          : in  std_logic;
      Dbg_Reg_En_5       : out std_logic_vector(0 to 7);
      Dbg_Capture_5      : out std_logic;
      Dbg_Shift_5        : out std_logic;
      Dbg_Update_5       : out std_logic;
      Dbg_Rst_5          : out std_logic;
      Dbg_Trig_In_5      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_5  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_5     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_5 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_5        : out std_logic;
      Dbg_TrData_5       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_5      : out std_logic;
      Dbg_TrValid_5      : in  std_logic;
      Dbg_AWADDR_5       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_5      : out std_logic;
      Dbg_AWREADY_5      : in  std_logic;
      Dbg_WDATA_5        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_5       : out std_logic;
      Dbg_WREADY_5       : in  std_logic;
      Dbg_BRESP_5        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_5       : in  std_logic;
      Dbg_BREADY_5       : out std_logic;
      Dbg_ARADDR_5       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_5      : out std_logic;
      Dbg_ARREADY_5      : in  std_logic;
      Dbg_RDATA_5        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_5        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_5       : in  std_logic;
      Dbg_RREADY_5       : out std_logic;

      Dbg_Disable_6      : out std_logic;
      Dbg_Clk_6          : out std_logic;
      Dbg_TDI_6          : out std_logic;
      Dbg_TDO_6          : in  std_logic;
      Dbg_Reg_En_6       : out std_logic_vector(0 to 7);
      Dbg_Capture_6      : out std_logic;
      Dbg_Shift_6        : out std_logic;
      Dbg_Update_6       : out std_logic;
      Dbg_Rst_6          : out std_logic;
      Dbg_Trig_In_6      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_6  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_6     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_6 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_6        : out std_logic;
      Dbg_TrData_6       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_6      : out std_logic;
      Dbg_TrValid_6      : in  std_logic;
      Dbg_AWADDR_6       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_6      : out std_logic;
      Dbg_AWREADY_6      : in  std_logic;
      Dbg_WDATA_6        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_6       : out std_logic;
      Dbg_WREADY_6       : in  std_logic;
      Dbg_BRESP_6        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_6       : in  std_logic;
      Dbg_BREADY_6       : out std_logic;
      Dbg_ARADDR_6       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_6      : out std_logic;
      Dbg_ARREADY_6      : in  std_logic;
      Dbg_RDATA_6        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_6        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_6       : in  std_logic;
      Dbg_RREADY_6       : out std_logic;

      Dbg_Disable_7      : out std_logic;
      Dbg_Clk_7          : out std_logic;
      Dbg_TDI_7          : out std_logic;
      Dbg_TDO_7          : in  std_logic;
      Dbg_Reg_En_7       : out std_logic_vector(0 to 7);
      Dbg_Capture_7      : out std_logic;
      Dbg_Shift_7        : out std_logic;
      Dbg_Update_7       : out std_logic;
      Dbg_Rst_7          : out std_logic;
      Dbg_Trig_In_7      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_7  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_7     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_7 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_7        : out std_logic;
      Dbg_TrData_7       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_7      : out std_logic;
      Dbg_TrValid_7      : in  std_logic;
      Dbg_AWADDR_7       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_7      : out std_logic;
      Dbg_AWREADY_7      : in  std_logic;
      Dbg_WDATA_7        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_7       : out std_logic;
      Dbg_WREADY_7       : in  std_logic;
      Dbg_BRESP_7        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_7       : in  std_logic;
      Dbg_BREADY_7       : out std_logic;
      Dbg_ARADDR_7       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_7      : out std_logic;
      Dbg_ARREADY_7      : in  std_logic;
      Dbg_RDATA_7        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_7        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_7       : in  std_logic;
      Dbg_RREADY_7       : out std_logic;

      Dbg_Disable_8      : out std_logic;
      Dbg_Clk_8          : out std_logic;
      Dbg_TDI_8          : out std_logic;
      Dbg_TDO_8          : in  std_logic;
      Dbg_Reg_En_8       : out std_logic_vector(0 to 7);
      Dbg_Capture_8      : out std_logic;
      Dbg_Shift_8        : out std_logic;
      Dbg_Update_8       : out std_logic;
      Dbg_Rst_8          : out std_logic;
      Dbg_Trig_In_8      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_8  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_8     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_8 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_8        : out std_logic;
      Dbg_TrData_8       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_8      : out std_logic;
      Dbg_TrValid_8      : in  std_logic;
      Dbg_AWADDR_8       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_8      : out std_logic;
      Dbg_AWREADY_8      : in  std_logic;
      Dbg_WDATA_8        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_8       : out std_logic;
      Dbg_WREADY_8       : in  std_logic;
      Dbg_BRESP_8        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_8       : in  std_logic;
      Dbg_BREADY_8       : out std_logic;
      Dbg_ARADDR_8       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_8      : out std_logic;
      Dbg_ARREADY_8      : in  std_logic;
      Dbg_RDATA_8        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_8        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_8       : in  std_logic;
      Dbg_RREADY_8       : out std_logic;

      Dbg_Disable_9      : out std_logic;
      Dbg_Clk_9          : out std_logic;
      Dbg_TDI_9          : out std_logic;
      Dbg_TDO_9          : in  std_logic;
      Dbg_Reg_En_9       : out std_logic_vector(0 to 7);
      Dbg_Capture_9      : out std_logic;
      Dbg_Shift_9        : out std_logic;
      Dbg_Update_9       : out std_logic;
      Dbg_Rst_9          : out std_logic;
      Dbg_Trig_In_9      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_9  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_9     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_9 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_9        : out std_logic;
      Dbg_TrData_9       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_9      : out std_logic;
      Dbg_TrValid_9      : in  std_logic;
      Dbg_AWADDR_9       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_9      : out std_logic;
      Dbg_AWREADY_9      : in  std_logic;
      Dbg_WDATA_9        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_9       : out std_logic;
      Dbg_WREADY_9       : in  std_logic;
      Dbg_BRESP_9        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_9       : in  std_logic;
      Dbg_BREADY_9       : out std_logic;
      Dbg_ARADDR_9       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_9      : out std_logic;
      Dbg_ARREADY_9      : in  std_logic;
      Dbg_RDATA_9        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_9        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_9       : in  std_logic;
      Dbg_RREADY_9       : out std_logic;

      Dbg_Disable_10      : out std_logic;
      Dbg_Clk_10          : out std_logic;
      Dbg_TDI_10          : out std_logic;
      Dbg_TDO_10          : in  std_logic;
      Dbg_Reg_En_10       : out std_logic_vector(0 to 7);
      Dbg_Capture_10      : out std_logic;
      Dbg_Shift_10        : out std_logic;
      Dbg_Update_10       : out std_logic;
      Dbg_Rst_10          : out std_logic;
      Dbg_Trig_In_10      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_10  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_10     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_10 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_10        : out std_logic;
      Dbg_TrData_10       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_10      : out std_logic;
      Dbg_TrValid_10      : in  std_logic;
      Dbg_AWADDR_10       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_10      : out std_logic;
      Dbg_AWREADY_10      : in  std_logic;
      Dbg_WDATA_10        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_10       : out std_logic;
      Dbg_WREADY_10       : in  std_logic;
      Dbg_BRESP_10        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_10       : in  std_logic;
      Dbg_BREADY_10       : out std_logic;
      Dbg_ARADDR_10       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_10      : out std_logic;
      Dbg_ARREADY_10      : in  std_logic;
      Dbg_RDATA_10        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_10        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_10       : in  std_logic;
      Dbg_RREADY_10       : out std_logic;

      Dbg_Disable_11      : out std_logic;
      Dbg_Clk_11          : out std_logic;
      Dbg_TDI_11          : out std_logic;
      Dbg_TDO_11          : in  std_logic;
      Dbg_Reg_En_11       : out std_logic_vector(0 to 7);
      Dbg_Capture_11      : out std_logic;
      Dbg_Shift_11        : out std_logic;
      Dbg_Update_11       : out std_logic;
      Dbg_Rst_11          : out std_logic;
      Dbg_Trig_In_11      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_11  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_11     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_11 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_11        : out std_logic;
      Dbg_TrData_11       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_11      : out std_logic;
      Dbg_TrValid_11      : in  std_logic;
      Dbg_AWADDR_11       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_11      : out std_logic;
      Dbg_AWREADY_11      : in  std_logic;
      Dbg_WDATA_11        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_11       : out std_logic;
      Dbg_WREADY_11       : in  std_logic;
      Dbg_BRESP_11        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_11       : in  std_logic;
      Dbg_BREADY_11       : out std_logic;
      Dbg_ARADDR_11       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_11      : out std_logic;
      Dbg_ARREADY_11      : in  std_logic;
      Dbg_RDATA_11        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_11        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_11       : in  std_logic;
      Dbg_RREADY_11       : out std_logic;

      Dbg_Disable_12      : out std_logic;
      Dbg_Clk_12          : out std_logic;
      Dbg_TDI_12          : out std_logic;
      Dbg_TDO_12          : in  std_logic;
      Dbg_Reg_En_12       : out std_logic_vector(0 to 7);
      Dbg_Capture_12      : out std_logic;
      Dbg_Shift_12        : out std_logic;
      Dbg_Update_12       : out std_logic;
      Dbg_Rst_12          : out std_logic;
      Dbg_Trig_In_12      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_12  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_12     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_12 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_12        : out std_logic;
      Dbg_TrData_12       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_12      : out std_logic;
      Dbg_TrValid_12      : in  std_logic;
      Dbg_AWADDR_12       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_12      : out std_logic;
      Dbg_AWREADY_12      : in  std_logic;
      Dbg_WDATA_12        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_12       : out std_logic;
      Dbg_WREADY_12       : in  std_logic;
      Dbg_BRESP_12        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_12       : in  std_logic;
      Dbg_BREADY_12       : out std_logic;
      Dbg_ARADDR_12       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_12      : out std_logic;
      Dbg_ARREADY_12      : in  std_logic;
      Dbg_RDATA_12        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_12        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_12       : in  std_logic;
      Dbg_RREADY_12       : out std_logic;

      Dbg_Disable_13      : out std_logic;
      Dbg_Clk_13          : out std_logic;
      Dbg_TDI_13          : out std_logic;
      Dbg_TDO_13          : in  std_logic;
      Dbg_Reg_En_13       : out std_logic_vector(0 to 7);
      Dbg_Capture_13      : out std_logic;
      Dbg_Shift_13        : out std_logic;
      Dbg_Update_13       : out std_logic;
      Dbg_Rst_13          : out std_logic;
      Dbg_Trig_In_13      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_13  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_13     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_13 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_13        : out std_logic;
      Dbg_TrData_13       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_13      : out std_logic;
      Dbg_TrValid_13      : in  std_logic;
      Dbg_AWADDR_13       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_13      : out std_logic;
      Dbg_AWREADY_13      : in  std_logic;
      Dbg_WDATA_13        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_13       : out std_logic;
      Dbg_WREADY_13       : in  std_logic;
      Dbg_BRESP_13        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_13       : in  std_logic;
      Dbg_BREADY_13       : out std_logic;
      Dbg_ARADDR_13       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_13      : out std_logic;
      Dbg_ARREADY_13      : in  std_logic;
      Dbg_RDATA_13        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_13        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_13       : in  std_logic;
      Dbg_RREADY_13       : out std_logic;

      Dbg_Disable_14      : out std_logic;
      Dbg_Clk_14          : out std_logic;
      Dbg_TDI_14          : out std_logic;
      Dbg_TDO_14          : in  std_logic;
      Dbg_Reg_En_14       : out std_logic_vector(0 to 7);
      Dbg_Capture_14      : out std_logic;
      Dbg_Shift_14        : out std_logic;
      Dbg_Update_14       : out std_logic;
      Dbg_Rst_14          : out std_logic;
      Dbg_Trig_In_14      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_14  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_14     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_14 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_14        : out std_logic;
      Dbg_TrData_14       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_14      : out std_logic;
      Dbg_TrValid_14      : in  std_logic;
      Dbg_AWADDR_14       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_14      : out std_logic;
      Dbg_AWREADY_14      : in  std_logic;
      Dbg_WDATA_14        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_14       : out std_logic;
      Dbg_WREADY_14       : in  std_logic;
      Dbg_BRESP_14        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_14       : in  std_logic;
      Dbg_BREADY_14       : out std_logic;
      Dbg_ARADDR_14       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_14      : out std_logic;
      Dbg_ARREADY_14      : in  std_logic;
      Dbg_RDATA_14        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_14        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_14       : in  std_logic;
      Dbg_RREADY_14       : out std_logic;

      Dbg_Disable_15      : out std_logic;
      Dbg_Clk_15          : out std_logic;
      Dbg_TDI_15          : out std_logic;
      Dbg_TDO_15          : in  std_logic;
      Dbg_Reg_En_15       : out std_logic_vector(0 to 7);
      Dbg_Capture_15      : out std_logic;
      Dbg_Shift_15        : out std_logic;
      Dbg_Update_15       : out std_logic;
      Dbg_Rst_15          : out std_logic;
      Dbg_Trig_In_15      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_15  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_15     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_15 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_15        : out std_logic;
      Dbg_TrData_15       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_15      : out std_logic;
      Dbg_TrValid_15      : in  std_logic;
      Dbg_AWADDR_15       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_15      : out std_logic;
      Dbg_AWREADY_15      : in  std_logic;
      Dbg_WDATA_15        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_15       : out std_logic;
      Dbg_WREADY_15       : in  std_logic;
      Dbg_BRESP_15        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_15       : in  std_logic;
      Dbg_BREADY_15       : out std_logic;
      Dbg_ARADDR_15       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_15      : out std_logic;
      Dbg_ARREADY_15      : in  std_logic;
      Dbg_RDATA_15        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_15        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_15       : in  std_logic;
      Dbg_RREADY_15       : out std_logic;

      Dbg_Disable_16      : out std_logic;
      Dbg_Clk_16          : out std_logic;
      Dbg_TDI_16          : out std_logic;
      Dbg_TDO_16          : in  std_logic;
      Dbg_Reg_En_16       : out std_logic_vector(0 to 7);
      Dbg_Capture_16      : out std_logic;
      Dbg_Shift_16        : out std_logic;
      Dbg_Update_16       : out std_logic;
      Dbg_Rst_16          : out std_logic;
      Dbg_Trig_In_16      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_16  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_16     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_16 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_16        : out std_logic;
      Dbg_TrData_16       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_16      : out std_logic;
      Dbg_TrValid_16      : in  std_logic;
      Dbg_AWADDR_16       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_16      : out std_logic;
      Dbg_AWREADY_16      : in  std_logic;
      Dbg_WDATA_16        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_16       : out std_logic;
      Dbg_WREADY_16       : in  std_logic;
      Dbg_BRESP_16        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_16       : in  std_logic;
      Dbg_BREADY_16       : out std_logic;
      Dbg_ARADDR_16       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_16      : out std_logic;
      Dbg_ARREADY_16      : in  std_logic;
      Dbg_RDATA_16        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_16        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_16       : in  std_logic;
      Dbg_RREADY_16       : out std_logic;

      Dbg_Disable_17      : out std_logic;
      Dbg_Clk_17          : out std_logic;
      Dbg_TDI_17          : out std_logic;
      Dbg_TDO_17          : in  std_logic;
      Dbg_Reg_En_17       : out std_logic_vector(0 to 7);
      Dbg_Capture_17      : out std_logic;
      Dbg_Shift_17        : out std_logic;
      Dbg_Update_17       : out std_logic;
      Dbg_Rst_17          : out std_logic;
      Dbg_Trig_In_17      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_17  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_17     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_17 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_17        : out std_logic;
      Dbg_TrData_17       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_17      : out std_logic;
      Dbg_TrValid_17      : in  std_logic;
      Dbg_AWADDR_17       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_17      : out std_logic;
      Dbg_AWREADY_17      : in  std_logic;
      Dbg_WDATA_17        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_17       : out std_logic;
      Dbg_WREADY_17       : in  std_logic;
      Dbg_BRESP_17        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_17       : in  std_logic;
      Dbg_BREADY_17       : out std_logic;
      Dbg_ARADDR_17       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_17      : out std_logic;
      Dbg_ARREADY_17      : in  std_logic;
      Dbg_RDATA_17        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_17        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_17       : in  std_logic;
      Dbg_RREADY_17       : out std_logic;

      Dbg_Disable_18      : out std_logic;
      Dbg_Clk_18          : out std_logic;
      Dbg_TDI_18          : out std_logic;
      Dbg_TDO_18          : in  std_logic;
      Dbg_Reg_En_18       : out std_logic_vector(0 to 7);
      Dbg_Capture_18      : out std_logic;
      Dbg_Shift_18        : out std_logic;
      Dbg_Update_18       : out std_logic;
      Dbg_Rst_18          : out std_logic;
      Dbg_Trig_In_18      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_18  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_18     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_18 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_18        : out std_logic;
      Dbg_TrData_18       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_18      : out std_logic;
      Dbg_TrValid_18      : in  std_logic;
      Dbg_AWADDR_18       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_18      : out std_logic;
      Dbg_AWREADY_18      : in  std_logic;
      Dbg_WDATA_18        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_18       : out std_logic;
      Dbg_WREADY_18       : in  std_logic;
      Dbg_BRESP_18        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_18       : in  std_logic;
      Dbg_BREADY_18       : out std_logic;
      Dbg_ARADDR_18       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_18      : out std_logic;
      Dbg_ARREADY_18      : in  std_logic;
      Dbg_RDATA_18        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_18        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_18       : in  std_logic;
      Dbg_RREADY_18       : out std_logic;

      Dbg_Disable_19      : out std_logic;
      Dbg_Clk_19          : out std_logic;
      Dbg_TDI_19          : out std_logic;
      Dbg_TDO_19          : in  std_logic;
      Dbg_Reg_En_19       : out std_logic_vector(0 to 7);
      Dbg_Capture_19      : out std_logic;
      Dbg_Shift_19        : out std_logic;
      Dbg_Update_19       : out std_logic;
      Dbg_Rst_19          : out std_logic;
      Dbg_Trig_In_19      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_19  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_19     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_19 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_19        : out std_logic;
      Dbg_TrData_19       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_19      : out std_logic;
      Dbg_TrValid_19      : in  std_logic;
      Dbg_AWADDR_19       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_19      : out std_logic;
      Dbg_AWREADY_19      : in  std_logic;
      Dbg_WDATA_19        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_19       : out std_logic;
      Dbg_WREADY_19       : in  std_logic;
      Dbg_BRESP_19        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_19       : in  std_logic;
      Dbg_BREADY_19       : out std_logic;
      Dbg_ARADDR_19       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_19      : out std_logic;
      Dbg_ARREADY_19      : in  std_logic;
      Dbg_RDATA_19        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_19        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_19       : in  std_logic;
      Dbg_RREADY_19       : out std_logic;

      Dbg_Disable_20      : out std_logic;
      Dbg_Clk_20          : out std_logic;
      Dbg_TDI_20          : out std_logic;
      Dbg_TDO_20          : in  std_logic;
      Dbg_Reg_En_20       : out std_logic_vector(0 to 7);
      Dbg_Capture_20      : out std_logic;
      Dbg_Shift_20        : out std_logic;
      Dbg_Update_20       : out std_logic;
      Dbg_Rst_20          : out std_logic;
      Dbg_Trig_In_20      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_20  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_20     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_20 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_20        : out std_logic;
      Dbg_TrData_20       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_20      : out std_logic;
      Dbg_TrValid_20      : in  std_logic;
      Dbg_AWADDR_20       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_20      : out std_logic;
      Dbg_AWREADY_20      : in  std_logic;
      Dbg_WDATA_20        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_20       : out std_logic;
      Dbg_WREADY_20       : in  std_logic;
      Dbg_BRESP_20        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_20       : in  std_logic;
      Dbg_BREADY_20       : out std_logic;
      Dbg_ARADDR_20       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_20      : out std_logic;
      Dbg_ARREADY_20      : in  std_logic;
      Dbg_RDATA_20        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_20        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_20       : in  std_logic;
      Dbg_RREADY_20       : out std_logic;

      Dbg_Disable_21      : out std_logic;
      Dbg_Clk_21          : out std_logic;
      Dbg_TDI_21          : out std_logic;
      Dbg_TDO_21          : in  std_logic;
      Dbg_Reg_En_21       : out std_logic_vector(0 to 7);
      Dbg_Capture_21      : out std_logic;
      Dbg_Shift_21        : out std_logic;
      Dbg_Update_21       : out std_logic;
      Dbg_Rst_21          : out std_logic;
      Dbg_Trig_In_21      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_21  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_21     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_21 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_21        : out std_logic;
      Dbg_TrData_21       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_21      : out std_logic;
      Dbg_TrValid_21      : in  std_logic;
      Dbg_AWADDR_21       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_21      : out std_logic;
      Dbg_AWREADY_21      : in  std_logic;
      Dbg_WDATA_21        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_21       : out std_logic;
      Dbg_WREADY_21       : in  std_logic;
      Dbg_BRESP_21        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_21       : in  std_logic;
      Dbg_BREADY_21       : out std_logic;
      Dbg_ARADDR_21       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_21      : out std_logic;
      Dbg_ARREADY_21      : in  std_logic;
      Dbg_RDATA_21        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_21        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_21       : in  std_logic;
      Dbg_RREADY_21       : out std_logic;

      Dbg_Disable_22      : out std_logic;
      Dbg_Clk_22          : out std_logic;
      Dbg_TDI_22          : out std_logic;
      Dbg_TDO_22          : in  std_logic;
      Dbg_Reg_En_22       : out std_logic_vector(0 to 7);
      Dbg_Capture_22      : out std_logic;
      Dbg_Shift_22        : out std_logic;
      Dbg_Update_22       : out std_logic;
      Dbg_Rst_22          : out std_logic;
      Dbg_Trig_In_22      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_22  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_22     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_22 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_22        : out std_logic;
      Dbg_TrData_22       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_22      : out std_logic;
      Dbg_TrValid_22      : in  std_logic;
      Dbg_AWADDR_22       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_22      : out std_logic;
      Dbg_AWREADY_22      : in  std_logic;
      Dbg_WDATA_22        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_22       : out std_logic;
      Dbg_WREADY_22       : in  std_logic;
      Dbg_BRESP_22        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_22       : in  std_logic;
      Dbg_BREADY_22       : out std_logic;
      Dbg_ARADDR_22       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_22      : out std_logic;
      Dbg_ARREADY_22      : in  std_logic;
      Dbg_RDATA_22        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_22        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_22       : in  std_logic;
      Dbg_RREADY_22       : out std_logic;

      Dbg_Disable_23      : out std_logic;
      Dbg_Clk_23          : out std_logic;
      Dbg_TDI_23          : out std_logic;
      Dbg_TDO_23          : in  std_logic;
      Dbg_Reg_En_23       : out std_logic_vector(0 to 7);
      Dbg_Capture_23      : out std_logic;
      Dbg_Shift_23        : out std_logic;
      Dbg_Update_23       : out std_logic;
      Dbg_Rst_23          : out std_logic;
      Dbg_Trig_In_23      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_23  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_23     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_23 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_23        : out std_logic;
      Dbg_TrData_23       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_23      : out std_logic;
      Dbg_TrValid_23      : in  std_logic;
      Dbg_AWADDR_23       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_23      : out std_logic;
      Dbg_AWREADY_23      : in  std_logic;
      Dbg_WDATA_23        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_23       : out std_logic;
      Dbg_WREADY_23       : in  std_logic;
      Dbg_BRESP_23        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_23       : in  std_logic;
      Dbg_BREADY_23       : out std_logic;
      Dbg_ARADDR_23       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_23      : out std_logic;
      Dbg_ARREADY_23      : in  std_logic;
      Dbg_RDATA_23        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_23        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_23       : in  std_logic;
      Dbg_RREADY_23       : out std_logic;

      Dbg_Disable_24      : out std_logic;
      Dbg_Clk_24          : out std_logic;
      Dbg_TDI_24          : out std_logic;
      Dbg_TDO_24          : in  std_logic;
      Dbg_Reg_En_24       : out std_logic_vector(0 to 7);
      Dbg_Capture_24      : out std_logic;
      Dbg_Shift_24        : out std_logic;
      Dbg_Update_24       : out std_logic;
      Dbg_Rst_24          : out std_logic;
      Dbg_Trig_In_24      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_24  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_24     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_24 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_24        : out std_logic;
      Dbg_TrData_24       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_24      : out std_logic;
      Dbg_TrValid_24      : in  std_logic;
      Dbg_AWADDR_24       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_24      : out std_logic;
      Dbg_AWREADY_24      : in  std_logic;
      Dbg_WDATA_24        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_24       : out std_logic;
      Dbg_WREADY_24       : in  std_logic;
      Dbg_BRESP_24        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_24       : in  std_logic;
      Dbg_BREADY_24       : out std_logic;
      Dbg_ARADDR_24       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_24      : out std_logic;
      Dbg_ARREADY_24      : in  std_logic;
      Dbg_RDATA_24        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_24        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_24       : in  std_logic;
      Dbg_RREADY_24       : out std_logic;

      Dbg_Disable_25      : out std_logic;
      Dbg_Clk_25          : out std_logic;
      Dbg_TDI_25          : out std_logic;
      Dbg_TDO_25          : in  std_logic;
      Dbg_Reg_En_25       : out std_logic_vector(0 to 7);
      Dbg_Capture_25      : out std_logic;
      Dbg_Shift_25        : out std_logic;
      Dbg_Update_25       : out std_logic;
      Dbg_Rst_25          : out std_logic;
      Dbg_Trig_In_25      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_25  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_25     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_25 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_25        : out std_logic;
      Dbg_TrData_25       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_25      : out std_logic;
      Dbg_TrValid_25      : in  std_logic;
      Dbg_AWADDR_25       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_25      : out std_logic;
      Dbg_AWREADY_25      : in  std_logic;
      Dbg_WDATA_25        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_25       : out std_logic;
      Dbg_WREADY_25       : in  std_logic;
      Dbg_BRESP_25        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_25       : in  std_logic;
      Dbg_BREADY_25       : out std_logic;
      Dbg_ARADDR_25       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_25      : out std_logic;
      Dbg_ARREADY_25      : in  std_logic;
      Dbg_RDATA_25        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_25        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_25       : in  std_logic;
      Dbg_RREADY_25       : out std_logic;

      Dbg_Disable_26      : out std_logic;
      Dbg_Clk_26          : out std_logic;
      Dbg_TDI_26          : out std_logic;
      Dbg_TDO_26          : in  std_logic;
      Dbg_Reg_En_26       : out std_logic_vector(0 to 7);
      Dbg_Capture_26      : out std_logic;
      Dbg_Shift_26        : out std_logic;
      Dbg_Update_26       : out std_logic;
      Dbg_Rst_26          : out std_logic;
      Dbg_Trig_In_26      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_26  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_26     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_26 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_26        : out std_logic;
      Dbg_TrData_26       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_26      : out std_logic;
      Dbg_TrValid_26      : in  std_logic;
      Dbg_AWADDR_26       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_26      : out std_logic;
      Dbg_AWREADY_26      : in  std_logic;
      Dbg_WDATA_26        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_26       : out std_logic;
      Dbg_WREADY_26       : in  std_logic;
      Dbg_BRESP_26        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_26       : in  std_logic;
      Dbg_BREADY_26       : out std_logic;
      Dbg_ARADDR_26       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_26      : out std_logic;
      Dbg_ARREADY_26      : in  std_logic;
      Dbg_RDATA_26        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_26        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_26       : in  std_logic;
      Dbg_RREADY_26       : out std_logic;

      Dbg_Disable_27      : out std_logic;
      Dbg_Clk_27          : out std_logic;
      Dbg_TDI_27          : out std_logic;
      Dbg_TDO_27          : in  std_logic;
      Dbg_Reg_En_27       : out std_logic_vector(0 to 7);
      Dbg_Capture_27      : out std_logic;
      Dbg_Shift_27        : out std_logic;
      Dbg_Update_27       : out std_logic;
      Dbg_Rst_27          : out std_logic;
      Dbg_Trig_In_27      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_27  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_27     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_27 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_27        : out std_logic;
      Dbg_TrData_27       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_27      : out std_logic;
      Dbg_TrValid_27      : in  std_logic;
      Dbg_AWADDR_27       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_27      : out std_logic;
      Dbg_AWREADY_27      : in  std_logic;
      Dbg_WDATA_27        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_27       : out std_logic;
      Dbg_WREADY_27       : in  std_logic;
      Dbg_BRESP_27        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_27       : in  std_logic;
      Dbg_BREADY_27       : out std_logic;
      Dbg_ARADDR_27       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_27      : out std_logic;
      Dbg_ARREADY_27      : in  std_logic;
      Dbg_RDATA_27        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_27        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_27       : in  std_logic;
      Dbg_RREADY_27       : out std_logic;

      Dbg_Disable_28      : out std_logic;
      Dbg_Clk_28          : out std_logic;
      Dbg_TDI_28          : out std_logic;
      Dbg_TDO_28          : in  std_logic;
      Dbg_Reg_En_28       : out std_logic_vector(0 to 7);
      Dbg_Capture_28      : out std_logic;
      Dbg_Shift_28        : out std_logic;
      Dbg_Update_28       : out std_logic;
      Dbg_Rst_28          : out std_logic;
      Dbg_Trig_In_28      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_28  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_28     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_28 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_28        : out std_logic;
      Dbg_TrData_28       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_28      : out std_logic;
      Dbg_TrValid_28      : in  std_logic;
      Dbg_AWADDR_28       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_28      : out std_logic;
      Dbg_AWREADY_28      : in  std_logic;
      Dbg_WDATA_28        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_28       : out std_logic;
      Dbg_WREADY_28       : in  std_logic;
      Dbg_BRESP_28        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_28       : in  std_logic;
      Dbg_BREADY_28       : out std_logic;
      Dbg_ARADDR_28       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_28      : out std_logic;
      Dbg_ARREADY_28      : in  std_logic;
      Dbg_RDATA_28        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_28        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_28       : in  std_logic;
      Dbg_RREADY_28       : out std_logic;

      Dbg_Disable_29      : out std_logic;
      Dbg_Clk_29          : out std_logic;
      Dbg_TDI_29          : out std_logic;
      Dbg_TDO_29          : in  std_logic;
      Dbg_Reg_En_29       : out std_logic_vector(0 to 7);
      Dbg_Capture_29      : out std_logic;
      Dbg_Shift_29        : out std_logic;
      Dbg_Update_29       : out std_logic;
      Dbg_Rst_29          : out std_logic;
      Dbg_Trig_In_29      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_29  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_29     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_29 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_29        : out std_logic;
      Dbg_TrData_29       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_29      : out std_logic;
      Dbg_TrValid_29      : in  std_logic;
      Dbg_AWADDR_29       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_29      : out std_logic;
      Dbg_AWREADY_29      : in  std_logic;
      Dbg_WDATA_29        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_29       : out std_logic;
      Dbg_WREADY_29       : in  std_logic;
      Dbg_BRESP_29        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_29       : in  std_logic;
      Dbg_BREADY_29       : out std_logic;
      Dbg_ARADDR_29       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_29      : out std_logic;
      Dbg_ARREADY_29      : in  std_logic;
      Dbg_RDATA_29        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_29        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_29       : in  std_logic;
      Dbg_RREADY_29       : out std_logic;

      Dbg_Disable_30      : out std_logic;
      Dbg_Clk_30          : out std_logic;
      Dbg_TDI_30          : out std_logic;
      Dbg_TDO_30          : in  std_logic;
      Dbg_Reg_En_30       : out std_logic_vector(0 to 7);
      Dbg_Capture_30      : out std_logic;
      Dbg_Shift_30        : out std_logic;
      Dbg_Update_30       : out std_logic;
      Dbg_Rst_30          : out std_logic;
      Dbg_Trig_In_30      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_30  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_30     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_30 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_30        : out std_logic;
      Dbg_TrData_30       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_30      : out std_logic;
      Dbg_TrValid_30      : in  std_logic;
      Dbg_AWADDR_30       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_30      : out std_logic;
      Dbg_AWREADY_30      : in  std_logic;
      Dbg_WDATA_30        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_30       : out std_logic;
      Dbg_WREADY_30       : in  std_logic;
      Dbg_BRESP_30        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_30       : in  std_logic;
      Dbg_BREADY_30       : out std_logic;
      Dbg_ARADDR_30       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_30      : out std_logic;
      Dbg_ARREADY_30      : in  std_logic;
      Dbg_RDATA_30        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_30        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_30       : in  std_logic;
      Dbg_RREADY_30       : out std_logic;

      Dbg_Disable_31      : out std_logic;
      Dbg_Clk_31          : out std_logic;
      Dbg_TDI_31          : out std_logic;
      Dbg_TDO_31          : in  std_logic;
      Dbg_Reg_En_31       : out std_logic_vector(0 to 7);
      Dbg_Capture_31      : out std_logic;
      Dbg_Shift_31        : out std_logic;
      Dbg_Update_31       : out std_logic;
      Dbg_Rst_31          : out std_logic;
      Dbg_Trig_In_31      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_31  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_31     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_31 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_31        : out std_logic;
      Dbg_TrData_31       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_31      : out std_logic;
      Dbg_TrValid_31      : in  std_logic;
      Dbg_AWADDR_31       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_31      : out std_logic;
      Dbg_AWREADY_31      : in  std_logic;
      Dbg_WDATA_31        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_31       : out std_logic;
      Dbg_WREADY_31       : in  std_logic;
      Dbg_BRESP_31        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_31       : in  std_logic;
      Dbg_BREADY_31       : out std_logic;
      Dbg_ARADDR_31       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_31      : out std_logic;
      Dbg_ARREADY_31      : in  std_logic;
      Dbg_RDATA_31        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_31        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_31       : in  std_logic;
      Dbg_RREADY_31       : out std_logic;

      -- External Trigger Signals
      Ext_Trig_In      : in  std_logic_vector(0 to 3);
      Ext_Trig_Ack_In  : out std_logic_vector(0 to 3);
      Ext_Trig_Out     : out std_logic_vector(0 to 3);
      Ext_Trig_Ack_Out : in  std_logic_vector(0 to 3);

      -- External JTAG
      Ext_JTAG_DRCK    : out std_logic;
      Ext_JTAG_RESET   : out std_logic;
      Ext_JTAG_SEL     : out std_logic;
      Ext_JTAG_CAPTURE : out std_logic;
      Ext_JTAG_SHIFT   : out std_logic;
      Ext_JTAG_UPDATE  : out std_logic;
      Ext_JTAG_TDI     : out std_logic;
      Ext_JTAG_TDO     : in  std_logic
    );
  end component MDM_Core;

  component bus_master is
    generic (
      C_TARGET                : TARGET_FAMILY_TYPE;
      C_M_AXI_DATA_WIDTH      : natural;
      C_M_AXI_THREAD_ID_WIDTH : natural;
      C_M_AXI_ADDR_WIDTH      : natural range 32 to 64;
      C_DATA_SIZE             : natural;
      C_ADDR_SIZE             : natural range 32 to 64;
      C_LMB_PROTOCOL          : integer range 0  to 1;
      C_HAS_FIFO_PORTS        : boolean;
      C_HAS_DIRECT_PORT       : boolean;
      C_USE_SRL16             : string
    );
    port (
      Rd_Start          : in  std_logic;
      Rd_Addr           : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Rd_Len            : in  std_logic_vector(4  downto 0);
      Rd_Size           : in  std_logic_vector(1  downto 0);
      Rd_Exclusive      : in  std_logic;
      Rd_Idle           : out std_logic;
      Rd_Response       : out std_logic_vector(1  downto 0);

      Wr_Start          : in  std_logic;
      Wr_Addr           : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Wr_Len            : in  std_logic_vector(4  downto 0);
      Wr_Size           : in  std_logic_vector(1  downto 0);
      Wr_Exclusive      : in  std_logic;
      Wr_Idle           : out std_logic;
      Wr_Response       : out std_logic_vector(1  downto 0);

      Data_Rd           : in  std_logic;
      Data_Out          : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Data_Exists       : out std_logic;

      Data_Wr           : in  std_logic;
      Data_In           : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Data_Empty        : out std_logic;

      Direct_Wr_Addr    : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Direct_Wr_Len     : in  std_logic_vector(4  downto 0);
      Direct_Wr_Data    : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Direct_Wr_Start   : in  std_logic;
      Direct_Wr_Next    : out std_logic;
      Direct_Wr_Done    : out std_logic;
      Direct_Wr_Resp    : out std_logic_vector(1 downto 0);

      LMB_Data_Addr     : out std_logic_vector(0 to C_ADDR_SIZE-1);
      LMB_Data_Read     : in  std_logic_vector(0 to C_DATA_SIZE-1);
      LMB_Data_Write    : out std_logic_vector(0 to C_DATA_SIZE-1);
      LMB_Addr_Strobe   : out std_logic;
      LMB_Read_Strobe   : out std_logic;
      LMB_Write_Strobe  : out std_logic;
      LMB_Ready         : in  std_logic;
      LMB_Wait          : in  std_logic;
      LMB_UE            : in  std_logic;
      LMB_Byte_Enable   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

      M_AXI_ACLK        : in  std_logic;
      M_AXI_ARESETn     : in  std_logic;

      M_AXI_AWID        : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
      M_AXI_AWADDR      : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      M_AXI_AWLEN       : out std_logic_vector(7 downto 0);
      M_AXI_AWSIZE      : out std_logic_vector(2 downto 0);
      M_AXI_AWBURST     : out std_logic_vector(1 downto 0);
      M_AXI_AWLOCK      : out std_logic;
      M_AXI_AWCACHE     : out std_logic_vector(3 downto 0);
      M_AXI_AWPROT      : out std_logic_vector(2 downto 0);
      M_AXI_AWQOS       : out std_logic_vector(3 downto 0);
      M_AXI_AWVALID     : out std_logic;
      M_AXI_AWREADY     : in  std_logic;

      M_AXI_WLAST       : out std_logic;
      M_AXI_WDATA       : out std_logic_vector(31 downto 0);
      M_AXI_WSTRB       : out std_logic_vector(3 downto 0);
      M_AXI_WVALID      : out std_logic;
      M_AXI_WREADY      : in  std_logic;

      M_AXI_BRESP       : in  std_logic_vector(1 downto 0);
      M_AXI_BID         : in  std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
      M_AXI_BVALID      : in  std_logic;
      M_AXI_BREADY      : out std_logic;

      M_AXI_ARADDR      : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      M_AXI_ARID        : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
      M_AXI_ARLEN       : out std_logic_vector(7 downto 0);
      M_AXI_ARSIZE      : out std_logic_vector(2 downto 0);
      M_AXI_ARBURST     : out std_logic_vector(1 downto 0);
      M_AXI_ARLOCK      : out std_logic;
      M_AXI_ARCACHE     : out std_logic_vector(3 downto 0);
      M_AXI_ARPROT      : out std_logic_vector(2 downto 0);
      M_AXI_ARQOS       : out std_logic_vector(3 downto 0);
      M_AXI_ARVALID     : out std_logic;
      M_AXI_ARREADY     : in  std_logic;

      M_AXI_RLAST       : in  std_logic;
      M_AXI_RID         : in  std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
      M_AXI_RDATA       : in  std_logic_vector(31 downto 0);
      M_AXI_RRESP       : in  std_logic_vector(1 downto 0);
      M_AXI_RVALID      : in  std_logic;
      M_AXI_RREADY      : out std_logic
    );
  end component bus_master;

  component xil_scan_reset_control is
    port (
      Scan_En          : in  std_logic;
      Scan_Reset_Sel   : in  std_logic;
      Scan_Reset       : in  std_logic;
      Functional_Reset : in  std_logic;
      Reset            : out std_logic
    );
  end component xil_scan_reset_control;

  component mb_sync_bit is
    generic (
      C_LEVELS            : natural   := 2;
      C_RESET_VALUE       : std_logic := '0';
      C_RESET_SYNCHRONOUS : boolean   := true;
      C_RESET_ACTIVE_HIGH : boolean   := true);
    port (
      Clk            : in  std_logic;
      Rst            : in  std_logic;
      Scan_Reset_Sel : in  std_logic;
      Scan_Reset     : in  std_logic;
      Scan_En        : in  std_logic;
      Raw            : in  std_logic;
      Synced         : out std_logic
    );
  end component mb_sync_bit;

  component MB_BSCANE2
    generic (
       C_TARGET     : TARGET_FAMILY_TYPE;
       DISABLE_JTAG : string := "FALSE";
       JTAG_CHAIN   : integer := 1
    );
    port (
       CAPTURE      : out std_logic := 'H';
       DRCK         : out std_logic := 'H';
       RESET        : out std_logic := 'H';
       RUNTEST      : out std_logic := 'L';
       SEL          : out std_logic := 'L';
       SHIFT        : out std_logic := 'L';
       TCK          : out std_logic := 'L';
       TDI          : out std_logic := 'L';
       TMS          : out std_logic := 'L';
       UPDATE       : out std_logic := 'L';
       TDO          : in  std_logic := 'X'
    );
  end component;

  component MB_BUFG
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
       O : out std_logic;
       I : in  std_logic
    );
  end component;

  component MB_BUFGCE_1 is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
       O  : out std_logic;
       CE : in  std_logic;
       I  : in  std_logic
    );
  end component MB_BUFGCE_1;

  component MB_BUFGCTRL
    generic (
      C_TARGET            : TARGET_FAMILY_TYPE;
      INIT_OUT            : integer := 0;
      IS_CE0_INVERTED     : bit := '0';
      IS_CE1_INVERTED     : bit := '0';
      IS_I0_INVERTED      : bit := '0';
      IS_I1_INVERTED      : bit := '0';
      IS_IGNORE0_INVERTED : bit := '0';
      IS_IGNORE1_INVERTED : bit := '0';
      IS_S0_INVERTED      : bit := '0';
      IS_S1_INVERTED      : bit := '0';
      PRESELECT_I0        : boolean := false;
      PRESELECT_I1        : boolean := false
    );
    port (
      O                   : out std_logic;
      CE0                 : in  std_logic;
      CE1                 : in  std_logic;
      I0                  : in  std_logic;
      I1                  : in  std_logic;
      IGNORE0             : in  std_logic;
      IGNORE1             : in  std_logic;
      S0                  : in  std_logic;
      S1                  : in  std_logic
    );
  end component;

  component MB_LUT1 is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE;
      INIT     : bit_vector := X"0"
    );
    port (
      O  : out std_logic;
      I0 : in  std_logic
    );
  end component MB_LUT1;

  --------------------------------------------------------------------------
  -- Functions
  --------------------------------------------------------------------------

  -- Returns at least 1
  function MakePos (a : integer) return integer is
  begin
    if a < 1 then
      return 1;
    else
      return a;
    end if;
  end function MakePos;

  constant C_EN_WIDTH : integer := MakePos(C_MB_DBG_PORTS);

  --------------------------------------------------------------------------
  -- Signal declarations
  --------------------------------------------------------------------------
  signal config_reset_i     : std_logic;

  signal tdi                : std_logic := '0';
  signal reset              : std_logic := '0';
  signal update             : std_logic;
  signal capture            : std_logic := '0';
  signal shift              : std_logic := '0';
  signal sel                : std_logic := '0';
  signal tdo                : std_logic;
  signal tck                : std_logic;
  signal tms                : std_logic;
  signal bscanid_en         : std_logic;

  signal update_i           : std_logic := '0';
  signal update_ii          : std_logic := '0';
  signal capture_i          : std_logic := '0';
  signal shift_i            : std_logic := '0';

  signal m_bscan_sel        : std_logic := '0';
  signal m_bscan_capture    : std_logic := '0';
  signal m_bscan_shift      : std_logic := '0';
  signal m_bscanid_en       : std_logic := '0';
  signal m_bscan_tdo        : std_logic := '0';

  signal jtag_tck           : std_logic := '0';
  signal jtag_tdi           : std_logic := '0';
  signal jtag_tms           : std_logic := '0';
  signal jtag_tdo           : std_logic := '0';

  signal jtag_busy          : std_logic := '0';

  signal bus2ip_clk         : std_logic;
  signal bus2ip_clk_i       : std_logic;
  signal bus2ip_resetn      : std_logic;
  signal ip2bus_data        : std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0) := (others => '0');
  signal ip2bus_error       : std_logic                                         := '0';
  signal ip2bus_wrack       : std_logic                                         := '0';
  signal ip2bus_rdack       : std_logic                                         := '0';
  signal bus2ip_addr        : std_logic_vector(13 downto 0);
  signal bus2ip_data        : std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
  signal bus2ip_rdce        : std_logic_vector(C_REG_NUM_CE-1 downto 0);
  signal bus2ip_wrce        : std_logic_vector(C_REG_NUM_CE-1 downto 0);

  signal mb_debug_enabled   : std_logic_vector(C_EN_WIDTH-1 downto 0);
  signal master_rd_start    : std_logic;
  signal master_rd_addr     : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal master_rd_len      : std_logic_vector(4 downto 0);
  signal master_rd_size     : std_logic_vector(1 downto 0);
  signal master_rd_excl     : std_logic;
  signal master_rd_idle     : std_logic;
  signal master_rd_resp     : std_logic_vector(1 downto 0);
  signal master_wr_start    : std_logic;
  signal master_wr_addr     : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal master_wr_len      : std_logic_vector(4 downto 0);
  signal master_wr_size     : std_logic_vector(1 downto 0);
  signal master_wr_excl     : std_logic;
  signal master_wr_idle     : std_logic;
  signal master_wr_resp     : std_logic_vector(1 downto 0);
  signal master_data_rd     : std_logic;
  signal master_data_out    : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
  signal master_data_exists : std_logic;
  signal master_data_wr     : std_logic;
  signal master_data_in     : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
  signal master_data_empty  : std_logic;

  signal master_dwr_addr    : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal master_dwr_len     : std_logic_vector(4 downto 0);
  signal master_dwr_data    : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
  signal master_dwr_start   : std_logic;
  signal master_dwr_next    : std_logic;
  signal master_dwr_done    : std_logic;
  signal master_dwr_resp    : std_logic_vector(1 downto 0);

  signal m_axi_awaddr_i      : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal m_axi_awvalid_i     : std_logic;
  signal m_axi_awready_trace : std_logic;
  signal m_axi_wdata_i       : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
  signal m_axi_wvalid_i      : std_logic;
  signal m_axi_wready_trace  : std_logic;
  signal m_axi_bresp_trace   : std_logic_vector(1 downto 0);
  signal m_axi_bvalid_trace  : std_logic;
  signal m_axi_bready_i      : std_logic;
  signal m_axi_araddr_i      : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal m_axi_arvalid_i     : std_logic;
  signal m_axi_arready_trace : std_logic;
  signal m_axi_rdata_trace   : std_logic_vector(31 downto 0);
  signal m_axi_rresp_trace   : std_logic_vector(1 downto 0);
  signal m_axi_rvalid_trace  : std_logic;
  signal m_axi_rready_i      : std_logic;

  signal ext_trig_in        : std_logic_vector(0 to 3);
  signal ext_trig_Ack_In    : std_logic_vector(0 to 3);
  signal ext_trig_out       : std_logic_vector(0 to 3);
  signal ext_trig_Ack_Out   : std_logic_vector(0 to 3);

  --------------------------------------------------------------------------
  -- Attribute declarations
  --------------------------------------------------------------------------
  attribute period           : string;
  attribute period of update : signal is "200 ns";

  attribute buffer_type                : string;
  attribute buffer_type of update_ii   : signal is "none";
  attribute buffer_type of MDM_Core_I1 : label is "none";

begin  -- architecture IMP

  config_reset_i <= Config_Reset when C_USE_CONFIG_RESET /= 0 else '0';

  Use_E2 : if C_USE_BSCAN /= 2 and C_USE_BSCAN /= 3 and C_USE_BSCAN /= 4 generate
    signal tdi_i : std_logic := '0';
  begin
    BSCAN_I : MB_BSCANE2
      generic map (
        C_TARGET     => C_TARGET,
        DISABLE_JTAG => "FALSE",
        JTAG_CHAIN   => C_JTAG_CHAIN)
      port map (
        CAPTURE      => capture_i,        -- [out std_logic]
        DRCK         => open,             -- [out std_logic]
        RESET        => reset,            -- [out std_logic]
        RUNTEST      => open,             -- [out std_logic]
        SEL          => sel,              -- [out std_logic]
        SHIFT        => shift_i,          -- [out std_logic]
        TCK          => tck,              -- [out std_logic]
        TDI          => tdi_i,            -- [out std_logic]
        TMS          => tms,              -- [out std_logic]
        UPDATE       => update_ii,        -- [out std_logic]
        TDO          => tdo);             -- [in  std_logic]

    LUT1_I : MB_LUT1
      generic map (
        C_TARGET => C_TARGET,
        INIT     => "10")
      port map (
        O        => tdi,
        I0       => tdi_i);

  end generate Use_E2;

  Use_External : if C_USE_BSCAN = 2 or C_USE_BSCAN = 4 generate
  begin
    capture_i  <= bscan_ext_capture;
    reset      <= bscan_ext_reset;
    sel        <= bscan_ext_sel;
    shift_i    <= bscan_ext_shift;
    tdi        <= bscan_ext_tdi;
    tck        <= bscan_ext_tck;
    tms        <= bscan_ext_tms;
    update_ii  <= bscan_ext_update;

    bscan_ext_tdo <= tdo;
  end generate Use_External;

  No_External : if C_USE_BSCAN /= 2 and C_USE_BSCAN /= 4 generate
  begin
    bscan_ext_tdo <= '0';
  end generate No_External;

  External_BSCANID : if (C_USE_BSCAN = 2 or C_USE_BSCAN = 4) and C_BSCANID /= 0 generate
  begin
    bscanid_en <= bscan_ext_bscanid_en;
  end generate External_BSCANID;

  Internal_BSCANID : if (C_USE_BSCAN /= 2 and C_USE_BSCAN /= 3 and C_USE_BSCAN /= 4) or
                        ((C_USE_BSCAN = 2 or C_USE_BSCAN = 4) and C_BSCANID = 0) generate
    signal config_reset_or_reset : std_logic := '0';
    signal bscanid_reset         : std_logic := '0';
    signal bscanid_sel           : boolean   := false;
    signal bscanid_done          : boolean   := false;
  begin

    config_reset_or_reset <= config_reset_i or reset;

    config_with_scan_reset_i: xil_scan_reset_control
      port map (
        Scan_En          => Scan_En,
        Scan_Reset_Sel   => Scan_Reset_Sel,
        Scan_Reset       => Scan_Reset,
        Functional_Reset => config_reset_or_reset,
        Reset            => bscanid_reset);

    BSCAN_ID_DFF: process (tck, bscanid_reset) is
    begin  -- process BSCAN_ID_DFF
      if bscanid_reset = '1' then
        bscanid_sel  <= false;
        bscanid_done <= false;
      elsif tck'event and tck = '1' then
        if sel = '1' and not bscanid_done then
          bscanid_sel  <= true;
        end if;
        if update_ii = '1' then
          bscanid_sel  <= false;
          bscanid_done <= true;
        end if;
      end if;
    end process BSCAN_ID_DFF;

    bscanid_en <= capture_i or shift_i when bscanid_sel else '0';
  end generate Internal_BSCANID;

  No_BSCANID : if C_USE_BSCAN = 3 generate
  begin
    bscanid_en <= '0';
  end generate No_BSCANID;

  Using_JTAG_DAP : if C_USE_JTAG_DAP generate
    constant ID : std_logic_vector(31 downto 0) := X"05300000";

    signal dr          : std_logic_vector(39 downto 0);
    signal req         : std_logic;
    signal done        : std_logic;
    signal overrun     : std_logic;
    signal error       : std_logic_vector(1 downto 0);
    signal abort       : std_logic;
    signal rstn        : std_logic;
    signal cmd         : std_logic_vector(7 downto 0);
    signal arg         : std_logic_vector(31 downto 0);
    signal res         : std_logic_vector(31 downto 0);
    signal lock        : std_logic := '1';

    signal crc         : std_logic_vector(31 downto 0);
    signal crc_add     : boolean;

    signal dap_req     : std_logic;
    signal dap_done    : std_logic;
    signal req_done    : std_logic;
    signal dat         : std_logic_vector(31 downto 0);
    signal stb         : std_logic;
    signal err         : std_logic_vector(1 downto 0);
    signal we          : std_logic;

    function calc_crc(c: std_logic_vector; w: std_logic_vector) return std_logic_vector is
        -- 0xBA0DC66B, Koopman, P., "32-bit cyclic redundancy codes for Internet applications"
        constant poly: std_logic_vector(31 downto 0) := "10111010000011011100011001101011";

        variable a: std_logic_vector(c'range);
        variable a0: std_logic;
    begin
        a := c;
        for j in w'reverse_range loop
            a0 := w(j) xor a(a'low);
            a := "0" & a(a'high downto a'low + 1);
            for i in a'reverse_range loop
                if poly(i) = '1' then a(i) := a(i) xor a0; end if;
            end loop;
        end loop;
        return a;
    end calc_crc;

  begin
    tdo <= dr(0);

    JTAG_DAP: process (tck)
    begin
      if tck'event and tck = '1' then
        if reset = '1' or sel = '0' then
          res <= ID;
          overrun <= '0';
          abort <= '0';
          req <= '0';
          crc <= (others => '0');
          crc_add <= false;
        else
          crc_add <= capture_i = '1' or update_ii = '1';
          if crc_add then
            crc <= calc_crc(crc, dr);
          end if;

          if capture_i = '1' then
            if req = '1' or done = '1' then
              overrun <= '1';
            end if;
            dr <= lock & not rstn & error & overrun & abort & done & req & res;
          elsif shift_i = '1' then
            dr <= tdi & dr(39 downto 1);
          elsif update_ii = '1' then
            if dr(39 downto 32) = "00000000" then
              null;
            elsif dr(39 downto 32) = "11111110" then
              lock <= dr(0);
            elsif dr(39 downto 32) = "11111111" then
              if overrun = '0' and req = '0' then
                res <= crc;
              end if;
              overrun <= '0';
            elsif dr(39 downto 38) = "11" then
              null;
            elsif overrun = '0' and req = '0' and abort = '0' and lock = '0' then
              req <= '1';
              cmd <= dr(39 downto 32);
              arg <= dr(31 downto 0);
            end if;
          end if;

          if req = '1' and done = '1' then
            error <= err;
            if err /= "00" then
              abort <= '1';
            end if;
            res <= dat;
            req <= '0';
          end if;
        end if;
      end if;
    end process JTAG_DAP;

    sync_req : mb_sync_bit
      generic map (
        C_LEVELS            => 2,
        C_RESET_VALUE       => '0',
        C_RESET_SYNCHRONOUS => true,
        C_RESET_ACTIVE_HIGH => false
      )
      port map (
        Clk                 => bus2ip_clk,
        Rst                 => bus2ip_resetn,
        Scan_Reset_Sel      => Scan_Reset_Sel,
        Scan_Reset          => Scan_Reset,
        Scan_En             => Scan_En,
        Raw                 => req,
        Synced              => dap_req
      );

    sync_done : mb_sync_bit
      generic map (
        C_LEVELS            => 1,
        C_RESET_VALUE       => '0',
        C_RESET_SYNCHRONOUS => false,
        C_RESET_ACTIVE_HIGH => true
      )
      port map (
        Clk                 => tck,
        Rst                 => config_reset_i,
        Scan_Reset_Sel      => Scan_Reset_Sel,
        Scan_Reset          => Scan_Reset,
        Scan_En             => Scan_En,
        Raw                 => dap_done,
        Synced              => done
      );

    sync_rstn : mb_sync_bit
      generic map (
        C_LEVELS            => 1,
        C_RESET_VALUE       => '0',
        C_RESET_SYNCHRONOUS => false,
        C_RESET_ACTIVE_HIGH => true
      )
      port map (
        Clk                 => tck,
        Rst                 => config_reset_i,
        Scan_Reset_Sel      => Scan_Reset_Sel,
        Scan_Reset          => Scan_Reset,
        Scan_En             => Scan_En,
        Raw                 => bus2ip_resetn,
        Synced              => rstn
      );

    --bus2ip_rdce(C_REG_NUM_CE-1) <= stb and not req_done and not we;
    --bus2ip_wrce(C_REG_NUM_CE-1) <= stb and not req_done and we;

    S_AXI_GEN : process (bus2ip_clk)
    begin
      if bus2ip_clk'event and bus2ip_clk = '1' then
        if bus2ip_resetn = '0' then
          dat <= (others => '0');
          dap_done <= dap_req;
          req_done <= '0';
          err <= (others => '1');
          stb <= '0';
        elsif dap_done = '1' then
          if dap_req = '0' then
            dap_done <= '0';
          end if;
        elsif stb = '1' then
          if ip2bus_rdack = '1' or ip2bus_wrack = '1' then
            if we = '0' then
              dat <= ip2bus_data;
            end if;
            dap_done <= '1';
            err <= ip2bus_error & ip2bus_error;
            req_done <= '0';
            stb <= '0';
          elsif req_done = '0' then
            req_done <= '1';
          end if;
        elsif dap_req = '1' then
          if cmd(7) = '1' then
            dat <= arg;
            bus2ip_addr <= "00000" & cmd(6 downto 0) & "00";
            bus2ip_data <= arg;
            stb <= '1';
            we <= '1';
          else
            bus2ip_addr <= "00000" & cmd(6 downto 0) & "00";
            stb <= '1';
            we <= '0';
          end if;
        end if;
      end if;
    end process S_AXI_GEN;

    bus2ip_clk    <= S_AXI_ACLK;
    bus2ip_resetn <= S_AXI_ARESETN;

  end generate Using_JTAG_DAP;

  Using_BSCAN_Switch: if (C_USE_BSCAN_SWITCH = 1) and (C_DEBUG_INTERFACE = 0) and
                         ((C_USE_BSCAN /= 2 and C_USE_BSCAN /= 3 and C_USE_BSCAN /= 4) or
                          (C_TARGET = VERSAL) or (C_TARGET = VERSAL_NET)) generate
    subtype state_type is std_logic_vector(2 downto 0);

    constant C_BSCAN_SWITCH_ID : std_logic_vector := X"04900101";

    constant C_IDLE            : state_type := "000";
    constant C_SWITCH_SELECT   : state_type := "010";
    constant C_PORT_SELECT     : state_type := "011";
    constant C_FORWARD         : state_type := "100";
    constant C_ERROR           : state_type := "111";

    signal counter             : std_logic_vector(7 downto 0) := (others => '0');
    signal count_flag          : std_logic := '0';
    signal bscanid             : std_logic_vector(31 downto 0);
    signal state               : state_type := C_IDLE;
    signal shiftreg            : std_logic_vector(31 downto 0);
    signal curid               : std_logic_vector(31 downto 0);
    signal next_curid          : std_logic_vector(31 downto 0);
    signal id_state            : std_logic := '0';
  begin

    Id_State_FSM : process (tck) is
    begin
      if tck'event and tck = '1' then
        if reset = '1' then
          id_state <= '0';
          bscanid  <= C_BSCAN_SWITCH_ID;
        else
          if id_state = '0' then
            bscanid <= C_BSCAN_SWITCH_ID;
            if bscanid_en = '1' then
              id_state <= '1';
            end if;
          else
            if bscanid_en = '1' then
              bscanid <= tdi & bscanid(31 downto 1);
            else
              id_state <= '0';
            end if;
          end if;
        end if;
      end if;
    end process Id_State_FSM;

    m_bscan_sel     <= '1'       when state = C_FORWARD else '0';
    m_bscan_capture <= capture_i when state = C_FORWARD else '0';
    m_bscan_shift   <= shift_i   when state = C_FORWARD else '0';

    tdo             <= bscanid(0)  when bscanid_en = '1' else
                       m_bscan_tdo when state = C_FORWARD or state = C_PORT_SELECT else
                       shiftreg(0);

    curid           <= C_BSCAN_SWITCH_ID when state /= C_PORT_SELECT else next_curid;

    CurId_DFF : process (tck) is
    begin
      if tck'event and tck = '1' then
        if reset = '1' then
          next_curid <= (others => '0');
        else
          if state = C_PORT_SELECT and shift_i = '1' and count_flag = '0' then
            next_curid <= m_bscan_tdo & next_curid(31 downto 1);
          elsif state /= C_PORT_SELECT then
            next_curid <= (others => '0');
          end if;
        end if;
      end if;
    end process CurId_DFF;

    Counter_DFF : process (tck) is
    begin
      if tck'event and tck = '1' then
        if reset = '1' then
          counter    <= (others => '0');
          count_flag <= '0';
        elsif state = C_PORT_SELECT and unsigned(counter) <= X"21" then
          counter    <= std_logic_vector(unsigned(counter) + 1);
          count_flag <= '1';
        elsif state /= C_PORT_SELECT then
          counter    <= (others => '0');
          count_flag <= '0';
        end if;
      end if;
    end process Counter_DFF;

    State_FSM : process (tck) is
    begin
      if tck'event and tck = '1' then
        if reset = '1' then
          state <= C_IDLE;
        elsif sel = '1' then
          if state = C_IDLE then
            state <= C_SWITCH_SELECT;
          elsif (state = C_SWITCH_SELECT or state = C_PORT_SELECT) and update = '1' then
            if shiftreg(31 downto 8) = curid(31 downto 8) then
              if state = C_SWITCH_SELECT and shiftreg(7) = '0' then
                state <= C_PORT_SELECT;
              else
                state <= C_FORWARD;
              end if;
            else
              state <= C_ERROR;
            end if;
          end if;
        else
          state <= C_IDLE;
        end if;
      end if;
    end process State_FSM;

    ShiftReg_DFF : process (tck) is
    begin
      if tck'event and tck = '1' then
        if reset = '1' then
          shiftreg <= (others => '0');
        elsif capture_i = '1' then
          if state = C_ERROR then
            shiftreg <= (others => '0');
          else
            shiftreg <= curid;
          end if;
        elsif shift_i = '1' then
          shiftreg <= tdi & shiftreg(31 downto 1);
        end if;
      end if;
    end process ShiftReg_DFF;

    m_bscanid_en <= '1' when state = C_PORT_SELECT and (shift_i = '1' or capture_i = '1') else '0';

  end generate Using_BSCAN_Switch;

  No_BSCAN_Switch : if (C_USE_BSCAN_SWITCH = 0) or
                       ((C_USE_BSCAN = 2 or C_USE_BSCAN = 3 or C_USE_BSCAN = 4) and
                        (C_TARGET /= VERSAL) and (C_TARGET /= VERSAL_NET)) generate
  begin
    m_bscan_sel     <= sel;
    m_bscan_capture <= capture_i;
    m_bscan_shift   <= shift_i;
    m_bscanid_en    <= bscanid_en;

    tdo             <= m_bscan_tdo;
  end generate No_BSCAN_Switch;

  Use_JTAG_BSCAN : if C_USE_BSCAN /= 3 and C_USE_JTAG_BSCAN > 0 and C_DEBUG_INTERFACE = 0 generate
    constant C_JTAG_BSCAN_ID : std_logic_vector(31 downto 0) := X"04900601";

    signal tap_cnt    : std_logic_vector(7 downto 0) := (others => '0');
    signal tap_cnt_ok : std_logic := '0';
    signal bit_cnt    : std_logic_vector(7 downto 0) := (others => '0');
    signal mode_reg   : std_logic := '0';
    signal tms_reg    : std_logic := '0';
    signal tms_ok     : std_logic := '0';
    signal tck_int    : std_logic := '0';
    signal id_flag    : std_logic := '0';
    signal bscanid    : std_logic_vector(31 downto 0) := C_JTAG_BSCAN_ID;
  begin

    jtag_tck <= tck_int;
    jtag_tdi <= tdi;

    -- tck_int <= tck or not tms_ok;
    BUFG_JTAG_TCK : MB_BUFGCE_1
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        O  => tck_int,
        CE => tms_ok,
        I  => tck
      );

    m_bscan_tdo <= bscanid(0) when m_bscanid_en = '1' else
                   jtag_tdo;

    JTAG_Ctrl : process (tck)
    begin
      if tck'event and tck = '1' then
        if reset = '1' then
          tap_cnt_ok <= '0';
        elsif update_i = '1' and m_bscan_sel = '1' then
          tap_cnt_ok <= '1';
        end if;
        if capture = '1' or update_i = '1' then
          bit_cnt <= (others => '0');
          mode_reg <= '0';
          tms_reg <= '0';
          tms_ok <= '0';
        elsif shift = '1' then
          if tap_cnt_ok = '0' then
            tap_cnt <= tdi & tap_cnt(tap_cnt'high downto 1);
          elsif tms = '1' then
            bit_cnt <= (others => '0');
            mode_reg <= '0';
            tms_reg <= '0';
            tms_ok <= '0';
          elsif bit_cnt < tap_cnt then
            bit_cnt <= std_logic_vector(unsigned(bit_cnt) + 1);
          elsif bit_cnt = tap_cnt then
            bit_cnt <= std_logic_vector(unsigned(bit_cnt) + 1);
            if tdi = '1' then
              mode_reg <= '1';
              tms_ok <= '1';
            end if;
          elsif mode_reg = '0' then
            if tms_ok = '0' then
              tms_reg <= tdi;
            end if;
            tms_ok <= not tms_ok;
          end if;
        end if;
      end if;
    end process JTAG_Ctrl;

    JTAG_TMS_DFF : process (tck)
    begin
      if tck'event and tck = '0' then
        jtag_tms <= tms_reg;
      end if;
    end process JTAG_TMS_DFF;

    JTAG_ID : process (tck)
    begin
      if tck'event and tck = '1' then
        if reset = '1' then
          id_flag <= '0';
          bscanid <= C_JTAG_BSCAN_ID;
        else
          if m_bscanid_en = '0' then
            id_flag <= '0';
            bscanid <= C_JTAG_BSCAN_ID;
          else
            if id_flag = '0' then
              id_flag <= '1';
              bscanid <= C_JTAG_BSCAN_ID;
            else
              bscanid <= tdi & bscanid(31 downto 1);
            end if;
          end if;
        end if;
      end if;
    end process JTAG_ID;

    capture  <= m_bscan_capture;
    shift    <= m_bscan_shift;
    update_i <= update_ii;
  end generate Use_JTAG_BSCAN;

  No_JTAG_BSCAN : if (C_USE_BSCAN /= 3 and C_USE_JTAG_BSCAN = 0) or (C_DEBUG_INTERFACE > 0) generate
  begin
    jtag_tck <= tck;
    jtag_tdi <= tdi;
    jtag_tms <= tms;

    m_bscan_tdo <= jtag_tdo;
  end generate No_JTAG_BSCAN;

  No_Dbg_Reg_Access : if C_DBG_REG_ACCESS = 0 and C_USE_BSCAN /= 3 generate
  begin
    update    <= update_i;

    -- Unused
    jtag_busy <= '0';
  end generate No_Dbg_Reg_Access;

  Use_Dbg_Reg_Access_No_BSCAN : if C_DBG_REG_ACCESS = 1 and C_USE_BSCAN = 3 and C_DEBUG_INTERFACE = 0 generate
  begin
    jtag_busy <= '0';

    -- Unused
    tdi       <= '0';
    reset     <= '0';
    capture   <= '0';
    shift     <= '0';
    sel       <= '0';
    update_i  <= '0';
    update_ii <= '0';
    shift_i   <= '0';
    capture_i <= '0';
    tck       <= '0';
    tms       <= '0';
  end generate Use_Dbg_Reg_Access_No_BSCAN;

  Use_Parallel_Dbg_Reg_Access_No_BSCAN : if C_DBG_REG_ACCESS = 1 and C_USE_BSCAN = 3 and C_DEBUG_INTERFACE > 0 generate
  begin
    update    <= bus2ip_clk;
    jtag_busy <= '0';

    -- Unused
    tdi       <= '0';
    reset     <= '0';
    capture   <= '0';
    shift     <= '0';
    sel       <= '0';
    update_i  <= '0';
    update_ii <= '0';
    shift_i   <= '0';
    capture_i <= '0';
    tck       <= '0';
    tms       <= '0';
  end generate Use_Parallel_Dbg_Reg_Access_No_BSCAN;

  No_BSCAN_No_Dbg_Reg_Access : if C_DBG_REG_ACCESS = 0 and C_USE_BSCAN = 3 generate
  begin
    update    <= '0';
    jtag_busy <= '0';
    tdi       <= '0';
    reset     <= '0';
    capture   <= '0';
    shift     <= '0';
    sel       <= '0';
    update_i  <= '0';
    update_ii <= '0';
    shift_i   <= '0';
    capture_i <= '0';
    tck       <= '0';
    tms       <= '0';
  end generate No_BSCAN_No_Dbg_Reg_Access;

  ---------------------------------------------------------------------------
  -- MDM core
  ---------------------------------------------------------------------------
  MDM_Core_I1 : MDM_Core
    generic map (
      C_TARGET               => C_TARGET,                -- [TARGET_FAMILY_TYPE]
      C_JTAG_CHAIN           => C_JTAG_CHAIN,            -- [integer]
      C_USE_BSCAN            => C_USE_BSCAN,             -- [integer]
      C_DTM_IDCODE           => C_DTM_IDCODE,            -- [integer]
      C_USE_CONFIG_RESET     => C_USE_CONFIG_RESET,      -- [integer]
      C_USE_SRL16            => C_USE_SRL16,             -- [string]
      C_DEBUG_INTERFACE      => C_DEBUG_INTERFACE,       -- [integer]
      C_MB_DBG_PORTS         => C_MB_DBG_PORTS,          -- [integer]
      C_EN_WIDTH             => C_EN_WIDTH,              -- [integer]
      C_DBG_REG_ACCESS       => C_DBG_REG_ACCESS,        -- [integer]
      C_REG_NUM_CE           => C_REG_NUM_CE,            -- [integer]
      C_REG_DATA_WIDTH       => C_REG_DATA_WIDTH,        -- [integer]
      C_DBG_MEM_ACCESS       => C_DBG_MEM_ACCESS,        -- [integer]
      C_S_AXI_ADDR_WIDTH     => C_S_AXI_ADDR_WIDTH,      -- [integer]
      C_S_AXI_ACLK_FREQ_HZ   => C_S_AXI_ACLK_FREQ_HZ,    -- [integer]
      C_M_AXI_ADDR_WIDTH     => C_M_AXI_ADDR_WIDTH,      -- [integer]
      C_M_AXI_DATA_WIDTH     => C_M_AXI_DATA_WIDTH,      -- [integer]
      C_USE_CROSS_TRIGGER    => C_USE_CROSS_TRIGGER,     -- [integer]
      C_EXT_TRIG_RESET_VALUE => C_EXT_TRIG_RESET_VALUE,  -- [std_logic_vector]
      C_TRACE_OUTPUT         => C_TRACE_OUTPUT,          -- [integer]
      C_TRACE_DATA_WIDTH     => C_TRACE_DATA_WIDTH,      -- [integer]
      C_TRACE_ASYNC_RESET    => C_TRACE_ASYNC_RESET,     -- [integer]
      C_TRACE_CLK_FREQ_HZ    => C_TRACE_CLK_FREQ_HZ,     -- [integer]
      C_TRACE_CLK_OUT_PHASE  => C_TRACE_CLK_OUT_PHASE,   -- [integer]
      C_USE_UART             => C_USE_UART,              -- [integer]
      C_UART_WIDTH           => 8,                       -- [integer]
      C_M_AXIS_DATA_WIDTH    => C_M_AXIS_DATA_WIDTH,     -- [integer]
      C_M_AXIS_ID_WIDTH      => C_M_AXIS_ID_WIDTH        -- [integer]
    )
    port map (
      -- Global signals
      Config_Reset    => Config_Reset,    -- [in  std_logic]
      Scan_Reset_Sel  => Scan_Reset_Sel,  -- [in  std_logic]
      Scan_Reset      => Scan_Reset,      -- [in  std_logic]
      Scan_En         => Scan_En,         -- [in  std_logic]

      M_AXIS_ACLK     => M_AXIS_ACLK,     -- [in  std_logic]
      M_AXIS_ARESETN  => M_AXIS_ARESETN,  -- [in  std_logic]

      Interrupt       => Interrupt,       -- [out std_logic]
      Debug_SYS_Rst   => Debug_SYS_Rst,   -- [out std_logic]

      -- Debug Register Access signals
      DbgReg_DRCK   => open,              -- [out std_logic]
      DbgReg_UPDATE => open,              -- [out std_logic]
      DbgReg_Select => open,              -- [out std_logic]
      JTAG_Busy     => jtag_busy,         -- [in  std_logic]
      S_AXI_AWADDR  => S_AXI_AWADDR,      -- [in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0)]
      S_AXI_ARADDR  => S_AXI_ARADDR,      -- [in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0)]

      -- AXI IPIC signals
      bus2ip_clk    => bus2ip_clk_i,
      bus2ip_resetn => bus2ip_resetn,
      bus2ip_addr   => bus2ip_addr,
      bus2ip_data   => bus2ip_data(C_REG_DATA_WIDTH-1 downto 0),
      bus2ip_rdce   => bus2ip_rdce(C_REG_NUM_CE-1 downto 0),
      bus2ip_wrce   => bus2ip_wrce(C_REG_NUM_CE-1 downto 0),
      ip2bus_rdack  => ip2bus_rdack,
      ip2bus_wrack  => ip2bus_wrack,
      ip2bus_error  => ip2bus_error,
      ip2bus_data   => ip2bus_data(C_REG_DATA_WIDTH-1 downto 0),

      -- Bus Master signals
      MB_Debug_Enabled   => mb_debug_enabled,

      M_AXI_ACLK         => M_AXI_ACLK,
      M_AXI_ARESETn      => M_AXI_ARESETn,

      Master_rd_start    => master_rd_start,
      Master_rd_addr     => master_rd_addr,
      Master_rd_len      => master_rd_len,
      Master_rd_size     => master_rd_size,
      Master_rd_excl     => master_rd_excl,
      Master_rd_idle     => master_rd_idle,
      Master_rd_resp     => master_rd_resp,
      Master_wr_start    => master_wr_start,
      Master_wr_addr     => master_wr_addr,
      Master_wr_len      => master_wr_len,
      Master_wr_size     => master_wr_size,
      Master_wr_excl     => master_wr_excl,
      Master_wr_idle     => master_wr_idle,
      Master_wr_resp     => master_wr_resp,
      Master_data_rd     => master_data_rd,
      Master_data_out    => master_data_out,
      Master_data_exists => master_data_exists,
      Master_data_wr     => master_data_wr,
      Master_data_in     => master_data_in,
      Master_data_empty  => master_data_empty,

      Master_dwr_addr    => master_dwr_addr,
      Master_dwr_len     => master_dwr_len,
      Master_dwr_data    => master_dwr_data,
      Master_dwr_start   => master_dwr_start,
      Master_dwr_next    => master_dwr_next,
      Master_dwr_done    => master_dwr_done,
      Master_dwr_resp    => master_dwr_resp,

      M_AXI_AWADDR       => m_axi_awaddr_i,
      M_AXI_AWVALID      => m_axi_awvalid_i,
      M_AXI_AWREADY      => m_axi_awready_trace,
      M_AXI_WDATA        => m_axi_wdata_i,
      M_AXI_WVALID       => m_axi_wvalid_i,
      M_AXI_WREADY       => m_axi_wready_trace,
      M_AXI_BRESP        => m_axi_bresp_trace,
      M_AXI_BVALID       => m_axi_bvalid_trace,
      M_AXI_BREADY       => m_axi_bready_i,
      M_AXI_ARADDR       => m_axi_araddr_i,
      M_AXI_ARVALID      => m_axi_arvalid_i,
      M_AXI_ARREADY      => m_axi_arready_trace,
      M_AXI_RDATA        => m_axi_rdata_trace,
      M_AXI_RRESP        => m_axi_rresp_trace,
      M_AXI_RVALID       => m_axi_rvalid_trace,
      M_AXI_RREADY       => m_axi_rready_i,

      -- JTAG signals
      JTAG_TDI           => jtag_tdi,           -- [in  std_logic]
      TMS                => jtag_tms,           -- [in  std_logic]
      TCK                => jtag_tck,           -- [in  std_logic]
      JTAG_RESET         => reset,              -- [in  std_logic]
      UPDATE             => update,             -- [in  std_logic]
      JTAG_SHIFT         => shift,              -- [in  std_logic]
      JTAG_CAPTURE       => capture,            -- [in  std_logic]
      JTAG_SEL           => sel,                -- [in  std_logic]
      DRCK               => '0',                -- [in  std_logic]
      JTAG_TDO           => jtag_tdo,           -- [out std_logic]

      -- External Trace output
      TRACE_CLK_OUT      => TRACE_CLK_OUT,      -- [out std_logic]
      TRACE_CLK          => TRACE_CLK,          -- [in  std_logic]
      TRACE_CTL          => TRACE_CTL,          -- [out std_logic]
      TRACE_DATA         => TRACE_DATA,         -- [out std_logic_vector(C_TRACE_DATA_WIDTH-1 downto 0)]

      -- MicroBlaze Debug Signals
      Dbg_Disable_0      => Dbg_Disable_0,      -- [out std_logic]
      Dbg_Clk_0          => Dbg_Clk_0,          -- [out std_logic]
      Dbg_TDI_0          => Dbg_TDI_0,          -- [out std_logic]
      Dbg_TDO_0          => Dbg_TDO_0,          -- [in  std_logic]
      Dbg_Reg_En_0       => Dbg_Reg_En_0,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_0      => Dbg_Capture_0,      -- [out std_logic]
      Dbg_Shift_0        => Dbg_Shift_0,        -- [out std_logic]
      Dbg_Update_0       => Dbg_Update_0,       -- [out std_logic]
      Dbg_Rst_0          => Dbg_Rst_0,          -- [out std_logic]
      Dbg_Trig_In_0      => Dbg_Trig_In_0,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_0  => Dbg_Trig_Ack_In_0,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_0     => Dbg_Trig_Out_0,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_0 => Dbg_Trig_Ack_Out_0, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_0        => Dbg_TrClk_0,        -- [out std_logic]
      Dbg_TrData_0       => Dbg_TrData_0,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_0      => Dbg_TrReady_0,      -- [out std_logic]
      Dbg_TrValid_0      => Dbg_TrValid_0,      -- [in  std_logic]
      Dbg_AWADDR_0       => Dbg_AWADDR_0,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_0      => Dbg_AWVALID_0,      -- [out std_logic]
      Dbg_AWREADY_0      => Dbg_AWREADY_0,      -- [in  std_logic]
      Dbg_WDATA_0        => Dbg_WDATA_0,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_0       => Dbg_WVALID_0,       -- [out std_logic]
      Dbg_WREADY_0       => Dbg_WREADY_0,       -- [in  std_logic]
      Dbg_BRESP_0        => Dbg_BRESP_0,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_0       => Dbg_BVALID_0,       -- [in  std_logic]
      Dbg_BREADY_0       => Dbg_BREADY_0,       -- [out std_logic]
      Dbg_ARADDR_0       => Dbg_ARADDR_0,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_0      => Dbg_ARVALID_0,      -- [out std_logic]
      Dbg_ARREADY_0      => Dbg_ARREADY_0,      -- [in  std_logic]
      Dbg_RDATA_0        => Dbg_RDATA_0,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_0        => Dbg_RRESP_0,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_0       => Dbg_RVALID_0,       -- [in  std_logic]
      Dbg_RREADY_0       => Dbg_RREADY_0,       -- [out std_logic]

      Dbg_Disable_1      => Dbg_Disable_1,      -- [out std_logic]
      Dbg_Clk_1          => Dbg_Clk_1,          -- [out std_logic]
      Dbg_TDI_1          => Dbg_TDI_1,          -- [out std_logic]
      Dbg_TDO_1          => Dbg_TDO_1,          -- [in  std_logic]
      Dbg_Reg_En_1       => Dbg_Reg_En_1,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_1      => Dbg_Capture_1,      -- [out std_logic]
      Dbg_Shift_1        => Dbg_Shift_1,        -- [out std_logic]
      Dbg_Update_1       => Dbg_Update_1,       -- [out std_logic]
      Dbg_Rst_1          => Dbg_Rst_1,          -- [out std_logic]
      Dbg_Trig_In_1      => Dbg_Trig_In_1,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_1  => Dbg_Trig_Ack_In_1,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_1     => Dbg_Trig_Out_1,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_1 => Dbg_Trig_Ack_Out_1, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_1        => Dbg_TrClk_1,        -- [out std_logic]
      Dbg_TrData_1       => Dbg_TrData_1,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_1      => Dbg_TrReady_1,      -- [out std_logic]
      Dbg_TrValid_1      => Dbg_TrValid_1,      -- [in  std_logic]
      Dbg_AWADDR_1       => Dbg_AWADDR_1,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_1      => Dbg_AWVALID_1,      -- [out std_logic]
      Dbg_AWREADY_1      => Dbg_AWREADY_1,      -- [in  std_logic]
      Dbg_WDATA_1        => Dbg_WDATA_1,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_1       => Dbg_WVALID_1,       -- [out std_logic]
      Dbg_WREADY_1       => Dbg_WREADY_1,       -- [in  std_logic]
      Dbg_BRESP_1        => Dbg_BRESP_1,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_1       => Dbg_BVALID_1,       -- [in  std_logic]
      Dbg_BREADY_1       => Dbg_BREADY_1,       -- [out std_logic]
      Dbg_ARADDR_1       => Dbg_ARADDR_1,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_1      => Dbg_ARVALID_1,      -- [out std_logic]
      Dbg_ARREADY_1      => Dbg_ARREADY_1,      -- [in  std_logic]
      Dbg_RDATA_1        => Dbg_RDATA_1,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_1        => Dbg_RRESP_1,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_1       => Dbg_RVALID_1,       -- [in  std_logic]
      Dbg_RREADY_1       => Dbg_RREADY_1,       -- [out std_logic]

      Dbg_Disable_2      => Dbg_Disable_2,      -- [out std_logic]
      Dbg_Clk_2          => Dbg_Clk_2,          -- [out std_logic]
      Dbg_TDI_2          => Dbg_TDI_2,          -- [out std_logic]
      Dbg_TDO_2          => Dbg_TDO_2,          -- [in  std_logic]
      Dbg_Reg_En_2       => Dbg_Reg_En_2,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_2      => Dbg_Capture_2,      -- [out std_logic]
      Dbg_Shift_2        => Dbg_Shift_2,        -- [out std_logic]
      Dbg_Update_2       => Dbg_Update_2,       -- [out std_logic]
      Dbg_Rst_2          => Dbg_Rst_2,          -- [out std_logic]
      Dbg_Trig_In_2      => Dbg_Trig_In_2,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_2  => Dbg_Trig_Ack_In_2,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_2     => Dbg_Trig_Out_2,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_2 => Dbg_Trig_Ack_Out_2, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_2        => Dbg_TrClk_2,        -- [out std_logic]
      Dbg_TrData_2       => Dbg_TrData_2,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_2      => Dbg_TrReady_2,      -- [out std_logic]
      Dbg_TrValid_2      => Dbg_TrValid_2,      -- [in  std_logic]
      Dbg_AWADDR_2       => Dbg_AWADDR_2,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_2      => Dbg_AWVALID_2,      -- [out std_logic]
      Dbg_AWREADY_2      => Dbg_AWREADY_2,      -- [in  std_logic]
      Dbg_WDATA_2        => Dbg_WDATA_2,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_2       => Dbg_WVALID_2,       -- [out std_logic]
      Dbg_WREADY_2       => Dbg_WREADY_2,       -- [in  std_logic]
      Dbg_BRESP_2        => Dbg_BRESP_2,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_2       => Dbg_BVALID_2,       -- [in  std_logic]
      Dbg_BREADY_2       => Dbg_BREADY_2,       -- [out std_logic]
      Dbg_ARADDR_2       => Dbg_ARADDR_2,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_2      => Dbg_ARVALID_2,      -- [out std_logic]
      Dbg_ARREADY_2      => Dbg_ARREADY_2,      -- [in  std_logic]
      Dbg_RDATA_2        => Dbg_RDATA_2,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_2        => Dbg_RRESP_2,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_2       => Dbg_RVALID_2,       -- [in  std_logic]
      Dbg_RREADY_2       => Dbg_RREADY_2,       -- [out std_logic]

      Dbg_Disable_3      => Dbg_Disable_3,      -- [out std_logic]
      Dbg_Clk_3          => Dbg_Clk_3,          -- [out std_logic]
      Dbg_TDI_3          => Dbg_TDI_3,          -- [out std_logic]
      Dbg_TDO_3          => Dbg_TDO_3,          -- [in  std_logic]
      Dbg_Reg_En_3       => Dbg_Reg_En_3,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_3      => Dbg_Capture_3,      -- [out std_logic]
      Dbg_Shift_3        => Dbg_Shift_3,        -- [out std_logic]
      Dbg_Update_3       => Dbg_Update_3,       -- [out std_logic]
      Dbg_Rst_3          => Dbg_Rst_3,          -- [out std_logic]
      Dbg_Trig_In_3      => Dbg_Trig_In_3,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_3  => Dbg_Trig_Ack_In_3,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_3     => Dbg_Trig_Out_3,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_3 => Dbg_Trig_Ack_Out_3, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_3        => Dbg_TrClk_3,        -- [out std_logic]
      Dbg_TrData_3       => Dbg_TrData_3,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_3      => Dbg_TrReady_3,      -- [out std_logic]
      Dbg_TrValid_3      => Dbg_TrValid_3,      -- [in  std_logic]
      Dbg_AWADDR_3       => Dbg_AWADDR_3,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_3      => Dbg_AWVALID_3,      -- [out std_logic]
      Dbg_AWREADY_3      => Dbg_AWREADY_3,      -- [in  std_logic]
      Dbg_WDATA_3        => Dbg_WDATA_3,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_3       => Dbg_WVALID_3,       -- [out std_logic]
      Dbg_WREADY_3       => Dbg_WREADY_3,       -- [in  std_logic]
      Dbg_BRESP_3        => Dbg_BRESP_3,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_3       => Dbg_BVALID_3,       -- [in  std_logic]
      Dbg_BREADY_3       => Dbg_BREADY_3,       -- [out std_logic]
      Dbg_ARADDR_3       => Dbg_ARADDR_3,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_3      => Dbg_ARVALID_3,      -- [out std_logic]
      Dbg_ARREADY_3      => Dbg_ARREADY_3,      -- [in  std_logic]
      Dbg_RDATA_3        => Dbg_RDATA_3,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_3        => Dbg_RRESP_3,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_3       => Dbg_RVALID_3,       -- [in  std_logic]
      Dbg_RREADY_3       => Dbg_RREADY_3,       -- [out std_logic]

      Dbg_Disable_4      => Dbg_Disable_4,      -- [out std_logic]
      Dbg_Clk_4          => Dbg_Clk_4,          -- [out std_logic]
      Dbg_TDI_4          => Dbg_TDI_4,          -- [out std_logic]
      Dbg_TDO_4          => Dbg_TDO_4,          -- [in  std_logic]
      Dbg_Reg_En_4       => Dbg_Reg_En_4,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_4      => Dbg_Capture_4,      -- [out std_logic]
      Dbg_Shift_4        => Dbg_Shift_4,        -- [out std_logic]
      Dbg_Update_4       => Dbg_Update_4,       -- [out std_logic]
      Dbg_Rst_4          => Dbg_Rst_4,          -- [out std_logic]
      Dbg_Trig_In_4      => Dbg_Trig_In_4,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_4  => Dbg_Trig_Ack_In_4,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_4     => Dbg_Trig_Out_4,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_4 => Dbg_Trig_Ack_Out_4, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_4        => Dbg_TrClk_4,        -- [out std_logic]
      Dbg_TrData_4       => Dbg_TrData_4,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_4      => Dbg_TrReady_4,      -- [out std_logic]
      Dbg_TrValid_4      => Dbg_TrValid_4,      -- [in  std_logic]
      Dbg_AWADDR_4       => Dbg_AWADDR_4,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_4      => Dbg_AWVALID_4,      -- [out std_logic]
      Dbg_AWREADY_4      => Dbg_AWREADY_4,      -- [in  std_logic]
      Dbg_WDATA_4        => Dbg_WDATA_4,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_4       => Dbg_WVALID_4,       -- [out std_logic]
      Dbg_WREADY_4       => Dbg_WREADY_4,       -- [in  std_logic]
      Dbg_BRESP_4        => Dbg_BRESP_4,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_4       => Dbg_BVALID_4,       -- [in  std_logic]
      Dbg_BREADY_4       => Dbg_BREADY_4,       -- [out std_logic]
      Dbg_ARADDR_4       => Dbg_ARADDR_4,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_4      => Dbg_ARVALID_4,      -- [out std_logic]
      Dbg_ARREADY_4      => Dbg_ARREADY_4,      -- [in  std_logic]
      Dbg_RDATA_4        => Dbg_RDATA_4,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_4        => Dbg_RRESP_4,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_4       => Dbg_RVALID_4,       -- [in  std_logic]
      Dbg_RREADY_4       => Dbg_RREADY_4,       -- [out std_logic]

      Dbg_Disable_5      => Dbg_Disable_5,      -- [out std_logic]
      Dbg_Clk_5          => Dbg_Clk_5,          -- [out std_logic]
      Dbg_TDI_5          => Dbg_TDI_5,          -- [out std_logic]
      Dbg_TDO_5          => Dbg_TDO_5,          -- [in  std_logic]
      Dbg_Reg_En_5       => Dbg_Reg_En_5,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_5      => Dbg_Capture_5,      -- [out std_logic]
      Dbg_Shift_5        => Dbg_Shift_5,        -- [out std_logic]
      Dbg_Update_5       => Dbg_Update_5,       -- [out std_logic]
      Dbg_Rst_5          => Dbg_Rst_5,          -- [out std_logic]
      Dbg_Trig_In_5      => Dbg_Trig_In_5,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_5  => Dbg_Trig_Ack_In_5,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_5     => Dbg_Trig_Out_5,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_5 => Dbg_Trig_Ack_Out_5, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_5        => Dbg_TrClk_5,        -- [out std_logic]
      Dbg_TrData_5       => Dbg_TrData_5,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_5      => Dbg_TrReady_5,      -- [out std_logic]
      Dbg_TrValid_5      => Dbg_TrValid_5,      -- [in  std_logic]
      Dbg_AWADDR_5       => Dbg_AWADDR_5,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_5      => Dbg_AWVALID_5,      -- [out std_logic]
      Dbg_AWREADY_5      => Dbg_AWREADY_5,      -- [in  std_logic]
      Dbg_WDATA_5        => Dbg_WDATA_5,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_5       => Dbg_WVALID_5,       -- [out std_logic]
      Dbg_WREADY_5       => Dbg_WREADY_5,       -- [in  std_logic]
      Dbg_BRESP_5        => Dbg_BRESP_5,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_5       => Dbg_BVALID_5,       -- [in  std_logic]
      Dbg_BREADY_5       => Dbg_BREADY_5,       -- [out std_logic]
      Dbg_ARADDR_5       => Dbg_ARADDR_5,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_5      => Dbg_ARVALID_5,      -- [out std_logic]
      Dbg_ARREADY_5      => Dbg_ARREADY_5,      -- [in  std_logic]
      Dbg_RDATA_5        => Dbg_RDATA_5,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_5        => Dbg_RRESP_5,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_5       => Dbg_RVALID_5,       -- [in  std_logic]
      Dbg_RREADY_5       => Dbg_RREADY_5,       -- [out std_logic]

      Dbg_Disable_6      => Dbg_Disable_6,      -- [out std_logic]
      Dbg_Clk_6          => Dbg_Clk_6,          -- [out std_logic]
      Dbg_TDI_6          => Dbg_TDI_6,          -- [out std_logic]
      Dbg_TDO_6          => Dbg_TDO_6,          -- [in  std_logic]
      Dbg_Reg_En_6       => Dbg_Reg_En_6,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_6      => Dbg_Capture_6,      -- [out std_logic]
      Dbg_Shift_6        => Dbg_Shift_6,        -- [out std_logic]
      Dbg_Update_6       => Dbg_Update_6,       -- [out std_logic]
      Dbg_Rst_6          => Dbg_Rst_6,          -- [out std_logic]
      Dbg_Trig_In_6      => Dbg_Trig_In_6,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_6  => Dbg_Trig_Ack_In_6,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_6     => Dbg_Trig_Out_6,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_6 => Dbg_Trig_Ack_Out_6, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_6        => Dbg_TrClk_6,        -- [out std_logic]
      Dbg_TrData_6       => Dbg_TrData_6,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_6      => Dbg_TrReady_6,      -- [out std_logic]
      Dbg_TrValid_6      => Dbg_TrValid_6,      -- [in  std_logic]
      Dbg_AWADDR_6       => Dbg_AWADDR_6,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_6      => Dbg_AWVALID_6,      -- [out std_logic]
      Dbg_AWREADY_6      => Dbg_AWREADY_6,      -- [in  std_logic]
      Dbg_WDATA_6        => Dbg_WDATA_6,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_6       => Dbg_WVALID_6,       -- [out std_logic]
      Dbg_WREADY_6       => Dbg_WREADY_6,       -- [in  std_logic]
      Dbg_BRESP_6        => Dbg_BRESP_6,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_6       => Dbg_BVALID_6,       -- [in  std_logic]
      Dbg_BREADY_6       => Dbg_BREADY_6,       -- [out std_logic]
      Dbg_ARADDR_6       => Dbg_ARADDR_6,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_6      => Dbg_ARVALID_6,      -- [out std_logic]
      Dbg_ARREADY_6      => Dbg_ARREADY_6,      -- [in  std_logic]
      Dbg_RDATA_6        => Dbg_RDATA_6,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_6        => Dbg_RRESP_6,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_6       => Dbg_RVALID_6,       -- [in  std_logic]
      Dbg_RREADY_6       => Dbg_RREADY_6,       -- [out std_logic]

      Dbg_Disable_7      => Dbg_Disable_7,      -- [out std_logic]
      Dbg_Clk_7          => Dbg_Clk_7,          -- [out std_logic]
      Dbg_TDI_7          => Dbg_TDI_7,          -- [out std_logic]
      Dbg_TDO_7          => Dbg_TDO_7,          -- [in  std_logic]
      Dbg_Reg_En_7       => Dbg_Reg_En_7,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_7      => Dbg_Capture_7,      -- [out std_logic]
      Dbg_Shift_7        => Dbg_Shift_7,        -- [out std_logic]
      Dbg_Update_7       => Dbg_Update_7,       -- [out std_logic]
      Dbg_Rst_7          => Dbg_Rst_7,          -- [out std_logic]
      Dbg_Trig_In_7      => Dbg_Trig_In_7,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_7  => Dbg_Trig_Ack_In_7,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_7     => Dbg_Trig_Out_7,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_7 => Dbg_Trig_Ack_Out_7, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_7        => Dbg_TrClk_7,        -- [out std_logic]
      Dbg_TrData_7       => Dbg_TrData_7,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_7      => Dbg_TrReady_7,      -- [out std_logic]
      Dbg_TrValid_7      => Dbg_TrValid_7,      -- [in  std_logic]
      Dbg_AWADDR_7       => Dbg_AWADDR_7,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_7      => Dbg_AWVALID_7,      -- [out std_logic]
      Dbg_AWREADY_7      => Dbg_AWREADY_7,      -- [in  std_logic]
      Dbg_WDATA_7        => Dbg_WDATA_7,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_7       => Dbg_WVALID_7,       -- [out std_logic]
      Dbg_WREADY_7       => Dbg_WREADY_7,       -- [in  std_logic]
      Dbg_BRESP_7        => Dbg_BRESP_7,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_7       => Dbg_BVALID_7,       -- [in  std_logic]
      Dbg_BREADY_7       => Dbg_BREADY_7,       -- [out std_logic]
      Dbg_ARADDR_7       => Dbg_ARADDR_7,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_7      => Dbg_ARVALID_7,      -- [out std_logic]
      Dbg_ARREADY_7      => Dbg_ARREADY_7,      -- [in  std_logic]
      Dbg_RDATA_7        => Dbg_RDATA_7,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_7        => Dbg_RRESP_7,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_7       => Dbg_RVALID_7,       -- [in  std_logic]
      Dbg_RREADY_7       => Dbg_RREADY_7,       -- [out std_logic]

      Dbg_Disable_8      => Dbg_Disable_8,      -- [out std_logic]
      Dbg_Clk_8          => Dbg_Clk_8,          -- [out std_logic]
      Dbg_TDI_8          => Dbg_TDI_8,          -- [out std_logic]
      Dbg_TDO_8          => Dbg_TDO_8,          -- [in  std_logic]
      Dbg_Reg_En_8       => Dbg_Reg_En_8,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_8      => Dbg_Capture_8,      -- [out std_logic]
      Dbg_Shift_8        => Dbg_Shift_8,        -- [out std_logic]
      Dbg_Update_8       => Dbg_Update_8,       -- [out std_logic]
      Dbg_Rst_8          => Dbg_Rst_8,          -- [out std_logic]
      Dbg_Trig_In_8      => Dbg_Trig_In_8,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_8  => Dbg_Trig_Ack_In_8,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_8     => Dbg_Trig_Out_8,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_8 => Dbg_Trig_Ack_Out_8, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_8        => Dbg_TrClk_8,        -- [out std_logic]
      Dbg_TrData_8       => Dbg_TrData_8,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_8      => Dbg_TrReady_8,      -- [out std_logic]
      Dbg_TrValid_8      => Dbg_TrValid_8,      -- [in  std_logic]
      Dbg_AWADDR_8       => Dbg_AWADDR_8,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_8      => Dbg_AWVALID_8,      -- [out std_logic]
      Dbg_AWREADY_8      => Dbg_AWREADY_8,      -- [in  std_logic]
      Dbg_WDATA_8        => Dbg_WDATA_8,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_8       => Dbg_WVALID_8,       -- [out std_logic]
      Dbg_WREADY_8       => Dbg_WREADY_8,       -- [in  std_logic]
      Dbg_BRESP_8        => Dbg_BRESP_8,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_8       => Dbg_BVALID_8,       -- [in  std_logic]
      Dbg_BREADY_8       => Dbg_BREADY_8,       -- [out std_logic]
      Dbg_ARADDR_8       => Dbg_ARADDR_8,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_8      => Dbg_ARVALID_8,      -- [out std_logic]
      Dbg_ARREADY_8      => Dbg_ARREADY_8,      -- [in  std_logic]
      Dbg_RDATA_8        => Dbg_RDATA_8,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_8        => Dbg_RRESP_8,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_8       => Dbg_RVALID_8,       -- [in  std_logic]
      Dbg_RREADY_8       => Dbg_RREADY_8,       -- [out std_logic]

      Dbg_Disable_9      => Dbg_Disable_9,      -- [out std_logic]
      Dbg_Clk_9          => Dbg_Clk_9,          -- [out std_logic]
      Dbg_TDI_9          => Dbg_TDI_9,          -- [out std_logic]
      Dbg_TDO_9          => Dbg_TDO_9,          -- [in  std_logic]
      Dbg_Reg_En_9       => Dbg_Reg_En_9,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_9      => Dbg_Capture_9,      -- [out std_logic]
      Dbg_Shift_9        => Dbg_Shift_9,        -- [out std_logic]
      Dbg_Update_9       => Dbg_Update_9,       -- [out std_logic]
      Dbg_Rst_9          => Dbg_Rst_9,          -- [out std_logic]
      Dbg_Trig_In_9      => Dbg_Trig_In_9,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_9  => Dbg_Trig_Ack_In_9,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_9     => Dbg_Trig_Out_9,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_9 => Dbg_Trig_Ack_Out_9, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_9        => Dbg_TrClk_9,        -- [out std_logic]
      Dbg_TrData_9       => Dbg_TrData_9,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_9      => Dbg_TrReady_9,      -- [out std_logic]
      Dbg_TrValid_9      => Dbg_TrValid_9,      -- [in  std_logic]
      Dbg_AWADDR_9       => Dbg_AWADDR_9,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_9      => Dbg_AWVALID_9,      -- [out std_logic]
      Dbg_AWREADY_9      => Dbg_AWREADY_9,      -- [in  std_logic]
      Dbg_WDATA_9        => Dbg_WDATA_9,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_9       => Dbg_WVALID_9,       -- [out std_logic]
      Dbg_WREADY_9       => Dbg_WREADY_9,       -- [in  std_logic]
      Dbg_BRESP_9        => Dbg_BRESP_9,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_9       => Dbg_BVALID_9,       -- [in  std_logic]
      Dbg_BREADY_9       => Dbg_BREADY_9,       -- [out std_logic]
      Dbg_ARADDR_9       => Dbg_ARADDR_9,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_9      => Dbg_ARVALID_9,      -- [out std_logic]
      Dbg_ARREADY_9      => Dbg_ARREADY_9,      -- [in  std_logic]
      Dbg_RDATA_9        => Dbg_RDATA_9,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_9        => Dbg_RRESP_9,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_9       => Dbg_RVALID_9,       -- [in  std_logic]
      Dbg_RREADY_9       => Dbg_RREADY_9,       -- [out std_logic]

      Dbg_Disable_10      => Dbg_Disable_10,      -- [out std_logic]
      Dbg_Clk_10          => Dbg_Clk_10,          -- [out std_logic]
      Dbg_TDI_10          => Dbg_TDI_10,          -- [out std_logic]
      Dbg_TDO_10          => Dbg_TDO_10,          -- [in  std_logic]
      Dbg_Reg_En_10       => Dbg_Reg_En_10,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_10      => Dbg_Capture_10,      -- [out std_logic]
      Dbg_Shift_10        => Dbg_Shift_10,        -- [out std_logic]
      Dbg_Update_10       => Dbg_Update_10,       -- [out std_logic]
      Dbg_Rst_10          => Dbg_Rst_10,          -- [out std_logic]
      Dbg_Trig_In_10      => Dbg_Trig_In_10,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_10  => Dbg_Trig_Ack_In_10,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_10     => Dbg_Trig_Out_10,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_10 => Dbg_Trig_Ack_Out_10, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_10        => Dbg_TrClk_10,        -- [out std_logic]
      Dbg_TrData_10       => Dbg_TrData_10,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_10      => Dbg_TrReady_10,      -- [out std_logic]
      Dbg_TrValid_10      => Dbg_TrValid_10,      -- [in  std_logic]
      Dbg_AWADDR_10       => Dbg_AWADDR_10,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_10      => Dbg_AWVALID_10,      -- [out std_logic]
      Dbg_AWREADY_10      => Dbg_AWREADY_10,      -- [in  std_logic]
      Dbg_WDATA_10        => Dbg_WDATA_10,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_10       => Dbg_WVALID_10,       -- [out std_logic]
      Dbg_WREADY_10       => Dbg_WREADY_10,       -- [in  std_logic]
      Dbg_BRESP_10        => Dbg_BRESP_10,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_10       => Dbg_BVALID_10,       -- [in  std_logic]
      Dbg_BREADY_10       => Dbg_BREADY_10,       -- [out std_logic]
      Dbg_ARADDR_10       => Dbg_ARADDR_10,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_10      => Dbg_ARVALID_10,      -- [out std_logic]
      Dbg_ARREADY_10      => Dbg_ARREADY_10,      -- [in  std_logic]
      Dbg_RDATA_10        => Dbg_RDATA_10,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_10        => Dbg_RRESP_10,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_10       => Dbg_RVALID_10,       -- [in  std_logic]
      Dbg_RREADY_10       => Dbg_RREADY_10,       -- [out std_logic]

      Dbg_Disable_11      => Dbg_Disable_11,      -- [out std_logic]
      Dbg_Clk_11          => Dbg_Clk_11,          -- [out std_logic]
      Dbg_TDI_11          => Dbg_TDI_11,          -- [out std_logic]
      Dbg_TDO_11          => Dbg_TDO_11,          -- [in  std_logic]
      Dbg_Reg_En_11       => Dbg_Reg_En_11,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_11      => Dbg_Capture_11,      -- [out std_logic]
      Dbg_Shift_11        => Dbg_Shift_11,        -- [out std_logic]
      Dbg_Update_11       => Dbg_Update_11,       -- [out std_logic]
      Dbg_Rst_11          => Dbg_Rst_11,          -- [out std_logic]
      Dbg_Trig_In_11      => Dbg_Trig_In_11,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_11  => Dbg_Trig_Ack_In_11,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_11     => Dbg_Trig_Out_11,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_11 => Dbg_Trig_Ack_Out_11, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_11        => Dbg_TrClk_11,        -- [out std_logic]
      Dbg_TrData_11       => Dbg_TrData_11,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_11      => Dbg_TrReady_11,      -- [out std_logic]
      Dbg_TrValid_11      => Dbg_TrValid_11,      -- [in  std_logic]
      Dbg_AWADDR_11       => Dbg_AWADDR_11,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_11      => Dbg_AWVALID_11,      -- [out std_logic]
      Dbg_AWREADY_11      => Dbg_AWREADY_11,      -- [in  std_logic]
      Dbg_WDATA_11        => Dbg_WDATA_11,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_11       => Dbg_WVALID_11,       -- [out std_logic]
      Dbg_WREADY_11       => Dbg_WREADY_11,       -- [in  std_logic]
      Dbg_BRESP_11        => Dbg_BRESP_11,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_11       => Dbg_BVALID_11,       -- [in  std_logic]
      Dbg_BREADY_11       => Dbg_BREADY_11,       -- [out std_logic]
      Dbg_ARADDR_11       => Dbg_ARADDR_11,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_11      => Dbg_ARVALID_11,      -- [out std_logic]
      Dbg_ARREADY_11      => Dbg_ARREADY_11,      -- [in  std_logic]
      Dbg_RDATA_11        => Dbg_RDATA_11,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_11        => Dbg_RRESP_11,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_11       => Dbg_RVALID_11,       -- [in  std_logic]
      Dbg_RREADY_11       => Dbg_RREADY_11,       -- [out std_logic]

      Dbg_Disable_12      => Dbg_Disable_12,      -- [out std_logic]
      Dbg_Clk_12          => Dbg_Clk_12,          -- [out std_logic]
      Dbg_TDI_12          => Dbg_TDI_12,          -- [out std_logic]
      Dbg_TDO_12          => Dbg_TDO_12,          -- [in  std_logic]
      Dbg_Reg_En_12       => Dbg_Reg_En_12,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_12      => Dbg_Capture_12,      -- [out std_logic]
      Dbg_Shift_12        => Dbg_Shift_12,        -- [out std_logic]
      Dbg_Update_12       => Dbg_Update_12,       -- [out std_logic]
      Dbg_Rst_12          => Dbg_Rst_12,          -- [out std_logic]
      Dbg_Trig_In_12      => Dbg_Trig_In_12,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_12  => Dbg_Trig_Ack_In_12,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_12     => Dbg_Trig_Out_12,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_12 => Dbg_Trig_Ack_Out_12, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_12        => Dbg_TrClk_12,        -- [out std_logic]
      Dbg_TrData_12       => Dbg_TrData_12,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_12      => Dbg_TrReady_12,      -- [out std_logic]
      Dbg_TrValid_12      => Dbg_TrValid_12,      -- [in  std_logic]
      Dbg_AWADDR_12       => Dbg_AWADDR_12,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_12      => Dbg_AWVALID_12,      -- [out std_logic]
      Dbg_AWREADY_12      => Dbg_AWREADY_12,      -- [in  std_logic]
      Dbg_WDATA_12        => Dbg_WDATA_12,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_12       => Dbg_WVALID_12,       -- [out std_logic]
      Dbg_WREADY_12       => Dbg_WREADY_12,       -- [in  std_logic]
      Dbg_BRESP_12        => Dbg_BRESP_12,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_12       => Dbg_BVALID_12,       -- [in  std_logic]
      Dbg_BREADY_12       => Dbg_BREADY_12,       -- [out std_logic]
      Dbg_ARADDR_12       => Dbg_ARADDR_12,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_12      => Dbg_ARVALID_12,      -- [out std_logic]
      Dbg_ARREADY_12      => Dbg_ARREADY_12,      -- [in  std_logic]
      Dbg_RDATA_12        => Dbg_RDATA_12,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_12        => Dbg_RRESP_12,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_12       => Dbg_RVALID_12,       -- [in  std_logic]
      Dbg_RREADY_12       => Dbg_RREADY_12,       -- [out std_logic]

      Dbg_Disable_13      => Dbg_Disable_13,      -- [out std_logic]
      Dbg_Clk_13          => Dbg_Clk_13,          -- [out std_logic]
      Dbg_TDI_13          => Dbg_TDI_13,          -- [out std_logic]
      Dbg_TDO_13          => Dbg_TDO_13,          -- [in  std_logic]
      Dbg_Reg_En_13       => Dbg_Reg_En_13,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_13      => Dbg_Capture_13,      -- [out std_logic]
      Dbg_Shift_13        => Dbg_Shift_13,        -- [out std_logic]
      Dbg_Update_13       => Dbg_Update_13,       -- [out std_logic]
      Dbg_Rst_13          => Dbg_Rst_13,          -- [out std_logic]
      Dbg_Trig_In_13      => Dbg_Trig_In_13,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_13  => Dbg_Trig_Ack_In_13,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_13     => Dbg_Trig_Out_13,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_13 => Dbg_Trig_Ack_Out_13, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_13        => Dbg_TrClk_13,        -- [out std_logic]
      Dbg_TrData_13       => Dbg_TrData_13,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_13      => Dbg_TrReady_13,      -- [out std_logic]
      Dbg_TrValid_13      => Dbg_TrValid_13,      -- [in  std_logic]
      Dbg_AWADDR_13       => Dbg_AWADDR_13,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_13      => Dbg_AWVALID_13,      -- [out std_logic]
      Dbg_AWREADY_13      => Dbg_AWREADY_13,      -- [in  std_logic]
      Dbg_WDATA_13        => Dbg_WDATA_13,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_13       => Dbg_WVALID_13,       -- [out std_logic]
      Dbg_WREADY_13       => Dbg_WREADY_13,       -- [in  std_logic]
      Dbg_BRESP_13        => Dbg_BRESP_13,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_13       => Dbg_BVALID_13,       -- [in  std_logic]
      Dbg_BREADY_13       => Dbg_BREADY_13,       -- [out std_logic]
      Dbg_ARADDR_13       => Dbg_ARADDR_13,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_13      => Dbg_ARVALID_13,      -- [out std_logic]
      Dbg_ARREADY_13      => Dbg_ARREADY_13,      -- [in  std_logic]
      Dbg_RDATA_13        => Dbg_RDATA_13,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_13        => Dbg_RRESP_13,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_13       => Dbg_RVALID_13,       -- [in  std_logic]
      Dbg_RREADY_13       => Dbg_RREADY_13,       -- [out std_logic]

      Dbg_Disable_14      => Dbg_Disable_14,      -- [out std_logic]
      Dbg_Clk_14          => Dbg_Clk_14,          -- [out std_logic]
      Dbg_TDI_14          => Dbg_TDI_14,          -- [out std_logic]
      Dbg_TDO_14          => Dbg_TDO_14,          -- [in  std_logic]
      Dbg_Reg_En_14       => Dbg_Reg_En_14,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_14      => Dbg_Capture_14,      -- [out std_logic]
      Dbg_Shift_14        => Dbg_Shift_14,        -- [out std_logic]
      Dbg_Update_14       => Dbg_Update_14,       -- [out std_logic]
      Dbg_Rst_14          => Dbg_Rst_14,          -- [out std_logic]
      Dbg_Trig_In_14      => Dbg_Trig_In_14,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_14  => Dbg_Trig_Ack_In_14,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_14     => Dbg_Trig_Out_14,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_14 => Dbg_Trig_Ack_Out_14, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_14        => Dbg_TrClk_14,        -- [out std_logic]
      Dbg_TrData_14       => Dbg_TrData_14,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_14      => Dbg_TrReady_14,      -- [out std_logic]
      Dbg_TrValid_14      => Dbg_TrValid_14,      -- [in  std_logic]
      Dbg_AWADDR_14       => Dbg_AWADDR_14,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_14      => Dbg_AWVALID_14,      -- [out std_logic]
      Dbg_AWREADY_14      => Dbg_AWREADY_14,      -- [in  std_logic]
      Dbg_WDATA_14        => Dbg_WDATA_14,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_14       => Dbg_WVALID_14,       -- [out std_logic]
      Dbg_WREADY_14       => Dbg_WREADY_14,       -- [in  std_logic]
      Dbg_BRESP_14        => Dbg_BRESP_14,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_14       => Dbg_BVALID_14,       -- [in  std_logic]
      Dbg_BREADY_14       => Dbg_BREADY_14,       -- [out std_logic]
      Dbg_ARADDR_14       => Dbg_ARADDR_14,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_14      => Dbg_ARVALID_14,      -- [out std_logic]
      Dbg_ARREADY_14      => Dbg_ARREADY_14,      -- [in  std_logic]
      Dbg_RDATA_14        => Dbg_RDATA_14,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_14        => Dbg_RRESP_14,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_14       => Dbg_RVALID_14,       -- [in  std_logic]
      Dbg_RREADY_14       => Dbg_RREADY_14,       -- [out std_logic]

      Dbg_Disable_15      => Dbg_Disable_15,      -- [out std_logic]
      Dbg_Clk_15          => Dbg_Clk_15,          -- [out std_logic]
      Dbg_TDI_15          => Dbg_TDI_15,          -- [out std_logic]
      Dbg_TDO_15          => Dbg_TDO_15,          -- [in  std_logic]
      Dbg_Reg_En_15       => Dbg_Reg_En_15,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_15      => Dbg_Capture_15,      -- [out std_logic]
      Dbg_Shift_15        => Dbg_Shift_15,        -- [out std_logic]
      Dbg_Update_15       => Dbg_Update_15,       -- [out std_logic]
      Dbg_Rst_15          => Dbg_Rst_15,          -- [out std_logic]
      Dbg_Trig_In_15      => Dbg_Trig_In_15,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_15  => Dbg_Trig_Ack_In_15,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_15     => Dbg_Trig_Out_15,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_15 => Dbg_Trig_Ack_Out_15, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_15        => Dbg_TrClk_15,        -- [out std_logic]
      Dbg_TrData_15       => Dbg_TrData_15,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_15      => Dbg_TrReady_15,      -- [out std_logic]
      Dbg_TrValid_15      => Dbg_TrValid_15,      -- [in  std_logic]
      Dbg_AWADDR_15       => Dbg_AWADDR_15,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_15      => Dbg_AWVALID_15,      -- [out std_logic]
      Dbg_AWREADY_15      => Dbg_AWREADY_15,      -- [in  std_logic]
      Dbg_WDATA_15        => Dbg_WDATA_15,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_15       => Dbg_WVALID_15,       -- [out std_logic]
      Dbg_WREADY_15       => Dbg_WREADY_15,       -- [in  std_logic]
      Dbg_BRESP_15        => Dbg_BRESP_15,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_15       => Dbg_BVALID_15,       -- [in  std_logic]
      Dbg_BREADY_15       => Dbg_BREADY_15,       -- [out std_logic]
      Dbg_ARADDR_15       => Dbg_ARADDR_15,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_15      => Dbg_ARVALID_15,      -- [out std_logic]
      Dbg_ARREADY_15      => Dbg_ARREADY_15,      -- [in  std_logic]
      Dbg_RDATA_15        => Dbg_RDATA_15,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_15        => Dbg_RRESP_15,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_15       => Dbg_RVALID_15,       -- [in  std_logic]
      Dbg_RREADY_15       => Dbg_RREADY_15,       -- [out std_logic]

      Dbg_Disable_16      => Dbg_Disable_16,      -- [out std_logic]
      Dbg_Clk_16          => Dbg_Clk_16,          -- [out std_logic]
      Dbg_TDI_16          => Dbg_TDI_16,          -- [out std_logic]
      Dbg_TDO_16          => Dbg_TDO_16,          -- [in  std_logic]
      Dbg_Reg_En_16       => Dbg_Reg_En_16,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_16      => Dbg_Capture_16,      -- [out std_logic]
      Dbg_Shift_16        => Dbg_Shift_16,        -- [out std_logic]
      Dbg_Update_16       => Dbg_Update_16,       -- [out std_logic]
      Dbg_Rst_16          => Dbg_Rst_16,          -- [out std_logic]
      Dbg_Trig_In_16      => Dbg_Trig_In_16,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_16  => Dbg_Trig_Ack_In_16,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_16     => Dbg_Trig_Out_16,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_16 => Dbg_Trig_Ack_Out_16, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_16        => Dbg_TrClk_16,        -- [out std_logic]
      Dbg_TrData_16       => Dbg_TrData_16,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_16      => Dbg_TrReady_16,      -- [out std_logic]
      Dbg_TrValid_16      => Dbg_TrValid_16,      -- [in  std_logic]
      Dbg_AWADDR_16       => Dbg_AWADDR_16,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_16      => Dbg_AWVALID_16,      -- [out std_logic]
      Dbg_AWREADY_16      => Dbg_AWREADY_16,      -- [in  std_logic]
      Dbg_WDATA_16        => Dbg_WDATA_16,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_16       => Dbg_WVALID_16,       -- [out std_logic]
      Dbg_WREADY_16       => Dbg_WREADY_16,       -- [in  std_logic]
      Dbg_BRESP_16        => Dbg_BRESP_16,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_16       => Dbg_BVALID_16,       -- [in  std_logic]
      Dbg_BREADY_16       => Dbg_BREADY_16,       -- [out std_logic]
      Dbg_ARADDR_16       => Dbg_ARADDR_16,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_16      => Dbg_ARVALID_16,      -- [out std_logic]
      Dbg_ARREADY_16      => Dbg_ARREADY_16,      -- [in  std_logic]
      Dbg_RDATA_16        => Dbg_RDATA_16,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_16        => Dbg_RRESP_16,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_16       => Dbg_RVALID_16,       -- [in  std_logic]
      Dbg_RREADY_16       => Dbg_RREADY_16,       -- [out std_logic]

      Dbg_Disable_17      => Dbg_Disable_17,      -- [out std_logic]
      Dbg_Clk_17          => Dbg_Clk_17,          -- [out std_logic]
      Dbg_TDI_17          => Dbg_TDI_17,          -- [out std_logic]
      Dbg_TDO_17          => Dbg_TDO_17,          -- [in  std_logic]
      Dbg_Reg_En_17       => Dbg_Reg_En_17,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_17      => Dbg_Capture_17,      -- [out std_logic]
      Dbg_Shift_17        => Dbg_Shift_17,        -- [out std_logic]
      Dbg_Update_17       => Dbg_Update_17,       -- [out std_logic]
      Dbg_Rst_17          => Dbg_Rst_17,          -- [out std_logic]
      Dbg_Trig_In_17      => Dbg_Trig_In_17,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_17  => Dbg_Trig_Ack_In_17,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_17     => Dbg_Trig_Out_17,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_17 => Dbg_Trig_Ack_Out_17, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_17        => Dbg_TrClk_17,        -- [out std_logic]
      Dbg_TrData_17       => Dbg_TrData_17,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_17      => Dbg_TrReady_17,      -- [out std_logic]
      Dbg_TrValid_17      => Dbg_TrValid_17,      -- [in  std_logic]
      Dbg_AWADDR_17       => Dbg_AWADDR_17,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_17      => Dbg_AWVALID_17,      -- [out std_logic]
      Dbg_AWREADY_17      => Dbg_AWREADY_17,      -- [in  std_logic]
      Dbg_WDATA_17        => Dbg_WDATA_17,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_17       => Dbg_WVALID_17,       -- [out std_logic]
      Dbg_WREADY_17       => Dbg_WREADY_17,       -- [in  std_logic]
      Dbg_BRESP_17        => Dbg_BRESP_17,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_17       => Dbg_BVALID_17,       -- [in  std_logic]
      Dbg_BREADY_17       => Dbg_BREADY_17,       -- [out std_logic]
      Dbg_ARADDR_17       => Dbg_ARADDR_17,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_17      => Dbg_ARVALID_17,      -- [out std_logic]
      Dbg_ARREADY_17      => Dbg_ARREADY_17,      -- [in  std_logic]
      Dbg_RDATA_17        => Dbg_RDATA_17,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_17        => Dbg_RRESP_17,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_17       => Dbg_RVALID_17,       -- [in  std_logic]
      Dbg_RREADY_17       => Dbg_RREADY_17,       -- [out std_logic]

      Dbg_Disable_18      => Dbg_Disable_18,      -- [out std_logic]
      Dbg_Clk_18          => Dbg_Clk_18,          -- [out std_logic]
      Dbg_TDI_18          => Dbg_TDI_18,          -- [out std_logic]
      Dbg_TDO_18          => Dbg_TDO_18,          -- [in  std_logic]
      Dbg_Reg_En_18       => Dbg_Reg_En_18,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_18      => Dbg_Capture_18,      -- [out std_logic]
      Dbg_Shift_18        => Dbg_Shift_18,        -- [out std_logic]
      Dbg_Update_18       => Dbg_Update_18,       -- [out std_logic]
      Dbg_Rst_18          => Dbg_Rst_18,          -- [out std_logic]
      Dbg_Trig_In_18      => Dbg_Trig_In_18,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_18  => Dbg_Trig_Ack_In_18,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_18     => Dbg_Trig_Out_18,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_18 => Dbg_Trig_Ack_Out_18, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_18        => Dbg_TrClk_18,        -- [out std_logic]
      Dbg_TrData_18       => Dbg_TrData_18,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_18      => Dbg_TrReady_18,      -- [out std_logic]
      Dbg_TrValid_18      => Dbg_TrValid_18,      -- [in  std_logic]
      Dbg_AWADDR_18       => Dbg_AWADDR_18,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_18      => Dbg_AWVALID_18,      -- [out std_logic]
      Dbg_AWREADY_18      => Dbg_AWREADY_18,      -- [in  std_logic]
      Dbg_WDATA_18        => Dbg_WDATA_18,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_18       => Dbg_WVALID_18,       -- [out std_logic]
      Dbg_WREADY_18       => Dbg_WREADY_18,       -- [in  std_logic]
      Dbg_BRESP_18        => Dbg_BRESP_18,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_18       => Dbg_BVALID_18,       -- [in  std_logic]
      Dbg_BREADY_18       => Dbg_BREADY_18,       -- [out std_logic]
      Dbg_ARADDR_18       => Dbg_ARADDR_18,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_18      => Dbg_ARVALID_18,      -- [out std_logic]
      Dbg_ARREADY_18      => Dbg_ARREADY_18,      -- [in  std_logic]
      Dbg_RDATA_18        => Dbg_RDATA_18,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_18        => Dbg_RRESP_18,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_18       => Dbg_RVALID_18,       -- [in  std_logic]
      Dbg_RREADY_18       => Dbg_RREADY_18,       -- [out std_logic]

      Dbg_Disable_19      => Dbg_Disable_19,      -- [out std_logic]
      Dbg_Clk_19          => Dbg_Clk_19,          -- [out std_logic]
      Dbg_TDI_19          => Dbg_TDI_19,          -- [out std_logic]
      Dbg_TDO_19          => Dbg_TDO_19,          -- [in  std_logic]
      Dbg_Reg_En_19       => Dbg_Reg_En_19,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_19      => Dbg_Capture_19,      -- [out std_logic]
      Dbg_Shift_19        => Dbg_Shift_19,        -- [out std_logic]
      Dbg_Update_19       => Dbg_Update_19,       -- [out std_logic]
      Dbg_Rst_19          => Dbg_Rst_19,          -- [out std_logic]
      Dbg_Trig_In_19      => Dbg_Trig_In_19,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_19  => Dbg_Trig_Ack_In_19,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_19     => Dbg_Trig_Out_19,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_19 => Dbg_Trig_Ack_Out_19, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_19        => Dbg_TrClk_19,        -- [out std_logic]
      Dbg_TrData_19       => Dbg_TrData_19,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_19      => Dbg_TrReady_19,      -- [out std_logic]
      Dbg_TrValid_19      => Dbg_TrValid_19,      -- [in  std_logic]
      Dbg_AWADDR_19       => Dbg_AWADDR_19,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_19      => Dbg_AWVALID_19,      -- [out std_logic]
      Dbg_AWREADY_19      => Dbg_AWREADY_19,      -- [in  std_logic]
      Dbg_WDATA_19        => Dbg_WDATA_19,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_19       => Dbg_WVALID_19,       -- [out std_logic]
      Dbg_WREADY_19       => Dbg_WREADY_19,       -- [in  std_logic]
      Dbg_BRESP_19        => Dbg_BRESP_19,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_19       => Dbg_BVALID_19,       -- [in  std_logic]
      Dbg_BREADY_19       => Dbg_BREADY_19,       -- [out std_logic]
      Dbg_ARADDR_19       => Dbg_ARADDR_19,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_19      => Dbg_ARVALID_19,      -- [out std_logic]
      Dbg_ARREADY_19      => Dbg_ARREADY_19,      -- [in  std_logic]
      Dbg_RDATA_19        => Dbg_RDATA_19,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_19        => Dbg_RRESP_19,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_19       => Dbg_RVALID_19,       -- [in  std_logic]
      Dbg_RREADY_19       => Dbg_RREADY_19,       -- [out std_logic]

      Dbg_Disable_20      => Dbg_Disable_20,      -- [out std_logic]
      Dbg_Clk_20          => Dbg_Clk_20,          -- [out std_logic]
      Dbg_TDI_20          => Dbg_TDI_20,          -- [out std_logic]
      Dbg_TDO_20          => Dbg_TDO_20,          -- [in  std_logic]
      Dbg_Reg_En_20       => Dbg_Reg_En_20,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_20      => Dbg_Capture_20,      -- [out std_logic]
      Dbg_Shift_20        => Dbg_Shift_20,        -- [out std_logic]
      Dbg_Update_20       => Dbg_Update_20,       -- [out std_logic]
      Dbg_Rst_20          => Dbg_Rst_20,          -- [out std_logic]
      Dbg_Trig_In_20      => Dbg_Trig_In_20,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_20  => Dbg_Trig_Ack_In_20,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_20     => Dbg_Trig_Out_20,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_20 => Dbg_Trig_Ack_Out_20, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_20        => Dbg_TrClk_20,        -- [out std_logic]
      Dbg_TrData_20       => Dbg_TrData_20,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_20      => Dbg_TrReady_20,      -- [out std_logic]
      Dbg_TrValid_20      => Dbg_TrValid_20,      -- [in  std_logic]
      Dbg_AWADDR_20       => Dbg_AWADDR_20,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_20      => Dbg_AWVALID_20,      -- [out std_logic]
      Dbg_AWREADY_20      => Dbg_AWREADY_20,      -- [in  std_logic]
      Dbg_WDATA_20        => Dbg_WDATA_20,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_20       => Dbg_WVALID_20,       -- [out std_logic]
      Dbg_WREADY_20       => Dbg_WREADY_20,       -- [in  std_logic]
      Dbg_BRESP_20        => Dbg_BRESP_20,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_20       => Dbg_BVALID_20,       -- [in  std_logic]
      Dbg_BREADY_20       => Dbg_BREADY_20,       -- [out std_logic]
      Dbg_ARADDR_20       => Dbg_ARADDR_20,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_20      => Dbg_ARVALID_20,      -- [out std_logic]
      Dbg_ARREADY_20      => Dbg_ARREADY_20,      -- [in  std_logic]
      Dbg_RDATA_20        => Dbg_RDATA_20,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_20        => Dbg_RRESP_20,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_20       => Dbg_RVALID_20,       -- [in  std_logic]
      Dbg_RREADY_20       => Dbg_RREADY_20,       -- [out std_logic]

      Dbg_Disable_21      => Dbg_Disable_21,      -- [out std_logic]
      Dbg_Clk_21          => Dbg_Clk_21,          -- [out std_logic]
      Dbg_TDI_21          => Dbg_TDI_21,          -- [out std_logic]
      Dbg_TDO_21          => Dbg_TDO_21,          -- [in  std_logic]
      Dbg_Reg_En_21       => Dbg_Reg_En_21,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_21      => Dbg_Capture_21,      -- [out std_logic]
      Dbg_Shift_21        => Dbg_Shift_21,        -- [out std_logic]
      Dbg_Update_21       => Dbg_Update_21,       -- [out std_logic]
      Dbg_Rst_21          => Dbg_Rst_21,          -- [out std_logic]
      Dbg_Trig_In_21      => Dbg_Trig_In_21,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_21  => Dbg_Trig_Ack_In_21,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_21     => Dbg_Trig_Out_21,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_21 => Dbg_Trig_Ack_Out_21, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_21        => Dbg_TrClk_21,        -- [out std_logic]
      Dbg_TrData_21       => Dbg_TrData_21,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_21      => Dbg_TrReady_21,      -- [out std_logic]
      Dbg_TrValid_21      => Dbg_TrValid_21,      -- [in  std_logic]
      Dbg_AWADDR_21       => Dbg_AWADDR_21,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_21      => Dbg_AWVALID_21,      -- [out std_logic]
      Dbg_AWREADY_21      => Dbg_AWREADY_21,      -- [in  std_logic]
      Dbg_WDATA_21        => Dbg_WDATA_21,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_21       => Dbg_WVALID_21,       -- [out std_logic]
      Dbg_WREADY_21       => Dbg_WREADY_21,       -- [in  std_logic]
      Dbg_BRESP_21        => Dbg_BRESP_21,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_21       => Dbg_BVALID_21,       -- [in  std_logic]
      Dbg_BREADY_21       => Dbg_BREADY_21,       -- [out std_logic]
      Dbg_ARADDR_21       => Dbg_ARADDR_21,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_21      => Dbg_ARVALID_21,      -- [out std_logic]
      Dbg_ARREADY_21      => Dbg_ARREADY_21,      -- [in  std_logic]
      Dbg_RDATA_21        => Dbg_RDATA_21,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_21        => Dbg_RRESP_21,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_21       => Dbg_RVALID_21,       -- [in  std_logic]
      Dbg_RREADY_21       => Dbg_RREADY_21,       -- [out std_logic]

      Dbg_Disable_22      => Dbg_Disable_22,      -- [out std_logic]
      Dbg_Clk_22          => Dbg_Clk_22,          -- [out std_logic]
      Dbg_TDI_22          => Dbg_TDI_22,          -- [out std_logic]
      Dbg_TDO_22          => Dbg_TDO_22,          -- [in  std_logic]
      Dbg_Reg_En_22       => Dbg_Reg_En_22,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_22      => Dbg_Capture_22,      -- [out std_logic]
      Dbg_Shift_22        => Dbg_Shift_22,        -- [out std_logic]
      Dbg_Update_22       => Dbg_Update_22,       -- [out std_logic]
      Dbg_Rst_22          => Dbg_Rst_22,          -- [out std_logic]
      Dbg_Trig_In_22      => Dbg_Trig_In_22,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_22  => Dbg_Trig_Ack_In_22,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_22     => Dbg_Trig_Out_22,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_22 => Dbg_Trig_Ack_Out_22, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_22        => Dbg_TrClk_22,        -- [out std_logic]
      Dbg_TrData_22       => Dbg_TrData_22,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_22      => Dbg_TrReady_22,      -- [out std_logic]
      Dbg_TrValid_22      => Dbg_TrValid_22,      -- [in  std_logic]
      Dbg_AWADDR_22       => Dbg_AWADDR_22,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_22      => Dbg_AWVALID_22,      -- [out std_logic]
      Dbg_AWREADY_22      => Dbg_AWREADY_22,      -- [in  std_logic]
      Dbg_WDATA_22        => Dbg_WDATA_22,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_22       => Dbg_WVALID_22,       -- [out std_logic]
      Dbg_WREADY_22       => Dbg_WREADY_22,       -- [in  std_logic]
      Dbg_BRESP_22        => Dbg_BRESP_22,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_22       => Dbg_BVALID_22,       -- [in  std_logic]
      Dbg_BREADY_22       => Dbg_BREADY_22,       -- [out std_logic]
      Dbg_ARADDR_22       => Dbg_ARADDR_22,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_22      => Dbg_ARVALID_22,      -- [out std_logic]
      Dbg_ARREADY_22      => Dbg_ARREADY_22,      -- [in  std_logic]
      Dbg_RDATA_22        => Dbg_RDATA_22,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_22        => Dbg_RRESP_22,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_22       => Dbg_RVALID_22,       -- [in  std_logic]
      Dbg_RREADY_22       => Dbg_RREADY_22,       -- [out std_logic]

      Dbg_Disable_23      => Dbg_Disable_23,      -- [out std_logic]
      Dbg_Clk_23          => Dbg_Clk_23,          -- [out std_logic]
      Dbg_TDI_23          => Dbg_TDI_23,          -- [out std_logic]
      Dbg_TDO_23          => Dbg_TDO_23,          -- [in  std_logic]
      Dbg_Reg_En_23       => Dbg_Reg_En_23,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_23      => Dbg_Capture_23,      -- [out std_logic]
      Dbg_Shift_23        => Dbg_Shift_23,        -- [out std_logic]
      Dbg_Update_23       => Dbg_Update_23,       -- [out std_logic]
      Dbg_Rst_23          => Dbg_Rst_23,          -- [out std_logic]
      Dbg_Trig_In_23      => Dbg_Trig_In_23,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_23  => Dbg_Trig_Ack_In_23,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_23     => Dbg_Trig_Out_23,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_23 => Dbg_Trig_Ack_Out_23, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_23        => Dbg_TrClk_23,        -- [out std_logic]
      Dbg_TrData_23       => Dbg_TrData_23,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_23      => Dbg_TrReady_23,      -- [out std_logic]
      Dbg_TrValid_23      => Dbg_TrValid_23,      -- [in  std_logic]
      Dbg_AWADDR_23       => Dbg_AWADDR_23,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_23      => Dbg_AWVALID_23,      -- [out std_logic]
      Dbg_AWREADY_23      => Dbg_AWREADY_23,      -- [in  std_logic]
      Dbg_WDATA_23        => Dbg_WDATA_23,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_23       => Dbg_WVALID_23,       -- [out std_logic]
      Dbg_WREADY_23       => Dbg_WREADY_23,       -- [in  std_logic]
      Dbg_BRESP_23        => Dbg_BRESP_23,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_23       => Dbg_BVALID_23,       -- [in  std_logic]
      Dbg_BREADY_23       => Dbg_BREADY_23,       -- [out std_logic]
      Dbg_ARADDR_23       => Dbg_ARADDR_23,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_23      => Dbg_ARVALID_23,      -- [out std_logic]
      Dbg_ARREADY_23      => Dbg_ARREADY_23,      -- [in  std_logic]
      Dbg_RDATA_23        => Dbg_RDATA_23,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_23        => Dbg_RRESP_23,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_23       => Dbg_RVALID_23,       -- [in  std_logic]
      Dbg_RREADY_23       => Dbg_RREADY_23,       -- [out std_logic]

      Dbg_Disable_24      => Dbg_Disable_24,      -- [out std_logic]
      Dbg_Clk_24          => Dbg_Clk_24,          -- [out std_logic]
      Dbg_TDI_24          => Dbg_TDI_24,          -- [out std_logic]
      Dbg_TDO_24          => Dbg_TDO_24,          -- [in  std_logic]
      Dbg_Reg_En_24       => Dbg_Reg_En_24,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_24      => Dbg_Capture_24,      -- [out std_logic]
      Dbg_Shift_24        => Dbg_Shift_24,        -- [out std_logic]
      Dbg_Update_24       => Dbg_Update_24,       -- [out std_logic]
      Dbg_Rst_24          => Dbg_Rst_24,          -- [out std_logic]
      Dbg_Trig_In_24      => Dbg_Trig_In_24,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_24  => Dbg_Trig_Ack_In_24,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_24     => Dbg_Trig_Out_24,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_24 => Dbg_Trig_Ack_Out_24, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_24        => Dbg_TrClk_24,        -- [out std_logic]
      Dbg_TrData_24       => Dbg_TrData_24,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_24      => Dbg_TrReady_24,      -- [out std_logic]
      Dbg_TrValid_24      => Dbg_TrValid_24,      -- [in  std_logic]
      Dbg_AWADDR_24       => Dbg_AWADDR_24,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_24      => Dbg_AWVALID_24,      -- [out std_logic]
      Dbg_AWREADY_24      => Dbg_AWREADY_24,      -- [in  std_logic]
      Dbg_WDATA_24        => Dbg_WDATA_24,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_24       => Dbg_WVALID_24,       -- [out std_logic]
      Dbg_WREADY_24       => Dbg_WREADY_24,       -- [in  std_logic]
      Dbg_BRESP_24        => Dbg_BRESP_24,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_24       => Dbg_BVALID_24,       -- [in  std_logic]
      Dbg_BREADY_24       => Dbg_BREADY_24,       -- [out std_logic]
      Dbg_ARADDR_24       => Dbg_ARADDR_24,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_24      => Dbg_ARVALID_24,      -- [out std_logic]
      Dbg_ARREADY_24      => Dbg_ARREADY_24,      -- [in  std_logic]
      Dbg_RDATA_24        => Dbg_RDATA_24,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_24        => Dbg_RRESP_24,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_24       => Dbg_RVALID_24,       -- [in  std_logic]
      Dbg_RREADY_24       => Dbg_RREADY_24,       -- [out std_logic]

      Dbg_Disable_25      => Dbg_Disable_25,      -- [out std_logic]
      Dbg_Clk_25          => Dbg_Clk_25,          -- [out std_logic]
      Dbg_TDI_25          => Dbg_TDI_25,          -- [out std_logic]
      Dbg_TDO_25          => Dbg_TDO_25,          -- [in  std_logic]
      Dbg_Reg_En_25       => Dbg_Reg_En_25,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_25      => Dbg_Capture_25,      -- [out std_logic]
      Dbg_Shift_25        => Dbg_Shift_25,        -- [out std_logic]
      Dbg_Update_25       => Dbg_Update_25,       -- [out std_logic]
      Dbg_Rst_25          => Dbg_Rst_25,          -- [out std_logic]
      Dbg_Trig_In_25      => Dbg_Trig_In_25,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_25  => Dbg_Trig_Ack_In_25,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_25     => Dbg_Trig_Out_25,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_25 => Dbg_Trig_Ack_Out_25, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_25        => Dbg_TrClk_25,        -- [out std_logic]
      Dbg_TrData_25       => Dbg_TrData_25,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_25      => Dbg_TrReady_25,      -- [out std_logic]
      Dbg_TrValid_25      => Dbg_TrValid_25,      -- [in  std_logic]
      Dbg_AWADDR_25       => Dbg_AWADDR_25,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_25      => Dbg_AWVALID_25,      -- [out std_logic]
      Dbg_AWREADY_25      => Dbg_AWREADY_25,      -- [in  std_logic]
      Dbg_WDATA_25        => Dbg_WDATA_25,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_25       => Dbg_WVALID_25,       -- [out std_logic]
      Dbg_WREADY_25       => Dbg_WREADY_25,       -- [in  std_logic]
      Dbg_BRESP_25        => Dbg_BRESP_25,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_25       => Dbg_BVALID_25,       -- [in  std_logic]
      Dbg_BREADY_25       => Dbg_BREADY_25,       -- [out std_logic]
      Dbg_ARADDR_25       => Dbg_ARADDR_25,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_25      => Dbg_ARVALID_25,      -- [out std_logic]
      Dbg_ARREADY_25      => Dbg_ARREADY_25,      -- [in  std_logic]
      Dbg_RDATA_25        => Dbg_RDATA_25,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_25        => Dbg_RRESP_25,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_25       => Dbg_RVALID_25,       -- [in  std_logic]
      Dbg_RREADY_25       => Dbg_RREADY_25,       -- [out std_logic]

      Dbg_Disable_26      => Dbg_Disable_26,      -- [out std_logic]
      Dbg_Clk_26          => Dbg_Clk_26,          -- [out std_logic]
      Dbg_TDI_26          => Dbg_TDI_26,          -- [out std_logic]
      Dbg_TDO_26          => Dbg_TDO_26,          -- [in  std_logic]
      Dbg_Reg_En_26       => Dbg_Reg_En_26,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_26      => Dbg_Capture_26,      -- [out std_logic]
      Dbg_Shift_26        => Dbg_Shift_26,        -- [out std_logic]
      Dbg_Update_26       => Dbg_Update_26,       -- [out std_logic]
      Dbg_Rst_26          => Dbg_Rst_26,          -- [out std_logic]
      Dbg_Trig_In_26      => Dbg_Trig_In_26,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_26  => Dbg_Trig_Ack_In_26,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_26     => Dbg_Trig_Out_26,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_26 => Dbg_Trig_Ack_Out_26, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_26        => Dbg_TrClk_26,        -- [out std_logic]
      Dbg_TrData_26       => Dbg_TrData_26,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_26      => Dbg_TrReady_26,      -- [out std_logic]
      Dbg_TrValid_26      => Dbg_TrValid_26,      -- [in  std_logic]
      Dbg_AWADDR_26       => Dbg_AWADDR_26,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_26      => Dbg_AWVALID_26,      -- [out std_logic]
      Dbg_AWREADY_26      => Dbg_AWREADY_26,      -- [in  std_logic]
      Dbg_WDATA_26        => Dbg_WDATA_26,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_26       => Dbg_WVALID_26,       -- [out std_logic]
      Dbg_WREADY_26       => Dbg_WREADY_26,       -- [in  std_logic]
      Dbg_BRESP_26        => Dbg_BRESP_26,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_26       => Dbg_BVALID_26,       -- [in  std_logic]
      Dbg_BREADY_26       => Dbg_BREADY_26,       -- [out std_logic]
      Dbg_ARADDR_26       => Dbg_ARADDR_26,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_26      => Dbg_ARVALID_26,      -- [out std_logic]
      Dbg_ARREADY_26      => Dbg_ARREADY_26,      -- [in  std_logic]
      Dbg_RDATA_26        => Dbg_RDATA_26,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_26        => Dbg_RRESP_26,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_26       => Dbg_RVALID_26,       -- [in  std_logic]
      Dbg_RREADY_26       => Dbg_RREADY_26,       -- [out std_logic]

      Dbg_Disable_27      => Dbg_Disable_27,      -- [out std_logic]
      Dbg_Clk_27          => Dbg_Clk_27,          -- [out std_logic]
      Dbg_TDI_27          => Dbg_TDI_27,          -- [out std_logic]
      Dbg_TDO_27          => Dbg_TDO_27,          -- [in  std_logic]
      Dbg_Reg_En_27       => Dbg_Reg_En_27,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_27      => Dbg_Capture_27,      -- [out std_logic]
      Dbg_Shift_27        => Dbg_Shift_27,        -- [out std_logic]
      Dbg_Update_27       => Dbg_Update_27,       -- [out std_logic]
      Dbg_Rst_27          => Dbg_Rst_27,          -- [out std_logic]
      Dbg_Trig_In_27      => Dbg_Trig_In_27,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_27  => Dbg_Trig_Ack_In_27,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_27     => Dbg_Trig_Out_27,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_27 => Dbg_Trig_Ack_Out_27, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_27        => Dbg_TrClk_27,        -- [out std_logic]
      Dbg_TrData_27       => Dbg_TrData_27,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_27      => Dbg_TrReady_27,      -- [out std_logic]
      Dbg_TrValid_27      => Dbg_TrValid_27,      -- [in  std_logic]
      Dbg_AWADDR_27       => Dbg_AWADDR_27,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_27      => Dbg_AWVALID_27,      -- [out std_logic]
      Dbg_AWREADY_27      => Dbg_AWREADY_27,      -- [in  std_logic]
      Dbg_WDATA_27        => Dbg_WDATA_27,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_27       => Dbg_WVALID_27,       -- [out std_logic]
      Dbg_WREADY_27       => Dbg_WREADY_27,       -- [in  std_logic]
      Dbg_BRESP_27        => Dbg_BRESP_27,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_27       => Dbg_BVALID_27,       -- [in  std_logic]
      Dbg_BREADY_27       => Dbg_BREADY_27,       -- [out std_logic]
      Dbg_ARADDR_27       => Dbg_ARADDR_27,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_27      => Dbg_ARVALID_27,      -- [out std_logic]
      Dbg_ARREADY_27      => Dbg_ARREADY_27,      -- [in  std_logic]
      Dbg_RDATA_27        => Dbg_RDATA_27,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_27        => Dbg_RRESP_27,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_27       => Dbg_RVALID_27,       -- [in  std_logic]
      Dbg_RREADY_27       => Dbg_RREADY_27,       -- [out std_logic]

      Dbg_Disable_28      => Dbg_Disable_28,      -- [out std_logic]
      Dbg_Clk_28          => Dbg_Clk_28,          -- [out std_logic]
      Dbg_TDI_28          => Dbg_TDI_28,          -- [out std_logic]
      Dbg_TDO_28          => Dbg_TDO_28,          -- [in  std_logic]
      Dbg_Reg_En_28       => Dbg_Reg_En_28,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_28      => Dbg_Capture_28,      -- [out std_logic]
      Dbg_Shift_28        => Dbg_Shift_28,        -- [out std_logic]
      Dbg_Update_28       => Dbg_Update_28,       -- [out std_logic]
      Dbg_Rst_28          => Dbg_Rst_28,          -- [out std_logic]
      Dbg_Trig_In_28      => Dbg_Trig_In_28,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_28  => Dbg_Trig_Ack_In_28,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_28     => Dbg_Trig_Out_28,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_28 => Dbg_Trig_Ack_Out_28, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_28        => Dbg_TrClk_28,        -- [out std_logic]
      Dbg_TrData_28       => Dbg_TrData_28,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_28      => Dbg_TrReady_28,      -- [out std_logic]
      Dbg_TrValid_28      => Dbg_TrValid_28,      -- [in  std_logic]
      Dbg_AWADDR_28       => Dbg_AWADDR_28,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_28      => Dbg_AWVALID_28,      -- [out std_logic]
      Dbg_AWREADY_28      => Dbg_AWREADY_28,      -- [in  std_logic]
      Dbg_WDATA_28        => Dbg_WDATA_28,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_28       => Dbg_WVALID_28,       -- [out std_logic]
      Dbg_WREADY_28       => Dbg_WREADY_28,       -- [in  std_logic]
      Dbg_BRESP_28        => Dbg_BRESP_28,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_28       => Dbg_BVALID_28,       -- [in  std_logic]
      Dbg_BREADY_28       => Dbg_BREADY_28,       -- [out std_logic]
      Dbg_ARADDR_28       => Dbg_ARADDR_28,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_28      => Dbg_ARVALID_28,      -- [out std_logic]
      Dbg_ARREADY_28      => Dbg_ARREADY_28,      -- [in  std_logic]
      Dbg_RDATA_28        => Dbg_RDATA_28,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_28        => Dbg_RRESP_28,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_28       => Dbg_RVALID_28,       -- [in  std_logic]
      Dbg_RREADY_28       => Dbg_RREADY_28,       -- [out std_logic]

      Dbg_Disable_29      => Dbg_Disable_29,      -- [out std_logic]
      Dbg_Clk_29          => Dbg_Clk_29,          -- [out std_logic]
      Dbg_TDI_29          => Dbg_TDI_29,          -- [out std_logic]
      Dbg_TDO_29          => Dbg_TDO_29,          -- [in  std_logic]
      Dbg_Reg_En_29       => Dbg_Reg_En_29,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_29      => Dbg_Capture_29,      -- [out std_logic]
      Dbg_Shift_29        => Dbg_Shift_29,        -- [out std_logic]
      Dbg_Update_29       => Dbg_Update_29,       -- [out std_logic]
      Dbg_Rst_29          => Dbg_Rst_29,          -- [out std_logic]
      Dbg_Trig_In_29      => Dbg_Trig_In_29,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_29  => Dbg_Trig_Ack_In_29,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_29     => Dbg_Trig_Out_29,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_29 => Dbg_Trig_Ack_Out_29, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_29        => Dbg_TrClk_29,        -- [out std_logic]
      Dbg_TrData_29       => Dbg_TrData_29,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_29      => Dbg_TrReady_29,      -- [out std_logic]
      Dbg_TrValid_29      => Dbg_TrValid_29,      -- [in  std_logic]
      Dbg_AWADDR_29       => Dbg_AWADDR_29,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_29      => Dbg_AWVALID_29,      -- [out std_logic]
      Dbg_AWREADY_29      => Dbg_AWREADY_29,      -- [in  std_logic]
      Dbg_WDATA_29        => Dbg_WDATA_29,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_29       => Dbg_WVALID_29,       -- [out std_logic]
      Dbg_WREADY_29       => Dbg_WREADY_29,       -- [in  std_logic]
      Dbg_BRESP_29        => Dbg_BRESP_29,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_29       => Dbg_BVALID_29,       -- [in  std_logic]
      Dbg_BREADY_29       => Dbg_BREADY_29,       -- [out std_logic]
      Dbg_ARADDR_29       => Dbg_ARADDR_29,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_29      => Dbg_ARVALID_29,      -- [out std_logic]
      Dbg_ARREADY_29      => Dbg_ARREADY_29,      -- [in  std_logic]
      Dbg_RDATA_29        => Dbg_RDATA_29,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_29        => Dbg_RRESP_29,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_29       => Dbg_RVALID_29,       -- [in  std_logic]
      Dbg_RREADY_29       => Dbg_RREADY_29,       -- [out std_logic]

      Dbg_Disable_30      => Dbg_Disable_30,      -- [out std_logic]
      Dbg_Clk_30          => Dbg_Clk_30,          -- [out std_logic]
      Dbg_TDI_30          => Dbg_TDI_30,          -- [out std_logic]
      Dbg_TDO_30          => Dbg_TDO_30,          -- [in  std_logic]
      Dbg_Reg_En_30       => Dbg_Reg_En_30,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_30      => Dbg_Capture_30,      -- [out std_logic]
      Dbg_Shift_30        => Dbg_Shift_30,        -- [out std_logic]
      Dbg_Update_30       => Dbg_Update_30,       -- [out std_logic]
      Dbg_Rst_30          => Dbg_Rst_30,          -- [out std_logic]
      Dbg_Trig_In_30      => Dbg_Trig_In_30,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_30  => Dbg_Trig_Ack_In_30,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_30     => Dbg_Trig_Out_30,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_30 => Dbg_Trig_Ack_Out_30, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_30        => Dbg_TrClk_30,        -- [out std_logic]
      Dbg_TrData_30       => Dbg_TrData_30,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_30      => Dbg_TrReady_30,      -- [out std_logic]
      Dbg_TrValid_30      => Dbg_TrValid_30,      -- [in  std_logic]
      Dbg_AWADDR_30       => Dbg_AWADDR_30,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_30      => Dbg_AWVALID_30,      -- [out std_logic]
      Dbg_AWREADY_30      => Dbg_AWREADY_30,      -- [in  std_logic]
      Dbg_WDATA_30        => Dbg_WDATA_30,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_30       => Dbg_WVALID_30,       -- [out std_logic]
      Dbg_WREADY_30       => Dbg_WREADY_30,       -- [in  std_logic]
      Dbg_BRESP_30        => Dbg_BRESP_30,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_30       => Dbg_BVALID_30,       -- [in  std_logic]
      Dbg_BREADY_30       => Dbg_BREADY_30,       -- [out std_logic]
      Dbg_ARADDR_30       => Dbg_ARADDR_30,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_30      => Dbg_ARVALID_30,      -- [out std_logic]
      Dbg_ARREADY_30      => Dbg_ARREADY_30,      -- [in  std_logic]
      Dbg_RDATA_30        => Dbg_RDATA_30,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_30        => Dbg_RRESP_30,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_30       => Dbg_RVALID_30,       -- [in  std_logic]
      Dbg_RREADY_30       => Dbg_RREADY_30,       -- [out std_logic]

      Dbg_Disable_31      => Dbg_Disable_31,      -- [out std_logic]
      Dbg_Clk_31          => Dbg_Clk_31,          -- [out std_logic]
      Dbg_TDI_31          => Dbg_TDI_31,          -- [out std_logic]
      Dbg_TDO_31          => Dbg_TDO_31,          -- [in  std_logic]
      Dbg_Reg_En_31       => Dbg_Reg_En_31,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_31      => Dbg_Capture_31,      -- [out std_logic]
      Dbg_Shift_31        => Dbg_Shift_31,        -- [out std_logic]
      Dbg_Update_31       => Dbg_Update_31,       -- [out std_logic]
      Dbg_Rst_31          => Dbg_Rst_31,          -- [out std_logic]
      Dbg_Trig_In_31      => Dbg_Trig_In_31,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_31  => Dbg_Trig_Ack_In_31,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_31     => Dbg_Trig_Out_31,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_31 => Dbg_Trig_Ack_Out_31, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_31        => Dbg_TrClk_31,        -- [out std_logic]
      Dbg_TrData_31       => Dbg_TrData_31,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_31      => Dbg_TrReady_31,      -- [out std_logic]
      Dbg_TrValid_31      => Dbg_TrValid_31,      -- [in  std_logic]
      Dbg_AWADDR_31       => Dbg_AWADDR_31,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_31      => Dbg_AWVALID_31,      -- [out std_logic]
      Dbg_AWREADY_31      => Dbg_AWREADY_31,      -- [in  std_logic]
      Dbg_WDATA_31        => Dbg_WDATA_31,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_31       => Dbg_WVALID_31,       -- [out std_logic]
      Dbg_WREADY_31       => Dbg_WREADY_31,       -- [in  std_logic]
      Dbg_BRESP_31        => Dbg_BRESP_31,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_31       => Dbg_BVALID_31,       -- [in  std_logic]
      Dbg_BREADY_31       => Dbg_BREADY_31,       -- [out std_logic]
      Dbg_ARADDR_31       => Dbg_ARADDR_31,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_31      => Dbg_ARVALID_31,      -- [out std_logic]
      Dbg_ARREADY_31      => Dbg_ARREADY_31,      -- [in  std_logic]
      Dbg_RDATA_31        => Dbg_RDATA_31,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_31        => Dbg_RRESP_31,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_31       => Dbg_RVALID_31,       -- [in  std_logic]
      Dbg_RREADY_31       => Dbg_RREADY_31,       -- [out std_logic]

      Ext_Trig_In        => ext_trig_in,          -- [in  std_logic_vector(0 to 3)]
      Ext_Trig_Ack_In    => ext_trig_ack_in,      -- [out std_logic_vector(0 to 3)]
      Ext_Trig_Out       => ext_trig_out,         -- [out std_logic_vector(0 to 3)]
      Ext_Trig_Ack_Out   => ext_trig_ack_out,     -- [in  std_logic_vector(0 to 3)]

      Ext_JTAG_DRCK      => Ext_JTAG_DRCK,
      Ext_JTAG_RESET     => Ext_JTAG_RESET,
      Ext_JTAG_SEL       => Ext_JTAG_SEL,
      Ext_JTAG_CAPTURE   => Ext_JTAG_CAPTURE,
      Ext_JTAG_SHIFT     => Ext_JTAG_SHIFT,
      Ext_JTAG_UPDATE    => Ext_JTAG_UPDATE,
      Ext_JTAG_TDI       => Ext_JTAG_TDI,
      Ext_JTAG_TDO       => Ext_JTAG_TDO
    );

  ext_trig_in      <= Trig_In_0 & Trig_In_1 & Trig_In_2 & Trig_In_3;
  ext_trig_ack_out <= Trig_Ack_Out_0 & Trig_Ack_Out_1 & Trig_Ack_Out_2 & Trig_Ack_Out_3;

  Trig_Ack_In_0 <= ext_trig_ack_in(0);
  Trig_Ack_In_1 <= ext_trig_ack_in(1);
  Trig_Ack_In_2 <= ext_trig_ack_in(2);
  Trig_Ack_In_3 <= ext_trig_ack_in(3);

  Trig_Out_0    <= ext_trig_out(0);
  Trig_Out_1    <= ext_trig_out(1);
  Trig_Out_2    <= ext_trig_out(2);
  Trig_Out_3    <= ext_trig_out(3);

  -- Bus Master port
  Use_Bus_MASTER : if (C_USE_DBG_MEM_ACCESS) generate
    type LMB_vec_type is array (natural range <>) of std_logic_vector(0 to C_DATA_SIZE - 1);

    signal lmb_data_addr       : std_logic_vector(0 to C_ADDR_SIZE - 1);
    signal lmb_data_read       : std_logic_vector(0 to C_DATA_SIZE - 1);
    signal lmb_data_write      : std_logic_vector(0 to C_DATA_SIZE - 1);
    signal lmb_addr_strobe     : std_logic;
    signal lmb_read_strobe     : std_logic;
    signal lmb_write_strobe    : std_logic;
    signal lmb_ready           : std_logic;
    signal lmb_wait            : std_logic;
    signal lmb_ue              : std_logic;
    signal lmb_byte_enable     : std_logic_vector(0 to C_DATA_SIZE / 8 - 1);

    signal lmb_addr_strobe_vec : std_logic_vector(0 to 31);

    signal lmb_data_read_vec   : LMB_vec_type(0 to 31);
    signal lmb_ready_vec       : std_logic_vector(0 to 31);
    signal lmb_wait_vec        : std_logic_vector(0 to 31);
    signal lmb_ue_vec          : std_logic_vector(0 to 31);

    signal lmb_data_read_vec_q : LMB_vec_type(0 to C_EN_WIDTH - 1);
    signal lmb_ready_vec_q     : std_logic_vector(0 to C_EN_WIDTH - 1);
    signal lmb_wait_vec_q      : std_logic_vector(0 to C_EN_WIDTH - 1);
    signal lmb_ue_vec_q        : std_logic_vector(0 to C_EN_WIDTH - 1);

    signal m_axi_awid_i        : std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    signal m_axi_awlen_i       : std_logic_vector(7 downto 0);
    signal m_axi_awsize_i      : std_logic_vector(2 downto 0);
    signal m_axi_awburst_i     : std_logic_vector(1 downto 0);
    signal m_axi_awlock_i      : std_logic;
    signal m_axi_awcache_i     : std_logic_vector(3 downto 0);
    signal m_axi_awprot_i      : std_logic_vector(2 downto 0);
    signal m_axi_awqos_i       : std_logic_vector(3 downto 0);
    signal m_axi_awready_i     : std_logic;
    signal m_axi_wstrb_i       : std_logic_vector((C_M_AXI_DATA_WIDTH/8)-1 downto 0);
    signal m_axi_wlast_i       : std_logic;
    signal m_axi_wready_i      : std_logic;
    signal m_axi_bresp_i       : std_logic_vector(1 downto 0);
    signal m_axi_bid_i         : std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    signal m_axi_bvalid_i      : std_logic;
    signal m_axi_arid_i        : std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    signal m_axi_arlen_i       : std_logic_vector(7 downto 0);
    signal m_axi_arsize_i      : std_logic_vector(2 downto 0);
    signal m_axi_arburst_i     : std_logic_vector(1 downto 0);
    signal m_axi_arlock_i      : std_logic;
    signal m_axi_arcache_i     : std_logic_vector(3 downto 0);
    signal m_axi_arprot_i      : std_logic_vector(2 downto 0);
    signal m_axi_arqos_i       : std_logic_vector(3 downto 0);
    signal m_axi_arready_i     : std_logic;
    signal m_axi_rid_i         : std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    signal m_axi_rdata_i       : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    signal m_axi_rresp_i       : std_logic_vector(1 downto 0);
    signal m_axi_rlast_i       : std_logic;
    signal m_axi_rvalid_i      : std_logic;
  begin

    bus_master_I : bus_master
    generic map  (
      C_TARGET                => C_TARGET,
      C_M_AXI_DATA_WIDTH      => C_M_AXI_DATA_WIDTH,
      C_M_AXI_THREAD_ID_WIDTH => C_M_AXI_THREAD_ID_WIDTH,
      C_M_AXI_ADDR_WIDTH      => C_M_AXI_ADDR_WIDTH,
      C_ADDR_SIZE             => C_ADDR_SIZE,
      C_DATA_SIZE             => C_DATA_SIZE,
      C_LMB_PROTOCOL          => C_LMB_PROTOCOL,
      C_HAS_FIFO_PORTS        => true,
      C_HAS_DIRECT_PORT       => C_TRACE_AXI_MASTER,
      C_USE_SRL16             => C_USE_SRL16
    )
    port map (
      Rd_Start          => master_rd_start,
      Rd_Addr           => master_rd_addr,
      Rd_Len            => master_rd_len,
      Rd_Size           => master_rd_size,
      Rd_Exclusive      => master_rd_excl,
      Rd_Idle           => master_rd_idle,
      Rd_Response       => master_rd_resp,
      Wr_Start          => master_wr_start,
      Wr_Addr           => master_wr_addr,
      Wr_Len            => master_wr_len,
      Wr_Size           => master_wr_size,
      Wr_Exclusive      => master_wr_excl,
      Wr_Idle           => master_wr_idle,
      Wr_Response       => master_wr_resp,
      Data_Rd           => master_data_rd,
      Data_Out          => master_data_out,
      Data_Exists       => master_data_exists,
      Data_Wr           => master_data_wr,
      Data_In           => master_data_in,
      Data_Empty        => master_data_empty,

      Direct_Wr_Addr    => master_dwr_addr,
      Direct_Wr_Len     => master_dwr_len,
      Direct_Wr_Data    => master_dwr_data,
      Direct_Wr_Start   => master_dwr_start,
      Direct_Wr_Next    => master_dwr_next,
      Direct_Wr_Done    => master_dwr_done,
      Direct_Wr_Resp    => master_dwr_resp,

      LMB_Data_Addr     => lmb_data_addr,
      LMB_Data_Read     => lmb_data_read,
      LMB_Data_Write    => lmb_data_write,
      LMB_Addr_Strobe   => lmb_addr_strobe,
      LMB_Read_Strobe   => lmb_read_strobe,
      LMB_Write_Strobe  => lmb_write_strobe,
      LMB_Ready         => lmb_ready,
      LMB_Wait          => lmb_wait,
      LMB_UE            => lmb_ue,
      LMB_Byte_Enable   => lmb_byte_enable,

      M_AXI_ACLK        => M_AXI_ACLK,
      M_AXI_ARESETn     => M_AXI_ARESETn,
      M_AXI_AWID        => m_axi_awid_i,
      M_AXI_AWADDR      => m_axi_awaddr_i,
      M_AXI_AWLEN       => m_axi_awlen_i,
      M_AXI_AWSIZE      => m_axi_awsize_i,
      M_AXI_AWBURST     => m_axi_awburst_i,
      M_AXI_AWLOCK      => m_axi_awlock_i,
      M_AXI_AWCACHE     => m_axi_awcache_i,
      M_AXI_AWPROT      => m_axi_awprot_i,
      M_AXI_AWQOS       => m_axi_awqos_i,
      M_AXI_AWVALID     => m_axi_awvalid_i,
      M_AXI_AWREADY     => m_axi_awready_i,
      M_AXI_WLAST       => m_axi_wlast_i,
      M_AXI_WDATA       => m_axi_wdata_i,
      M_AXI_WSTRB       => m_axi_wstrb_i,
      M_AXI_WVALID      => m_axi_wvalid_i,
      M_AXI_WREADY      => m_axi_wready_i,
      M_AXI_BRESP       => m_axi_bresp_i,
      M_AXI_BID         => m_axi_bid_i,
      M_AXI_BVALID      => m_axi_bvalid_i,
      M_AXI_BREADY      => m_axi_bready_i,
      M_AXI_ARADDR      => m_axi_araddr_i,
      M_AXI_ARID        => m_axi_arid_i,
      M_AXI_ARLEN       => m_axi_arlen_i,
      M_AXI_ARSIZE      => m_axi_arsize_i,
      M_AXI_ARBURST     => m_axi_arburst_i,
      M_AXI_ARLOCK      => m_axi_arlock_i,
      M_AXI_ARCACHE     => m_axi_arcache_i,
      M_AXI_ARPROT      => m_axi_arprot_i,
      M_AXI_ARQOS       => m_axi_arqos_i,
      M_AXI_ARVALID     => m_axi_arvalid_i,
      M_AXI_ARREADY     => m_axi_arready_i,
      M_AXI_RLAST       => m_axi_rlast_i,
      M_AXI_RID         => m_axi_rid_i,
      M_AXI_RDATA       => m_axi_rdata_i,
      M_AXI_RRESP       => m_axi_rresp_i,
      M_AXI_RVALID      => m_axi_rvalid_i,
      M_AXI_RREADY      => m_axi_rready_i
    );

    Generate_LMB_Outputs : process (mb_debug_enabled, lmb_addr_strobe)
    begin  -- process Generate_LMB_Outputs
      lmb_addr_strobe_vec <= (others => '0');
      for I in 0 to C_EN_WIDTH - 1 loop
        lmb_addr_strobe_vec(I) <= lmb_addr_strobe and mb_debug_enabled(I);
      end loop;
    end process Generate_LMB_Outputs;

    LMB_Addr_Strobe_0  <= lmb_addr_strobe_vec(0);
    LMB_Addr_Strobe_1  <= lmb_addr_strobe_vec(1);
    LMB_Addr_Strobe_2  <= lmb_addr_strobe_vec(2);
    LMB_Addr_Strobe_3  <= lmb_addr_strobe_vec(3);
    LMB_Addr_Strobe_4  <= lmb_addr_strobe_vec(4);
    LMB_Addr_Strobe_5  <= lmb_addr_strobe_vec(5);
    LMB_Addr_Strobe_6  <= lmb_addr_strobe_vec(6);
    LMB_Addr_Strobe_7  <= lmb_addr_strobe_vec(7);
    LMB_Addr_Strobe_8  <= lmb_addr_strobe_vec(8);
    LMB_Addr_Strobe_9  <= lmb_addr_strobe_vec(9);
    LMB_Addr_Strobe_10 <= lmb_addr_strobe_vec(10);
    LMB_Addr_Strobe_11 <= lmb_addr_strobe_vec(11);
    LMB_Addr_Strobe_12 <= lmb_addr_strobe_vec(12);
    LMB_Addr_Strobe_13 <= lmb_addr_strobe_vec(13);
    LMB_Addr_Strobe_14 <= lmb_addr_strobe_vec(14);
    LMB_Addr_Strobe_15 <= lmb_addr_strobe_vec(15);
    LMB_Addr_Strobe_16 <= lmb_addr_strobe_vec(16);
    LMB_Addr_Strobe_17 <= lmb_addr_strobe_vec(17);
    LMB_Addr_Strobe_18 <= lmb_addr_strobe_vec(18);
    LMB_Addr_Strobe_19 <= lmb_addr_strobe_vec(19);
    LMB_Addr_Strobe_20 <= lmb_addr_strobe_vec(20);
    LMB_Addr_Strobe_21 <= lmb_addr_strobe_vec(21);
    LMB_Addr_Strobe_22 <= lmb_addr_strobe_vec(22);
    LMB_Addr_Strobe_23 <= lmb_addr_strobe_vec(23);
    LMB_Addr_Strobe_24 <= lmb_addr_strobe_vec(24);
    LMB_Addr_Strobe_25 <= lmb_addr_strobe_vec(25);
    LMB_Addr_Strobe_26 <= lmb_addr_strobe_vec(26);
    LMB_Addr_Strobe_27 <= lmb_addr_strobe_vec(27);
    LMB_Addr_Strobe_28 <= lmb_addr_strobe_vec(28);
    LMB_Addr_Strobe_29 <= lmb_addr_strobe_vec(29);
    LMB_Addr_Strobe_30 <= lmb_addr_strobe_vec(30);
    LMB_Addr_Strobe_31 <= lmb_addr_strobe_vec(31);

    LMB_Data_Addr_0  <= lmb_data_addr;
    LMB_Data_Addr_1  <= lmb_data_addr;
    LMB_Data_Addr_2  <= lmb_data_addr;
    LMB_Data_Addr_3  <= lmb_data_addr;
    LMB_Data_Addr_4  <= lmb_data_addr;
    LMB_Data_Addr_5  <= lmb_data_addr;
    LMB_Data_Addr_6  <= lmb_data_addr;
    LMB_Data_Addr_7  <= lmb_data_addr;
    LMB_Data_Addr_8  <= lmb_data_addr;
    LMB_Data_Addr_9  <= lmb_data_addr;
    LMB_Data_Addr_10 <= lmb_data_addr;
    LMB_Data_Addr_11 <= lmb_data_addr;
    LMB_Data_Addr_12 <= lmb_data_addr;
    LMB_Data_Addr_13 <= lmb_data_addr;
    LMB_Data_Addr_14 <= lmb_data_addr;
    LMB_Data_Addr_15 <= lmb_data_addr;
    LMB_Data_Addr_16 <= lmb_data_addr;
    LMB_Data_Addr_17 <= lmb_data_addr;
    LMB_Data_Addr_18 <= lmb_data_addr;
    LMB_Data_Addr_19 <= lmb_data_addr;
    LMB_Data_Addr_20 <= lmb_data_addr;
    LMB_Data_Addr_21 <= lmb_data_addr;
    LMB_Data_Addr_22 <= lmb_data_addr;
    LMB_Data_Addr_23 <= lmb_data_addr;
    LMB_Data_Addr_24 <= lmb_data_addr;
    LMB_Data_Addr_25 <= lmb_data_addr;
    LMB_Data_Addr_26 <= lmb_data_addr;
    LMB_Data_Addr_27 <= lmb_data_addr;
    LMB_Data_Addr_28 <= lmb_data_addr;
    LMB_Data_Addr_29 <= lmb_data_addr;
    LMB_Data_Addr_30 <= lmb_data_addr;
    LMB_Data_Addr_31 <= lmb_data_addr;

    LMB_Data_write_0  <= lmb_data_write;
    LMB_Data_write_1  <= lmb_data_write;
    LMB_Data_write_2  <= lmb_data_write;
    LMB_Data_write_3  <= lmb_data_write;
    LMB_Data_write_4  <= lmb_data_write;
    LMB_Data_write_5  <= lmb_data_write;
    LMB_Data_write_6  <= lmb_data_write;
    LMB_Data_write_7  <= lmb_data_write;
    LMB_Data_write_8  <= lmb_data_write;
    LMB_Data_write_9  <= lmb_data_write;
    LMB_Data_write_10 <= lmb_data_write;
    LMB_Data_write_11 <= lmb_data_write;
    LMB_Data_write_12 <= lmb_data_write;
    LMB_Data_write_13 <= lmb_data_write;
    LMB_Data_write_14 <= lmb_data_write;
    LMB_Data_write_15 <= lmb_data_write;
    LMB_Data_write_16 <= lmb_data_write;
    LMB_Data_write_17 <= lmb_data_write;
    LMB_Data_write_18 <= lmb_data_write;
    LMB_Data_write_19 <= lmb_data_write;
    LMB_Data_write_20 <= lmb_data_write;
    LMB_Data_write_21 <= lmb_data_write;
    LMB_Data_write_22 <= lmb_data_write;
    LMB_Data_write_23 <= lmb_data_write;
    LMB_Data_write_24 <= lmb_data_write;
    LMB_Data_write_25 <= lmb_data_write;
    LMB_Data_write_26 <= lmb_data_write;
    LMB_Data_write_27 <= lmb_data_write;
    LMB_Data_write_28 <= lmb_data_write;
    LMB_Data_write_29 <= lmb_data_write;
    LMB_Data_write_30 <= lmb_data_write;
    LMB_Data_write_31 <= lmb_data_write;

    LMB_Read_strobe_0  <= lmb_read_strobe;
    LMB_Read_strobe_1  <= lmb_read_strobe;
    LMB_Read_strobe_2  <= lmb_read_strobe;
    LMB_Read_strobe_3  <= lmb_read_strobe;
    LMB_Read_strobe_4  <= lmb_read_strobe;
    LMB_Read_strobe_5  <= lmb_read_strobe;
    LMB_Read_strobe_6  <= lmb_read_strobe;
    LMB_Read_strobe_7  <= lmb_read_strobe;
    LMB_Read_strobe_8  <= lmb_read_strobe;
    LMB_Read_strobe_9  <= lmb_read_strobe;
    LMB_Read_strobe_10 <= lmb_read_strobe;
    LMB_Read_strobe_11 <= lmb_read_strobe;
    LMB_Read_strobe_12 <= lmb_read_strobe;
    LMB_Read_strobe_13 <= lmb_read_strobe;
    LMB_Read_strobe_14 <= lmb_read_strobe;
    LMB_Read_strobe_15 <= lmb_read_strobe;
    LMB_Read_strobe_16 <= lmb_read_strobe;
    LMB_Read_strobe_17 <= lmb_read_strobe;
    LMB_Read_strobe_18 <= lmb_read_strobe;
    LMB_Read_strobe_19 <= lmb_read_strobe;
    LMB_Read_strobe_20 <= lmb_read_strobe;
    LMB_Read_strobe_21 <= lmb_read_strobe;
    LMB_Read_strobe_22 <= lmb_read_strobe;
    LMB_Read_strobe_23 <= lmb_read_strobe;
    LMB_Read_strobe_24 <= lmb_read_strobe;
    LMB_Read_strobe_25 <= lmb_read_strobe;
    LMB_Read_strobe_26 <= lmb_read_strobe;
    LMB_Read_strobe_27 <= lmb_read_strobe;
    LMB_Read_strobe_28 <= lmb_read_strobe;
    LMB_Read_strobe_29 <= lmb_read_strobe;
    LMB_Read_strobe_30 <= lmb_read_strobe;
    LMB_Read_strobe_31 <= lmb_read_strobe;

    LMB_Write_strobe_0  <= lmb_write_strobe;
    LMB_Write_strobe_1  <= lmb_write_strobe;
    LMB_Write_strobe_2  <= lmb_write_strobe;
    LMB_Write_strobe_3  <= lmb_write_strobe;
    LMB_Write_strobe_4  <= lmb_write_strobe;
    LMB_Write_strobe_5  <= lmb_write_strobe;
    LMB_Write_strobe_6  <= lmb_write_strobe;
    LMB_Write_strobe_7  <= lmb_write_strobe;
    LMB_Write_strobe_8  <= lmb_write_strobe;
    LMB_Write_strobe_9  <= lmb_write_strobe;
    LMB_Write_strobe_10 <= lmb_write_strobe;
    LMB_Write_strobe_11 <= lmb_write_strobe;
    LMB_Write_strobe_12 <= lmb_write_strobe;
    LMB_Write_strobe_13 <= lmb_write_strobe;
    LMB_Write_strobe_14 <= lmb_write_strobe;
    LMB_Write_strobe_15 <= lmb_write_strobe;
    LMB_Write_strobe_16 <= lmb_write_strobe;
    LMB_Write_strobe_17 <= lmb_write_strobe;
    LMB_Write_strobe_18 <= lmb_write_strobe;
    LMB_Write_strobe_19 <= lmb_write_strobe;
    LMB_Write_strobe_20 <= lmb_write_strobe;
    LMB_Write_strobe_21 <= lmb_write_strobe;
    LMB_Write_strobe_22 <= lmb_write_strobe;
    LMB_Write_strobe_23 <= lmb_write_strobe;
    LMB_Write_strobe_24 <= lmb_write_strobe;
    LMB_Write_strobe_25 <= lmb_write_strobe;
    LMB_Write_strobe_26 <= lmb_write_strobe;
    LMB_Write_strobe_27 <= lmb_write_strobe;
    LMB_Write_strobe_28 <= lmb_write_strobe;
    LMB_Write_strobe_29 <= lmb_write_strobe;
    LMB_Write_strobe_30 <= lmb_write_strobe;
    LMB_Write_strobe_31 <= lmb_write_strobe;

    LMB_Byte_enable_0  <= lmb_byte_enable;
    LMB_Byte_enable_1  <= lmb_byte_enable;
    LMB_Byte_enable_2  <= lmb_byte_enable;
    LMB_Byte_enable_3  <= lmb_byte_enable;
    LMB_Byte_enable_4  <= lmb_byte_enable;
    LMB_Byte_enable_5  <= lmb_byte_enable;
    LMB_Byte_enable_6  <= lmb_byte_enable;
    LMB_Byte_enable_7  <= lmb_byte_enable;
    LMB_Byte_enable_8  <= lmb_byte_enable;
    LMB_Byte_enable_9  <= lmb_byte_enable;
    LMB_Byte_enable_10 <= lmb_byte_enable;
    LMB_Byte_enable_11 <= lmb_byte_enable;
    LMB_Byte_enable_12 <= lmb_byte_enable;
    LMB_Byte_enable_13 <= lmb_byte_enable;
    LMB_Byte_enable_14 <= lmb_byte_enable;
    LMB_Byte_enable_15 <= lmb_byte_enable;
    LMB_Byte_enable_16 <= lmb_byte_enable;
    LMB_Byte_enable_17 <= lmb_byte_enable;
    LMB_Byte_enable_18 <= lmb_byte_enable;
    LMB_Byte_enable_19 <= lmb_byte_enable;
    LMB_Byte_enable_20 <= lmb_byte_enable;
    LMB_Byte_enable_21 <= lmb_byte_enable;
    LMB_Byte_enable_22 <= lmb_byte_enable;
    LMB_Byte_enable_23 <= lmb_byte_enable;
    LMB_Byte_enable_24 <= lmb_byte_enable;
    LMB_Byte_enable_25 <= lmb_byte_enable;
    LMB_Byte_enable_26 <= lmb_byte_enable;
    LMB_Byte_enable_27 <= lmb_byte_enable;
    LMB_Byte_enable_28 <= lmb_byte_enable;
    LMB_Byte_enable_29 <= lmb_byte_enable;
    LMB_Byte_enable_30 <= lmb_byte_enable;
    LMB_Byte_enable_31 <= lmb_byte_enable;

    Generate_LMB_Inputs : process (mb_debug_enabled, lmb_data_read_vec_q, lmb_ready_vec_q, lmb_wait_vec_q, lmb_ue_vec_q)
      variable data_mask : std_logic_vector(0 to C_DATA_SIZE - 1);
      variable data_read : std_logic_vector(0 to C_DATA_SIZE - 1);
      variable ready     : std_logic;
      variable wait_i    : std_logic;
      variable ue        : std_logic;
    begin  -- process Generate_LMB_Inputs
      data_read := (others => '0');
      ready     := '0';
      wait_i    := '0';
      ue        := '0';
      for I in 0 to C_EN_WIDTH - 1 loop
        data_mask := (0 to C_DATA_SIZE - 1 => mb_debug_enabled(I));
        data_read := data_read or (lmb_data_read_vec_q(I) and data_mask);
        ready     := ready     or (lmb_ready_vec_q(I)     and mb_debug_enabled(I));
        wait_i    := wait_i    or (lmb_wait_vec_q(I)      and mb_debug_enabled(I));
        ue        := ue        or (lmb_ue_vec_q(I)        and mb_debug_enabled(I));
      end loop;
      lmb_data_read <= data_read;
      lmb_ready     <= ready;
      lmb_wait      <= wait_i;
      lmb_ue        <= ue;
    end process Generate_LMB_Inputs;

    Clock_LMB_Inputs : process (M_AXI_ACLK)
    begin
      if M_AXI_ACLK'event and M_AXI_ACLK = '1' then -- rising clock edge
        for I in 0 to C_EN_WIDTH - 1 loop
          lmb_data_read_vec_q(I) <= lmb_data_read_vec(I);
          lmb_ready_vec_q(I)     <= lmb_ready_vec(I);
          lmb_wait_vec_q(I)      <= lmb_wait_vec(I);
          lmb_ue_vec_q(I)        <= lmb_ue_vec(I);
        end loop;
      end if;
    end process Clock_LMB_Inputs;

    lmb_data_read_vec(0)  <= LMB_Data_Read_0;
    lmb_data_read_vec(1)  <= LMB_Data_Read_1;
    lmb_data_read_vec(2)  <= LMB_Data_Read_2;
    lmb_data_read_vec(3)  <= LMB_Data_Read_3;
    lmb_data_read_vec(4)  <= LMB_Data_Read_4;
    lmb_data_read_vec(5)  <= LMB_Data_Read_5;
    lmb_data_read_vec(6)  <= LMB_Data_Read_6;
    lmb_data_read_vec(7)  <= LMB_Data_Read_7;
    lmb_data_read_vec(8)  <= LMB_Data_Read_8;
    lmb_data_read_vec(9)  <= LMB_Data_Read_9;
    lmb_data_read_vec(10) <= LMB_Data_Read_10;
    lmb_data_read_vec(11) <= LMB_Data_Read_11;
    lmb_data_read_vec(12) <= LMB_Data_Read_12;
    lmb_data_read_vec(13) <= LMB_Data_Read_13;
    lmb_data_read_vec(14) <= LMB_Data_Read_14;
    lmb_data_read_vec(15) <= LMB_Data_Read_15;
    lmb_data_read_vec(16) <= LMB_Data_Read_16;
    lmb_data_read_vec(17) <= LMB_Data_Read_17;
    lmb_data_read_vec(18) <= LMB_Data_Read_18;
    lmb_data_read_vec(19) <= LMB_Data_Read_19;
    lmb_data_read_vec(20) <= LMB_Data_Read_20;
    lmb_data_read_vec(21) <= LMB_Data_Read_21;
    lmb_data_read_vec(22) <= LMB_Data_Read_22;
    lmb_data_read_vec(23) <= LMB_Data_Read_23;
    lmb_data_read_vec(24) <= LMB_Data_Read_24;
    lmb_data_read_vec(25) <= LMB_Data_Read_25;
    lmb_data_read_vec(26) <= LMB_Data_Read_26;
    lmb_data_read_vec(27) <= LMB_Data_Read_27;
    lmb_data_read_vec(28) <= LMB_Data_Read_28;
    lmb_data_read_vec(29) <= LMB_Data_Read_29;
    lmb_data_read_vec(30) <= LMB_Data_Read_30;
    lmb_data_read_vec(31) <= LMB_Data_Read_31;

    lmb_ready_vec(0)      <= LMB_Ready_0;
    lmb_ready_vec(1)      <= LMB_Ready_1;
    lmb_ready_vec(2)      <= LMB_Ready_2;
    lmb_ready_vec(3)      <= LMB_Ready_3;
    lmb_ready_vec(4)      <= LMB_Ready_4;
    lmb_ready_vec(5)      <= LMB_Ready_5;
    lmb_ready_vec(6)      <= LMB_Ready_6;
    lmb_ready_vec(7)      <= LMB_Ready_7;
    lmb_ready_vec(8)      <= LMB_Ready_8;
    lmb_ready_vec(9)      <= LMB_Ready_9;
    lmb_ready_vec(10)     <= LMB_Ready_10;
    lmb_ready_vec(11)     <= LMB_Ready_11;
    lmb_ready_vec(12)     <= LMB_Ready_12;
    lmb_ready_vec(13)     <= LMB_Ready_13;
    lmb_ready_vec(14)     <= LMB_Ready_14;
    lmb_ready_vec(15)     <= LMB_Ready_15;
    lmb_ready_vec(16)     <= LMB_Ready_16;
    lmb_ready_vec(17)     <= LMB_Ready_17;
    lmb_ready_vec(18)     <= LMB_Ready_18;
    lmb_ready_vec(19)     <= LMB_Ready_19;
    lmb_ready_vec(20)     <= LMB_Ready_20;
    lmb_ready_vec(21)     <= LMB_Ready_21;
    lmb_ready_vec(22)     <= LMB_Ready_22;
    lmb_ready_vec(23)     <= LMB_Ready_23;
    lmb_ready_vec(24)     <= LMB_Ready_24;
    lmb_ready_vec(25)     <= LMB_Ready_25;
    lmb_ready_vec(26)     <= LMB_Ready_26;
    lmb_ready_vec(27)     <= LMB_Ready_27;
    lmb_ready_vec(28)     <= LMB_Ready_28;
    lmb_ready_vec(29)     <= LMB_Ready_29;
    lmb_ready_vec(30)     <= LMB_Ready_30;
    lmb_ready_vec(31)     <= LMB_Ready_31;

    lmb_wait_vec(0)       <= LMB_Wait_0;
    lmb_wait_vec(1)       <= LMB_Wait_1;
    lmb_wait_vec(2)       <= LMB_Wait_2;
    lmb_wait_vec(3)       <= LMB_Wait_3;
    lmb_wait_vec(4)       <= LMB_Wait_4;
    lmb_wait_vec(5)       <= LMB_Wait_5;
    lmb_wait_vec(6)       <= LMB_Wait_6;
    lmb_wait_vec(7)       <= LMB_Wait_7;
    lmb_wait_vec(8)       <= LMB_Wait_8;
    lmb_wait_vec(9)       <= LMB_Wait_9;
    lmb_wait_vec(10)      <= LMB_Wait_10;
    lmb_wait_vec(11)      <= LMB_Wait_11;
    lmb_wait_vec(12)      <= LMB_Wait_12;
    lmb_wait_vec(13)      <= LMB_Wait_13;
    lmb_wait_vec(14)      <= LMB_Wait_14;
    lmb_wait_vec(15)      <= LMB_Wait_15;
    lmb_wait_vec(16)      <= LMB_Wait_16;
    lmb_wait_vec(17)      <= LMB_Wait_17;
    lmb_wait_vec(18)      <= LMB_Wait_18;
    lmb_wait_vec(19)      <= LMB_Wait_19;
    lmb_wait_vec(20)      <= LMB_Wait_20;
    lmb_wait_vec(21)      <= LMB_Wait_21;
    lmb_wait_vec(22)      <= LMB_Wait_22;
    lmb_wait_vec(23)      <= LMB_Wait_23;
    lmb_wait_vec(24)      <= LMB_Wait_24;
    lmb_wait_vec(25)      <= LMB_Wait_25;
    lmb_wait_vec(26)      <= LMB_Wait_26;
    lmb_wait_vec(27)      <= LMB_Wait_27;
    lmb_wait_vec(28)      <= LMB_Wait_28;
    lmb_wait_vec(29)      <= LMB_Wait_29;
    lmb_wait_vec(30)      <= LMB_Wait_30;
    lmb_wait_vec(31)      <= LMB_Wait_31;

    lmb_ue_vec(0)         <= LMB_UE_0;
    lmb_ue_vec(1)         <= LMB_UE_1;
    lmb_ue_vec(2)         <= LMB_UE_2;
    lmb_ue_vec(3)         <= LMB_UE_3;
    lmb_ue_vec(4)         <= LMB_UE_4;
    lmb_ue_vec(5)         <= LMB_UE_5;
    lmb_ue_vec(6)         <= LMB_UE_6;
    lmb_ue_vec(7)         <= LMB_UE_7;
    lmb_ue_vec(8)         <= LMB_UE_8;
    lmb_ue_vec(9)         <= LMB_UE_9;
    lmb_ue_vec(10)        <= LMB_UE_10;
    lmb_ue_vec(11)        <= LMB_UE_11;
    lmb_ue_vec(12)        <= LMB_UE_12;
    lmb_ue_vec(13)        <= LMB_UE_13;
    lmb_ue_vec(14)        <= LMB_UE_14;
    lmb_ue_vec(15)        <= LMB_UE_15;
    lmb_ue_vec(16)        <= LMB_UE_16;
    lmb_ue_vec(17)        <= LMB_UE_17;
    lmb_ue_vec(18)        <= LMB_UE_18;
    lmb_ue_vec(19)        <= LMB_UE_19;
    lmb_ue_vec(20)        <= LMB_UE_20;
    lmb_ue_vec(21)        <= LMB_UE_21;
    lmb_ue_vec(22)        <= LMB_UE_22;
    lmb_ue_vec(23)        <= LMB_UE_23;
    lmb_ue_vec(24)        <= LMB_UE_24;
    lmb_ue_vec(25)        <= LMB_UE_25;
    lmb_ue_vec(26)        <= LMB_UE_26;
    lmb_ue_vec(27)        <= LMB_UE_27;
    lmb_ue_vec(28)        <= LMB_UE_28;
    lmb_ue_vec(29)        <= LMB_UE_29;
    lmb_ue_vec(30)        <= LMB_UE_30;
    lmb_ue_vec(31)        <= LMB_UE_31;

    Using_M_AXI : if (C_DBG_MEM_ACCESS = 1) generate
    begin
      M_AXI_AWID          <= m_axi_awid_i;
      M_AXI_AWADDR        <= m_axi_awaddr_i;
      M_AXI_AWLEN         <= m_axi_awlen_i;
      M_AXI_AWSIZE        <= m_axi_awsize_i;
      M_AXI_AWBURST       <= m_axi_awburst_i;
      M_AXI_AWLOCK        <= m_axi_awlock_i;
      M_AXI_AWCACHE       <= m_axi_awcache_i;
      M_AXI_AWPROT        <= m_axi_awprot_i;
      M_AXI_AWQOS         <= m_axi_awqos_i;
      M_AXI_AWVALID       <= m_axi_awvalid_i;
      M_AXI_WDATA         <= m_axi_wdata_i;
      M_AXI_WSTRB         <= m_axi_wstrb_i;
      M_AXI_WLAST         <= m_axi_wlast_i;
      M_AXI_WVALID        <= m_axi_wvalid_i;
      M_AXI_BREADY        <= m_axi_bready_i;
      M_AXI_ARID          <= m_axi_arid_i;
      M_AXI_ARADDR        <= m_axi_araddr_i;
      M_AXI_ARLEN         <= m_axi_arlen_i;
      M_AXI_ARSIZE        <= m_axi_arsize_i;
      M_AXI_ARBURST       <= m_axi_arburst_i;
      M_AXI_ARLOCK        <= m_axi_arlock_i;
      M_AXI_ARCACHE       <= m_axi_arcache_i;
      M_AXI_ARPROT        <= m_axi_arprot_i;
      M_AXI_ARQOS         <= m_axi_arqos_i;
      M_AXI_ARVALID       <= m_axi_arvalid_i;
      M_AXI_RREADY        <= m_axi_rready_i;

      m_axi_awready_i     <= M_AXI_AWREADY;
      m_axi_wready_i      <= M_AXI_WREADY;
      m_axi_bresp_i       <= M_AXI_BRESP;
      m_axi_bid_i         <= M_AXI_BID;
      m_axi_bvalid_i      <= M_AXI_BVALID;
      m_axi_arready_i     <= M_AXI_ARREADY;
      m_axi_rid_i         <= M_AXI_RID;
      m_axi_rdata_i       <= M_AXI_RDATA;
      m_axi_rresp_i       <= M_AXI_RRESP;
      m_axi_rlast_i       <= M_AXI_RLAST;
      m_axi_rvalid_i      <= M_AXI_RVALID;
    end generate Using_M_AXI;

    Using_Dbg_AXI : if (C_USE_DBG_AXI) generate
    begin
      M_AXI_AWID          <= (others => '0');
      M_AXI_AWADDR        <= (others => '0');
      M_AXI_AWLEN         <= (others => '0');
      M_AXI_AWSIZE        <= (others => '0');
      M_AXI_AWBURST       <= (others => '0');
      M_AXI_AWLOCK        <= '0';
      M_AXI_AWCACHE       <= (others => '0');
      M_AXI_AWPROT        <= (others => '0');
      M_AXI_AWQOS         <= (others => '0');
      M_AXI_AWVALID       <= '0';
      M_AXI_WDATA         <= (others => '0');
      M_AXI_WSTRB         <= (others => '0');
      M_AXI_WLAST         <= '0';
      M_AXI_WVALID        <= '0';
      M_AXI_BREADY        <= '0';
      M_AXI_ARID          <= (others => '0');
      M_AXI_ARADDR        <= (others => '0');
      M_AXI_ARLEN         <= (others => '0');
      M_AXI_ARSIZE        <= (others => '0');
      M_AXI_ARBURST       <= (others => '0');
      M_AXI_ARLOCK        <= '0';
      M_AXI_ARCACHE       <= (others => '0');
      M_AXI_ARPROT        <= (others => '0');
      M_AXI_ARQOS         <= (others => '0');
      M_AXI_ARVALID       <= '0';
      M_AXI_RREADY        <= '0';

      m_axi_awready_i     <= m_axi_awready_trace;
      m_axi_wready_i      <= m_axi_wready_trace;
      m_axi_bresp_i       <= m_axi_bresp_trace;
      m_axi_bvalid_i      <= m_axi_bvalid_trace;
      m_axi_arready_i     <= m_axi_arready_trace;
      m_axi_rdata_i       <= m_axi_rdata_trace;
      m_axi_rresp_i       <= m_axi_rresp_trace;
      m_axi_rvalid_i      <= m_axi_rvalid_trace;

      m_axi_bid_i         <= (others => '0');
      m_axi_rid_i         <= (others => '0');
      m_axi_rlast_i       <= '1';
    end generate Using_Dbg_AXI;

  end generate Use_Bus_MASTER;

  Use_Bus_MASTER_AXI : if (C_DBG_MEM_ACCESS = 0 and C_TRACE_AXI_MASTER) generate
  begin

    bus_master_I : bus_master
    generic map  (
      C_TARGET                => C_TARGET,
      C_M_AXI_DATA_WIDTH      => C_M_AXI_DATA_WIDTH,
      C_M_AXI_THREAD_ID_WIDTH => C_M_AXI_THREAD_ID_WIDTH,
      C_M_AXI_ADDR_WIDTH      => C_M_AXI_ADDR_WIDTH,
      C_ADDR_SIZE             => C_ADDR_SIZE,
      C_DATA_SIZE             => C_DATA_SIZE,
      C_LMB_PROTOCOL          => C_LMB_PROTOCOL,
      C_HAS_FIFO_PORTS        => false,
      C_HAS_DIRECT_PORT       => true,
      C_USE_SRL16             => C_USE_SRL16
    )
    port map (
      Rd_Start          => master_rd_start,
      Rd_Addr           => master_rd_addr,
      Rd_Len            => master_rd_len,
      Rd_Size           => master_rd_size,
      Rd_Exclusive      => master_rd_excl,
      Rd_Idle           => master_rd_idle,
      Rd_Response       => master_rd_resp,
      Wr_Start          => master_wr_start,
      Wr_Addr           => master_wr_addr,
      Wr_Len            => master_wr_len,
      Wr_Size           => master_wr_size,
      Wr_Exclusive      => master_wr_excl,
      Wr_Idle           => master_wr_idle,
      Wr_Response       => master_wr_resp,
      Data_Rd           => master_data_rd,
      Data_Out          => master_data_out,
      Data_Exists       => master_data_exists,
      Data_Wr           => master_data_wr,
      Data_In           => master_data_in,
      Data_Empty        => master_data_empty,

      Direct_Wr_Addr    => master_dwr_addr,
      Direct_Wr_Len     => master_dwr_len,
      Direct_Wr_Data    => master_dwr_data,
      Direct_Wr_Start   => master_dwr_start,
      Direct_Wr_Next    => master_dwr_next,
      Direct_Wr_Done    => master_dwr_done,
      Direct_Wr_Resp    => master_dwr_resp,

      LMB_Data_Addr     => open,
      LMB_Data_Read     => (others => '0'),
      LMB_Data_Write    => open,
      LMB_Addr_Strobe   => open,
      LMB_Read_Strobe   => open,
      LMB_Write_Strobe  => open,
      LMB_Ready         => '0',
      LMB_Wait          => '0',
      LMB_UE            => '0',
      LMB_Byte_Enable   => open,

      M_AXI_ACLK        => M_AXI_ACLK,
      M_AXI_ARESETn     => M_AXI_ARESETn,
      M_AXI_AWID        => M_AXI_AWID,
      M_AXI_AWADDR      => M_AXI_AWADDR,
      M_AXI_AWLEN       => M_AXI_AWLEN,
      M_AXI_AWSIZE      => M_AXI_AWSIZE,
      M_AXI_AWBURST     => M_AXI_AWBURST,
      M_AXI_AWLOCK      => M_AXI_AWLOCK,
      M_AXI_AWCACHE     => M_AXI_AWCACHE,
      M_AXI_AWPROT      => M_AXI_AWPROT,
      M_AXI_AWQOS       => M_AXI_AWQOS,
      M_AXI_AWVALID     => M_AXI_AWVALID,
      M_AXI_AWREADY     => M_AXI_AWREADY,
      M_AXI_WLAST       => M_AXI_WLAST,
      M_AXI_WDATA       => M_AXI_WDATA,
      M_AXI_WSTRB       => M_AXI_WSTRB,
      M_AXI_WVALID      => M_AXI_WVALID,
      M_AXI_WREADY      => M_AXI_WREADY,
      M_AXI_BRESP       => M_AXI_BRESP,
      M_AXI_BID         => M_AXI_BID,
      M_AXI_BVALID      => M_AXI_BVALID,
      M_AXI_BREADY      => M_AXI_BREADY,
      M_AXI_ARADDR      => M_AXI_ARADDR,
      M_AXI_ARID        => M_AXI_ARID,
      M_AXI_ARLEN       => M_AXI_ARLEN,
      M_AXI_ARSIZE      => M_AXI_ARSIZE,
      M_AXI_ARBURST     => M_AXI_ARBURST,
      M_AXI_ARLOCK      => M_AXI_ARLOCK,
      M_AXI_ARCACHE     => M_AXI_ARCACHE,
      M_AXI_ARPROT      => M_AXI_ARPROT,
      M_AXI_ARQOS       => M_AXI_ARQOS,
      M_AXI_ARVALID     => M_AXI_ARVALID,
      M_AXI_ARREADY     => M_AXI_ARREADY,
      M_AXI_RLAST       => M_AXI_RLAST,
      M_AXI_RID         => M_AXI_RID,
      M_AXI_RDATA       => M_AXI_RDATA,
      M_AXI_RRESP       => M_AXI_RRESP,
      M_AXI_RVALID      => M_AXI_RVALID,
      M_AXI_RREADY      => M_AXI_RREADY
    );

  end generate Use_Bus_MASTER_AXI;

  No_Bus_MASTER_AXI : if (C_DBG_MEM_ACCESS = 0 and C_TRACE_OUTPUT = 0) generate
  begin
    master_rd_idle      <= '1';
    master_rd_resp      <= "00";
    master_wr_idle      <= '1';
    master_wr_resp      <= "00";
    master_data_out     <= (others => '0');
    master_data_exists  <= '0';
    master_data_empty   <= '1';
    master_dwr_next     <= '0';
    master_dwr_done     <= '0';
    master_dwr_resp     <= (others => '0');

    M_AXI_AWID          <= (others => '0');
    M_AXI_AWADDR        <= (others => '0');
    M_AXI_AWLEN         <= (others => '0');
    M_AXI_AWSIZE        <= (others => '0');
    M_AXI_AWBURST       <= (others => '0');
    M_AXI_AWLOCK        <= '0';
    M_AXI_AWCACHE       <= (others => '0');
    M_AXI_AWPROT        <= (others => '0');
    M_AXI_AWQOS         <= (others => '0');
    M_AXI_AWVALID       <= '0';
    M_AXI_WDATA         <= (others => '0');
    M_AXI_WSTRB         <= (others => '0');
    M_AXI_WLAST         <= '0';
    M_AXI_WVALID        <= '0';
    M_AXI_BREADY        <= '0';
    M_AXI_ARID          <= (others => '0');
    M_AXI_ARADDR        <= (others => '0');
    M_AXI_ARLEN         <= (others => '0');
    M_AXI_ARSIZE        <= (others => '0');
    M_AXI_ARBURST       <= (others => '0');
    M_AXI_ARLOCK        <= '0';
    M_AXI_ARCACHE       <= (others => '0');
    M_AXI_ARPROT        <= (others => '0');
    M_AXI_ARQOS         <= (others => '0');
    M_AXI_ARVALID       <= '0';
    M_AXI_RREADY        <= '0';
  end generate No_Bus_MASTER_AXI;

  No_Bus_MASTER_LMB : if (C_DBG_MEM_ACCESS = 0 and C_TRACE_OUTPUT = 0) generate
  begin
    m_axi_awaddr_i      <= (others => '0');
    m_axi_awvalid_i     <= '0';
    m_axi_wdata_i       <= (others => '0');
    m_axi_wvalid_i      <= '0';
    m_axi_bready_i      <= '0';
    m_axi_araddr_i      <= (others => '0');
    m_axi_arvalid_i     <= '0';
    m_axi_rready_i      <= '0';

    LMB_Data_Addr_0     <= (others => '0');
    LMB_Data_Write_0    <= (others => '0');
    LMB_Addr_Strobe_0   <= '0';
    LMB_Read_Strobe_0   <= '0';
    LMB_Write_Strobe_0  <= '0';
    LMB_Byte_Enable_0   <= (others => '0');

    LMB_Data_Addr_1     <= (others => '0');
    LMB_Data_Write_1    <= (others => '0');
    LMB_Addr_Strobe_1   <= '0';
    LMB_Read_Strobe_1   <= '0';
    LMB_Write_Strobe_1  <= '0';
    LMB_Byte_Enable_1   <= (others => '0');

    LMB_Data_Addr_2     <= (others => '0');
    LMB_Data_Write_2    <= (others => '0');
    LMB_Addr_Strobe_2   <= '0';
    LMB_Read_Strobe_2   <= '0';
    LMB_Write_Strobe_2  <= '0';
    LMB_Byte_Enable_2   <= (others => '0');

    LMB_Data_Addr_3     <= (others => '0');
    LMB_Data_Write_3    <= (others => '0');
    LMB_Addr_Strobe_3   <= '0';
    LMB_Read_Strobe_3   <= '0';
    LMB_Write_Strobe_3  <= '0';
    LMB_Byte_Enable_3   <= (others => '0');

    LMB_Data_Addr_4     <= (others => '0');
    LMB_Data_Write_4    <= (others => '0');
    LMB_Addr_Strobe_4   <= '0';
    LMB_Read_Strobe_4   <= '0';
    LMB_Write_Strobe_4  <= '0';
    LMB_Byte_Enable_4   <= (others => '0');

    LMB_Data_Addr_5     <= (others => '0');
    LMB_Data_Write_5    <= (others => '0');
    LMB_Addr_Strobe_5   <= '0';
    LMB_Read_Strobe_5   <= '0';
    LMB_Write_Strobe_5  <= '0';
    LMB_Byte_Enable_5   <= (others => '0');

    LMB_Data_Addr_6     <= (others => '0');
    LMB_Data_Write_6    <= (others => '0');
    LMB_Addr_Strobe_6   <= '0';
    LMB_Read_Strobe_6   <= '0';
    LMB_Write_Strobe_6  <= '0';
    LMB_Byte_Enable_6   <= (others => '0');

    LMB_Data_Addr_7     <= (others => '0');
    LMB_Data_Write_7    <= (others => '0');
    LMB_Addr_Strobe_7   <= '0';
    LMB_Read_Strobe_7   <= '0';
    LMB_Write_Strobe_7  <= '0';
    LMB_Byte_Enable_7   <= (others => '0');

    LMB_Data_Addr_8     <= (others => '0');
    LMB_Data_Write_8    <= (others => '0');
    LMB_Addr_Strobe_8   <= '0';
    LMB_Read_Strobe_8   <= '0';
    LMB_Write_Strobe_8  <= '0';
    LMB_Byte_Enable_8   <= (others => '0');

    LMB_Data_Addr_9     <= (others => '0');
    LMB_Data_Write_9    <= (others => '0');
    LMB_Addr_Strobe_9   <= '0';
    LMB_Read_Strobe_9   <= '0';
    LMB_Write_Strobe_9  <= '0';
    LMB_Byte_Enable_9   <= (others => '0');

    LMB_Data_Addr_10    <= (others => '0');
    LMB_Data_Write_10   <= (others => '0');
    LMB_Addr_Strobe_10  <= '0';
    LMB_Read_Strobe_10  <= '0';
    LMB_Write_Strobe_10 <= '0';
    LMB_Byte_Enable_10  <= (others => '0');

    LMB_Data_Addr_11    <= (others => '0');
    LMB_Data_Write_11   <= (others => '0');
    LMB_Addr_Strobe_11  <= '0';
    LMB_Read_Strobe_11  <= '0';
    LMB_Write_Strobe_11 <= '0';
    LMB_Byte_Enable_11  <= (others => '0');

    LMB_Data_Addr_12    <= (others => '0');
    LMB_Data_Write_12   <= (others => '0');
    LMB_Addr_Strobe_12  <= '0';
    LMB_Read_Strobe_12  <= '0';
    LMB_Write_Strobe_12 <= '0';
    LMB_Byte_Enable_12  <= (others => '0');

    LMB_Data_Addr_13    <= (others => '0');
    LMB_Data_Write_13   <= (others => '0');
    LMB_Addr_Strobe_13  <= '0';
    LMB_Read_Strobe_13  <= '0';
    LMB_Write_Strobe_13 <= '0';
    LMB_Byte_Enable_13  <= (others => '0');

    LMB_Data_Addr_14    <= (others => '0');
    LMB_Data_Write_14   <= (others => '0');
    LMB_Addr_Strobe_14  <= '0';
    LMB_Read_Strobe_14  <= '0';
    LMB_Write_Strobe_14 <= '0';
    LMB_Byte_Enable_14  <= (others => '0');

    LMB_Data_Addr_15    <= (others => '0');
    LMB_Data_Write_15   <= (others => '0');
    LMB_Addr_Strobe_15  <= '0';
    LMB_Read_Strobe_15  <= '0';
    LMB_Write_Strobe_15 <= '0';
    LMB_Byte_Enable_15  <= (others => '0');

    LMB_Data_Addr_16    <= (others => '0');
    LMB_Data_Write_16   <= (others => '0');
    LMB_Addr_Strobe_16  <= '0';
    LMB_Read_Strobe_16  <= '0';
    LMB_Write_Strobe_16 <= '0';
    LMB_Byte_Enable_16  <= (others => '0');

    LMB_Data_Addr_17    <= (others => '0');
    LMB_Data_Write_17   <= (others => '0');
    LMB_Addr_Strobe_17  <= '0';
    LMB_Read_Strobe_17  <= '0';
    LMB_Write_Strobe_17 <= '0';
    LMB_Byte_Enable_17  <= (others => '0');

    LMB_Data_Addr_18    <= (others => '0');
    LMB_Data_Write_18   <= (others => '0');
    LMB_Addr_Strobe_18  <= '0';
    LMB_Read_Strobe_18  <= '0';
    LMB_Write_Strobe_18 <= '0';
    LMB_Byte_Enable_18  <= (others => '0');

    LMB_Data_Addr_19    <= (others => '0');
    LMB_Data_Write_19   <= (others => '0');
    LMB_Addr_Strobe_19  <= '0';
    LMB_Read_Strobe_19  <= '0';
    LMB_Write_Strobe_19 <= '0';
    LMB_Byte_Enable_19  <= (others => '0');

    LMB_Data_Addr_20    <= (others => '0');
    LMB_Data_Write_20   <= (others => '0');
    LMB_Addr_Strobe_20  <= '0';
    LMB_Read_Strobe_20  <= '0';
    LMB_Write_Strobe_20 <= '0';
    LMB_Byte_Enable_20  <= (others => '0');

    LMB_Data_Addr_21    <= (others => '0');
    LMB_Data_Write_21   <= (others => '0');
    LMB_Addr_Strobe_21  <= '0';
    LMB_Read_Strobe_21  <= '0';
    LMB_Write_Strobe_21 <= '0';
    LMB_Byte_Enable_21  <= (others => '0');

    LMB_Data_Addr_22    <= (others => '0');
    LMB_Data_Write_22   <= (others => '0');
    LMB_Addr_Strobe_22  <= '0';
    LMB_Read_Strobe_22  <= '0';
    LMB_Write_Strobe_22 <= '0';
    LMB_Byte_Enable_22  <= (others => '0');

    LMB_Data_Addr_23    <= (others => '0');
    LMB_Data_Write_23   <= (others => '0');
    LMB_Addr_Strobe_23  <= '0';
    LMB_Read_Strobe_23  <= '0';
    LMB_Write_Strobe_23 <= '0';
    LMB_Byte_Enable_23  <= (others => '0');

    LMB_Data_Addr_24    <= (others => '0');
    LMB_Data_Write_24   <= (others => '0');
    LMB_Addr_Strobe_24  <= '0';
    LMB_Read_Strobe_24  <= '0';
    LMB_Write_Strobe_24 <= '0';
    LMB_Byte_Enable_24  <= (others => '0');

    LMB_Data_Addr_25    <= (others => '0');
    LMB_Data_Write_25   <= (others => '0');
    LMB_Addr_Strobe_25  <= '0';
    LMB_Read_Strobe_25  <= '0';
    LMB_Write_Strobe_25 <= '0';
    LMB_Byte_Enable_25  <= (others => '0');

    LMB_Data_Addr_26    <= (others => '0');
    LMB_Data_Write_26   <= (others => '0');
    LMB_Addr_Strobe_26  <= '0';
    LMB_Read_Strobe_26  <= '0';
    LMB_Write_Strobe_26 <= '0';
    LMB_Byte_Enable_26  <= (others => '0');

    LMB_Data_Addr_27    <= (others => '0');
    LMB_Data_Write_27   <= (others => '0');
    LMB_Addr_Strobe_27  <= '0';
    LMB_Read_Strobe_27  <= '0';
    LMB_Write_Strobe_27 <= '0';
    LMB_Byte_Enable_27  <= (others => '0');

    LMB_Data_Addr_28    <= (others => '0');
    LMB_Data_Write_28   <= (others => '0');
    LMB_Addr_Strobe_28  <= '0';
    LMB_Read_Strobe_28  <= '0';
    LMB_Write_Strobe_28 <= '0';
    LMB_Byte_Enable_28  <= (others => '0');

    LMB_Data_Addr_29    <= (others => '0');
    LMB_Data_Write_29   <= (others => '0');
    LMB_Addr_Strobe_29  <= '0';
    LMB_Read_Strobe_29  <= '0';
    LMB_Write_Strobe_29 <= '0';
    LMB_Byte_Enable_29  <= (others => '0');

    LMB_Data_Addr_30    <= (others => '0');
    LMB_Data_Write_30   <= (others => '0');
    LMB_Addr_Strobe_30  <= '0';
    LMB_Read_Strobe_30  <= '0';
    LMB_Write_Strobe_30 <= '0';
    LMB_Byte_Enable_30  <= (others => '0');

    LMB_Data_Addr_31    <= (others => '0');
    LMB_Data_Write_31   <= (others => '0');
    LMB_Addr_Strobe_31  <= '0';
    LMB_Read_Strobe_31  <= '0';
    LMB_Write_Strobe_31 <= '0';
    LMB_Byte_Enable_31  <= (others => '0');
  end generate No_Bus_MASTER_LMB;

  Use_AXI_IPIF : if C_USE_UART = 1 or  C_DBG_REG_ACCESS = 1 generate
    signal bus2ip_addr_i : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  begin
    -- ip2bus_data assignment - as core may use less than 32 bits
    --ip2bus_data(C_S_AXI_DATA_WIDTH-1 downto C_REG_DATA_WIDTH) <= (others => '0');
    -- Work around spyglass bug report on <null> range to the left but not to the right
    spy_g: if C_S_AXI_DATA_WIDTH > C_REG_DATA_WIDTH generate
    begin
      ip2bus_data(C_S_AXI_DATA_WIDTH-1 downto C_REG_DATA_WIDTH) <= (others => '0');
    end generate spy_g;

    assign_bus2ip_addr: process(bus2ip_addr_i) is
    begin  -- process assign_bus2ip_addr
      if bus2ip_addr'left < bus2ip_addr_i'left then
        bus2ip_addr <= bus2ip_addr_i(bus2ip_addr'left downto 0);
      else
        bus2ip_addr <= (others => '0');
        bus2ip_addr(bus2ip_addr_i'left downto 0) <= bus2ip_addr_i;
      end if;
    end process assign_bus2ip_addr;

    ---------------------------------------------------------------------------
    -- AXI lite IPIF
    ---------------------------------------------------------------------------
    AXI_LITE_IPIF_I : entity axi_lite_ipif_v3_0_4.axi_lite_ipif
      generic map (
        C_FAMILY               => C_FAMILY,
        C_S_AXI_ADDR_WIDTH     => C_S_AXI_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH     => C_S_AXI_DATA_WIDTH,
        C_S_AXI_MIN_SIZE       => C_S_AXI_MIN_SIZE,
        C_USE_WSTRB            => C_USE_WSTRB,
        C_DPHASE_TIMEOUT       => C_DPHASE_TIMEOUT,
        C_ARD_ADDR_RANGE_ARRAY => C_ARD_ADDR_RANGE_ARRAY(0 to C_ARD_RANGES * 2 - 1),
        C_ARD_NUM_CE_ARRAY     => C_ARD_NUM_CE_ARRAY(0 to C_ARD_RANGES - 1)
      )

      port map(
        S_AXI_ACLK    => S_AXI_ACLK,
        S_AXI_ARESETN => S_AXI_ARESETN,
        S_AXI_AWADDR  => S_AXI_AWADDR,
        S_AXI_AWVALID => S_AXI_AWVALID,
        S_AXI_AWREADY => S_AXI_AWREADY,
        S_AXI_WDATA   => S_AXI_WDATA,
        S_AXI_WSTRB   => S_AXI_WSTRB,
        S_AXI_WVALID  => S_AXI_WVALID,
        S_AXI_WREADY  => S_AXI_WREADY,
        S_AXI_BRESP   => S_AXI_BRESP,
        S_AXI_BVALID  => S_AXI_BVALID,
        S_AXI_BREADY  => S_AXI_BREADY,
        S_AXI_ARADDR  => S_AXI_ARADDR,
        S_AXI_ARVALID => S_AXI_ARVALID,
        S_AXI_ARREADY => S_AXI_ARREADY,
        S_AXI_RDATA   => S_AXI_RDATA,
        S_AXI_RRESP   => S_AXI_RRESP,
        S_AXI_RVALID  => S_AXI_RVALID,
        S_AXI_RREADY  => S_AXI_RREADY,

        -- IP Interconnect (IPIC) port signals
        Bus2IP_Clk    => bus2ip_clk,
        Bus2IP_Resetn => bus2ip_resetn,
        IP2Bus_Data   => ip2bus_data,
        IP2Bus_WrAck  => ip2bus_wrack,
        IP2Bus_RdAck  => ip2bus_rdack,
        IP2Bus_Error  => ip2bus_error,
        Bus2IP_Addr   => bus2ip_addr_i,
        Bus2IP_Data   => bus2ip_data,
        Bus2IP_RNW    => open,
        Bus2IP_BE     => open,
        Bus2IP_CS     => open,
        Bus2IP_RdCE   => bus2ip_rdce,
        Bus2IP_WrCE   => bus2ip_wrce
      );

  end generate Use_AXI_IPIF;

  No_AXI_IPIF : if not (C_USE_UART = 1 or C_DBG_REG_ACCESS = 1) generate
  begin
    S_AXI_AWREADY <= '0';
    S_AXI_WREADY  <= '0';
    S_AXI_BRESP   <= (others => '0');
    S_AXI_BVALID  <= '0';
    S_AXI_ARREADY <= '0';
    S_AXI_RDATA   <= (others => '0');
    S_AXI_RRESP   <= (others => '0');
    S_AXI_RVALID  <= '0';

    bus2ip_clk    <= S_AXI_ACLK;
    bus2ip_resetn <= S_AXI_ARESETN;
    bus2ip_addr   <= (others => '0');
    bus2ip_data   <= (others => '0');
    bus2ip_rdce   <= (others => '0');
    bus2ip_wrce   <= (others => '0');
  end generate No_AXI_IPIF;

  -- Delay one delta cycle to avoid simulation issue for parallel debug register
  -- access with no BSCAN, where drck and update are delayed one delta cycle
  bus2ip_clk_i <= bus2ip_clk;

  -- Unused
  Ext_BRK      <= '0';
  Ext_NM_BRK   <= '0';

  M_AXIS_TDATA  <= (others => '1');
  M_AXIS_TID    <= (others => '1');
  M_AXIS_TVALID <= '0';

end architecture IMP;


