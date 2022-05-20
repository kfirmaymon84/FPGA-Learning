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
        reset      : IN std_logic;
        ADRESS_W   : IN std_logic_vector (7 downto 0);
        ADRESS_R   : IN std_logic_vector (7 downto 0);
        CLK        : IN std_logic;
        DATA_IN_A  : IN std_logic_vector (9 downto 0);
        WEA        : IN std_logic_vector (0 downto 0);
        DATA_OUT_B : OUT std_logic_vector (9 downto 0)
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
    
begin
    
    U1 : blk_mem_gen_0 port map (clka => CLK, wea => WEA, addra => ADRESS_W, dina => DATA_IN_A,
                 clkb => CLK, addrb => ADRESS_R, doutb => DATA_OUT_B);
                 

end Behavioral;
