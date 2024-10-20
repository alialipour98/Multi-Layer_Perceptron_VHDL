library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Comparator is

	GENERIC
	(
		Comp_Width	:	INTEGER	:=	4
	);
	PORT
	(
		EQ				:	OUT	STD_LOGIC;
		INPUT_1		:	IN		unsigned(Comp_Width-1 DOWNTO 0);
		INPUT_2		:	IN		unsigned(Comp_Width-1 DOWNTO 0)
	);

end Comparator;

architecture Behavioral of Comparator is

begin

	EQ	<=	'1' WHEN INPUT_1 = INPUT_2 ELSE '0';

end Behavioral;

