##########################################################################################################################################
#
#  Steps to create completed project
#
##########################################################################################################################################

  1. [Windows Users]: Manually copy the lab starting point provided in C:/training/Synth_Impl/lab directory to 
     C:/training/Synth_Impl/completed directory before starting a lab.

     [Linux Users]: Manually copy the lab starting point provided in /home/xilinx/training/Synth_Impl/lab directory to 
     /home/xilinx/training/Synth_Impl/completed directory before starting a lab.

       NOTE: Use the ORIGINAL LAB FILES provided.

  2. Run the Tcl script.
     a. Locate the Tcl console in the Vivado Design Suite. 
               
     b. Enter the following command to change the directory to Tcl completer directory:
	[Windows Users]: cd C:/training/Synth_Impl/completed
 	[Linux Users]: cd /home/xilinx/training/Synth_Impl/completed
 
     c. Enter the following Tcl command to source the script:
        source Synth_Impl_completer.tcl

  3. Set Tcl variables.
     a. Enter the following Tcl commands in the Tcl Console:
        use <platform>    
        use <language> 
 
        Where <language> is Verilog
              <platform> is ZCU104

  4. Create a Completed project
     a. Enter the following command to run all the steps of the lab and create the completed project:
        make all

##########################################################################################################################################