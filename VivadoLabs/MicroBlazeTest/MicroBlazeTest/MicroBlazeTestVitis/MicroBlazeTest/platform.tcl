# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\GitHub\FPGA-Learning\VivadoLabs\MicroBlazeTest\MicroBlazeTest\MicroBlazeTestVitis\MicroBlazeTest\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\GitHub\FPGA-Learning\VivadoLabs\MicroBlazeTest\MicroBlazeTest\MicroBlazeTestVitis\MicroBlazeTest\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {MicroBlazeTest}\
-hw {C:\GitHub\FPGA-Learning\VivadoLabs\MicroBlazeTest\MicroBlazeTest\design_1_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/GitHub/FPGA-Learning/VivadoLabs/MicroBlazeTest/MicroBlazeTest/MicroBlazeTestVitis}

platform write
platform generate -domains 
platform active {MicroBlazeTest}
platform generate
platform active {MicroBlazeTest}
platform generate -domains 
platform active {MicroBlazeTest}
platform generate -domains 
platform clean
platform generate
platform active {MicroBlazeTest}
platform config -updatehw {C:/GitHub/FPGA-Learning/VivadoLabs/MicroBlazeTest/MicroBlazeTest/design_1_wrapper.xsa}
platform generate -domains 
bsp reload
platform config -updatehw {C:/GitHub/FPGA-Learning/VivadoLabs/MicroBlazeTest/MicroBlazeTest/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/GitHub/FPGA-Learning/VivadoLabs/MicroBlazeTest/MicroBlazeTest/design_1_wrapper.xsa}
platform generate -domains 
