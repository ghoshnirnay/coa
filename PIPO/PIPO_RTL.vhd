library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PIPO_RTL is
    Port (
        D     : in  STD_LOGIC_VECTOR(3 downto 0); -- Parallel input
        clk   : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        Q     : out STD_LOGIC_VECTOR(3 downto 0)  -- Parallel output
    );
end PIPO_RTL;

architecture Behavioral of PIPO_RTL is

    component D_rtl
        Port (
            D     : in  STD_LOGIC;
            reset : in  STD_LOGIC;
            clk   : in  STD_LOGIC;
            Q     : out STD_LOGIC;
            Qbar  : out STD_LOGIC
        );
    end component;

begin

    -- Instantiate four D flip-flops
    DFF0: D_rtl port map(D => D(0), clk => clk, reset => reset, Q => Q(0), Qbar => open);
    DFF1: D_rtl port map(D => D(1), clk => clk, reset => reset, Q => Q(1), Qbar => open);
    DFF2: D_rtl port map(D => D(2), clk => clk, reset => reset, Q => Q(2), Qbar => open);
    DFF3: D_rtl port map(D => D(3), clk => clk, reset => reset, Q => Q(3), Qbar => open);

end Behavioral;
