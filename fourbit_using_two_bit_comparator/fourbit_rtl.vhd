----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:20:26 05/07/2025 
-- Design Name:    4-bit Comparator using 2-bit Comparator
-- Module Name:    fourbit_rtl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 4-bit comparator using two instances of 2-bit comparator
--
-- Dependencies: two_bit_compar.vhdl
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fourbit_rtl is
    Port (
        A : in  STD_LOGIC_VECTOR (3 downto 0);
        B : in  STD_LOGIC_VECTOR (3 downto 0);
        Eq : out STD_LOGIC;
        Gr : out STD_LOGIC;
        Lt : out STD_LOGIC
    );
end fourbit_rtl;

architecture Behavioral of fourbit_rtl is

    -- Signals for intermediate comparator outputs
    signal eq_high, gr_high, lt_high : STD_LOGIC;
    signal eq_low,  gr_low,  lt_low  : STD_LOGIC;

    -- Component declaration for two_bit_compar
    component two_bit_compar
        Port (
            A : in  STD_LOGIC_VECTOR (1 downto 0);
            B : in  STD_LOGIC_VECTOR (1 downto 0);
            Eq : out  STD_LOGIC;
            Gr : out  STD_LOGIC;
            Lt : out  STD_LOGIC
        );
    end component;

begin

    -- MSB comparator (bits 3 and 2)
    MSB_COMP: two_bit_compar
        port map (
            A  => A(3 downto 2),
            B  => B(3 downto 2),
            Eq => eq_high,
            Gr => gr_high,
            Lt => lt_high
        );

    -- LSB comparator (bits 1 and 0)
    LSB_COMP: two_bit_compar
        port map (
            A  => A(1 downto 0),
            B  => B(1 downto 0),
            Eq => eq_low,
            Gr => gr_low,
            Lt => lt_low
        );

    -- Final 4-bit comparison logic
    Eq <= eq_high and eq_low;
    Gr <= gr_high or (eq_high and gr_low);
    Lt <= lt_high or (eq_high and lt_low);

end Behavioral;
