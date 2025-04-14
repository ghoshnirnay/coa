----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:04:17 04/14/2025 
-- Design Name: 
-- Module Name:    ram_rtl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--     A 128x8 Single-Port RAM with custom initialization
--     - Asynchronous read
--     - Synchronous write
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--     Uses your initialized RAM values (like x"55", x"66", etc.)
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Required for address conversion

entity ram_rtl is
    Port ( 
        address   : in  STD_LOGIC_VECTOR (6 downto 0);  -- 7-bit address: 0 to 127
        data_in   : in  STD_LOGIC_VECTOR (7 downto 0);  -- 8-bit data input
        write     : in  STD_LOGIC;                      -- Write enable signal
        clk       : in  STD_LOGIC;                      -- Clock
        data_out  : out STD_LOGIC_VECTOR (7 downto 0)   -- 8-bit data output
    );
end ram_rtl;

architecture Behavioral of ram_rtl is

    -- RAM array: 128 locations, each 8 bits
    type RAM_ARRAY is array (0 to 127) of STD_LOGIC_VECTOR(7 downto 0);

    -- Initialized RAM with your values
    signal RAM : RAM_ARRAY := (
        -- Initialized values (first few memory locations)
        x"55", x"66", x"77", x"67", -- 0x00 - 0x03
        x"99", x"00", x"00", x"11", -- 0x04 - 0x07
        x"00", x"00", x"00", x"00", -- 0x08 - 0x0B
        x"00", x"00", x"00", x"00", -- 0x0C - 0x0F
        x"00", x"00", x"00", x"00", -- 0x10 - 0x13
        x"00", x"00", x"00", x"00", -- 0x14 - 0x17
        x"00", x"00", x"00", x"00", -- 0x18 - 0x1B
        x"00", x"00", x"00", x"00", -- 0x1C - 0x1F
        x"00", x"00", x"00", x"00", -- 0x20 - 0x23
        x"00", x"00", x"00", x"00", -- 0x24 - 0x27
        x"00", x"00", x"00", x"00", -- 0x28 - 0x2B
        x"00", x"00", x"00", x"00", -- 0x2C - 0x2F
        x"00", x"00", x"00", x"00", -- 0x30 - 0x33
        x"00", x"00", x"00", x"00", -- 0x34 - 0x37
        x"00", x"00", x"00", x"00", -- 0x38 - 0x3B
        x"00", x"00", x"00", x"00", -- 0x3C - 0x3F
        x"00", x"00", x"00", x"00", -- 0x40 - 0x43
        x"00", x"00", x"00", x"00", -- 0x44 - 0x47
        x"00", x"00", x"00", x"00", -- 0x48 - 0x4B
        x"00", x"00", x"00", x"00", -- 0x4C - 0x4F
        x"00", x"00", x"00", x"00", -- 0x50 - 0x53
        x"00", x"00", x"00", x"00", -- 0x54 - 0x57
        x"00", x"00", x"00", x"00", -- 0x58 - 0x5B
        x"00", x"00", x"00", x"00", -- 0x5C - 0x5F
        x"00", x"00", x"00", x"00", -- 0x60 - 0x63
        x"00", x"00", x"00", x"00", -- 0x64 - 0x67
        x"00", x"00", x"00", x"00", -- 0x68 - 0x6B
        x"00", x"00", x"00", x"00", -- 0x6C - 0x6F
        x"00", x"00", x"00", x"00", -- 0x70 - 0x73
        x"00", x"00", x"00", x"00", -- 0x74 - 0x77
        x"00", x"00", x"00", x"00", -- 0x78 - 0x7B
        x"00", x"00", x"00", x"00"  -- 0x7C - 0x7F
    );

begin

    -- Synchronous write process
    process(clk)
    begin
        if rising_edge(clk) then
            if write = '1' then
                -- Convert address to integer and write data
                RAM(to_integer(unsigned(address))) <= data_in;
            end if;
        end if;
    end process;

    -- Asynchronous read output
    data_out <= RAM(to_integer(unsigned(address)));

end Behavioral;