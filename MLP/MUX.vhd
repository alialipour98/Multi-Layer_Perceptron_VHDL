library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MUX is

	GENERIC
	(
		MUX_Width	:	INTEGER	:=	8
	);

	PORT
	(
		SEL		:	IN		STD_LOGIC;
		INPUT_1	:	IN		unsigned(MUX_Width-1 DOWNTO 0);
		INPUT_2	:	IN		unsigned(MUX_Width-1 DOWNTO 0);
		OUTPUT	:	OUT	unsigned(MUX_Width-1 DOWNTO 0)
	);

end MUX;

architecture Behavioral of MUX is

begin

	OUTPUT	<=	INPUT_1 WHEN SEL = '1' ELSE INPUT_2;

end Behavioral;

