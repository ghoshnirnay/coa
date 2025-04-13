--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:12:32 04/03/2025
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000123058/srflipflop/sr_test.vhd
-- Project Name:  srflipflop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sr_rtl
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
 
ENTITY sr_test IS
END sr_test;
 
ARCHITECTURE behavior OF sr_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sr_rtl
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         Reset : IN  std_logic;
         Q : OUT  std_logic;
         QBar : OUT  std_logic;
         Clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal R : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QBar : std_logic;

   -- Clock period definitions
   constant Clk_period : time :=2 ps ;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sr_rtl PORT MAP (
          S => S,
          R => R,
          Reset => Reset,
          Q => Q,
          QBar => QBar,
          Clk => Clk
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
	
   stim_proc: process
   begin		
   S<='0';R<='0';Reset<='0';
	wait for 1 ps;
	S<='0';R<='0';Reset<='0';
	wait for 1 ps;
	S<='1';R<='0';Reset<='0';
	wait for 1 ps;
	S<='1';R<='0';Reset<='0';
	wait for 1 ps;
	S<='0';R<='1';Reset<='0';
	wait for 1 ps;
	S<='0';R<='1';Reset<='0';
	wait for 1 ps;
	S<='1';R<='1';Reset<='0';
	wait for 1 ps;
	S<='1';R<='1';Reset<='0';
	wait for 1 ps;
   end process;

END;
