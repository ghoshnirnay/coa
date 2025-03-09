----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:47:11 02/21/2025 
-- Design Name: 
-- Module Name:    fourbit_sub_hs_rtl - Behavioral 
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

entity fourbit_sub_hs_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C_IN : in  STD_LOGIC;
           DIFFERENCE : out  STD_LOGIC_VECTOR (3 downto 0);
           BORROW : out  STD_LOGIC); -- Final Borrow Output
end fourbit_sub_hs_rtl;

architecture Behavioral of fourbit_sub_hs_rtl is
component full_subtracto_rtl
        Port ( a : in  STD_LOGIC;
               b : in  STD_LOGIC;
               c_in : in  STD_LOGIC;
               difference : out  STD_LOGIC;
               borrow : out  STD_LOGIC);
    end component;
    
    signal borrow_internal : STD_LOGIC_VECTOR(3 downto 0);
begin
    -- First Bit Subtraction
    FS0: full_subtracto_rtl port map(
        a => A(0),
        b => B(0),
        c_in => C_IN,  
        difference => DIFFERENCE(0),
        borrow => borrow_internal(0)
    );

    -- Second Bit Subtraction
    FS1: full_subtracto_rtl port map(
        a => A(1),
        b => B(1),
        c_in => borrow_internal(0),
        difference => DIFFERENCE(1),
        borrow => borrow_internal(1)  
    );

    -- Third Bit Subtraction
    FS2: full_subtracto_rtl port map(
        a => A(2),
        b => B(2),
        c_in => borrow_internal(1),
        difference => DIFFERENCE(2),
        borrow => borrow_internal(2)  
    );

    -- Fourth Bit Subtraction
    FS3: full_subtracto_rtl port map(
       a => A(3),
        b => B(3),
        c_in => borrow_internal(2),
        difference => DIFFERENCE(3),
        borrow => borrow_internal(3) 
    );

    -- Correcting Final Borrow Output
    BORROW <= borrow_internal(3); -- Ensure proper connection in RTL schematic

end Behavioral;
