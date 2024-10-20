library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Address_Counter is

	GENERIC
	(
		Address_Width	:	INTEGER	:=	4;
		Comp_Value		:	INTEGER	:=	4
	);

	PORT
	(
		Clock		:	IN		STD_LOGIC;
		Reset		:	IN		STD_LOGIC;
		INIT		:	IN		STD_LOGIC;
		INC		:	IN		STD_LOGIC;
		Done		:	OUT	STD_LOGIC;
		OUTPUT	:	OUT	unsigned(Address_Width-1 DOWNTO 0)
	);

end Address_Counter;

architecture Behavioral of Address_Counter is

	Signal Counter :	unsigned(Address_Width-1 DOWNTO 0)	:= (others=>'0');

begin

	OUTPUT	<=	Counter;
	COMP	: ENTITY WORK.Comparator
	GENERIC MAP
	(
		Comp_Width	=> Address_Width
	)
	PORT MAP(
		EQ 		=> Done,
		INPUT_1 	=> Counter,
		INPUT_2 	=> to_unsigned(Comp_Value, Address_Width)
	);

	Counter_Reg	: ENTITY WORK.Counter 
	GENERIC MAP
	(
		Address_Width	=> Address_Width
	)
	PORT MAP(
		Clock 	=> Clock,
		Reset 	=> Reset,
		INIT 		=> INIT,
		INC 		=> INC,
		OUTPUT 	=> Counter
	);

end Behavioral;

