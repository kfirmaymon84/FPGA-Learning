set_property IOSTANDARD LVCMOS33 [get_ports {led_pins[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_pins[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_pins[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_pins[3]}]

set_property IOSTANDARD LVDS [get_ports clk_pin_p]
set_property IOSTANDARD LVCMOS18 [get_ports dac_clr_n_pin]
set_property IOSTANDARD LVCMOS18 [get_ports dac_cs_n_pin]
set_property IOSTANDARD LVCMOS33 [get_ports lb_sel_pin]
set_property IOSTANDARD LVCMOS18 [get_ports rst_pin]
set_property IOSTANDARD LVCMOS18 [get_ports rxd_pin]
set_property IOSTANDARD LVCMOS18 [get_ports spi_clk_pin]
set_property IOSTANDARD LVCMOS18 [get_ports spi_mosi_pin]
set_property IOSTANDARD LVCMOS18 [get_ports txd_pin]

set_property PACKAGE_PIN F23 [get_ports clk_pin_p]
set_property PACKAGE_PIN M11 [get_ports rst_pin]
set_property PACKAGE_PIN A20 [get_ports rxd_pin]


set_property PACKAGE_PIN C11 [get_ports spi_clk_pin]
set_property PACKAGE_PIN F4 [get_ports lb_sel_pin]

#set_property LOC OLOGIC_X0Y53 [get_cells dac_spi_i0/DAC_clr_n_o_reg]
set_property PACKAGE_PIN E12 [get_ports dac_clr_n_pin]
#set_property LOC OLOGIC_X0Y54 [get_cells dac_spi_i0/DAC_cs_n_o_reg]
set_property PACKAGE_PIN F12 [get_ports dac_cs_n_pin]
#set_property LOC OLOGIC_X0Y52 [get_cells dac_spi_i0/spi_mosi_o_reg]
set_property PACKAGE_PIN D12 [get_ports spi_mosi_pin]



set_property IOB TRUE [get_cells dac_spi_i0/out_ddr_flop_spi_clk_i0/ODDR_inst]
set_property IOB TRUE [get_cells dac_spi_i0/spi_mosi_o_reg]
set_property IOB TRUE [get_cells dac_spi_i0/DAC_cs_n_o_reg]
set_property IOB TRUE [get_cells dac_spi_i0/DAC_clr_n_o_reg]
set_property IOB TRUE [get_cells lb_ctl_i0/txd_o_reg]
#set_property IOB TRUE [get_cells {samp_gen_i0/led_out_reg[7]}]
#set_property IOB TRUE [get_cells {samp_gen_i0/led_out_reg[6]}]
#set_property IOB TRUE [get_cells {samp_gen_i0/led_out_reg[5]}]
#set_property IOB TRUE [get_cells {samp_gen_i0/led_out_reg[4]}]
set_property IOB TRUE [get_cells {samp_gen_i0/led_out_reg[3]}]
set_property IOB TRUE [get_cells {samp_gen_i0/led_out_reg[2]}]
set_property IOB TRUE [get_cells {samp_gen_i0/led_out_reg[1]}]
set_property IOB TRUE [get_cells {samp_gen_i0/led_out_reg[0]}]



#set_property LOC OLOGIC_X0Y193 [get_cells lb_ctl_i0/txd_o_reg]
set_property PACKAGE_PIN C19 [get_ports txd_pin]

#set_property LOC OLOGIC_X1Y95 [get_cells {samp_gen_i0/led_out_reg[0]}]
set_property PACKAGE_PIN D5 [get_ports {led_pins[0]}]
#set_property LOC OLOGIC_X1Y96 [get_cells {samp_gen_i0/led_out_reg[1]}]
set_property PACKAGE_PIN D6 [get_ports {led_pins[1]}]
#set_property LOC OLOGIC_X1Y93 [get_cells {samp_gen_i0/led_out_reg[2]}]
set_property PACKAGE_PIN A5 [get_ports {led_pins[2]}]
#set_property LOC OLOGIC_X1Y94 [get_cells {samp_gen_i0/led_out_reg[3]}]
set_property PACKAGE_PIN B5 [get_ports {led_pins[3]}]


#set_property LOC BSCAN_X0Y0 [get_cells dbg_hub/inst/bscan_inst/SERIES7_BSCAN.bscan_inst]


set_property C_CLK_INPUT_FREQ_HZ 125000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_rx]
