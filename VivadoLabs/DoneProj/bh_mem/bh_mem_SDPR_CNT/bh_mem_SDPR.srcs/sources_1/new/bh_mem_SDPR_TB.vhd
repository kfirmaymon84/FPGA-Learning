library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

entity bh_mem_SDPR_TB is
    --  Port ( );
end bh_mem_SDPR_TB;

architecture Behavioral of bh_mem_SDPR_TB is
    component bh_mem_SDPR
        Port (
            reset : in std_logic;
            clk : in std_logic;
            dataOut : out std_logic_vector (9 downto 0)
        );
    end component;

    signal reset : std_logic := '0';
    signal clk : std_logic := '0';
    signal dataOut : std_logic_vector (9 downto 0) := (others => '0');
begin
    UUT : bh_mem_SDPR port map (reset => reset, clk => clk, dataOut => dataOut);
    
    clk <= not clk after 5 ns;
    reset <= '1', '0' after 100 ns;
end Behavioral;
