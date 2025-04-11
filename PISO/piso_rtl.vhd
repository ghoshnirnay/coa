library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity piso_rtl is
    Port (
        p    : in  STD_LOGIC_VECTOR(3 downto 0);  -- parallel input
        clk  : in  STD_LOGIC;
        rst  : in  STD_LOGIC;
        s    : in  STD_LOGIC;  -- shift = 1, load = 0
        qout : out STD_LOGIC_VECTOR(3 downto 0);  -- serial output
		  dout : out STD_LOGIC
    );
end piso_rtl;

architecture Behavioral of piso_rtl is

    component d_ff
        Port (
            D   : in  STD_LOGIC;
            CLK : in  STD_LOGIC;
            RST : in  STD_LOGIC;
            Q   : out STD_LOGIC
        );
    end component;

    signal q : STD_LOGIC_VECTOR(3 downto 0); -- q(3) is MSB

    signal d0, d1, d2, d3 : STD_LOGIC;

begin

    -- Mux logic: choose between load and shift
    d3 <= q(2) when s = '1' else p(3); -- shift left from q(2)
	 d2 <= q(1) when s = '1' else p(2);
    d1 <= q(0) when s = '1' else p(1);
    d0 <= '0'   when s = '1' else p(0); -- left shift: insert 0 at LSB


    -- D Flip-Flops for shifting
	 FF3: d_ff port map(D => d3, CLK => clk, RST => rst, Q => q(3));
	 FF2: d_ff port map(D => d2, CLK => clk, RST => rst, Q => q(2));
    FF1: d_ff port map(D => d1, CLK => clk, RST => rst, Q => q(1));
	 FF0: d_ff port map(D => d0, CLK => clk, RST => rst, Q => q(0));
	 
	 
    
    

    -- Serial output from the LSB
	 qout(3) <= q(3);
	 qout(2) <= q(2);
	 qout(1) <= q(1);
    qout(0) <= q(0);	 
	 dout<=q(3);
	 
end Behavioral;
