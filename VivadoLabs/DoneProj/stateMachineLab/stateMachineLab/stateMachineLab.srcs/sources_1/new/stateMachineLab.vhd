library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity stateMachineLab is
    Port ( reset : in STD_LOGIC;
         clk : in STD_LOGIC;
         RED_W: out std_logic;
         GREEN_W: out std_logic;
         RED_C: out std_logic;
         ORANGE_C: out std_logic;
         GREEN_C: out std_logic);

end stateMachineLab;

architecture Behavioral of stateMachineLab is
    type STATE is ( START, WALK, STOP_WALK, PRE_DRIVE,DRIVE, STOP_DRIVE);
    signal stateIdx : STATE := START;
    signal counter  : integer range 0 to 2400 := 0;
begin

    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                counter <= 0;
            else
                if counter < 2400 then
                    counter <= counter + 1;
                else
                    counter <= 0;
                end if;
            end if;
        end if;
    end process;

    process (clk)
    begin
        case stateIdx is
            when START =>
                RED_W <= '1';
                GREEN_W <= '0';
                RED_C <= '1';
                ORANGE_C <= '0';
                GREEN_C <= '0';
                -- MOVE TO NEXT STATE
                if COUNTER = 100 then
                    stateIdx <= WALK;
                end if;
            when WALK =>
                RED_W <= '0';
                GREEN_W <= '1';
                RED_C <= '1';
                ORANGE_C <= '0';
                GREEN_C <= '0';
                -- MOVE TO NEXT STATE
                if COUNTER = 1100 then
                    stateIdx <= STOP_WALK;
                end if;
            when STOP_WALK =>
                RED_W <= '1';
                GREEN_W <= '0';
                RED_C <= '1';
                ORANGE_C <= '0';
                GREEN_C <= '0';
                -- MOVE TO NEXT STATE
                if COUNTER = 1200 then
                    stateIdx <= PRE_DRIVE;
                end if;
            when PRE_DRIVE =>
                RED_W <= '1';
                GREEN_W <= '0';
                RED_C <= '0';
                ORANGE_C <= '1';
                GREEN_C <= '0';
                -- MOVE TO NEXT STATE
                if COUNTER = 1300 then
                    stateIdx <= DRIVE;
                end if;
            when DRIVE =>
                RED_W <= '1';
                GREEN_W <= '0';
                RED_C <= '0';
                ORANGE_C <= '0';
                GREEN_C <= '1';
                -- MOVE TO NEXT STATE
                if COUNTER = 2300 then
                    stateIdx <= STOP_DRIVE;
                end if;
            when STOP_DRIVE=>
                RED_W <= '1';
                GREEN_W <= '0';
                RED_C <= '1';
                ORANGE_C <= '0';
                GREEN_C <= '0';
                -- MOVE TO NEXT STATE
                if COUNTER = 2400 then
                    stateIdx <= START;
                end if;
            when others => stateIdx <= stateIdx;
        end case;
    end process;

end Behavioral;
