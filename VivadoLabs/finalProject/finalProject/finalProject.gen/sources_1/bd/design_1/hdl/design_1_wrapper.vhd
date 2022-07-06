--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Fri Jun 24 22:28:48 2022
--Host        : KfirLaptop running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    DIN_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    HS_0 : in STD_LOGIC;
    PCLK_0 : in STD_LOGIC;
    VSYNC_0 : in STD_LOGIC;
    clkOut24 : out STD_LOGIC;
    gpio_io_i_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    initDone : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    temp_sensor_scl_io : inout STD_LOGIC;
    temp_sensor_sda_io : inout STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    vga_b_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hs_0 : out STD_LOGIC;
    vga_r_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_vs_0 : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    clkOut24 : out STD_LOGIC;
    gpio_io_i_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    initDone : out STD_LOGIC_VECTOR ( 0 to 0 );
    HS_0 : in STD_LOGIC;
    vga_r_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VSYNC_0 : in STD_LOGIC;
    vga_hs_0 : out STD_LOGIC;
    DIN_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PCLK_0 : in STD_LOGIC;
    vga_b_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_vs_0 : out STD_LOGIC;
    temp_sensor_scl_i : in STD_LOGIC;
    temp_sensor_scl_o : out STD_LOGIC;
    temp_sensor_scl_t : out STD_LOGIC;
    temp_sensor_sda_i : in STD_LOGIC;
    temp_sensor_sda_o : out STD_LOGIC;
    temp_sensor_sda_t : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal temp_sensor_scl_i : STD_LOGIC;
  signal temp_sensor_scl_o : STD_LOGIC;
  signal temp_sensor_scl_t : STD_LOGIC;
  signal temp_sensor_sda_i : STD_LOGIC;
  signal temp_sensor_sda_o : STD_LOGIC;
  signal temp_sensor_sda_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      DIN_0(7 downto 0) => DIN_0(7 downto 0),
      HS_0 => HS_0,
      PCLK_0 => PCLK_0,
      VSYNC_0 => VSYNC_0,
      clkOut24 => clkOut24,
      gpio_io_i_0(0) => gpio_io_i_0(0),
      initDone(0) => initDone(0),
      reset => reset,
      sys_clock => sys_clock,
      temp_sensor_scl_i => temp_sensor_scl_i,
      temp_sensor_scl_o => temp_sensor_scl_o,
      temp_sensor_scl_t => temp_sensor_scl_t,
      temp_sensor_sda_i => temp_sensor_sda_i,
      temp_sensor_sda_o => temp_sensor_sda_o,
      temp_sensor_sda_t => temp_sensor_sda_t,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd,
      vga_b_0(3 downto 0) => vga_b_0(3 downto 0),
      vga_g_0(3 downto 0) => vga_g_0(3 downto 0),
      vga_hs_0 => vga_hs_0,
      vga_r_0(3 downto 0) => vga_r_0(3 downto 0),
      vga_vs_0 => vga_vs_0
    );
temp_sensor_scl_iobuf: component IOBUF
     port map (
      I => temp_sensor_scl_o,
      IO => temp_sensor_scl_io,
      O => temp_sensor_scl_i,
      T => temp_sensor_scl_t
    );
temp_sensor_sda_iobuf: component IOBUF
     port map (
      I => temp_sensor_sda_o,
      IO => temp_sensor_sda_io,
      O => temp_sensor_sda_i,
      T => temp_sensor_sda_t
    );
end STRUCTURE;
