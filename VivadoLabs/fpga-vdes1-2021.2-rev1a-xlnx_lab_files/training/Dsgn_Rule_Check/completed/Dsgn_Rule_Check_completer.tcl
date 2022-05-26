###########################################################################
## Vivado Design Rule Checks Completer Script
###########################################################################

# load the standard helper file
source $trainingPath/training/completer_helper_script/completer_helper.tcl

# project constants
set verbose 	1
set tcName 		Dsgn_Rule_Check
set demoOrLab 	completed
set projName 	project_cpu_revised

 ## *********** Step 1 : Opening an Example Project ***********

proc openExampleProject {} {

variable tcName
variable demoOrLab 
variable trainingPath

# Open a Example project
create_project project_cpu $trainingPath/training/$tcName/$demoOrLab/KC7xx -part xc7k70tfbg676-2
set_property target_language VHDL [current_project]
instantiate_example_design -template xilinx.com:design:cpu_hdl:1.0 
}
 
 ## ********** Step 2 : Examining the project_cpu Design and check DRC **************


proc examineCpuDesign {} {

variable tcName
variable demoOrLab 
variable trainingPath

# Open the elaborated design
synth_design -rtl -name rtl_1

# Generate the DRC report
report_drc -name drc_1 -ruledecks {default}

# Assign the package pin location for the ports using the I/O Ports tab
place_ports TILE0_REFCLK_PAD_P_IN K6
place_ports TILE1_REFCLK_PAD_P_IN H6
place_ports TILE2_REFCLK_PAD_P_IN F6
place_ports TILE3_REFCLK_PAD_P_IN D6

# save constraints
save_constraints

# Run the DRC report again
report_drc -name drc_2 -ruledecks {default}

# Enter the following XDC constraints in the Tcl Console to fix this DRC violation
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]

# save constraints
save_constraints

# Run the DRC report again
report_drc -name drc_3 -ruledecks {default}

# Generate the Report Methodology
report_methodology -name ultrafast_methodology_1 -checks {XDCH-2 XDCH-1 XDCC-8 XDCC-7 XDCC-6 XDCC-5 XDCC-4 XDCC-3 XDCC-2 XDCC-1 XDCB-5 XDCB-4 XDCB-3 XDCB-2 XDCB-1 CLKC-53 CLKC-9 CLKC-5 CLKC-38 CLKC-37 CLKC-36 CLKC-35 CLKC-4 CLKC-18 CLKC-3 CLKC-2 CLKC-1 HPDR-1 RRRS-1 RROR-1 ROAS-1 RMOR-1 RMIR-1 RFTL-1 RFRC-1 RFRA-1 RFFI-1 RFFH-1 RFCF-1 RCCL-1 RCBG-1 RAMP-1 RAMF-1 RAMD-1 RAKN-1}

# Remove the asynchronous reset from the code
set path $trainingPath/training/$tcName/$demoOrLab/KC7xx/project_cpu.srcs/sources_1/imports/Sources/or1200
set completedfilePath $trainingPath/training/$tcName/support/
file copy -force $completedfilePath/or1200_gmultp2_32x32.v $path/or1200_gmultp2_32x32.v

# Run the Report Methodology again
report_methodology -name ultrafast_methodology_2 -checks {XDCH-2 XDCH-1 XDCC-8 XDCC-7 XDCC-6 XDCC-5 XDCC-4 XDCC-3 XDCC-2 XDCC-1 XDCB-5 XDCB-4 XDCB-3 XDCB-2 XDCB-1 CLKC-53 CLKC-9 CLKC-5 CLKC-38 CLKC-37 CLKC-36 CLKC-35 CLKC-4 CLKC-18 CLKC-3 CLKC-2 CLKC-1 HPDR-1 RRRS-1 RROR-1 ROAS-1 RMOR-1 RMIR-1 RFTL-1 RFRC-1 RFRA-1 RFFI-1 RFFH-1 RFCF-1 RCCL-1 RCBG-1 RAMP-1 RAMF-1 RAMD-1 RAKN-1}

# Close Elaborated design
close_design

update_compile_order -fileset sources_1

# Run synthesis
synthesisRun

# If the synthesis fails at this step, manually refresh the design hierarchy and run the synthesis manually and go to next step 

# Run the DRC report
report_drc -name drc_1 -ruledecks {default}

close_design
close_project
}

 
 ## ********** Step 3 : Analyzing the Implemented Design with the Vivado IDE Cross-Probe Feature **************

proc analyzeModifiedCpuDesign {} {

variable tcName
variable demoOrLab 
variable projName 
variable trainingPath

# open project
set projName.xpr {append $projName .xpr}
open_project $trainingPath/training/$tcName/$demoOrLab/KC7xx/$projName/$projName.xpr

# Open the elaborated design
synth_design -rtl -name rtl_1

# Run the DRC report
report_drc -name drc_1 -ruledecks {default}

}


 ## ********** Running through the steps that are required with Make **************

proc make {stopAt} {

   puts "Running until the step $stopAt"
   #set steps [list S1_openProject S2_observeReport S3_addPriConstr S4_addGenConstr S5_genReport]
   set limit [string tolower $stopAt]
   switch $limit {
      step1  { openExampleProject }
      step2  { make step1; examineCpuDesign }
      step3  { make step2; analyzeModifiedCpuDesign }
      all    { make step3 }
      default { 
         puts "Call the make proc, Should be make step*" 
			  }	
	}	
}

