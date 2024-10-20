library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Counter is

	GENERIC
	(
		Address_Width	:	INTEGER	:=	4
	);

	PORT
	(
		Clock		:	IN		STD_LOGIC;
		Reset		:	IN		STD_LOGIC;
		INIT		:	IN		STD_LOGIC;
		INC		:	IN		STD_LOGIC;
		OUTPUT	:	OUT	unsigned(Address_Width-1 DOWNTO 0)
	);

end Counter;

architecture Behavioral of Counter is

	Signal Counter :	unsigned(Address_Width-1 DOWNTO 0)	:= (others=>'0');

begin

	OUTPUT	<=	Counter;

	process(Clock, Reset)
	begin
		if (Reset = '1') then
		elsif (Clock = '1' AND Clock'event) then
			if(INIT = '1') then
				Counter <= (others=>'0');
			elsif (INC = '1') then
				Counter <= Counter + 1;
			end if;
		end if;
	end process;

end Behavioral;

