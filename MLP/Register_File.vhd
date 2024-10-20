library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Register_File is

	GENERIC
	(
		File_Width		:	INTEGER	:=	8;
		Address_Size	:	INTEGER	:=	4
	);

	PORT
	(
		Clock		:	IN		STD_LOGIC;
		Load		:	IN		STD_LOGIC;
		ReadEn	:	IN		STD_LOGIC;
		Reset		:	IN		STD_LOGIC;
		AddRead	:	IN		unsigned(Address_Size-1	DOWNTO 0);
		INPUT_0	:	IN		Signed  (File_Width-1 	DOWNTO 0);
		INPUT_1	:	IN		Signed  (File_Width-1 	DOWNTO 0);
		INPUT_2	:	IN		Signed  (File_Width-1 	DOWNTO 0);
		INPUT_3	:	IN		Signed  (File_Width-1 	DOWNTO 0);
		INPUT_4	:	IN		Signed  (File_Width-1 	DOWNTO 0);
		INPUT_5	:	IN		Signed  (File_Width-1 	DOWNTO 0);
		INPUT_6	:	IN		Signed  (File_Width-1 	DOWNTO 0);
		INPUT_7	:	IN		Signed  (File_Width-1 	DOWNTO 0);
		INPUT_8	:	IN		Signed  (File_Width-1 	DOWNTO 0);
		INPUT_9	:	IN		Signed  (File_Width-1 	DOWNTO 0);
		OUTPUT	:	OUT	Signed  (File_Width-1 	DOWNTO 0)
	);

end Register_File;

architecture Behavioral of Register_File is

	TYPE Reg_File	IS ARRAY(0 TO 10) OF Signed(File_Width-1 DOWNTO 0);
	Signal MyFile	:	Reg_File	:=	(others=>(others=>'0'));

begin

	OUTPUT	<=	MyFile(to_integer(AddRead)) WHEN (ReadEn = '1') ELSE (others=>'Z');

	process(Clock, Reset)
	begin
		if (Reset = '1') then
			MyFile <= (others=>(others=>'0'));
		elsif (Clock = '1' AND Clock'event) then
			if (Load = '1') then
				MyFile(0)	<=	INPUT_0;
				MyFile(1)	<=	INPUT_1;
				MyFile(2)	<=	INPUT_2;
				MyFile(3)	<=	INPUT_3;
				MyFile(4)	<=	INPUT_4;
				MyFile(5)	<=	INPUT_5;
				MyFile(6)	<=	INPUT_6;
				MyFile(7)	<=	INPUT_7;
				MyFile(8)	<=	INPUT_8;
				MyFile(9)	<=	INPUT_9;
			end if;
		end if;
	end process;

end Behavioral;

