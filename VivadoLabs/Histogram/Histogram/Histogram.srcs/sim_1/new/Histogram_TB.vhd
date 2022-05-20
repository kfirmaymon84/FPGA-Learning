library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity Histogram_TB is
    --  Port ( );
end Histogram_TB;

architecture Behavioral of Histogram_TB is
component Histogram 
    Port ( reset : in STD_LOGIC;
         clock : in STD_LOGIC;
         HIST_READY : out STD_LOGIC;
         HIST_VALUE : out STD_LOGIC_VECTOR (7 downto 0);
         VALUE_AMOUNT : out STD_LOGIC_VECTOR (9 downto 0)
        );
end component;

    signal reset : STD_LOGIC := '0';
    signal clock : STD_LOGIC := '0';
    signal HIST_READY : STD_LOGIC := '0';
    signal HIST_VALUE : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal VALUE_AMOUNT : STD_LOGIC_VECTOR (9 downto 0) := (others => '0');
begin
    UUT : Histogram port map ( reset => reset, clock => clock, HIST_READY => HIST_READY, HIST_VALUE => HIST_VALUE, VALUE_AMOUNT => VALUE_AMOUNT);
    clock <= not clock after 5 ns;
    reset <= '1', '0' after 100 ns;

end Behavioral;
