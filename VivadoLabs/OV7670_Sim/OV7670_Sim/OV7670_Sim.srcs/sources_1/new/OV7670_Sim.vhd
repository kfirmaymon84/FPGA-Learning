
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity OV7670_Sim is
    Port ( PCLK : in STD_LOGIC;
           DIN : in STD_LOGIC_VECTOR (7 downto 0);
           VSYNC : in STD_LOGIC;
           HS : in STD_LOGIC;
           XCLK : out STD_LOGIC);
end OV7670_Sim;

architecture Behavioral of OV7670_Sim is

begin


end Behavioral;
