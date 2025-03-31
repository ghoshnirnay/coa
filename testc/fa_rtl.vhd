----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:54:42 03/05/2025 
-- Design Name: 
-- Module Name:    fa_rtl - Behavioral 
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

entity fa_rtl is
    Port ( a1 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           c1 : in  STD_LOGIC;
           s_out : out  STD_LOGIC;
           c_out : out  STD_LOGIC);
end fa_rtl;

architecture Behavioral of fa_rtl is
signal temp:std_logic:='0';
begin
temp<=(((not a1) and b1) or ((not b1) and a1));
s_out<=((not temp) and c1) or ((not c1) and temp);
c_out<=((a1 and b1) or (b1 and c1)) or (c1 and a1);
end Behavioral;

