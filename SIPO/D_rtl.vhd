----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:36:51 04/01/2025 
-- Design Name: 
-- Module Name:    D_rtl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity D_rtl is
    Port ( D : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qbar : out  STD_LOGIC);
end D_rtl;

architecture Behavioral of D_rtl is
signal temp : STD_LOGIC := '0';
begin

	Q <= temp;
	QBar <= (not temp);
	
	process (reset,CLK)
	begin
		if (reset = '1') then
				temp <= '0';
		
		elsif (RISING_EDGE( CLK )) then
				temp <= D;
		
		end if;
	end process;
end Behavioral;

