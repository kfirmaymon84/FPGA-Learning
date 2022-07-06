set_property IOSTANDARD LVCMOS33 [get_ports CLK]
set_property IOSTANDARD LVCMOS33 [get_ports RESET]
set_property IOSTANDARD LVCMOS33 [get_ports COMP_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports {A[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]
set_property PACKAGE_PIN J15 [get_ports {A[0]}]
set_property PACKAGE_PIN L16 [get_ports {A[1]}]
set_property PACKAGE_PIN M13 [get_ports {A[2]}]
set_property PACKAGE_PIN R15 [get_ports {A[3]}]
set_property PACKAGE_PIN R17 [get_ports {A[4]}]
set_property PACKAGE_PIN T18 [get_ports {A[5]}]
set_property PACKAGE_PIN U18 [get_ports {B[0]}]
set_property PACKAGE_PIN R13 [get_ports {B[1]}]
set_property PACKAGE_PIN T8 [get_ports {B[2]}]
set_property PACKAGE_PIN R16 [get_ports {B[4]}]
set_property PACKAGE_PIN T13 [get_ports {B[5]}]
set_property PACKAGE_PIN U8 [get_ports {B[3]}]
set_property PACKAGE_PIN H17 [get_ports COMP_OUT]
set_property PACKAGE_PIN V10 [get_ports RESET]
set_property PACKAGE_PIN E3 [get_ports CLK]

create_clock -period 5.000 -name CLK -waveform {0.000 2.500} [get_ports CLK]
#set_input_delay -clock [get_clocks CLK] -min -add_delay 0.000 [get_ports {A[*]}]
#set_input_delay -clock [get_clocks CLK] -max -add_delay 0.000 [get_ports {A[*]}]
#set_input_delay -clock [get_clocks CLK] -min -add_delay 0.000 [get_ports {B[*]}]
#set_input_delay -clock [get_clocks CLK] -max -add_delay 0.000 [get_ports {B[*]}]
#set_input_delay -clock [get_clocks CLK] -min -add_delay 0.000 [get_ports RESET]
#set_input_delay -clock [get_clocks CLK] -max -add_delay 0.000 [get_ports RESET]
#set_output_delay -clock [get_clocks CLK] -min -add_delay 0.000 [get_ports COMP_OUT]
#set_output_delay -clock [get_clocks CLK] -max -add_delay 0.000 [get_ports COMP_OUT]
