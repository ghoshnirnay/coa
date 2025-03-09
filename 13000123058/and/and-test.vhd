LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY and_test IS  -- ✅ Fixed entity name (no hyphen)
END and_test;

ARCHITECTURE behavior OF and_test IS  -- ✅ Matching entity and architecture names

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT and_rtl
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT std_logic
    );
    END COMPONENT;

    -- Signals
    SIGNAL a : std_logic := '0';
    SIGNAL b : std_logic := '0';
    SIGNAL c : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: and_rtl PORT MAP (
        a => a,
        b => b,
        c => c
    );

    -- Stimulus process
    stim_proc: PROCESS
    BEGIN
        -- Test Case 1
        a <= '0'; b <= '0';
        WAIT FOR 1 ps;

        -- Test Case 2
        a <= '0'; b <= '1';
        WAIT FOR 1 ps;

        -- Test Case 3
        a <= '1'; b <= '0';
        WAIT FOR 1 ps;

        -- Test Case 4
        a <= '1'; b <= '1';
        WAIT FOR 1 ps;

        -- End simulation
    END PROCESS;

END behavior;  -- ✅ Fixed missing architecture name
