--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:34:59 03/31/2025
-- Design Name:   
-- Module Name:   /home/ng_pc/Desktop/13000123058/fourc/try_test.vhd
-- Project Name:  fourc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_rtl
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
 
ENTITY try_test IS
END try_test;
 
ARCHITECTURE behavior OF try_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_rtl
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         ieq : IN  std_logic;
         igt : IN  std_logic;
         ilt : IN  std_logic;
         Eq : OUT  std_logic;
         gr : OUT  std_logic;
         Lt : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal ieq : std_logic := '0';
   signal igt : std_logic := '0';
   signal ilt : std_logic := '0';

 	--Outputs
   signal Eq : std_logic;
   signal gr : std_logic;
   signal Lt : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_rtl PORT MAP (
          a => a,
          b => b,
          ieq => ieq,
          igt => igt,
          ilt => ilt,
          Eq => Eq,
          gr => gr,
          Lt => Lt
        );

   
 

   -- Stimulus process
   stim_proc: process
   begin		
      a<= "0110";
	  b<= "1001";
	  ieq<= '1';
	  igt<='0';
	  ilt<='0';
	  wait for 1 ps;
	  a<= "1010";
	  b<= "1010";
	  ieq<= '1';
	  igt<='0';
	  ilt<='0';
	  wait for 1 ps;
	  a<= "1110";
	  b<= "0001";
	  ieq<= '1';
	  igt<='0';
	  ilt<='0';
	  wait for 1 ps;
	  a<= "0100";
	  b<= "1001";
	  ieq<= '1';
	  igt<='0';
	  ilt<='0';
	  wait for 1 ps;
	  a<= "1101";
	  b<= "0011";
	  ieq<= '1';
	  igt<='0';
	  ilt<='0';
	  wait for 1 ps; 
   end process;

END;
