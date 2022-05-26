###########################################################################
## Timing Constraints Wizard Completer Script
###########################################################################

# load the standard helper file
source ../../completer_helper_script/helper.tcl
source ../../completer_helper_script/completer_helper.tcl

# project constants
set verbose 	1
set tcName 	Constr_Wizard
set demoOrLab 	completed
set projName 	wave_gen

 ## *********** Step 1 : Opening a project, opening a synthesized design and performing the report_timing_summary ***********

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
      puts "Please type: use VHDL | Verilog"
      puts "   then rerun the projectCreate"
} 
if {$isPlatNotSelected} {
      puts "Please type: use KCU105"
      puts "   then rerun the projectCreate"
}

# Open a project
set projName.xpr {append $projName .xpr}
open_project $trainingPath/training/$tcName/$demoOrLab/$platform/$language/$projName.xpr

# Open synthesized design
synthesisRun

report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_1
}


 ## ********** Step 2 : Adding constraints for Ultra-Scale **************
 ## ********** Step 3 : Adding constraints for 7 Series **************	

proc addConstr {} {

variable platform
variable language
variable tcName
variable demoOrLab 
variable projName
variable trainingPath

set projName.srcs {append $projName .srcs}
set_property target_constrs_file $trainingPath/training/$tcName/$demoOrLab/$platform/$language/$projName.srcs/constrs_1/imports/support/wave_gen_timing.xdc [current_fileset -constrset]

# Adding the Constraints for either 7 series or Ultra-Scale board

if {$platform == "KCU105"} {
create_clock -period 3.333 -name clk_pin_p -waveform {0.000 1.667} [get_ports clk_pin_p]
create_clock -period 4.999 -name VIRTUAL_clk_out2_clk_core -waveform {0.000 2.500}
set_input_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 1.000 [get_ports lb_sel_pin]
set_input_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports lb_sel_pin]
set_input_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 1.000 [get_ports rst_pin]
set_input_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports rst_pin]
set_input_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 1.000 [get_ports rxd_pin]
set_input_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports rxd_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 0.500 [get_ports {led_pins[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports {led_pins[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 0.500 [get_ports dac_clr_n_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports dac_clr_n_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 0.500 [get_ports dac_cs_n_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports dac_cs_n_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 0.500 [get_ports spi_mosi_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports spi_mosi_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 0.500 [get_ports txd_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports txd_pin]

} 

save_constraints -force
report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_2
close_design
}


 ## ********** Step 4 : Performing the report_timing_summary after adding the constraints and Implementing the design **************

proc genReport {} {

# Calling the proc which runs implementation
implementationRun

report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_1
}


 ## ********** Running only the steps that are required with Make **************

proc make {stopAt} {

   puts "Running until the step $stopAt"
   set limit [string tolower $stopAt]
   switch $limit {
      step1  { openProject }
      step2_3  { make step1; addConstr }
      step4  { make step2_3; genReport }
	  all    { make step4 }
      default { 
         puts "Call the make proc, Should be make step*" 
			  }	
	}	
}
