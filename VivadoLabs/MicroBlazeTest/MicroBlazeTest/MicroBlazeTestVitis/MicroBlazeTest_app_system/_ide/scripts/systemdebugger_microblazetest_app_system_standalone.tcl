# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\GitHub\FPGA-Learning\VivadoLabs\MicroBlazeTest\MicroBlazeTest\MicroBlazeTestVitis\MicroBlazeTest_app_system\_ide\scripts\systemdebugger_microblazetest_app_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\GitHub\FPGA-Learning\VivadoLabs\MicroBlazeTest\MicroBlazeTest\MicroBlazeTestVitis\MicroBlazeTest_app_system\_ide\scripts\systemdebugger_microblazetest_app_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Nexys A7 -100T 210292B40868A" && level==0 && jtag_device_ctx=="jsn-Nexys A7 -100T-210292B40868A-13631093-0"}
fpga -file C:/GitHub/FPGA-Learning/VivadoLabs/MicroBlazeTest/MicroBlazeTest/MicroBlazeTestVitis/MicroBlazeTest_app/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/GitHub/FPGA-Learning/VivadoLabs/MicroBlazeTest/MicroBlazeTest/MicroBlazeTestVitis/MicroBlazeTest/export/MicroBlazeTest/hw/design_1_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/GitHub/FPGA-Learning/VivadoLabs/MicroBlazeTest/MicroBlazeTest/MicroBlazeTestVitis/MicroBlazeTest_app/Debug/MicroBlazeTest_app.elf
bpadd -addr &main
