library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_rtl is
    Port (
        D     : in  STD_LOGIC;
        Reset : in  STD_LOGIC;
        Clk   : in  STD_LOGIC;
        Q     : out STD_LOGIC;
        Qbar  : out STD_LOGIC
    );
end d_rtl;

architecture Behavioral of d_rtl is
    signal temp : STD_LOGIC := '0';
begin
    Q <= temp;
    Qbar <= not temp;

    process(Clk, Reset)
    begin
        if (Reset = '1') then
            temp <= '0';
        elsif rising_edge(Clk) then
            temp <= D;
        end if;
    end process;
end Behavioral;

