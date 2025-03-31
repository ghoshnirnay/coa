----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:17:29 02/21/2025 
-- Design Name: 
-- Module Name:    full_sub_hf_rtl - Behavioral 
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

entity full_sub_hf_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c_in : in  STD_LOGIC;
           DIFFERENCE : out  STD_LOGIC;
           BORROW : out  STD_LOGIC);
end full_sub_hf_rtl;

architecture Behavioral of full_sub_hf_rtl is
component half_subtractor_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           difference : out  STD_LOGIC;
           borrow : out  STD_LOGIC);
end component;
signal diff1,borrow1,borrow2: STD_LOGIC:='0';
begin
	-- First half subtractor
    HS1: half_subtractor_rtl port map(
        a => a,
        b => b,
        difference => diff1,
        borrow => borrow1
    );

    -- Second half subtractor
    HS2: half_subtractor_rtl port map(
        a => diff1,
        b => c_in,
        difference => DIFFERENCE,
        borrow => borrow2
    );

    -- Borrow output logic
    BORROW <= borrow1 OR borrow2;

end Behavioral;

