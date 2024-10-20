library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Comparator_3_Number is

	PORT
	(
		INPUT_0	:	IN		Signed(7 DOWNTO 0);
		INPUT_1	:	IN		Signed(7 DOWNTO 0);
		INPUT_2	:	IN		Signed(7 DOWNTO 0);
		OUTPUT	:	OUT	unsigned(1 DOWNTO 0)
	);

end Comparator_3_Number;

architecture Behavioral of Comparator_3_Number is

begin

	OUTPUT <= "00" WHEN ((INPUT_0 > INPUT_1) AND (INPUT_0 > INPUT_2)) ELSE
				 "01" WHEN ((INPUT_1 > INPUT_0) AND (INPUT_1 > INPUT_2)) ELSE
				 "10";


end Behavioral;

