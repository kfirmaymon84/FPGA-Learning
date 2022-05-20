----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/29/2016 11:58:32 AM
-- Design Name: 
-- Module Name: DP_memory - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;



-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DP_memory is
    Port ( PortA_clk : in STD_LOGIC;
           PortA_addr : in STD_LOGIC_VECTOR (9 downto 0);
           PortA_dataIn : in STD_LOGIC_VECTOR (7 downto 0);
           PortA_writeEnable : in STD_LOGIC;
           PortA_dataOut : out STD_LOGIC_VECTOR (7 downto 0);
           PortB_clk : in STD_LOGIC;
           PortB_addr : in STD_LOGIC_VECTOR (9 downto 0);
--           PortB_dataIn : in STD_LOGIC_VECTOR (7 downto 0);
--           PortB_writeEnable : in STD_LOGIC;
           PortB_dataOut : out STD_LOGIC_VECTOR (7 downto 0));
end DP_memory;

architecture Behavioral of DP_memory is
    type memoryByteArray is array(0 to 1023) of std_logic_vector(7 downto 0);
    shared variable memoryBlock : memoryByteArray:=(others =>(others=> '0'));
begin

   PortA: process(portA_clk)    
          variable address : integer range 0 to 1023 := 0;
        begin
    
         if rising_edge(PortA_clk) then
             address:= to_integer(unsigned(portA_addr));
             if(portA_writeEnable='1') then
               memoryBlock(address):=PortA_dataIn;
             end if;
             portA_dataOut<= memoryBlock(address);
         end if;
    end process PortA;
        
            PortB: process(portB_clk)
           variable address: integer range 0 to 1023:=0;
         begin
            
            if rising_edge(PortB_clk) then
                address:= to_integer(unsigned(portB_addr));
--                if(portB_writeEnable='1') then
--                 memoryBlock(address):=PortB_dataIn;
--                end if;
                portB_dataOut<= memoryBlock(address);
            end if;
      end process PortB;

end Behavioral;
