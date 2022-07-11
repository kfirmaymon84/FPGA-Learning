-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Mon Jul 11 18:49:47 2022
-- Host        : KfirLaptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/FPGA-Learning/VivadoLabs/simplifyFinalProject/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_cameraAndVGA_Drivers_0_0/design_1_cameraAndVGA_Drivers_0_0_stub.vhdl
-- Design      : design_1_cameraAndVGA_Drivers_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_cameraAndVGA_Drivers_0_0 is
  Port ( 
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hs : out STD_LOGIC;
    vga_vs : out STD_LOGIC;
    addressWrite : out STD_LOGIC_VECTOR ( 18 downto 0 );
    dataWrite : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wea : out STD_LOGIC_VECTOR ( 0 to 0 );
    addressRead : out STD_LOGIC_VECTOR ( 18 downto 0 );
    dataRead : in STD_LOGIC_VECTOR ( 11 downto 0 );
    PCLK : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    VSYNC : in STD_LOGIC;
    HS : in STD_LOGIC;
    clk : in STD_LOGIC;
    clk25 : in STD_LOGIC;
    reset : in STD_LOGIC;
    debugLed : out STD_LOGIC;
    startSw : in STD_LOGIC;
    filterSw : in STD_LOGIC;
    initFinish : in STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 17 downto 0 );
    B : out STD_LOGIC_VECTOR ( 17 downto 0 );
    P : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );

end design_1_cameraAndVGA_Drivers_0_0;

architecture stub of design_1_cameraAndVGA_Drivers_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "vga_r[3:0],vga_g[3:0],vga_b[3:0],vga_hs,vga_vs,addressWrite[18:0],dataWrite[11:0],wea[0:0],addressRead[18:0],dataRead[11:0],PCLK,DIN[7:0],VSYNC,HS,clk,clk25,reset,debugLed,startSw,filterSw,initFinish,A[17:0],B[17:0],P[35:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "cameraAndVGA_Drivers,Vivado 2021.2";
begin
end;
