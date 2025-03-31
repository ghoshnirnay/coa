--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:33:10 03/05/2025
-- Design Name:   
-- Module Name:   /home/ng_pc/Desktop/1300123058/testc/ad_sub_test.vhd
-- Project Name:  testc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ad_sub_rtl
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
 
ENTITY ad_sub_test IS
END ad_sub_test;
 
ARCHITECTURE behavior OF ad_sub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ad_sub_rtl
    PORT(
         a2 : IN  std_logic_vector(3 downto 0);
         b2 : IN  std_logic_vector(3 downto 0);
         c2 : IN  std_logic;
         s1_out : OUT  std_logic_vector(3 downto 0);
         c1_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a2 : std_logic_vector(3 downto 0) := (others => '0');
   signal b2 : std_logic_vector(3 downto 0) := (others => '0');
   signal c2 : std_logic := '0';

 	--Outputs
   signal s1_out : std_logic_vector(3 downto 0);
   signal c1_out : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ad_sub_rtl PORT MAP (
          a2 => a2,
          b2 => b2,
          c2 => c2,
          s1_out => s1_out,
          c1_out => c1_out
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
        a2 <= "0000"; b2 <= "0000"; c2 <= '0';
      wait for 1 ps;
      
      a2 <= "1010"; b2 <= "0101"; c2 <= '0';
      wait for 1 ps;
      
      a2 <= "1111"; b2 <= "0001"; c2 <= '1';
      wait for 1 ps;
      
      a2 <= "0110"; b2 <= "1010"; c2 <= '1';
      wait for 1 ps;
      
      a2 <= "1100"; b2 <= "1100"; c2 <= '0';
      wait for 1 ps;
      
      a2 <= "1001"; b2 <= "0110"; c2 <= '1';
      wait for 1 ps;

   end process;

END;
