----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2022 08:57:37 PM
-- Design Name: 
-- Module Name: bh_mem_TB - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

entity bh_mem_TB is
    --  Port ( );
end bh_mem_TB;

architecture Behavioral of bh_mem_TB is
    component memRunner
        Port ( clk : in STD_LOGIC;
             reset : in STD_LOGIC;
             dout : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    COMPONENT blk_mem_gen_0
        PORT (
            clka : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;
    COMPONENT counter
        Port ( clock : in STD_LOGIC;
             reset : in STD_LOGIC;
             ce : in STD_LOGIC;
             counter : out STD_LOGIC_VECTOR (9 downto 0)
            );
    end COMPONENT;
    signal clka :  STD_LOGIC := '0';
    signal addra :  STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '0');
    signal douta :  STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');
begin

    your_instance_name : blk_mem_gen_0
        PORT MAP (
            clka => clka,
            addra => addra,
            douta => douta
        );

    clka <= not (clka) after 5ns;

    process
    begin
        addra <= addra + 1;
        wait for 10ns;
    end process;

end Behavioral;
