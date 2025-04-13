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
           Q1 : out  STD_LOGIC );
end sipo_rtl;

architecture Behavioral of sipo_rtl is

-- Component Declaration for D flip-flop
component D_rtl is
    Port ( D : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qbar : out  STD_LOGIC);
end component;

-- Internal signals to hold intermediate values
signal t1, t2, t3 : STD_LOGIC := '0';

begin

-- Instantiate D flip-flops (DFFs) for SISO shift register
DFF1 : D_rtl port map(clk => Clk, Reset => Rst, D => Data, Q => t1, Qbar => open);
DFF2 : D_rtl port map(clk => Clk, Reset => Rst, D => t1, Q => t2, Qbar => open);
DFF3 : D_rtl port map(clk => Clk, Reset => Rst, D => t2, Q => t3, Qbar => open);
DFF4 : D_rtl port map(clk => Clk, Reset => Rst, D => t3, Q => Q1, Qbar => open);

end Behavioral;
