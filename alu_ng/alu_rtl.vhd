
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
Use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu_rtl is
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
B : in STD_LOGIC_VECTOR (3 downto 0);
sel : in STD_LOGIC_VECTOR (2 downto 0);
Result : out STD_LOGIC_VECTOR (3 downto 0));
end alu_rtl;

architecture Behavioral of alu_rtl is

begin
process(A,B,sel)
begin
case sel is
when "000" => Result <= A+B;
when "001" => Result <= A-B;
when "010" => Result <=A+1;
when "011" => Result <=B-1;
when "100" => Result <= A and B;
when "101" => Result <= A or B;
when "110" => Result <= not B;
when "111" => Result <= (not A and B) or (not B and A);
when others => Result <= (others => '0');
end case;
end process;
end Behavioral; 