--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:41:47 03/31/2025
-- Design Name:   
-- Module Name:   /home/ng_pc/Desktop/13000123058/twoc/try_test.vhd
-- Project Name:  twoc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: two_bit_compar
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
 
    COMPONENT two_bit_compar
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         Eq : OUT  std_logic;
         Gr : OUT  std_logic;
         Lt : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Eq : std_logic;
   signal Gr : std_logic;
   signal Lt : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: two_bit_compar PORT MAP (
          A => A,
          B => B,
          Eq => Eq,
          Gr => Gr,
          Lt => Lt
        );

  

    stim_proc: process
   begin		
      A<= "11";
		B<= "11";
		wait for 1 ps;
		A<= "11";
		B<= "01";
		wait for 1 ps;
		A<= "00";
		B<= "01";
		wait for 1 ps;
		A<= "11";
		B<= "10";
		wait for 1 ps;  
		A<= "01";
		B<= "10";
		wait for 1 ps;
   end process;
END;
