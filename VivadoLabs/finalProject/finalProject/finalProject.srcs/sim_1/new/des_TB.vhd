----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/24/2022 09:30:50 PM
-- Design Name: 
-- Module Name: des_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity des_TB is
--  Port ( );
end des_TB;

architecture Behavioral of des_TB is
component design_1_wrapper is
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
end component;

    signal DIN_0                : STD_LOGIC_VECTOR ( 7 downto 0 ) := (others => '0');
    signal HS_0                 : STD_LOGIC := '0';
    signal PCLK_0               : STD_LOGIC := '0';
    signal VSYNC_0              : STD_LOGIC := '0';
    signal clkOut24             : STD_LOGIC := '0';
    signal gpio_io_i_0          : STD_LOGIC_VECTOR ( 0 to 0 ) := (others => '0');
    signal initDone             : STD_LOGIC_VECTOR ( 0 to 0 ) := (others => '0');
    signal reset                : STD_LOGIC := '0';
    signal sys_clock            : STD_LOGIC := '0';
    signal temp_sensor_scl_io   : STD_LOGIC := '0';
    signal temp_sensor_sda_io   : STD_LOGIC := '0';
    signal usb_uart_rxd         : STD_LOGIC := '0';
    signal usb_uart_txd         : STD_LOGIC := '0';
    signal vga_b_0              : STD_LOGIC_VECTOR ( 3 downto 0 ) := (others => '0');
    signal vga_g_0              : STD_LOGIC_VECTOR ( 3 downto 0 ) := (others => '0');
    signal vga_hs_0             : STD_LOGIC := '0';
    signal vga_r_0              : STD_LOGIC_VECTOR ( 3 downto 0 ) := (others => '0');
    signal vga_vs_0             : STD_LOGIC := '0';
    
begin
UUT : design_1_wrapper port map (
    DIN_0 => DIN_0,
    HS_0 => HS_0,
    PCLK_0 => PCLK_0,
    VSYNC_0 => VSYNC_0,
    clkOut24 => clkOut24,
    gpio_io_i_0 => gpio_io_i_0,
    initDone => initDone,
    reset => reset,
    sys_clock => sys_clock,
    temp_sensor_scl_io => temp_sensor_scl_io,
    temp_sensor_sda_io => temp_sensor_sda_io,
    usb_uart_rxd => usb_uart_rxd,
    usb_uart_txd => usb_uart_txd,
    vga_b_0 => vga_b_0,
    vga_g_0 => vga_g_0,
    vga_hs_0 => vga_hs_0,
    vga_r_0 => vga_r_0,
    vga_vs_0=> vga_vs_0
);

sys_clock <= not sys_clock after 5 ns;
reset <= '0', '1' after 50 ns;

end Behavioral;
