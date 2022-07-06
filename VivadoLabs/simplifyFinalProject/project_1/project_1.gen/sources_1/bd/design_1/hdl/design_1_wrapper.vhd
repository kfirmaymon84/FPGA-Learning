--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Tue Jul  5 22:25:07 2022
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
    DIN_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    HS_0 : in STD_LOGIC;
    PCLK_0 : in STD_LOGIC;
    VSYNC_0 : in STD_LOGIC;
    clk24_MHz_0 : out STD_LOGIC;
    debugLed_0 : out STD_LOGIC;
    finished_0 : out STD_LOGIC;
    resend_0 : in STD_LOGIC;
    reset : in STD_LOGIC;
    sioc_0 : out STD_LOGIC;
    siod_0 : inout STD_LOGIC;
    sys_clock : in STD_LOGIC;
    vga_b_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hs_0 : out STD_LOGIC;
    vga_r_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_vs_0 : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    HS_0 : in STD_LOGIC;
    VSYNC_0 : in STD_LOGIC;
    vga_hs_0 : out STD_LOGIC;
    DIN_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PCLK_0 : in STD_LOGIC;
    vga_vs_0 : out STD_LOGIC;
    vga_b_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_r_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    resend_0 : in STD_LOGIC;
    siod_0 : inout STD_LOGIC;
    sioc_0 : out STD_LOGIC;
    finished_0 : out STD_LOGIC;
    clk24_MHz_0 : out STD_LOGIC;
    debugLed_0 : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      DIN_0(7 downto 0) => DIN_0(7 downto 0),
      HS_0 => HS_0,
      PCLK_0 => PCLK_0,
      VSYNC_0 => VSYNC_0,
      clk24_MHz_0 => clk24_MHz_0,
      debugLed_0 => debugLed_0,
      finished_0 => finished_0,
      resend_0 => resend_0,
      reset => reset,
      sioc_0 => sioc_0,
      siod_0 => siod_0,
      sys_clock => sys_clock,
      vga_b_0(3 downto 0) => vga_b_0(3 downto 0),
      vga_g_0(3 downto 0) => vga_g_0(3 downto 0),
      vga_hs_0 => vga_hs_0,
      vga_r_0(3 downto 0) => vga_r_0(3 downto 0),
      vga_vs_0 => vga_vs_0
    );
end STRUCTURE;
