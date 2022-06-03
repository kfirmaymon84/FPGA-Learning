-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Thu Jun  2 20:36:05 2022
-- Host        : KfirLaptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/FPGA-Learning/VivadoLabs/BlockDesGPIO_Demo/BlockDesGPIO_Demo/BlockDesGPIO_Demo.gen/sources_1/bd/design_1/ip/design_1_GPIO_demo_0_0/design_1_GPIO_demo_0_0_stub.vhdl
-- Design      : design_1_GPIO_demo_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_GPIO_demo_0_0 is
  Port ( 
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

end design_1_GPIO_demo_0_0;

architecture stub of design_1_GPIO_demo_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SW[15:0],BTN[4:0],CLK,LED[15:0],SSEG_CA[7:0],SSEG_AN[7:0],UART_TXD,RGB1_Red,RGB1_Green,RGB1_Blue,RGB2_Red,RGB2_Green,RGB2_Blue,micClk,micLRSel,micData,ampPWM,ampSD";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "GPIO_demo,Vivado 2021.2";
begin
end;
