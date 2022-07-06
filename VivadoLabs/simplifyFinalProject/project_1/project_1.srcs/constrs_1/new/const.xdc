set_property IOSTANDARD LVCMOS33 [get_ports {DIN_0[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIN_0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIN_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIN_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIN_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIN_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIN_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIN_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r_0[0]}]
set_property PACKAGE_PIN D17 [get_ports {DIN_0[0]}]
set_property PACKAGE_PIN C17 [get_ports {DIN_0[1]}]
set_property PACKAGE_PIN E17 [get_ports {DIN_0[2]}]
set_property PACKAGE_PIN D18 [get_ports {DIN_0[3]}]
set_property PACKAGE_PIN F18 [get_ports {DIN_0[4]}]
set_property PACKAGE_PIN E18 [get_ports {DIN_0[5]}]
set_property PACKAGE_PIN G18 [get_ports {DIN_0[6]}]
set_property PACKAGE_PIN G17 [get_ports {DIN_0[7]}]
set_property PACKAGE_PIN B7 [get_ports {vga_b_0[0]}]
set_property PACKAGE_PIN C7 [get_ports {vga_b_0[1]}]
set_property PACKAGE_PIN D7 [get_ports {vga_b_0[2]}]
set_property PACKAGE_PIN D8 [get_ports {vga_b_0[3]}]
set_property PACKAGE_PIN C6 [get_ports {vga_g_0[0]}]
set_property PACKAGE_PIN A5 [get_ports {vga_g_0[1]}]
set_property PACKAGE_PIN B6 [get_ports {vga_g_0[2]}]
set_property PACKAGE_PIN A6 [get_ports {vga_g_0[3]}]
set_property PACKAGE_PIN A3 [get_ports {vga_r_0[0]}]
set_property PACKAGE_PIN B4 [get_ports {vga_r_0[1]}]
set_property PACKAGE_PIN C5 [get_ports {vga_r_0[2]}]
set_property PACKAGE_PIN A4 [get_ports {vga_r_0[3]}]
set_property PACKAGE_PIN B11 [get_ports vga_hs_0]
set_property PACKAGE_PIN B12 [get_ports vga_vs_0]
set_property PACKAGE_PIN G16 [get_ports VSYNC_0]
set_property PACKAGE_PIN F16 [get_ports PCLK_0]
set_property PACKAGE_PIN G13 [get_ports HS_0]
set_property IOSTANDARD LVCMOS33 [get_ports HS_0]
set_property IOSTANDARD LVCMOS33 [get_ports PCLK_0]
set_property IOSTANDARD LVCMOS33 [get_ports vga_hs_0]
set_property IOSTANDARD LVCMOS33 [get_ports vga_vs_0]
set_property IOSTANDARD LVCMOS33 [get_ports VSYNC_0]

set_property IOSTANDARD LVCMOS33 [get_ports clk24_MHz_0]
set_property PACKAGE_PIN F13 [get_ports clk24_MHz_0]
set_property IOSTANDARD LVCMOS33 [get_ports resend_0]
set_property PACKAGE_PIN N17 [get_ports resend_0]
set_property IOSTANDARD LVCMOS33 [get_ports sioc_0]
set_property IOSTANDARD LVCMOS33 [get_ports siod_0]
set_property PULLUP true [get_ports sioc_0]
set_property PULLUP true [get_ports siod_0]
set_property PACKAGE_PIN H14 [get_ports sioc_0]
set_property PACKAGE_PIN H16 [get_ports siod_0]
set_property IOSTANDARD LVCMOS33 [get_ports finished_0]
set_property PACKAGE_PIN H17 [get_ports finished_0]

#[0Place 30-876] Port 'PCLK_0'  is assigned to PACKAGE_PIN 'F16'  which can only be used as the N side of a differential clock input.
#Please use the following constraint(s) to pass this DRC check:
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets PCLK_0_IBUF]



set_property IOSTANDARD LVCMOS33 [get_ports debugLed_0]
set_property PACKAGE_PIN K15 [get_ports debugLed_0]












set_property IOSTANDARD LVCMOS33 [get_ports filterSw]
set_property PACKAGE_PIN M13 [get_ports filterSw]
set_property PACKAGE_PIN L16 [get_ports startSw]
set_property IOSTANDARD LVCMOS33 [get_ports startSw]
