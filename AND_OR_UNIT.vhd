LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY AND_OR_UNIT IS
	PORT(
	NUM_1 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
	NUM_2 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
	MODO : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
	OUTPUTS : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END AND_OR_UNIT;

ARCHITECTURE BEHAVIOR OF AND_OR_UNIT IS
BEGIN
	WITH MODO SELECT
		OUTPUTS <=	NUM_1 AND NUM_2 WHEN "10",
						NUM_1 OR NUM_2 WHEN "11",
						"0000" WHEN OTHERS;
END BEHAVIOR;