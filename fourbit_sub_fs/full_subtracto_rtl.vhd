----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:31:30 02/21/2025 
-- Design Name: 
-- Module Name:    full_subtracto_rtl - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_subtracto_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
		  c_in :in  STD_LOGIC;
           difference : out  STD_LOGIC;
           borrow : out  STD_LOGIC);
end full_subtracto_rtl;

architecture Behavioral of full_subtracto_rtl is
signal d1: STD_LOGIC;
signal b1,b2,b3 : STD_LOGIC;
begin
d1<=((not a)and b) or ((not b) and a);
difference<=((not d1) and c_in) or ((not c_in)and d1);
b1<=(not a) and b;
b2<=(not a) and c_in;
b3<=b and c_in;
borrow<=(b1 or b2) or b3;
end Behavioral;

