library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CountTo is
    Port ( reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           sw : in STD_LOGIC);
end CountTo;

architecture Behavioral of CountTo is
    signal count        : std_logic_vector(7 downto 0) := (others => '0');
    signal swSample     : std_logic_vector (9 downto 0) := (others => '0');
    signal LastSwSample : std_logic_vector (9 downto 0) := (others => '0');
    signal countStart   : std_logic := '0'; 
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                count <= (others => '0');
            else
                swSample(0) <= sw;
                LastSwSample <= swSample;
                 
                for idx in 1 to 9 loop
                    swSample(idx) <= swSample(idx - 1);
    
                end loop;
                
                if swSample = "1111111111"  and LastSwSample = "0111111111" then
                    countStart <= '1';
                end if;  
            end if;
            
            
            
            if countStart = '1' then
                if count < 100 then
                    count <= count + 1;
                else
                    countStart <= '0';
                end if;
            end if;
        end if;
        
    end process;

end Behavioral;
