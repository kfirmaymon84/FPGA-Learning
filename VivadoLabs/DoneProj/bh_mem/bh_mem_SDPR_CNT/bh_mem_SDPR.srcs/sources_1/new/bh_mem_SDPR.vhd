----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2022 12:30:05 PM
-- Design Name: 
-- Module Name: bh_mem_SDPR - Behavioral
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
use IEEE.std_logic_unsigned.all;

entity bh_mem_SDPR is
    Port (
        reset : in std_logic;
        clk : in std_logic;
        dataOut : out std_logic_vector (9 downto 0)
    );
end bh_mem_SDPR;

architecture Behavioral of bh_mem_SDPR is
    COMPONENT blk_mem_gen_0
        PORT (
            clka : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            clkb : IN STD_LOGIC;
            addrb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            doutb : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
        );
    END COMPONENT;
    signal wea : std_logic_vector (0 downto 0) := (others => '0');
    --signal adress_W : std_logic_vector (7 downto 0) := (others => '0');
    --signal adress_R : std_logic_vector (7 downto 0) := (others => '0');
    signal dataIn : std_logic_vector (9 downto 0) := (others => '0');

    signal counter : std_logic_vector (7 downto 0) := (others => '0');
    signal countFlag : std_logic := '0';
begin
    U1 : blk_mem_gen_0 port map (clka => clk, wea => wea, addra => counter, dina => dataIn,
                 clkb => clk, addrb => counter, doutb => dataOut);

    -- counter clk/2 speed
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                counter <= (others => '0');
            else
                countFlag <= not countFlag;
                if countFlag = '1' then
                    -- counter +1
                    if counter < 255 then
                        counter <= counter +1;
                    else
                        counter <= (others => '0');
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    -- data handle
    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then 
                wea(0) <= '0';
                dataIn <= (others => '0');
            else    
                wea(0) <= not wea(0);
                dataIn <= '0' & counter & '0';
            end if;   
        end if;
    end process;

end Behavioral;
