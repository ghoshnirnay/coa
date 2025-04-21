--------------------------------------------------------------------------------
-- Company:
-- Engineer:
-- 
-- Create Date: 14:39:02 04/10/2025
-- Design Name:
-- Module Name: udcounter_rtl - Behavioral
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

entity udcounter_rtl is
Port ( updown : in STD_LOGIC;
reset : in STD_LOGIC;
clk : in STD_LOGIC;
count : out STD_LOGIC_VECTOR (3 downto 0));
end udcounter_rtl;

architecture Behavioral of udcounter_rtl is
component JK_rtl is
Port ( J : in STD_LOGIC;
K : in STD_LOGIC;
Reset : in STD_LOGIC;
Clk : in STD_LOGIC;
Q : out STD_LOGIC;
Qbar : out STD_LOGIC);
end component;
signal q,qbar,j,k:STD_LOGIC_VECTOR (3 downto 0);
signal t1,t2,t3,t4,t5,t6:STD_LOGIC:='0';
begin
j(0)<='1';k(0)<='1';

t1<=updown and q(0);
t2<=(not updown) and qbar(0);
j(1)<=t1 or t2;
k(1)<=j(1);


t3<=q(0) and q(1);
t4<=qbar(0) and qbar(1);
j(2)<=(updown and t3) or ((not updown) and t4);
k(2)<=j(2);


t5<=q(0) and q(1) and q(2);
t6<=qbar(0) and qbar(1) and qbar(2);
j(3)<=(updown and t5) or ((not updown) and t6);
k(3)<=j(3);

JK1:jk_rtl port map(clk=>Clk,Reset=>reset,J=>j(0),K=>k(0),Q=>q(0),Qbar=>qbar(0));
JK2:jk_rtl port map(clk=>Clk,Reset=>reset,J=>j(1),K=>k(1),Q=>q(1),Qbar=>qbar(1));
JK3:jk_rtl port map(clk=>Clk,Reset=>reset,J=>j(2),K=>k(2),Q=>q(2),Qbar=>qbar(2));
JK4:jk_rtl port map(clk=>Clk,Reset=>reset,J=>j(3),K=>k(3),Q=>q(3),Qbar=>qbar(3));
count<=q;
end Behavioral;

