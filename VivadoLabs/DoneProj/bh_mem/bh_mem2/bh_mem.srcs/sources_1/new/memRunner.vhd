library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

entity memRunner is
    Port ( clk : IN STD_LOGIC;
         reset : IN STD_LOGIC;
         dout : OUT STD_LOGIC_VECTOR (7 downto 0));
end memRunner;

architecture Behavioral of memRunner is
    COMPONENT DEMO_COUNTER 
    Port ( clock : IN STD_LOGIC;
         reset : IN STD_LOGIC;
         ce : IN STD_LOGIC;
         counter : OUT STD_LOGIC_VECTOR (9 downto 0)
         );
    END COMPONENT;

    COMPONENT blk_mem_gen_0 
      PORT (
        clka : IN STD_LOGIC;
        addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      );
    END COMPONENT;

    signal dataOut    : STD_LOGIC_VECTOR (7 downto 0):= (others => '0');
    signal countOut   : STD_LOGIC_VECTOR (9 downto 0):= (others => '0');

begin
    U1 : DEMO_COUNTER port map (
            clock => clk, reset => reset, ce => '1' , counter => countOut
        );

    U2 : blk_mem_gen_0 port map (
            clka => clk, addra => countOut, douta => dataOut
        );

--    U3 : memRunner port map (
--            clk => clk_100Mhz, reset => mainReset, dout => dataOut
--        );

    dout <= dataOut;

end Behavioral;
