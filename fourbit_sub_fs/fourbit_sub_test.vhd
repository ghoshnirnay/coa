--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:10:19 02/21/2025
-- Design Name:   
-- Module Name:   /home/ng_pc/Desktop/1300123058/fourbit_sub_fs/fourbit_sub_test.vhd
-- Project Name:  fourbit_sub_fs
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fourbit_sub_hs_rtl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY fourbit_sub_test IS
END fourbit_sub_test;
 
ARCHITECTURE behavior OF fourbit_sub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourbit_sub_hs_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C_IN : IN  std_logic;
         DIFFERENCE : OUT  std_logic_vector(3 downto 0);
         BORROW : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C_IN : std_logic := '0';

  --Outputs
   signal DIFFERENCE : std_logic_vector(3 downto 0);
   signal BORROW : std_logic;
 
BEGIN
 
  -- Instantiate the Unit Under Test (UUT)
  uut: fourbit_sub_hs_rtl PORT MAP (
          A => A,
          B => B,
          C_IN => C_IN,
          DIFFERENCE => DIFFERENCE,
          BORROW => BORROW
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- Test Case 1: A = 0000, B = 0000, C_IN = 0
      A <= "0000"; B <= "0000"; C_IN <= '0';
      wait for 1 ps;
      
      -- Test Case 2: A = 1010, B = 0101, C_IN = 0
      A <= "1010"; B <= "0101"; C_IN <= '0';
      wait for 1 ps;
      
      -- Test Case 3: A = 1111, B = 0001, C_IN = 1
      A <= "1111"; B <= "0001"; C_IN <= '1';
      wait for 1 ps;
      
      -- Test Case 4: A = 0110, B = 1010, C_IN = 1
      A <= "0110"; B <= "1010"; C_IN <= '1';
      wait for 1 ps;
      
      -- Test Case 5: A = 1100, B = 1100, C_IN = 0
      A <= "1100"; B <= "1100"; C_IN <= '0';
      wait for 1 ps;
      
      -- Test Case 6: A = 1001, B = 0110, C_IN = 1
      A <= "1001"; B <= "0110"; C_IN <= '1';
      wait for 1 ps;
      
      -- End of test
      wait;
   end process;

END behavior;
