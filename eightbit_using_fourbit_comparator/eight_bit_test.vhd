library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eight_bit_tb is
end eight_bit_tb;

architecture behavior of eight_bit_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component eight_bit_rtl
        Port (
            A  : in  STD_LOGIC_VECTOR(7 downto 0);
            B  : in  STD_LOGIC_VECTOR(7 downto 0);
            Eq : out STD_LOGIC;
            Gr : out STD_LOGIC;
            Lt : out STD_LOGIC
        );
    end component;

    -- Signals for input/output
    signal A  : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal B  : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal Eq : STD_LOGIC;
    signal Gr : STD_LOGIC;
    signal Lt : STD_LOGIC;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: eight_bit_rtl
        port map (
            A  => A,
            B  => B,
            Eq => Eq,
            Gr => Gr,
            Lt => Lt
        );

    -- Stimulus Process
    stim_proc: process
    begin
        -- Test Case 1: A = B
        A <= "10101010"; B <= "10101010";
        wait for 2 ps;

        -- Test Case 2: A > B
        A <= "11110000"; B <= "01110000";
        wait for 2 ps;

        -- Test Case 3: A < B
        A <= "00110011"; B <= "10110011";
        wait for 2 ps;

        -- Test Case 4: A < B (LSBs same, MSB different)
        A <= "00111111"; B <= "01111111";
        wait for 2 ps;

        -- Test Case 5: A > B (MSB equal, LSB greater)
        A <= "01010101"; B <= "01010001";
        wait for 2 ps;

        -- Test Case 6: A = 0, B = max
        A <= "00000000"; B <= "11111111";
        wait for 2 ps;

        -- Test Case 7: A = max, B = 0
        A <= "11111111"; B <= "00000000";
        wait for 2 ps;

    end process;

end behavior;
