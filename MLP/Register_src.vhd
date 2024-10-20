library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Register_src is
	GENERIC
	(
		SRC_Width	:	INTEGER	:=	8
	);
	
	PORT
	(
		Clock		:	IN		STD_LOGIC;
		Reset		:	IN		STD_LOGIC;
		Load		:	IN		STD_LOGIC;
		INIT		:	IN		STD_LOGIC;
		INPUT		:	IN		Signed(SRC_Width-1 DOWNTO 0);
		OUTPUT	:	OUT	Signed(SRC_Width-1 DOWNTO 0)
	);

end Register_src;

architecture Behavioral of Register_src is

	Signal OUTPUT_Inst	:	Signed(SRC_Width-1 DOWNTO 0)	:=	(others=>'0');

begin

	OUTPUT	<=	OUTPUT_Inst;

	process(Clock, Reset)
	begin
		if (Reset = '1') then
			OUTPUT_Inst	<=	(others=>'0');
		elsif (Clock = '1' AND Clock'event) then
			if (Load = '1') then
				OUTPUT_Inst	<=	INPUT;
			end if;
			if (INIT = '1') then
				OUTPUT_Inst	<=	(others=>'0');
			end if;
		end if;
	end process;

end Behavioral;








