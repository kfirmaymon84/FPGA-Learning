set_property IOSTANDARD LVCMOS18 [get_ports {led_pins[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led_pins[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led_pins[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led_pins[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led_pins[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led_pins[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led_pins[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led_pins[7]}]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports clk_pin_p]
set_property IOSTANDARD LVCMOS18 [get_ports dac_clr_n_pin]
set_property IOSTANDARD LVCMOS18 [get_ports dac_cs_n_pin]
set_property IOSTANDARD LVCMOS12 [get_ports lb_sel_pin]
set_property IOSTANDARD LVCMOS18 [get_ports rst_pin]
set_property PULLDOWN true [get_ports rst_pin]
set_property IOSTANDARD LVCMOS18 [get_ports rxd_pin]
set_property IOSTANDARD LVCMOS18 [get_ports spi_clk_pin]
set_property IOSTANDARD LVCMOS18 [get_ports spi_mosi_pin]
set_property IOSTANDARD LVCMOS18 [get_ports txd_pin]
  set_property PACKAGE_PIN AK17 [get_ports clk_pin_p]
  set_property PACKAGE_PIN AB34 [get_ports dac_clr_n_pin]
  set_property PACKAGE_PIN AA34 [get_ports dac_cs_n_pin]
  set_property PACKAGE_PIN AN16 [get_ports lb_sel_pin]
set_property PACKAGE_PIN AP8 [get_ports {led_pins[0]}]
set_property PACKAGE_PIN H23 [get_ports {led_pins[1]}]
set_property PACKAGE_PIN P20 [get_ports {led_pins[2]}]
set_property PACKAGE_PIN P21 [get_ports {led_pins[3]}]
set_property PACKAGE_PIN N22 [get_ports {led_pins[4]}]
set_property PACKAGE_PIN M22 [get_ports {led_pins[5]}]
set_property PACKAGE_PIN R23 [get_ports {led_pins[6]}]
  set_property PACKAGE_PIN P23 [get_ports {led_pins[7]}]
  set_property PACKAGE_PIN AN8 [get_ports rst_pin]
  set_property PACKAGE_PIN K26 [get_ports rxd_pin]
  set_property PACKAGE_PIN AB29 [get_ports spi_clk_pin]
  set_property PACKAGE_PIN AA29 [get_ports spi_mosi_pin]
set_property PACKAGE_PIN G25 [get_ports txd_pin]
set_property IOB TRUE [all_fanin -startpoints_only -flat -only_cells [get_ports {led_pins[0]}]]
set_property IOB TRUE [all_fanin -only_cells -startpoints_only -flat [all_outputs]]
set_property IOB TRUE [get_cells uart_rx_i0/meta_harden_rxd_i0/signal_meta_reg]
set_property IOB TRUE [get_cells lb_ctl_i0/debouncer_i0/meta_harden_signal_in_i0/signal_meta_reg]
set_property DRIVE 8 [get_ports dac_clr_n_pin]
set_property DRIVE 8 [get_ports dac_cs_n_pin]
set_property DRIVE 8 [get_ports spi_clk_pin]
set_property DRIVE 8 [get_ports spi_mosi_pin]
set_property DRIVE 8 [get_ports txd_pin]
