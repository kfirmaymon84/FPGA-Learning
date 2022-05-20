// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Apr 12 21:30:46 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/FPGA_LEARNING/VivadoLabs/Histogram/Histogram/Histogram.gen/sources_1/ip/blk_mem_SPD_RAM/blk_mem_SPD_RAM_stub.v
// Design      : blk_mem_SPD_RAM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *)
module blk_mem_SPD_RAM(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[7:0],dina[9:0],clkb,enb,addrb[7:0],doutb[9:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [7:0]addra;
  input [9:0]dina;
  input clkb;
  input enb;
  input [7:0]addrb;
  output [9:0]doutb;
endmodule
