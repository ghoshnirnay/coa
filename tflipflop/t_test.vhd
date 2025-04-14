--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:48:52 04/14/2025
-- Design Name:   T Flip-Flop Testbench
-- Module Name:   /mnt/d/Desktop/coa/tflipflop/t_test.vhd
-- Project Name:  tflipflop
-- Target Device:  
-- Tool versions:  
-- Description:   Testbench for T Flip-Flop (t_rtl)
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY t_test IS
END t_test;
 
ARCHITECTURE behavior OF t_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT t_rtl
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         t   : IN  std_logic;
         q   : OUT std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal t   : std_logic := '0';

   --Outputs
   signal q : std_logic;

   -- Clock period definition
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: t_rtl PORT MAP (
          clk => clk,
          rst => rst,
          t   => t,
          q   => q
        );

   -- Clock generation process
   clk_process : process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- Reset the flip-flop
      rst <= '1';
      wait for 2 * clk_period;
      rst <= '0';

      -- Apply T=1 to toggle
      t <= '1';
      wait for 4 * clk_period;

      -- Set T=0 (hold state)
      t <= '0';
      wait for 4 * clk_period;

      -- Toggle again
      t <= '1';
      wait for 6 * clk_period;

      -- Let output settle and keep sim running
      wait for 20 * clk_period;

      -- Stop activity; simulator will continue unless manually halted
      wait;
   end process;

END;