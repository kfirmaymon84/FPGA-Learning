set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk_in1]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk_in1]

set_property IOSTANDARD LVCMOS33 [get_ports clk_in1]
set_property PACKAGE_PIN H17 [get_ports interrupt]
set_property IOSTANDARD LVCMOS33 [get_ports interrupt]


set_property PACKAGE_PIN D4 [get_ports tx]
set_property IOSTANDARD LVCMOS33 [get_ports tx]
set_property IOSTANDARD LVCMOS33 [get_ports rx]
set_property PACKAGE_PIN C4 [get_ports rx]
set_property -dict {PACKAGE_PIN V11 IOSTANDARD LVCMOS33} [get_ports {led]}]

set_property PACKAGE_PIN E3 [get_ports clk_in1]


set_property IOSTANDARD LVCMOS33 [get_ports aresetn]
set_property PACKAGE_PIN M13 [get_ports aresetn]


set_property IOSTANDARD LVCMOS33 [get_ports reset_1]
set_property PACKAGE_PIN J15 [get_ports reset_1]

