----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/01/2022 03:55:17 PM
-- Design Name: 
-- Module Name: RAD_Detector_TB - Behavioral
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

entity RAD_Detector_TB is
--  Port ( );
end RAD_Detector_TB;

architecture Behavioral of RAD_Detector_TB is
    component RAD_Detector
        Port ( clk_50MHz : in STD_LOGIC;
           reset : in STD_LOGIC;
           RAD : in STD_LOGIC;
           ALARM : out STD_LOGIC);
    end component;
    
    -- Inputs
    signal clk_50MHz : std_logic := '0';
    signal reset : std_logic := '1';
    signal RAD : std_logic := '0';
    -- Outputs
    signal ALARM : std_logic := '0';
    
    -- clock period def
    constant clock_periode : time := 20ns;
begin

    UUT: RAD_Detector port map(
                                clk_50MHz => clk_50MHz,
                                reset => reset,
                                RAD => RAD,
                                ALARM => ALARM );
                         
    --clock init
    clk_50MHz <= not clk_50MHz after clock_periode / 2;
    
    --Reset process
    process
    begin
        reset <= '1';
        wait for clock_periode * 5;
        reset <= '0';
        wait;
    end process;
    
    -- rad simulate
    process
    begin
    
        RAD <= '1';
        wait for 4 us;
        RAD <= '0';
        wait for 96 us;
        
        RAD <= '1';
        wait for 5 us;
        RAD <= '0';
        wait for 95 us;
        
        RAD <= '1';
        wait for 10 us;
        RAD <= '0';
        wait for 90 us;
        
        RAD <= '1';
        wait for 20 us;
        RAD <= '0';
        wait for 80 us;
    
        RAD <= '1';
        wait for 50 us;
        RAD <= '0';
        wait for 50 us;
    
        wait;
    end process;
    
                            
end Behavioral;
