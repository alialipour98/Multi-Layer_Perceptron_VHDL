library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Accumulator is

	GENERIC
	(
		ACC_Width	:	INTEGER	:=	16
	);

	PORT
	(
		Clock		:	IN		STD_LOGIC;
		Reset		:	IN		STD_LOGIC;
		Load		:	IN		STD_LOGIC;
		INIT		:	IN		STD_LOGIC;
		INPUT		:	IN		unsigned(ACC_Width-1 DOWNTO 0);
		Bias_In	:	IN		unsigned(ACC_Width-1 DOWNTO 0);
		OUTPUT	:	OUT	unsigned(ACC_Width-1 DOWNTO 0)
	);

end Accumulator;

architecture Behavioral of Accumulator is

	Signal ACC_Reg	:	unsigned(ACC_Width-1 DOWNTO 0)	:=	(others=>'0');

begin

	OUTPUT	<=	ACC_Reg;

	process(Clock, Reset)
	begin
		if (Reset = '1') then
			ACC_Reg	<=	(others=>'0');
		elsif (Clock = '1' AND Clock'event) then
			if (Load = '1') then
				ACC_Reg	<=	INPUT;
			end if;
			if (INIT = '1') then
				ACC_Reg	<=	Bias_In;
			end if;
		end if;
	end process;

end Behavioral;






