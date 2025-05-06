LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY four_bit_test IS
END four_bit_test;

ARCHITECTURE behavior OF four_bit_test IS 

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT fourbit_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Eq : OUT std_logic;
         Gr : OUT std_logic;
         Lt : OUT std_logic
        );
    END COMPONENT;

   -- Signals for input and output
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Eq : std_logic;
   signal Gr : std_logic;
   signal Lt : std_logic;

BEGIN

   -- Instantiate the Unit Under Test (UUT)
   uut: fourbit_rtl PORT MAP (
          A => A,
          B => B,
          Eq => Eq,
          Gr => Gr,
          Lt => Lt
        );

   -- Stimulus process
   stim_proc: process
   begin

      -- Test Cases with 2 ps delay between them

      A <= "0000"; B <= "0000"; wait for 2 ps;  -- Equal
      A <= "0001"; B <= "0010"; wait for 2 ps;  -- A < B
      A <= "0101"; B <= "0011"; wait for 2 ps;  -- A > B
      A <= "1111"; B <= "1111"; wait for 2 ps;  -- Equal
      A <= "1000"; B <= "1001"; wait for 2 ps;  -- A < B
      A <= "0110"; B <= "0101"; wait for 2 ps;  -- A > B
      A <= "1010"; B <= "1010"; wait for 2 ps;  -- Equal
      A <= "0011"; B <= "0010"; wait for 2 ps;  -- A > B
      A <= "1100"; B <= "1110"; wait for 2 ps;  -- A < B

   end process;

END;
