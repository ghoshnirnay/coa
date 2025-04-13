----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:10:00 04/14/2025 
-- Design Name: 
-- Module Name:    alu_tb - Testbench for alu_rtl
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:     Testbench for 4-bit ALU RTL using 8 select lines.
--
-- Dependencies:    Requires alu_rtl.vhd
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu_test is
end alu_test;

architecture behavior of alu_test is

    -- Component Declaration for the Unit Under Test (UUT)
    component alu_rtl
        Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
               B : in  STD_LOGIC_VECTOR (3 downto 0);
               sel : in  STD_LOGIC_VECTOR (2 downto 0);
               Result : out  STD_LOGIC_VECTOR (3 downto 0));
    end component;

    -- Inputs
    signal A : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal B : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal sel : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');

    -- Outputs
    signal Result : STD_LOGIC_VECTOR(3 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: alu_rtl port map (
          A => A,
          B => B,
          sel => sel,
          Result => Result
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- 000: A + B
        A <= "0110"; B <= "0101"; sel <= "000"; -- 6 + 5 = 11
        wait for 1 ps;

        -- 001: A - B
        A <= "1000"; B <= "0011"; sel <= "001"; -- 8 - 3 = 5
        wait for 1 ps;

        -- 010: A + 1
        A <= "1111"; sel <= "010"; -- 15 + 1 = 16 -> 0000 (overflow in 4-bit)
        wait for 1 ps;

        -- 011: B - 1
        B <= "0000"; sel <= "011"; -- 0 - 1 = underflow -> 1111 (in 4-bit logic)
        wait for 1 ps;

        -- 100: A AND B
        A <= "1010"; B <= "1100"; sel <= "100"; -- 1010 AND 1100 = 1000
        wait for 1 ps;

        -- 101: A OR B
        A <= "1010"; B <= "0101"; sel <= "101"; -- 1010 OR 0101 = 1111
        wait for 1 ps;

        -- 110: NOT B
        B <= "1111"; sel <= "110"; -- NOT 1111 = 0000
        wait for 1 ps;

        -- 111: A XOR B (implemented using: (not A and B) or (not B and A))
        A <= "1001"; B <= "0110"; sel <= "111"; -- 1001 XOR 0110 = 1111
        wait for 1 ps;

        wait;
    end process;

end behavior;