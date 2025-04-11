library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_ff is
    Port (
        D   : in  STD_LOGIC;
        CLK : in  STD_LOGIC;
        RST : in  STD_LOGIC;
        Q   : out STD_LOGIC
    );
end d_ff;

architecture Behavioral of d_ff is
begin
    process(CLK, RST)
    begin
        if RST = '1' then
            Q <= '0';  -- Asynchronous reset
        elsif rising_edge(CLK) then
            Q <= D;
        end if;
    end process;
end Behavioral;
