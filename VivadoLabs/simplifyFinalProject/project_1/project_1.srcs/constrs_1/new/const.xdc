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
set_property PACKAGE_PIN H4 [get_ports sioc_0]
set_property PACKAGE_PIN H1 [get_ports siod_0]
set_property IOSTANDARD LVCMOS33 [get_ports finished_0]
set_property PACKAGE_PIN H17 [get_ports finished_0]

#[0Place 30-876] Port 'PCLK_0'  is assigned to PACKAGE_PIN 'F16'  which can only be used as the N side of a differential clock input.
#Please use the following constraint(s) to pass this DRC check:
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets PCLK_0_IBUF]



set_property IOSTANDARD LVCMOS33 [get_ports debugLed_0]
set_property PACKAGE_PIN K15 [get_ports debugLed_0]











create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/clk_wiz_0/inst/clk100_MHz]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {DIN_0_IBUF[0]} {DIN_0_IBUF[1]} {DIN_0_IBUF[2]} {DIN_0_IBUF[3]} {DIN_0_IBUF[4]} {DIN_0_IBUF[5]} {DIN_0_IBUF[6]} {DIN_0_IBUF[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 19 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/cameraAndVGA_Drivers_0_addressWrite[0]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[1]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[2]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[3]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[4]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[5]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[6]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[7]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[8]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[9]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[10]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[11]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[12]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[13]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[14]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[15]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[16]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[17]} {design_1_i/cameraAndVGA_Drivers_0_addressWrite[18]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 12 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/cameraAndVGA_Drivers_0_dataWrite[0]} {design_1_i/cameraAndVGA_Drivers_0_dataWrite[1]} {design_1_i/cameraAndVGA_Drivers_0_dataWrite[2]} {design_1_i/cameraAndVGA_Drivers_0_dataWrite[3]} {design_1_i/cameraAndVGA_Drivers_0_dataWrite[4]} {design_1_i/cameraAndVGA_Drivers_0_dataWrite[5]} {design_1_i/cameraAndVGA_Drivers_0_dataWrite[6]} {design_1_i/cameraAndVGA_Drivers_0_dataWrite[7]} {design_1_i/cameraAndVGA_Drivers_0_dataWrite[8]} {design_1_i/cameraAndVGA_Drivers_0_dataWrite[9]} {design_1_i/cameraAndVGA_Drivers_0_dataWrite[10]} {design_1_i/cameraAndVGA_Drivers_0_dataWrite[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list HS_0_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list PCLK_0_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list design_1_i/cameraAndVGA_Drivers_0_wea]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk100_MHz]
