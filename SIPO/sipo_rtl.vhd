----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:18:45 04/09/2025 
-- Design Name: 
-- Module Name:    sipo_rtl - Behavioral 
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

entity sipo_rtl is
    Port ( Data : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end sipo_rtl;

architecture Behavioral of sipo_rtl is

component D_rtl is
    Port ( D : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qbar : out  STD_LOGIC);
end component;
signal t1, t2,t3 : STD_LOGIC :='0';
begin
DFF1 : D_rtl port map(clk => Clk, Reset => Rst, D => Data, Q=>t1);
Q(0) <= t1;
DFF2 : D_rtl port map(clk => Clk, Reset => Rst, D => t1, Q=>t2);
Q(1) <= t2;
DFF3 : D_rtl port map(clk => Clk, Reset => Rst, D => t2, Q=>t3);
Q(2) <= t3;
DFF4 : D_rtl port map(clk => Clk, Reset => Rst, D => t3, Q=>Q(3));

end Behavioral;

