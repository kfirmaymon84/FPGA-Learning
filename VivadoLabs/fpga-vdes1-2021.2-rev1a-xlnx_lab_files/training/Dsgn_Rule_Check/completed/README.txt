##########################################################################################################################################
#
#  Steps to create completed project
#
##########################################################################################################################################

  1. [Windows Users]:Manually copy the lab starting point provided in C:/training/Dsgn_Rule_Check/lab directory to 
     C:/training/Dsgn_Rule_Check/completed directory before starting a lab.
     
     [Linux Users]: Manually copy the lab starting point provided in /home/xilinx/training/Dsgn_Rule_Check/lab directory to 
     /home/xilinx/training/Dsgn_Rule_Check/completed directory before starting a lab.


     NOTE: Use the ORIGINAL LAB FILES provided.

  2. Run the Tcl script.
     a. Locate the Tcl console in the Vivado Design Suite. 
               
     b. Enter the following command to change the directory to Tcl completer directory:
        [Windows Users]:cd C:/training/Dsgn_Rule_Check/completed
	[Linux Users]: cd /home/xilinx/training/Dsgn_Rule_Check/completed
 
     c. Enter the following Tcl command to source the script:
        source Dsgn_Rule_Check_completer.tcl

  3. Set Tcl variables.
     a. Enter the following Tcl commands in the Tcl Console:
        use <platform>    
 
        Where <platform> is KCU105

  4. Create a Completed project
     a. Enter the following command to run all the steps of the lab and create the completed project:
        make all

##########################################################################################################################################