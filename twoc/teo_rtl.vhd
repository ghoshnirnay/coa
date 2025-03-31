----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:39:21 03/31/2025 
-- Design Name: 
-- Module Name:    teo_rtl - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity two_bit_compar is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           B : in  STD_LOGIC_VECTOR (1 downto 0);
           Eq : out  STD_LOGIC;
           Gr : out  STD_LOGIC;
           Lt : out  STD_LOGIC);
end two_bit_compar;

architecture Behavioral of two_bit_compar is

signal temp1, temp2:STD_LOGIC:='0';

begin
temp1 <= ((not A(0)) and B(0)) or (A(0) and (not B(0)));
temp2 <= ((not A(1)) and B(1)) or (A(1) and (not B(1)));
Eq <= (not temp1) and (not temp2);
Gr <= (A(1) and (not B(1))) or (A(0) and (not B(1))and (not B(0))) or (A(1) and A(0) and (not B(0)));
Lt <= ((not A(1)) and B(1)) or ((not A(0)) and B(1) and B(0)) or ((not A(1)) and (not A(0)) and B(0));

end Behavioral;

