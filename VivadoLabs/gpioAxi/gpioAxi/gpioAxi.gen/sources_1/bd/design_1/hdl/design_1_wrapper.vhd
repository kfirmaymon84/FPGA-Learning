--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Sun Jun 12 20:14:43 2022
--Host        : KfirLaptop running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    CLK : in STD_LOGIC;
    LED_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ext_reset_in_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    LED_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_0 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    ext_reset_in_0 : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      CLK => CLK,
      LED_tri_o(15 downto 0) => LED_tri_o(15 downto 0),
      ext_reset_in_0 => ext_reset_in_0,
      reset_0 => reset_0
    );
end STRUCTURE;
