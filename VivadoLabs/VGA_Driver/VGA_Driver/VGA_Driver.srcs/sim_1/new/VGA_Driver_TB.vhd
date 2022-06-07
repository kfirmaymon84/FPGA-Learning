----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/07/2022 06:18:03 PM
-- Design Name: 
-- Module Name: VGA_Driver_TB - Behavioral
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

entity VGA_Driver_TB is
    --  Port ( );
end VGA_Driver_TB;

architecture Behavioral of VGA_Driver_TB is
    component VGA_Driver is
        Port (
            vga_r : out std_logic_vector(3 downto 0);
            vga_g : out std_logic_vector(3 downto 0);
            vga_b : out std_logic_vector(3 downto 0);
            vga_hs : out std_logic;
            vga_vs : out std_logic;

            clk : in std_logic;
            reset : in std_logic
        );
    end component;
    signal vga_r  : std_logic_vector(3 downto 0) := (others => '0');
    signal vga_g  : std_logic_vector(3 downto 0) := (others => '0');
    signal vga_b  : std_logic_vector(3 downto 0) := (others => '0');
    signal vga_hs : std_logic := '0';
    signal vga_vs : std_logic;

    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
begin

    UUT : VGA_Driver port map( vga_r => vga_r, vga_g => vga_g, vga_b => vga_b, vga_hs => vga_hs, vga_vs => vga_vs, clk => clk, reset => reset);

    clk <= not clk after 5ns;

    reset <= '1', '0' after 100ns;
end Behavioral;
