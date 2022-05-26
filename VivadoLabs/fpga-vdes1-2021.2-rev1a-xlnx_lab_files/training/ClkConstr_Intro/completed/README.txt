##########################################################################################################################################
#
#  Steps to create completed project
#
##########################################################################################################################################

  1. Manually copy the lab starting point provided in C:/training/ClkConstr_Intro/lab directory to 
     C:/training/ClkConstr_Intro/completed directory before starting a lab.

     NOTE: Use the ORIGINAL LAB FILES provided.

  2. Run the Tcl script.
     a. Locate the Tcl console in the Vivado Design Suite. 
               
     b. Enter the following command to change the directory to Tcl completer directory:
        cd C:/training/ClkConstr_Intro/completed
 
     c. Enter the following Tcl command to source the script:
        source ClkConstr_Intro_completer.tcl

  3. Set Tcl variables.
     a. Enter the following Tcl commands in the Tcl Console:
        use <platform>    
        use <language> 
 
        Where <language> is either Verilog or VHDL
              <platform> is either KCU105 or KC7xx

  4. Create a Completed project
     a. Enter the following command to run all the steps of the lab and create the completed project:
        make all

##########################################################################################################################################