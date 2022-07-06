-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Jun 29 20:30:25 2022
-- Host        : KfirLaptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/FPGA-Learning/VivadoLabs/simplifyFinalProject/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_i2c_sender_0_0/design_1_i2c_sender_0_0_stub.vhdl
-- Design      : design_1_i2c_sender_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_i2c_sender_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    siod : inout STD_LOGIC;
    sioc : out STD_LOGIC;
    resend : in STD_LOGIC;
    finished : out STD_LOGIC
  );

end design_1_i2c_sender_0_0;

architecture stub of design_1_i2c_sender_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,siod,sioc,resend,finished";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "i2c_sender,Vivado 2021.2";
begin
end;
