--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:43:48 02/21/2025
-- Design Name:   
-- Module Name:   /home/ng_pc/Desktop/1300123058/full_subtractor/full_subractor_test.vhd
-- Project Name:  full_subtractor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_subtracto_rtl
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
 
ENTITY full_subractor_test IS
END full_subractor_test;
 
ARCHITECTURE behavior OF full_subractor_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_subtracto_rtl
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c_in : IN  std_logic;
         difference : OUT  std_logic;
         borrow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c_in : std_logic := '0';

 	--Outputs
   signal difference : std_logic;
   signal borrow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_subtracto_rtl PORT MAP (
          a => a,
          b => b,
          c_in => c_in,
          difference => difference,
          borrow => borrow
        );

   -- Clock process definitions
  

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
   end process;

END;
