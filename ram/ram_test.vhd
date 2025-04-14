--------------------------------------------------------------------------------
-- Engineer: Nilanjan Pradhan
-- 
-- Testbench for 128x8 RAM (ram_rtl.vhd)
-- Simulates write and read operations with 2 ps clock period
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ram_test IS
END ram_test;

ARCHITECTURE behavior OF ram_test IS 

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT ram_rtl
    PORT(
         address  : IN  std_logic_vector(6 downto 0);
         data_in  : IN  std_logic_vector(7 downto 0);
         write    : IN  std_logic;
         clk      : IN  std_logic;
         data_out : OUT std_logic_vector(7 downto 0)
        );
    END COMPONENT;

    -- Signals for inputs and outputs
    signal address   : std_logic_vector(6 downto 0) := (others => '0');
    signal data_in   : std_logic_vector(7 downto 0) := (others => '0');
    signal write     : std_logic := '0';
    signal clk       : std_logic := '0';
    signal data_out  : std_logic_vector(7 downto 0);

    -- Clock period
    constant clk_period : time := 2 ps;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: ram_rtl PORT MAP (
        address  => address,
        data_in  => data_in,
        write    => write,
        clk      => clk,
        data_out => data_out
    );

    -- Clock generation process
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        wait for 20 ps;  -- Short wait before starting

        -- WRITE: Store values at addresses 0 to 4
        write <= '1';
        for i in 0 to 4 loop
            address  <= std_logic_vector(to_unsigned(i, 7));
            data_in  <= std_logic_vector(to_unsigned(i * 16, 8));
            wait for clk_period;
        end loop;

        write <= '0';  -- Stop writing
        wait for clk_period;

        -- READ: Fetch data from addresses 0 to 4
        for i in 0 to 4 loop
            address <= std_logic_vector(to_unsigned(i, 7));
            wait for clk_period;
        end loop;

        wait;
    end process;

END;