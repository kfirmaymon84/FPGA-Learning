library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.ALL;

entity HistogramMedian_TB is
--  Port ( );
end HistogramMedian_TB;

architecture Behavioral of HistogramMedian_TB is
    component HistogramMedian
        Port ( reset : in STD_LOGIC;
                CLK : in STD_LOGIC;
                SW : in STD_LOGIC_VECTOR (15 downto 0);
                SSEG_CA : out std_logic_vector (7 downto 0);
                SSEG_AN : out std_logic_vector (7 downto 0));
    end component;
    
    signal reset        : STD_LOGIC := '0';                           
    signal CLK          : STD_LOGIC := '0';
    signal SW           : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal SSEG_CA      : std_logic_vector (7 downto 0) := (others => '0');
    signal SSEG_AN      : std_logic_vector (7 downto 0) := (others => '0');                           
begin
    UUT: HistogramMedian port map(reset => reset, CLK => CLK, SW => SW, SSEG_CA => SSEG_CA, SSEG_AN => SSEG_AN);

    CLK <= not CLK after 5 ns;
    reset <= '1', '0' after 30 ns,'1' after 30 us , '0' after 30.100 us;


end Behavioral;
