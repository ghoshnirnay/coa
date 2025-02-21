--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:24:30 02/21/2025
-- Design Name:   
-- Module Name:   /home/ng_pc/Desktop/1300123058/full_subtractort_hf/full_sub_test.vhd
-- Project Name:  full_subtractort_hf
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_sub_hf_rtl
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY full_sub_test IS
END full_sub_test;
 
ARCHITECTURE behavior OF full_sub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_sub_hf_rtl
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c_in : IN  std_logic;
         DIFFERENCE : OUT  std_logic;
         BORROW : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c_in : std_logic := '0';

 	--Outputs
   signal DIFFERENCE : std_logic;
   signal BORROW : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_sub_hf_rtl PORT MAP (
          a => a,
          b => b,
          c_in => c_in,
          DIFFERENCE => DIFFERENCE,
          BORROW => BORROW
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
    -- Test case 1: 0 - 0 - 0
      a <= '0'; b <= '0'; c_in <= '0';
      wait for 1 ps;
      
      -- Test case 2: 0 - 0 - 1
      a <= '0'; b <= '0'; c_in <= '1';
      wait for 1 ps;

      -- Test case 3: 0 - 1 - 0
      a <= '0'; b <= '1'; c_in <= '0';
      wait for 1 ps;

      -- Test case 4: 0 - 1 - 1
      a <= '0'; b <= '1'; c_in <= '1';
      wait for 1 ps;

      -- Test case 5: 1 - 0 - 0
      a <= '1'; b <= '0'; c_in <= '0';
      wait for 1 ps;

      -- Test case 6: 1 - 0 - 1
      a <= '1'; b <= '0'; c_in <= '1';
      wait for 1 ps;

      -- Test case 7: 1 - 1 - 0
      a <= '1'; b <= '1'; c_in <= '0';
      wait for 1 ps;

      -- Test case 8: 1 - 1 - 1
      a <= '1'; b <= '1'; c_in <= '1';
      wait for 1 ps;

     
      wait;
   end process;

END;
