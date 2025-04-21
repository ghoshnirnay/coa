--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:20:30 04/10/2025
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000123058/four_bit_counter/test.vhd
-- Project Name:  four_bit_counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: udcounter_rtl
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
---------------------------------------------------------------------------------- Company:
-- Engineer:
--
-- Create Date: 15:38:21 04/10/2025
-- Design Name:
-- Module Name: /home/student/Desktop/13000123057/udcounter/udcounter_test.vhd
-- Project Name: udcounter
-- Target Device:
-- Tool versions:
-- Description:
-- 
-- VHDL Test Bench Created by ISE for module: udcounter_rtl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes:
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test. Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

ENTITY udcounter_test IS
END udcounter_test;

ARCHITECTURE behavior OF udcounter_test IS

-- Component Declaration for the Unit Under Test (UUT)

COMPONENT udcounter_rtl
PORT(
updown : IN std_logic;
reset : IN std_logic;
clk : IN std_logic;
count : OUT std_logic_vector(3 downto 0)
);
END COMPONENT;


--Inputs
signal updown : std_logic := '0';
signal reset : std_logic := '0';
signal clk : std_logic := '0';

--Outputs
signal count : std_logic_vector(3 downto 0);

-- Clock period definitions
constant clk_period : time := 2 ps;

BEGIN

-- Instantiate the Unit Under Test (UUT)
uut: udcounter_rtl PORT MAP (
updown => updown,
reset => reset,
clk => clk,
count => count
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
updown<='0'; reset<='0';
wait for 32 ps;
updown<='1'; reset<='0';
wait for 30 ps;
end process;

END;