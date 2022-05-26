##########################################################################################################################################
#
#  Steps to create completed project
#
##########################################################################################################################################

  1. [Windows Users]: Manually copy the lab starting point provided in C:/training/IP_Flow/lab directory to 
     C:/training/IP_Flow/completed directory before starting a lab.

     [Linux Users]: Manually copy the lab starting point provided in /home/xilinx/training/IP_Flow/lab directory to 
     /home/xilinx/training/IP_Flow/completed directory before starting a lab.
     
     NOTE: Use the ORIGINAL LAB FILES provided.

  2. Run the Tcl script.
     a. Locate the Tcl console in the Vivado Design Suite. 
               
     b. Enter the following command to change the directory to Tcl completer directory:
        [Windows Users]: cd C:/training/IP_Flow/completed
        [Linux Users]: cd /home/xilinx/training/IP_Flow/completed
 
     c. Enter the following Tcl command to source the script:
        source IP_Flow_completer.tcl

  3. Set Tcl variables.
     a. Enter the following Tcl commands in the Tcl Console:
        use <platform>    
        use <language> 
 
        Where <language> is either Verilog or VHDL
              <platform> is KCU105

  4. Create a Completed project
     a. Enter the following command to run the steps of the lab:
        make all
    
     b. Manually refresh the sources hierarchy of the Vivado project.
        Right click at Hierarchy tab of sources window and select "Refresh Hierarchy"

     c. Enter the following proc to run the implementation process:
       	ImplDsgn


##########################################################################################################################################
