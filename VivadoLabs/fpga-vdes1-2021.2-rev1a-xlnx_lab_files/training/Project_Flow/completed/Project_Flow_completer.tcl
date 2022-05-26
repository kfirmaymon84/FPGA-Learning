###########################################################################
# Project_Flow Completer Script
###########################################################################

# load the standard helper file
source ../../completer_helper_script/helper.tcl
source ../../completer_helper_script/completer_helper.tcl

# project constants
set verbose 	1
set tcName 	Project_Flow
set demoOrLab 	completed
set projName 	uart_led

#########################################################
#Step 1 : Creating a new project and adding source files
#########################################################
proc createProj {} {
variable language
variable platform
variable sourceList
variable tcName
variable demoOrLab
variable projName
variable trainingPath

# Creates the project, adds source files
projectCreate 

if {$projName == "uart_led"} {
   if {$language == "vhdl"} {
         set sourceList [list led_ctl meta_harden uart_baud_gen uart_led uart_led_pkg uart_rx uart_rx_ctl]
   } elseif {$language == "verilog"} {
	 set sourceList [list led_ctl meta_harden uart_baud_gen uart_led uart_rx uart_rx_ctl]
   } 
} 

sourcesAdd $sourceList


if {$projName == "uart_led"} {
   set constraintFileList [list uart_led.xdc] 
} elseif {$projName == "wave_gen"} {
   set constraintFileList [list wave_gen_timing.xdc]
}

constraintFilesAdd $constraintFileList
}


##########################################
#Step 2 : Adding Simulation source files
##########################################
proc addSimFiles {} {
   variable tcName
   variable language
   variable platform
   variable verbose
   variable demoOrLab
   variable projName
   variable sourceList
   variable trainingPath

if {$projName == "uart_led"} {
   # uart_led design
   if {$language == "vhdl"} {
	set sourceList [list uart_led_pkg time_utilities_pkg test_uart_rx tb_uart_driver tb_resp_checker tb_fifo_pkg string_utilities_sim_pkg string_utilities_synth_pkg]
   } elseif {$language == "verilog"} {
	 set sourceList [list test_uart_rx tb_uart_rx tb_uart_driver tb_resp_checker tb_resetgen tb_fifo]
   }
} elseif {$projName == "wave_gen"} {
   # wave_gen design
   if {$language == "vhdl"} {
	set sourceList [list string_utilities_sim_pkg tb_cmd_gen tb_fifo tb_resetgen tb_resp_checker tb_uart_driver tb_uart_monitor tb_wave_gen tb_wave_gen_helper_pkg tb_wavegen_model time_utilities_pkg wavegen_commands.txt]
   } elseif {$language == "verilog"} {
	 set sourceList [list tb_cmd_gen tb_fifo tb_ram tb_resetgen tb_resp_checker tb_uart_driver tb_uart_monitor tb_wave_gen test_wave_gen]
   }
}

simSourceListAdd $sourceList

if {$language == "vhdl"} {
  set_property library utilities_lib [get_files  $trainingPath/training/$tcName/$demoOrLab/KCU105/vhdl/uart_led.srcs/sim_1/imports/support/string_utilities_synth_pkg.vhd]
  set_property library utilities_lib [get_files  $trainingPath/training/$tcName/$demoOrLab/KCU105/vhdl/uart_led.srcs/sim_1/imports/support/string_utilities_sim_pkg.vhd]
  set_property library utilities_lib [get_files  $trainingPath/training/$tcName/$demoOrLab/KCU105/vhdl/uart_led.srcs/sim_1/imports/support/time_utilities_pkg.vhd]
  set_property library specific_support_lib [get_files  $trainingPath/training/$tcName/$demoOrLab/KCU105/vhdl/uart_led.srcs/sim_1/imports/support/tb_fifo_pkg.vhd]

}

}

##########################################
#Step 3: Exploring the Vivado IDE
#Step 4 : Simulating the design
##########################################
proc simDesign {} {
 variable language

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

 ## Disabling source management mode.  This is to allow the top design properties to be set without GUI intervention.
#  set_property source_mgmt_mode None [current_project]

 ## Setting the top module for simulation
  set_property top test_uart_rx [get_filesets sim_1]
  set_property top_lib xil_defaultlib [get_filesets sim_1]

 ## Re-enabling previously disabled source management mode.
 set_property source_mgmt_mode All [current_project]

 ## Running a Behavioral Simulation
  launch_simulation
  if {$language == "Verilog"} {
  puts "Adding signals to wave"
  add_wave {{/test_uart_rx/tb/uart_rx_i0/clk_rx}} {{/test_uart_rx/tb/uart_rx_i0/rst_clk_rx}} {{/test_uart_rx/tb/uart_rx_i0/rxd_i}} {{/test_uart_rx/tb/uart_rx_i0/rxd_clk_rx}} {{/test_uart_rx/tb/uart_rx_i0/rx_data}} {{/test_uart_rx/tb/uart_rx_i0/rx_data_rdy}} {{/test_uart_rx/tb/uart_rx_i0/frm_err}} {{/test_uart_rx/tb/uart_rx_i0/baud_x16_en}} 
  }
  restart
  run all
 markLastStep simulationcomplete
}

##########################################################
# Running through the steps that are required, with make
##########################################################
proc make {stopAt} {
   puts "Running until the step $stopAt"
   set limit [string tolower $stopAt]
   switch $limit {
      step1  { createProj }
      step2  { make step1; addSimFiles }
      step3  { make step2; simDesign }
      all    { make step3 }
      
      default { 
         puts "Call the make proc, Should be make step*" 
	      }	
   }	
}

