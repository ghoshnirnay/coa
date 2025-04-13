----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:03:13 04/14/2025 
-- Design Name: 
-- Module Name:    alu_rtl - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           Result : out  STD_LOGIC_VECTOR (3 downto 0));
end alu_rtl;

architecture Behavioral of alu_rtl is

begin
	process(A,B,sel)
	begin
		case sel is
			when "000" => Result <= std_logic_vector(unsigned(A)+unsigned(B));
         when "001" => Result <= std_logic_vector(unsigned(A)-unsigned(B));
         when "010" => Result <= std_logic_vector(unsigned(A)+1);
         when "011" => Result <= std_logic_vector(unsigned(B)-1);
			when "100" => Result <= A and B;
         when "101" => Result <= A or B;
         when "110" => Result <= not B;
         when "111" => Result <= (not A and B) or (not B and A);
         when others => Result <= (others => '0');
		end case;
	end process;
end Behavioral;

