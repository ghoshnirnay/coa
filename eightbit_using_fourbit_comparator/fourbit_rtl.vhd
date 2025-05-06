library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_bit_rtl is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           ieq : in  STD_LOGIC;
           igt : in  STD_LOGIC;
           ilt : in  STD_LOGIC;
           Eq : out  STD_LOGIC;
           gr : out  STD_LOGIC;
           Lt : out  STD_LOGIC);
end four_bit_rtl;

architecture Behavioral of four_bit_rtl is

signal t1,t2,t3,t4 :STD_LOGIC :='0';

begin
t1<= not((not a(0) and b(0))or(a(0) and not b(0)));
t2<= not((not a(1) and b(1))or(a(1) and not b(1)));
t3<= not((not a(2) and b(2))or(a(2) and not b(2)));
t4<= not((not a(3) and b(3))or(a(3) and not b(3)));
Eq<=(t1 and t2 and t3 and t4 and ieq);
Lt<= (not a(3) and b(3))or(t3 and not a(2) and b(2))or(t3 and t2 and not a(1) and b(1)) or(t3 and t2 and t2 and not a(0) and b(0)) or ilt;
gr<= (a(3) and not b(3))or(t3 and a(2) and not b(2))or(t3 and t2 and a(1) and not b(1)) or(t3 and t2 and t2 and a(0) and not b(0)) or igt;

end Behavioral;