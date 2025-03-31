----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:16:54 03/05/2025 
-- Design Name: 
-- Module Name:    ad_sub_rtl - Behavioral 
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

entity ad_sub_rtl is
    Port ( a2 : in  STD_LOGIC_VECTOR (3 downto 0);
           b2 : in  STD_LOGIC_VECTOR (3 downto 0);
           c2 : in  STD_LOGIC;
           s1_out : out  STD_LOGIC_VECTOR (3 downto 0);
           c1_out : out  STD_LOGIC);
end ad_sub_rtl;

architecture Behavioral of ad_sub_rtl is
component xor_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component;
component fa_rtl is
    Port ( a1 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           c1 : in  STD_LOGIC;
           s_out : out  STD_LOGIC;
           c_out : out  STD_LOGIC);
end component;
signal t1,t2,t3,t4,t5,t6,t7:std_logic:='0';
begin
xa0 : xor_rtl port map(a=>b2(0),b=>c2,c=>t1);
xa1 : xor_rtl port map(a=>b2(1),b=>c2,c=>t2);
xa2 : xor_rtl port map(a=>b2(2),b=>c2,c=>t3);
xa3 : xor_rtl port map(a=>b2(3),b=>c2,c=>t4);
fa0 : fa_rtl port map(a1=>a2(0),b1=>t1,c1=>c2,s_out=>s1_out(0),c_out=>t5);
fa1 : fa_rtl port map(a1=>a2(1),b1=>t2,c1=>t5,s_out=>s1_out(1),c_out=>t6);
fa2 : fa_rtl port map(a1=>a2(2),b1=>t3,c1=>t6,s_out=>s1_out(2),c_out=>t7);
fa3 : fa_rtl port map(a1=>a2(3),b1=>t4,c1=>t7,s_out=>s1_out(3),c_out=>c1_out);
end Behavioral;

