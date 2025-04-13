--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:21:18 04/09/2025
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000123067/sipo/sipo_test.vhd
-- Project Name:  sipo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sipo_rtl
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
 
ENTITY sipo_test IS
END sipo_test;
 
ARCHITECTURE behavior OF sipo_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sipo_rtl
    PORT(
         Data : IN  std_logic;
         Rst : IN  std_logic;
         Clk : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data : std_logic := '0';
   signal Rst : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sipo_rtl PORT MAP (
          Data => Data,
          Rst => Rst,
          Clk => Clk,
          Q => Q
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
		Data <= '1';
		Rst <= '0';
		wait for 10 ps;
		Data <= '0';
		Rst <= '0';
		wait for 10 ps;
   end process;

END;
