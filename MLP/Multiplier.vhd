library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplier is

	GENERIC
	(
		Mul_Size_IN		:	INTEGER	:=	8;
		Mul_Size_OUT	:	INTEGER	:=	16
	);

	PORT
	(
		INPUT_1			:	IN		Signed(Mul_Size_In-1  DOWNTO 0);
		INPUT_2			:	IN		Signed(Mul_Size_In-1  DOWNTO 0);
		OUTPUT			:	OUT	Signed(Mul_Size_Out-1 DOWNTO 0)
	);

end Multiplier;

architecture Behavioral of Multiplier is

	Signal MUL_Res	:	Signed(15 DOWNTO 0)	:=	(others=>'0');

begin

	MUL_Res	<=	INPUT_1 * INPUT_2;
	OUTPUT	<=	MUL_Res;

end Behavioral;

