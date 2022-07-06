# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\GitHub\FPGA-Learning\VivadoLabs\finalProject\finalProject\uC\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\GitHub\FPGA-Learning\VivadoLabs\finalProject\finalProject\uC\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {C:\GitHub\FPGA-Learning\VivadoLabs\finalProject\finalProject\design_1_wrapper.xsa}\
-out {C:/GitHub/FPGA-Learning/VivadoLabs/finalProject/finalProject/uC}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {design_1_wrapper}
platform generate -quick
platform generate
platform active {design_1_wrapper}
platform config -updatehw {C:/GitHub/FPGA-Learning/VivadoLabs/finalProject/finalProject/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/GitHub/FPGA-Learning/VivadoLabs/finalProject/finalProject/design_1_wrapper.xsa}
platform generate -domains 
platform active {design_1_wrapper}
platform config -updatehw {C:/GitHub/FPGA-Learning/VivadoLabs/finalProject/finalProject/design_1_wrapper.xsa}
platform generate -domains 
