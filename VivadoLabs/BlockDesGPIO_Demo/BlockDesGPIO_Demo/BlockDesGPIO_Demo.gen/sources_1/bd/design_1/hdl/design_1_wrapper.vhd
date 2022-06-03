--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Thu Jun  2 20:35:30 2022
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
    BTN_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK_0 : in STD_LOGIC;
    LED_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RGB1_Blue_0 : out STD_LOGIC;
    RGB1_Green_0 : out STD_LOGIC;
    RGB1_Red_0 : out STD_LOGIC;
    RGB2_Blue_0 : out STD_LOGIC;
    RGB2_Green_0 : out STD_LOGIC;
    RGB2_Red_0 : out STD_LOGIC;
    SSEG_AN_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SSEG_CA_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SW_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    UART_TXD_0 : out STD_LOGIC;
    ampPWM_0 : out STD_LOGIC;
    ampSD_0 : out STD_LOGIC;
    micClk_0 : out STD_LOGIC;
    micData_0 : in STD_LOGIC;
    micLRSel_0 : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    LED_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SSEG_CA_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BTN_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK_0 : in STD_LOGIC;
    RGB1_Blue_0 : out STD_LOGIC;
    RGB1_Green_0 : out STD_LOGIC;
    RGB1_Red_0 : out STD_LOGIC;
    RGB2_Blue_0 : out STD_LOGIC;
    RGB2_Green_0 : out STD_LOGIC;
    RGB2_Red_0 : out STD_LOGIC;
    SSEG_AN_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SW_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    UART_TXD_0 : out STD_LOGIC;
    ampPWM_0 : out STD_LOGIC;
    ampSD_0 : out STD_LOGIC;
    micClk_0 : out STD_LOGIC;
    micData_0 : in STD_LOGIC;
    micLRSel_0 : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      BTN_0(4 downto 0) => BTN_0(4 downto 0),
      CLK_0 => CLK_0,
      LED_0(15 downto 0) => LED_0(15 downto 0),
      RGB1_Blue_0 => RGB1_Blue_0,
      RGB1_Green_0 => RGB1_Green_0,
      RGB1_Red_0 => RGB1_Red_0,
      RGB2_Blue_0 => RGB2_Blue_0,
      RGB2_Green_0 => RGB2_Green_0,
      RGB2_Red_0 => RGB2_Red_0,
      SSEG_AN_0(7 downto 0) => SSEG_AN_0(7 downto 0),
      SSEG_CA_0(7 downto 0) => SSEG_CA_0(7 downto 0),
      SW_0(15 downto 0) => SW_0(15 downto 0),
      UART_TXD_0 => UART_TXD_0,
      ampPWM_0 => ampPWM_0,
      ampSD_0 => ampSD_0,
      micClk_0 => micClk_0,
      micData_0 => micData_0,
      micLRSel_0 => micLRSel_0
    );
end STRUCTURE;
