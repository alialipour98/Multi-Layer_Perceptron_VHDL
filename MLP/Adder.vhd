library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Adder is

	GENERIC
	(
		ADD_Size_IN		:	INTEGER	:=	16;
		ADD_Size_OUT	:	INTEGER	:=	16
	);

	PORT
	(
		INPUT_1			:	IN		Signed(ADD_Size_In-1  DOWNTO 0);
		INPUT_2			:	IN		Signed(ADD_Size_In-1  DOWNTO 0);
		OUTPUT			:	OUT	Signed(ADD_Size_Out-1 DOWNTO 0)
	);

end Adder;

architecture Behavioral of Adder is

begin

	OUTPUT	<=	INPUT_1 + INPUT_2;

end Behavioral;

