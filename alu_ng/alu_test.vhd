--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:01:10 04/17/2025
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000123058/alu/alu_test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu_rtl
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
 
ENTITY alu_test IS
END alu_test;
 
ARCHITECTURE behavior OF alu_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         sel : IN  std_logic_vector(2 downto 0);
         Result : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Result : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu_rtl PORT MAP (
          A => A,
          B => B,
          sel => sel,
          Result => Result
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- 000: A + B
		A <= "0110"; B <= "0001"; sel <= "000"; 
		wait for 1 ps;

		-- 001: A - B
		A <= "1000"; B <= "0011"; sel <= "001"; 
		wait for 1 ps;

		-- 010: A + 1
		A <= "1110"; sel <= "010";
		wait for 1 ps;

		-- 011: B - 1
		B <= "0001"; sel <= "011"; 
		wait for 1 ps;

		-- 100: A AND B
		A <= "1010"; B <= "1100"; sel <= "100"; 
		wait for 1 ps;

		-- 101: A OR B
		A <= "1010"; B <= "0101"; sel <= "101"; 
		wait for 1 ps;

		-- 110: NOT B
		B <= "1111"; sel <= "110"; 
		wait for 1 ps;

		-- 111: A XOR B (implemented using: (not A and B) or (not B and A))
		A <= "1001"; B <= "0110"; sel <= "111";
		wait for 1 ps;

     
   end process;

END;
