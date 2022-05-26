# Global Clock Constraints
# create_clock -period 8 -name clk_pin_p [get_ports clk_pin_p]


# IO Timing Constraints
# set_input_delay -clock [get_clocks clk_pin_p] 1.500 [get_ports {rst_pin rxd_pin btn_pin}]
# set_input_delay -clock [get_clocks clk_pin_p] -min 1.00 [get_ports {rst_pin rxd_pin btn_pin}]
# set_output_delay -clock [get_clocks clk_pin_p] 0.500 [get_ports led_pins*]
# set_output_delay -clock [get_clocks clk_pin_p] -min -0.500 [get_ports led_pins*]


#Physical Constraints
set_property IOSTANDARD LVDS [get_ports clk_pin_p]
set_property PACKAGE_PIN F23 [get_ports clk_pin_p]
set_property PACKAGE_PIN E23 [get_ports clk_pin_n]
set_property IOSTANDARD LVDS [get_ports clk_pin_n]


set_property PACKAGE_PIN M11 [get_ports rst_pin]
set_property IOSTANDARD LVCMOS33 [get_ports rst_pin]
set_property PACKAGE_PIN F5 [get_ports btn_pin]
set_property IOSTANDARD LVCMOS18 [get_ports rxd_pin]
set_property PACKAGE_PIN A20 [get_ports rxd_pin]
set_property IOSTANDARD LVCMOS33 [get_ports btn_pin]

set_property PACKAGE_PIN D5 [get_ports {led_pins[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_pins[0]}]
set_property PACKAGE_PIN D6 [get_ports {led_pins[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_pins[1]}]
set_property PACKAGE_PIN A5 [get_ports {led_pins[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_pins[2]}]
set_property PACKAGE_PIN B5 [get_ports {led_pins[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_pins[3]}]
