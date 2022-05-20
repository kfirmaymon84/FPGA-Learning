library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ssBoardTest is
  Port (
    CLK : in std_logic;
    BTN : in std_logic_vector (4 downto 0);
    SSEG_CA : out std_logic_vector (7 downto 0);
    SSEG_AN : out std_logic_vector (7 downto 0)
       
  );
end ssBoardTest;

architecture Behavioral of ssBoardTest is
    constant number : std_logic_vector(31 downto 0) := X"00BC614E"; 
    constant dp : std_logic_vector (2 downto 0):= "000";
    
    component seveSegDriver
        port (clk    : in std_logic;
              reset  : in std_logic;
              numIn  : in std_logic_vector (31 downto 0);
              dp     : in std_logic_vector (2 downto 0);
              segOut : out std_logic_vector (7 downto 0);
              anodeEn  : out std_logic_vector (7 downto 0));
    end component;
    
begin

    U1 : seveSegDriver port map (CLK => clk, reset => BTN(4), numIn => number , dp => dp, segOut => SSEG_CA, anodeEn => SSEG_AN);
    
end Behavioral;
