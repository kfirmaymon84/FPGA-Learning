--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Thu Jun  2 20:35:30 2022
--Host        : KfirLaptop running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_GPIO_demo_0_0 is
  port (
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    BTN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SSEG_CA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SSEG_AN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    UART_TXD : out STD_LOGIC;
    RGB1_Red : out STD_LOGIC;
    RGB1_Green : out STD_LOGIC;
    RGB1_Blue : out STD_LOGIC;
    RGB2_Red : out STD_LOGIC;
    RGB2_Green : out STD_LOGIC;
    RGB2_Blue : out STD_LOGIC;
    micClk : out STD_LOGIC;
    micLRSel : out STD_LOGIC;
    micData : in STD_LOGIC;
    ampPWM : out STD_LOGIC;
    ampSD : out STD_LOGIC
  );
  end component design_1_GPIO_demo_0_0;
  signal BTN_0_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal CLK_0_1 : STD_LOGIC;
  signal GPIO_demo_0_LED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal GPIO_demo_0_RGB1_Blue : STD_LOGIC;
  signal GPIO_demo_0_RGB1_Green : STD_LOGIC;
  signal GPIO_demo_0_RGB1_Red : STD_LOGIC;
  signal GPIO_demo_0_RGB2_Blue : STD_LOGIC;
  signal GPIO_demo_0_RGB2_Green : STD_LOGIC;
  signal GPIO_demo_0_RGB2_Red : STD_LOGIC;
  signal GPIO_demo_0_SSEG_AN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal GPIO_demo_0_SSEG_CA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal GPIO_demo_0_UART_TXD : STD_LOGIC;
  signal GPIO_demo_0_ampPWM : STD_LOGIC;
  signal GPIO_demo_0_ampSD : STD_LOGIC;
  signal GPIO_demo_0_micClk : STD_LOGIC;
  signal GPIO_demo_0_micLRSel : STD_LOGIC;
  signal SW_0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal micData_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_1_CLK_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  BTN_0_1(4 downto 0) <= BTN_0(4 downto 0);
  CLK_0_1 <= CLK_0;
  LED_0(15 downto 0) <= GPIO_demo_0_LED(15 downto 0);
  RGB1_Blue_0 <= GPIO_demo_0_RGB1_Blue;
  RGB1_Green_0 <= GPIO_demo_0_RGB1_Green;
  RGB1_Red_0 <= GPIO_demo_0_RGB1_Red;
  RGB2_Blue_0 <= GPIO_demo_0_RGB2_Blue;
  RGB2_Green_0 <= GPIO_demo_0_RGB2_Green;
  RGB2_Red_0 <= GPIO_demo_0_RGB2_Red;
  SSEG_AN_0(7 downto 0) <= GPIO_demo_0_SSEG_AN(7 downto 0);
  SSEG_CA_0(7 downto 0) <= GPIO_demo_0_SSEG_CA(7 downto 0);
  SW_0_1(15 downto 0) <= SW_0(15 downto 0);
  UART_TXD_0 <= GPIO_demo_0_UART_TXD;
  ampPWM_0 <= GPIO_demo_0_ampPWM;
  ampSD_0 <= GPIO_demo_0_ampSD;
  micClk_0 <= GPIO_demo_0_micClk;
  micData_0_1 <= micData_0;
  micLRSel_0 <= GPIO_demo_0_micLRSel;
GPIO_demo_0: component design_1_GPIO_demo_0_0
     port map (
      BTN(4 downto 0) => BTN_0_1(4 downto 0),
      CLK => CLK_0_1,
      LED(15 downto 0) => GPIO_demo_0_LED(15 downto 0),
      RGB1_Blue => GPIO_demo_0_RGB1_Blue,
      RGB1_Green => GPIO_demo_0_RGB1_Green,
      RGB1_Red => GPIO_demo_0_RGB1_Red,
      RGB2_Blue => GPIO_demo_0_RGB2_Blue,
      RGB2_Green => GPIO_demo_0_RGB2_Green,
      RGB2_Red => GPIO_demo_0_RGB2_Red,
      SSEG_AN(7 downto 0) => GPIO_demo_0_SSEG_AN(7 downto 0),
      SSEG_CA(7 downto 0) => GPIO_demo_0_SSEG_CA(7 downto 0),
      SW(15 downto 0) => SW_0_1(15 downto 0),
      UART_TXD => GPIO_demo_0_UART_TXD,
      ampPWM => GPIO_demo_0_ampPWM,
      ampSD => GPIO_demo_0_ampSD,
      micClk => GPIO_demo_0_micClk,
      micData => micData_0_1,
      micLRSel => GPIO_demo_0_micLRSel
    );
end STRUCTURE;
