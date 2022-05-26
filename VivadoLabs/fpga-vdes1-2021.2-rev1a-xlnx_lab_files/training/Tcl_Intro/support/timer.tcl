#
# #################################################################
#
# Script to determine how much time it takes to run another script
#
# WK 30 Jun 2013
#
# #################################################################
#

#
# get the script name to run
puts "Enter script to time: "
set tcl_script_name [gets stdin]

#
# get the current time
set TIME_start [clock milliseconds]

#
# run the script
source $tcl_script_name

#
# get the current time (after execution)
set TIME_end [clock milliseconds]

#
# compute the time taken and report it
set TIME_taken [expr $TIME_end - $TIME_start]
puts "Script $tcl_script_name took $TIME_taken milliseconds to run"

# ### DONE ###
