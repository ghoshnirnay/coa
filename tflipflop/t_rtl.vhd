----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:05 04/14/2025 
-- Design Name: 
-- Module Name:    t_rtl - Behavioral 
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

entity t_rtl is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           t : in  STD_LOGIC;
           q : out  STD_LOGIC);
end t_rtl;

architecture Behavioral of t_rtl is
	signal q_reg:STD_LOGIC:='0';
begin
	 process(clk, rst)
    begin
        if rst='1' then
            q_reg<='0';
        elsif rising_edge(clk) then
            if t='1' then
                q_reg <= not q_reg;
            end if;
        end if;
    end process;
	 q<=q_reg;
end Behavioral;

