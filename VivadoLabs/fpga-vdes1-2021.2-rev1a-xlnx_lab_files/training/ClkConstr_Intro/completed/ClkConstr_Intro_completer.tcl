###########################################################################
## Introduction to Clock Constraints Completer Script
###########################################################################

# load the standard helper file
source ../../completer_helper_script/helper.tcl
source ../../completer_helper_script/completer_helper.tcl

# project constants
set verbose 	1
set tcName 	ClkConstr_Intro
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
      puts "Please type: use VHDL | Verilog"
      puts "   then rerun the projectCreate"
} 
if {$isPlatNotSelected} {
      puts "Please type: use KCU105 | KC705 | KC7xx"
      puts "   then rerun the projectCreate"
}

# Open a project
set projName.xpr {append $projName .xpr}
open_project $trainingPath/training/$tcName/$demoOrLab/$platform/$language/$projName.xpr

set synth 0

# Open synthesized design
synthesisRun
}

 
 ## ********** Step 2 : Run report_clock_networks and observe the report **************

proc observeReport {} {
report_clock_networks -name {network_1}
}

 
  ## ********** Step 3 : Add primary clock constraints via GUI **************

proc addPriConstr {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName
variable trainingPath

set projName.srcs {append $projName .srcs}
set_property target_constrs_file $trainingPath/training/$tcName/$demoOrLab/$platform/$language/$projName.srcs/constrs_1/imports/support/wave_gen_timing.xdc [current_fileset -constrset]

# Adding the Constraints for both 7 series and Ultra-Scale board
if {$platform == "KCU105"} {
	create_clock -period 3.333 -name clk_pin_p -waveform {0.000 1.667} [get_ports clk_pin_p]
} elseif {$platform == "KC7xx"} {
	create_clock -period 5.000 -name clk_pin_p -waveform {0.000 2.500} [get_ports clk_pin_p]
}
set_input_jitter [get_clocks clk_pin_p] 0.000

# Saving the constraints
save_constraints -force
report_clocks
}


 ## ********** Step 4 : Add generated clock constraints via GUI **************

proc addGenConstr {} {
variable platform
variable language
variable tcName
variable demoOrLab
variable projName
variable trainingPath

set projName.srcs {append $projName .srcs}
set_property target_constrs_file $trainingPath/training/$tcName/$demoOrLab/$platform/$language/$projName.srcs/constrs_1/imports/support/wave_gen_timing.xdc [current_fileset -constrset]

# Adding the Constraints for both 7 series and Ultra-Scale board
if {$platform == "KCU105"} {
	create_generated_clock -name clk_samp -source [get_pins clk_gen_i0/BUFGCE_clk_samp_i0/I] -divide_by 32 [get_pins clk_gen_i0/BUFGCE_clk_samp_i0/O]
} elseif {$platform == "KC7xx"} {
	create_generated_clock -name clk_samp -source [get_pins clk_gen_i0/BUFHCE_clk_samp_i0/I] -divide_by 32 [get_pins clk_gen_i0/BUFHCE_clk_samp_i0/O]
}

# Saving the constraints
save_constraints -force
report_clocks
}

 ## ********** Step 5 : Implementing the design and running report_timing_summary **************

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
      step2  { make step1; observeReport }
      step3  { make step2; addPriConstr }
      step4  { make step3; addGenConstr }
      step5  { make step4; genReport }
      all    { make step5 }
      default { 
         puts "Call the make proc, Should be make step*" 
			  }	
	}	
}
