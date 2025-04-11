--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:13:20 04/11/2025
-- Design Name:   
-- Module Name:   /home/ng_pc/PCC-CS492-CA/PISO/piso_test.vhd
-- Project Name:  PISO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: piso_rtl
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
 
ENTITY piso_test IS
END piso_test;
 
ARCHITECTURE behavior OF piso_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT piso_rtl
    PORT(
         p : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic;
         s : IN  std_logic;
         qout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal p : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal s : std_logic := '0';

 	--Outputs
   signal qout : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: piso_rtl PORT MAP (
          p => p,
          clk => clk,
          rst => rst,
          s => s,
          qout => qout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
     -- Reset
        rst <= '1';
        wait for clk_period;
        rst <= '0';

        -- Load parallel data
        p <= "1111";
        s <= '0';  -- Load mode
        wait for clk_period;

        -- Shift serially
        s <= '1';
		  p <= "1111";
        wait for clk_period * 4;

   end process;

END;
