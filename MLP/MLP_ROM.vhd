library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use ieee.std_logic_textio.all;
use std.textio.all;

entity MLP_ROM is

	GENERIC
	(
		ROM_Width	:	INTEGER	:=	8;
		ROM_Size		:	INTEGER	:=	8
		
	);

	PORT
	(
		Clock		:	IN		STD_LOGIC;
		ReadEn	:	IN		STD_LOGIC;
		AddrRD	:	IN		unsigned(ROM_Size-1  DOWNTO 0);
		DataRD	:	OUT	Signed  (ROM_Width-1 DOWNTO 0)
	);

end MLP_ROM;

architecture Behavioral of MLP_ROM is
-------------------------------------------------------------------------------------------------------------------------
	TYPE ROM_TYPE IS ARRAY (0 TO 2**ROM_Width-1) of Signed(7 DOWNTO 0);
-------------------------------------------------------------------------------------------------------------------------
	impure function init_ram_hex return ROM_TYPE is
	  file text_file : text open read_mode is "ROM_WB.txt";
	  variable text_line 	: line;
	  variable L1 				: INTEGER;
	  variable ram_content 	: ROM_TYPE;
	begin
	  for i in 0 to 2**ROM_Size-1 loop
	    if (i < 166) then
			 readline(text_file, text_line);
			 read(text_line, L1);
			 ram_content(i) := to_signed(L1, 8);
		 else
			 ram_content(i) := to_signed(0, 8);
		 end if;
	  end loop;
	 
	  return ram_content;
	end function;
-------------------------------------------------------------------------------------------------------------------------
	Signal ROM	:	ROM_TYPE	:=	init_ram_hex;
-------------------------------------------------------------------------------------------------------------------------
	ATTRIBUTE ram_style 				: STRING;
	ATTRIBUTE ram_style OF ROM 	: SIGNAL IS "Distributed";
-------------------------------------------------------------------------------------------------------------------------	
begin
	
	DataRD	<=	ROM(to_integer(AddrRD));

end Behavioral;

