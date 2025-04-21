library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity updown_rtl is
    Port (
        clk    : in  STD_LOGIC;
        reset  : in  STD_LOGIC;
        updown : in  STD_LOGIC;
        out1   : out STD_LOGIC_VECTOR (3 downto 0)
    );
end updown_rtl;

architecture Behavioral of updown_rtl is

    component jk_rtl
        Port (
            j     : in  STD_LOGIC;
            k     : in  STD_LOGIC;
            reset : in  STD_LOGIC;
            clk   : in  STD_LOGIC;
            q     : out STD_LOGIC;
            qbar  : out STD_LOGIC
        );
    end component;

    signal j1, k1, q1, q1bar : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal t1, t2, t3, t4, t5, t6: STD_LOGIC;

begin
    -- First flip-flop always toggles
    j1(0) <= '1';
    k1(0) <= '1';

    -- FF1 input logic
    t1 <= q1(0) and updown;
    t2 <= q1bar(0) and (not updown);
    j1(1) <= t1 or t2;
    k1(1) <= j1(1);

    -- FF2 input logic
    t3 <= q1(1) and t1;
    t4 <= q1bar(1) and t2;
    j1(2) <= t3 or t4;
    k1(2) <= j1(2);

    -- FF3 input logic
    t5 <= q1(2) and t3;
    t6 <= q1bar(2) and t4;
    j1(3) <= t5 or t6;
    k1(3) <= j1(3);

    -- JK Flip-Flop instantiations
    U0: jk_rtl port map(j => j1(0), k => k1(0), reset => reset, clk => clk, q => q1(0), qbar => q1bar(0));
    U1: jk_rtl port map(j => j1(1), k => k1(1), reset => reset, clk => clk, q => q1(1), qbar => q1bar(1));
    U2: jk_rtl port map(j => j1(2), k => k1(2), reset => reset, clk => clk, q => q1(2), qbar => q1bar(2));
    U3: jk_rtl port map(j => j1(3), k => k1(3), reset => reset, clk => clk, q => q1(3), qbar => q1bar(3));

    -- Output assignment
    out1 <= q1;

end Behavioral;
