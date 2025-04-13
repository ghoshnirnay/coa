----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:00:19 04/03/2025 
-- Design Name: 
-- Module Name:    sr_rtl - Behavioral 
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

entity sr_rtl is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBar : out  STD_LOGIC;
           Clk : in  STD_LOGIC);
end sr_rtl;

architecture Behavioral of sr_rtl is
signal temp : STD_LOGIC := '0';
begin
Q <= temp;
QBar <= (not temp);
process(S,R,Reset,Clk)
begin
if (Reset = '1') then
temp <= '0';
elsif (RISING_EDGE(Clk)) then --RISING_EDGE(Clk) represents Clk = 1
if (S = '0' and R = '0') then
temp <= temp;
elsif (S = '1' and R = '1') then
temp <= 'Z'; -- Z is used to represent the intermediate condition
elsif (S /= R) then -- S/=R represents 𝑺 ≠ 𝑹
temp <= S;
end if;
end if;
end process;
end Behavioral;

