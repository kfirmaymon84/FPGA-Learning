#run_hw_axi [get_hw_axi_txns write_txn]set_property PACKAGE_PIN E3 [get_ports clk_in1]
set_property IOSTANDARD LVCMOS33 [get_ports clk_in1]
set_property PACKAGE_PIN H17 [get_ports interrupt]
set_property IOSTANDARD LVCMOS33 [get_ports interrupt]


set_property PACKAGE_PIN D4 [get_ports tx]
set_property IOSTANDARD LVCMOS33 [get_ports tx]
set_property IOSTANDARD LVCMOS33 [get_ports rx]
set_property PACKAGE_PIN C4 [get_ports rx]
#create_debug_core u_ila_0 ila
#set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
#set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
#set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
#set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
#set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
#set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
#set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
#set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
#set_property port_width 1 [get_debug_ports u_ila_0/clk]
#connect_debug_port u_ila_0/clk [get_nets [list clk]]
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
#set_property port_width 2 [get_debug_ports u_ila_0/probe0]
#connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/axi_uartlite_0/s_axi_araddr[2]} {design_1_i/axi_uartlite_0/s_axi_araddr[3]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
#set_property port_width 8 [get_debug_ports u_ila_0/probe1]
#connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/axi_uartlite_0/s_axi_wdata[0]} {design_1_i/axi_uartlite_0/s_axi_wdata[1]} {design_1_i/axi_uartlite_0/s_axi_wdata[2]} {design_1_i/axi_uartlite_0/s_axi_wdata[3]} {design_1_i/axi_uartlite_0/s_axi_wdata[4]} {design_1_i/axi_uartlite_0/s_axi_wdata[5]} {design_1_i/axi_uartlite_0/s_axi_wdata[6]} {design_1_i/axi_uartlite_0/s_axi_wdata[7]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
#set_property port_width 1 [get_debug_ports u_ila_0/probe2]
#connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/axi_uartlite_0/s_axi_rresp[1]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
#set_property port_width 2 [get_debug_ports u_ila_0/probe3]
#connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/axi_uartlite_0/s_axi_awaddr[2]} {design_1_i/axi_uartlite_0/s_axi_awaddr[3]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
#set_property port_width 8 [get_debug_ports u_ila_0/probe4]
#connect_debug_port u_ila_0/probe4 [get_nets [list {design_1_i/axi_uartlite_0/s_axi_rdata[0]} {design_1_i/axi_uartlite_0/s_axi_rdata[1]} {design_1_i/axi_uartlite_0/s_axi_rdata[2]} {design_1_i/axi_uartlite_0/s_axi_rdata[3]} {design_1_i/axi_uartlite_0/s_axi_rdata[4]} {design_1_i/axi_uartlite_0/s_axi_rdata[5]} {design_1_i/axi_uartlite_0/s_axi_rdata[6]} {design_1_i/axi_uartlite_0/s_axi_rdata[7]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
#set_property port_width 1 [get_debug_ports u_ila_0/probe5]
#connect_debug_port u_ila_0/probe5 [get_nets [list {design_1_i/axi_uartlite_0/s_axi_bresp[1]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
#set_property port_width 1 [get_debug_ports u_ila_0/probe6]
#connect_debug_port u_ila_0/probe6 [get_nets [list design_1_i/axi_uartlite_0/U0/s_axi_arready]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
#set_property port_width 1 [get_debug_ports u_ila_0/probe7]
#connect_debug_port u_ila_0/probe7 [get_nets [list design_1_i/axi_uartlite_0/U0/s_axi_arvalid]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
#set_property port_width 1 [get_debug_ports u_ila_0/probe8]
#connect_debug_port u_ila_0/probe8 [get_nets [list design_1_i/axi_uartlite_0/U0/s_axi_awready]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
#set_property port_width 1 [get_debug_ports u_ila_0/probe9]
#connect_debug_port u_ila_0/probe9 [get_nets [list design_1_i/axi_uartlite_0/U0/s_axi_awvalid]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
#set_property port_width 1 [get_debug_ports u_ila_0/probe10]
#connect_debug_port u_ila_0/probe10 [get_nets [list design_1_i/axi_uartlite_0/U0/s_axi_bready]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
#set_property port_width 1 [get_debug_ports u_ila_0/probe11]
#connect_debug_port u_ila_0/probe11 [get_nets [list design_1_i/axi_uartlite_0/U0/s_axi_bvalid]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
#set_property port_width 1 [get_debug_ports u_ila_0/probe12]
#connect_debug_port u_ila_0/probe12 [get_nets [list design_1_i/axi_uartlite_0/U0/s_axi_rready]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
#set_property port_width 1 [get_debug_ports u_ila_0/probe13]
#connect_debug_port u_ila_0/probe13 [get_nets [list design_1_i/axi_uartlite_0/U0/s_axi_rvalid]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
#set_property port_width 1 [get_debug_ports u_ila_0/probe14]
#connect_debug_port u_ila_0/probe14 [get_nets [list design_1_i/axi_uartlite_0/U0/s_axi_wvalid]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
#set_property port_width 1 [get_debug_ports u_ila_0/probe15]
#connect_debug_port u_ila_0/probe15 [get_nets [list design_1_i/axi_uartlite_0/U0/tx]]
#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk]

set_property PACKAGE_PIN E3 [get_ports clk_in1]


set_property IOSTANDARD LVCMOS33 [get_ports aresetn]
set_property PACKAGE_PIN M13 [get_ports aresetn]


set_property IOSTANDARD LVCMOS33 [get_ports reset_1]
set_property PACKAGE_PIN J15 [get_ports reset_1]
#create_debug_core u_ila_0 ila
#set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
#set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
#set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
#set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
#set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
#set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
#set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
#set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
#set_property port_width 1 [get_debug_ports u_ila_0/clk]
#connect_debug_port u_ila_0/clk [get_nets [list clk]]
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
#set_property port_width 1 [get_debug_ports u_ila_0/probe0]
#connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/axi_uartlite_0/s_axi_bresp[1]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
#set_property port_width 1 [get_debug_ports u_ila_0/probe1]
#connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/axi_uartlite_0/s_axi_rresp[1]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
#set_property port_width 2 [get_debug_ports u_ila_0/probe2]
#connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/axi_uartlite_0/s_axi_awaddr[2]} {design_1_i/axi_uartlite_0/s_axi_awaddr[3]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
#set_property port_width 2 [get_debug_ports u_ila_0/probe3]
#connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/axi_uartlite_0/s_axi_araddr[2]} {design_1_i/axi_uartlite_0/s_axi_araddr[3]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
#set_property port_width 8 [get_debug_ports u_ila_0/probe4]
#connect_debug_port u_ila_0/probe4 [get_nets [list {design_1_i/axi_uartlite_0/s_axi_wdata[0]} {design_1_i/axi_uartlite_0/s_axi_wdata[1]} {design_1_i/axi_uartlite_0/s_axi_wdata[2]} {design_1_i/axi_uartlite_0/s_axi_wdata[3]} {design_1_i/axi_uartlite_0/s_axi_wdata[4]} {design_1_i/axi_uartlite_0/s_axi_wdata[5]} {design_1_i/axi_uartlite_0/s_axi_wdata[6]} {design_1_i/axi_uartlite_0/s_axi_wdata[7]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
#set_property port_width 1 [get_debug_ports u_ila_0/probe5]
#connect_debug_port u_ila_0/probe5 [get_nets [list design_1_i/axi_uartlite_0/rx]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
#set_property port_width 1 [get_debug_ports u_ila_0/probe6]
#connect_debug_port u_ila_0/probe6 [get_nets [list design_1_i/axi_uartlite_0/interrupt]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
#set_property port_width 1 [get_debug_ports u_ila_0/probe7]
#connect_debug_port u_ila_0/probe7 [get_nets [list design_1_i/axi_uartlite_0/s_axi_arready]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
#set_property port_width 1 [get_debug_ports u_ila_0/probe8]
#connect_debug_port u_ila_0/probe8 [get_nets [list design_1_i/axi_uartlite_0/s_axi_arvalid]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
#set_property port_width 1 [get_debug_ports u_ila_0/probe9]
#connect_debug_port u_ila_0/probe9 [get_nets [list design_1_i/axi_uartlite_0/s_axi_awready]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
#set_property port_width 1 [get_debug_ports u_ila_0/probe10]
#connect_debug_port u_ila_0/probe10 [get_nets [list design_1_i/axi_uartlite_0/s_axi_awvalid]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
#set_property port_width 1 [get_debug_ports u_ila_0/probe11]
#connect_debug_port u_ila_0/probe11 [get_nets [list design_1_i/axi_uartlite_0/s_axi_bready]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
#set_property port_width 1 [get_debug_ports u_ila_0/probe12]
#connect_debug_port u_ila_0/probe12 [get_nets [list design_1_i/axi_uartlite_0/s_axi_bvalid]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
#set_property port_width 1 [get_debug_ports u_ila_0/probe13]
#connect_debug_port u_ila_0/probe13 [get_nets [list design_1_i/axi_uartlite_0/s_axi_rready]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
#set_property port_width 1 [get_debug_ports u_ila_0/probe14]
#connect_debug_port u_ila_0/probe14 [get_nets [list design_1_i/axi_uartlite_0/s_axi_wready]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
#set_property port_width 1 [get_debug_ports u_ila_0/probe15]
#connect_debug_port u_ila_0/probe15 [get_nets [list design_1_i/axi_uartlite_0/s_axi_rvalid]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
#set_property port_width 1 [get_debug_ports u_ila_0/probe16]
#connect_debug_port u_ila_0/probe16 [get_nets [list design_1_i/axi_uartlite_0/s_axi_wvalid]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
#set_property port_width 1 [get_debug_ports u_ila_0/probe17]
#connect_debug_port u_ila_0/probe17 [get_nets [list design_1_i/axi_uartlite_0/tx]]
#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk]
