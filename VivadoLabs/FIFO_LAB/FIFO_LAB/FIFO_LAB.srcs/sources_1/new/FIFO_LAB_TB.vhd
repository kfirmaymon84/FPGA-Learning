----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2022 07:21:23 PM
-- Design Name: 
-- Module Name: FIFO_LAB_TB - Behavioral
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

entity FIFO_LAB_TB is
    --  Port ( );
end FIFO_LAB_TB;

architecture Behavioral of FIFO_LAB_TB is
    component FIFO_LAB is
        Port (      CLK     : in std_logic;
                    CLK2    : in std_logic;
                    RESET   : in std_logic);
    end component;

    signal CLK      : std_logic := '0';
    signal CLK2     : std_logic := '0';
    signal RESET    : std_logic := '0';
begin
    UUT : FIFO_LAB port map (CLK => CLK, CLK2 => CLK2, RESET => RESET);
    
    CLK     <= not CLK  after 2.5 ns;
    CLK2    <= not CLK2 after 5 ns;
    RESET   <= '1' , '0' after 50 ns;
    
end Behavioral;

