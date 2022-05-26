###########################################################################
## IO Constraints and Virtual Clock Completer Script
###########################################################################

# load the standard helper files
source ../../completer_helper_script/helper.tcl
source ../../completer_helper_script/completer_helper.tcl

# project constants
set verbose 	1
set tcName 	IOConstr_Intro
set demoOrLab 	completed
set projName 	wave_gen

 ## *********** Step 1 : Opening a project, opening a synthesized design ***********

proc openProject {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName 
variable trainingPath

# Add the platform and language combination that you want 
set isLangNotSelected [string compare -nocase $language "undefined"]
set isPlatNotSelected [string compare -nocase $platform "undefined"]
   
if {$isLangNotSelected} {
      puts "Please type: use netlist"
      puts "   then rerun the projectCreate"
} 
if {$isPlatNotSelected} {
      puts "Please type: use KCU105"
      puts "   then rerun the projectCreate"
}

# Open a project
set projName.xpr {append $projName .xpr}
open_project $trainingPath/training/$tcName/$demoOrLab/$platform/$language/$projName.xpr

}


 ## *********** Step 2 :  Specifying Input delay ***********

proc addINconstr {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName
variable trainingPath

set projName.srcs {append $projName .srcs}
set_property target_constrs_file $trainingPath/training/$tcName/$demoOrLab/$platform/$language/$projName.srcs/constrs_1/imports/support/wave_gen_timing.xdc [current_fileset -constrset]

# Adding the Input Constraints for either 7 series or Ultra-Scale board

link_design -name netlist_1

set_input_delay -clock [get_clocks clk_pin_p] 1.25 [get_ports rst_pin]
set_input_delay -clock [get_clocks clk_pin_p] -min 1.0 [get_ports rst_pin]

check_timing -verbose -override_defaults no_input_delay
get_property PERIOD [get_clocks clk_out2_clk_core]

create_clock -period 5.161 -name clk_tx_virtual -waveform {0.000 2.581}
set_input_delay -clock [get_clocks clk_tx_virtual] 1.25 [get_ports lb_sel_pin]
set_input_delay -clock [get_clocks clk_tx_virtual] -min 1.0 [get_ports lb_sel_pin]

create_clock -period 5.000 -name clk_rx_virtual -waveform {0.000 2.500}
set_input_delay -clock [get_clocks clk_rx_virtual] 1.25 [get_ports rxd_pin]
set_input_delay -clock [get_clocks clk_rx_virtual] -min 1.0 [get_ports rxd_pin]



save_constraints -force
check_timing -verbose -override_defaults no_input_delay
} 


 ## *********** Step 3 :  Specifying Output delay ***********
 
proc addOUTconstr {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName

# Adding the Output Constraints for either 7 series or Ultra-Scale board

if {$platform == "KCU105"} {

set_output_delay -clock [get_clocks clk_tx_virtual] 1.25 [get_ports {led_pins[0] led_pins[1] led_pins[2] led_pins[3] led_pins[4] led_pins[5] led_pins[6] led_pins[7] txd_pin}]
set_output_delay -clock [get_clocks clk_tx_virtual] -min 0.5 [get_ports {led_pins[0] led_pins[1] led_pins[2] led_pins[3] led_pins[4] led_pins[5] led_pins[6] led_pins[7] txd_pin}]
set_output_delay -clock [get_clocks spi_clk] -max 1.0 [get_ports {dac_clr_n_pin dac_cs_n_pin spi_mosi_pin}]
set_output_delay -clock [get_clocks spi_clk] -min -1.0 [get_ports {dac_clr_n_pin dac_cs_n_pin spi_mosi_pin}]
} elseif {$platform == "KC7xx"} {

set_output_delay -clock [get_clocks clk_tx_virtual] 1.25 [get_ports {led_pins[0] led_pins[1] led_pins[2] led_pins[3] led_pins[4] led_pins[5] led_pins[6] led_pins[7] txd_pin}]
set_output_delay -clock [get_clocks clk_tx_virtual] -min 0.5 [get_ports {led_pins[0] led_pins[1] led_pins[2] led_pins[3] led_pins[4] led_pins[5] led_pins[6] led_pins[7] txd_pin}]
set_output_delay -clock [get_clocks spi_clk] -max 1.0 [get_ports {dac_clr_n_pin dac_cs_n_pin spi_mosi_pin}]
set_output_delay -clock [get_clocks spi_clk] -min -1.0 [get_ports {dac_clr_n_pin dac_cs_n_pin spi_mosi_pin}]
}

save_constraints
check_timing -verbose -override_defaults no_output_delay
} 


 ## *********** Step 4 :  Implementing the design ***********

proc genReport {} {

# Calling the proc which runs implementation
implementationRun

report_timing -delay_type min_max -max_paths 10 -sort_by group -input_pins -name timing_1

report_timing_summary -name timing_2 
}


 ## ********** Running only the steps that are required with Make **************

proc make {stopAt} {

   puts "Running until the step $stopAt"
   set limit [string tolower $stopAt]
   switch $limit {
      step1  { openProject }
      step2  { make step1; addINconstr }
      step3  { make step2; addOUTconstr }
      step4  { make step3; genReport }
	  all    { make step4 }
      default { 
         puts "Call the make proc, Should be make step*" 
			  }	
	}	
}

