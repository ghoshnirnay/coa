library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eight_bit_rtl is
    Port ( A   : in  STD_LOGIC_VECTOR (7 downto 0);
           B   : in  STD_LOGIC_VECTOR (7 downto 0);
           Eq  : out STD_LOGIC;
           Gr  : out STD_LOGIC;
           Lt  : out STD_LOGIC);
end eight_bit_rtl;

architecture Behavioral of eight_bit_rtl is

    -- Component declaration of 4-bit comparator
    component four_bit_rtl
        Port ( a   : in  STD_LOGIC_VECTOR (3 downto 0);
               b   : in  STD_LOGIC_VECTOR (3 downto 0);
               ieq : in  STD_LOGIC;
               igt : in  STD_LOGIC;
               ilt : in  STD_LOGIC;
               Eq  : out STD_LOGIC;
               gr  : out STD_LOGIC;
               Lt  : out STD_LOGIC);
    end component;

    -- Internal signals to connect MSB and LSB comparators
    signal eq_lsb, gr_lsb, lt_lsb : STD_LOGIC;

begin

    -- Lower 4 bits comparator
    LSB_COMP: four_bit_rtl
        port map (
            a   => A(3 downto 0),
            b   => B(3 downto 0),
            ieq => '1',
            igt => '0',
            ilt => '0',
            Eq  => eq_lsb,
            gr  => gr_lsb,
            Lt  => lt_lsb
        );

    -- Higher 4 bits comparator with cascade inputs from LSB
    MSB_COMP: four_bit_rtl
        port map (
            a   => A(7 downto 4),
            b   => B(7 downto 4),
            ieq => eq_lsb,
            igt => gr_lsb,
            ilt => lt_lsb,
            Eq  => Eq,
            gr  => Gr,
            Lt  => Lt
        );

end Behavioral;
