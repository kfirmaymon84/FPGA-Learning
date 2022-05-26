###########################################################################
## Synthesis and Implementation Completer Script
###########################################################################

# load the standard helper file
source ../../completer_helper_script/helper.tcl
source ../../completer_helper_script/completer_helper.tcl

# project constants
set verbose 	1
set tcName 	Synth_Impl
set demoOrLab 	completed
set projName 	uart_led

 ## *********** Step 1 : Opening a project ***********

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
}


 ## ********** Step 2 : Browsing through the synthesis strategies and running synthesis **************

proc synthStrategy {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName 
variable trainingPath

    set completedfilePath $trainingPath/training/$tcName/support/completed_files
    set projName.srcs {append $projName .srcs}
    set path $trainingPath/training/$tcName/$demoOrLab/$platform/$language/$projName.srcs/constrs_1/imports/support
	
	# load all the completed file as the working file
	
	if {$platform == "ZCU104"} { 
		file copy -force $completedfilePath/uart_led.xdc $path/uart_led.xdc
	} elseif {$platform == "KC705"} {
		file copy -force $completedfilePath/uart_led.xdc $path/uart_led.xdc
	}

# Set the synthesis strategy and explore
set_property strategy Flow_RuntimeOptimized [get_runs synth_1]
set_property strategy {Vivado Synthesis Defaults} [get_runs synth_1]

reset_run synth_1

# Calling the proc which runs Synthesis
synthesisRun

report_utilization -name utilization_1
check_timing -verbose -name timing_1
}


 ## ********** Step 3 : Browsing through the implementation strategies and running implementation **************

proc implStrategy {} {

# Set the implementation strategy and explore
set_property strategy Performance_Explore [get_runs impl_1]
set_property strategy Flow_RuntimeOptimized [get_runs impl_1]

set_property strategy {Vivado Implementation Defaults} [get_runs impl_1]

# Calling the proc which runs implementation
implementationRun

close_design
}


 ## ********** Step 4 : Generating bitstream and loading it on the board **************

proc genBitstream_loadBoard {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName

# Calling the proc which generates bitstream
bitstreamRun

}

# Open the Hardware Manager with respect to the selected board
# Open the tera term and perform the further steps 

 ## ********** Running only the steps that are required with Make **************

 
proc make {stopAt} {

   puts "Running until the step $stopAt"
   set limit [string tolower $stopAt]
   switch $limit {
      step1  { openProject }
      step2  { make step1; synthStrategy }
      step3  { make step2; implStrategy }
      step4  { make step3; genBitstream_loadBoard }
	  all    { make step4 }
      default { 
         puts "Call the make proc, Should be make step*" 
			  }	
	}	
}
