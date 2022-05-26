###########################################################################
# Basic_Dsgn_Analysis_SP Script
#
#   REQUIRES:
#      connection to SVN
#
#   Copies files from the SVN to the training directory and builds the 
#   starting point project for the student
#
#   History:
#      10 May 2019 - NK - 2019.1 initial build
#
###########################################################################

# load the standard helper file
source /home/xilinx/training/completer_helper_script/helper.tcl
source /home/xilinx/training/completer_helper_script/completer_helper.tcl

# project constants
set verbose    1
set tcName     Basic_Dsgn_Analysis
set demoOrLab  lab
set projName   wave_gen


#########################################################
#Step 1 : Creating a new project and adding source files
#########################################################
proc createProj {} {
variable language
variable platform
variable tcName
variable demoOrLab
variable projName
variable trainingPath
variable sourceList
variable constraintFileList

# Copies SVN sources to training directory
#file copy /media/sf_trunk/FPGA/TopicClusters/$tcName $trainingPath/training

# Creates the project, adds source files
projectCreate 

   if {$language == "vhdl"} {
      set sourceList [list clk_div clk_gen clkx_bus cmd_parse dac_spi debouncer lb_ctl meta_harden out_ddr_flop reset_bridge resp_gen rst_gen samp_gen samp_ram to_bcd uart_baud_gen uart_rx uart_rx_ctl uart_tx uart_tx_ctl wave_gen string_utilities_synth_pkg wave_gen_pkg]
   } 
   if {$language == "verilog"} {
      set sourceList [list clk_div clk_gen clkx_bus cmd_parse dac_spi debouncer lb_ctl meta_harden out_ddr_flop reset_bridge resp_gen rst_gen samp_gen samp_ram to_bcd uart_baud_gen uart_rx uart_rx_ctl uart_tx uart_tx_ctl wave_gen clogb2.txt]
   }

sourcesAdd $sourceList

if {$language == "vhdl"} {
   set_property library utilities_lib [get_files  $trainingPath/training/$tcName/lab/KCU105/vhdl/wave_gen.srcs/sources_1/imports/support/string_utilities_synth_pkg.vhd]
}

ipFilesAdd

if {$projName == "wave_gen"} {
   # wave_gen design
   if {$language == "vhdl"} {
      set sourceList [list string_utilities_sim_pkg tb_cmd_gen tb_fifo tb_resetgen tb_resp_checker tb_uart_driver tb_uart_monitor tb_wave_gen tb_wave_gen_helper_pkg tb_wavegen_model time_utilities_pkg wavegen_commands.txt]
   } elseif {$language == "verilog"} {
     set sourceList [list tb_cmd_gen tb_fifo tb_ram tb_resetgen tb_resp_checker tb_uart_driver tb_uart_monitor tb_wave_gen test_wave_gen]
   }
}

simSourceListAdd $sourceList

if {$language == "vhdl"} {
  set_property library utilities_lib [get_files  $trainingPath/training/$tcName/lab/KCU105/vhdl/wave_gen.srcs/sim_1/imports/support/string_utilities_sim_pkg.vhd]
  set_property library utilities_lib [get_files  $trainingPath/training/$tcName/lab/KCU105/vhdl/wave_gen.srcs/sim_1/imports/support/time_utilities_pkg.vhd]
}


if {$projName == "uart_led"} {
   set constraintFileList [list uart_led.xdc] 
} elseif {$projName == "wave_gen"} {
   set constraintFileList [list wave_gen_pins.xdc wave_gen_timing.xdc]
}

constraintFilesAdd $constraintFileList
}

#########################################################
#Step 2 : Implementing the design
#########################################################
proc implDesign {} {

   # Calling the proc which runs Synthesis
   synthesisRun

   # Calling the proc which runs implementation
   implementationRun
}


#
# ***** Now Do It!
#

#createProj;
#implDesign;

#puts "\n***** Build Done! *****\n"
