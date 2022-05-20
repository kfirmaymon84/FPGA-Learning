library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity NirTextIoExp is
--  Port ( );
end NirTextIoExp;

architecture Behavioral of NirTextIoExp is
    signal ch_out : character;
begin

--    process -- Write to file
--        variable line_val : line;
--        file write_file : text open WRITE_MODE is "C:\GitHub\FPGA_LEARNING\VivadoLabs\NirTextIoExp\nir_exmap.txt";
--    begin
--        for i in 0 to 100 loop
--            write(line_val, " the value is "& integer'image(i) & " " & "the time is :" & time'image(now) );
--            writeline(write_file,line_val);
--            wait for 10 ns;
--        end loop;--End for loop
--        wait;
--    end process;

    
    process -- Read to file
        variable line_val : line;
        variable ch : character;
        file fp : text open READ_MODE is "C:\GitHub\FPGA_LEARNING\VivadoLabs\NirTextIoExp\nir_exmap.txt";
    begin
        while(not endfile(fp)) loop
            readline(fp, line_val);
            for i in 0 to line_val'length loop
                read(line_val,ch);
                wait for 10 ns;
                ch_out <= ch;
            end loop;--end for loop
        end loop;--End while loop
    end process;
    
end Behavioral;
