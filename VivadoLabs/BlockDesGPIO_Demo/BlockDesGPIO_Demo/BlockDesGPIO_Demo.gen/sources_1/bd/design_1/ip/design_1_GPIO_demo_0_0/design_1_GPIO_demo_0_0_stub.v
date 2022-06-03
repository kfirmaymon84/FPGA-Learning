// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jun  2 20:36:05 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/FPGA-Learning/VivadoLabs/BlockDesGPIO_Demo/BlockDesGPIO_Demo/BlockDesGPIO_Demo.gen/sources_1/bd/design_1/ip/design_1_GPIO_demo_0_0/design_1_GPIO_demo_0_0_stub.v
// Design      : design_1_GPIO_demo_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "GPIO_demo,Vivado 2021.2" *)
module design_1_GPIO_demo_0_0(SW, BTN, CLK, LED, SSEG_CA, SSEG_AN, UART_TXD, 
  RGB1_Red, RGB1_Green, RGB1_Blue, RGB2_Red, RGB2_Green, RGB2_Blue, micClk, micLRSel, micData, 
  ampPWM, ampSD)
/* synthesis syn_black_box black_box_pad_pin="SW[15:0],BTN[4:0],CLK,LED[15:0],SSEG_CA[7:0],SSEG_AN[7:0],UART_TXD,RGB1_Red,RGB1_Green,RGB1_Blue,RGB2_Red,RGB2_Green,RGB2_Blue,micClk,micLRSel,micData,ampPWM,ampSD" */;
  input [15:0]SW;
  input [4:0]BTN;
  input CLK;
  output [15:0]LED;
  output [7:0]SSEG_CA;
  output [7:0]SSEG_AN;
  output UART_TXD;
  output RGB1_Red;
  output RGB1_Green;
  output RGB1_Blue;
  output RGB2_Red;
  output RGB2_Green;
  output RGB2_Blue;
  output micClk;
  output micLRSel;
  input micData;
  output ampPWM;
  output ampSD;
endmodule
