--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Tue Jun 14 21:33:17 2022
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
    CLK : in STD_LOGIC;
    XCLK : out STD_LOGIC;
    reset : in STD_LOGIC;
    resetN : in STD_LOGIC;
    temp_sensor_scl_io : inout STD_LOGIC;
    temp_sensor_sda_io : inout STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    CLK : in STD_LOGIC;
    reset : in STD_LOGIC;
    resetN : in STD_LOGIC;
    temp_sensor_scl_i : in STD_LOGIC;
    temp_sensor_scl_o : out STD_LOGIC;
    temp_sensor_scl_t : out STD_LOGIC;
    temp_sensor_sda_i : in STD_LOGIC;
    temp_sensor_sda_o : out STD_LOGIC;
    temp_sensor_sda_t : out STD_LOGIC;
    XCLK : out STD_LOGIC
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
      CLK => CLK,
      XCLK => XCLK,
      reset => reset,
      resetN => resetN,
      temp_sensor_scl_i => temp_sensor_scl_i,
      temp_sensor_scl_o => temp_sensor_scl_o,
      temp_sensor_scl_t => temp_sensor_scl_t,
      temp_sensor_sda_i => temp_sensor_sda_i,
      temp_sensor_sda_o => temp_sensor_sda_o,
      temp_sensor_sda_t => temp_sensor_sda_t
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
