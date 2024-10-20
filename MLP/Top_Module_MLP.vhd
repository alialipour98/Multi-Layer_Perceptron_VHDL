library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use ieee.std_logic_textio.all;
use std.textio.all;

entity Top_Module_MLP is

	GENERIC
	(
		ROM_Width	:	INTEGER	:=	8;
		ROM_Size		:	INTEGER	:=	8
		
	);
	
	PORT
	(
		Clock		:	IN		STD_LOGIC;
		Reset		:	IN		STD_LOGIC;
		Start		:	IN		STD_LOGIC;
		Done		:	OUT	STD_LOGIC;
		
		INPUT_0	:	IN		Signed(7 DOWNTO 0);
		INPUT_1	:	IN		Signed(7 DOWNTO 0);
		INPUT_2	:	IN		Signed(7 DOWNTO 0);
		INPUT_3	:	IN		Signed(7 DOWNTO 0);

		OUTPUT	:	OUT	unsigned(1 DOWNTO 0)

	);

end Top_Module_MLP;

architecture Behavioral of Top_Module_MLP is

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
	    if (i < 165) then
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
	TYPE OUT_I_TYPE  IS ARRAY (0 TO 9) of Signed(7 DOWNTO 0);
	Signal OUTPUT_I	:	OUT_I_TYPE			:=	(others=>(others=>'0'));
-------------------------------------------------------------------------------------------------------------------------	
	TYPE OUT_II_TYPE  IS ARRAY (0 TO 7) of Signed(7 DOWNTO 0);
	Signal OUTPUT_II	:	OUT_II_TYPE			:=	(others=>(others=>'0'));
-------------------------------------------------------------------------------------------------------------------------	
	TYPE OUT_III_TYPE IS ARRAY (0 TO 2) of Signed(7 DOWNTO 0);
	Signal OUTPUT_III	:	OUT_III_TYPE		:=	(others=>(others=>'0'));
-------------------------------------------------------------------------------------------------------------------------	

	Signal Done_I		:	STD_LOGIC				:=	'0';
	Signal Done_II		:	STD_LOGIC				:=	'0';
	Signal Done_III	:	STD_LOGIC				:=	'0';
	
	Signal MLP_OUTPUT	:	unsigned(1 DOWNTO 0)	:=	(others=>'0');

begin
	
	-- Layer I
	----------------------------------------------------------
	GEN_I	:	FOR I IN 0 TO 9 GENERATE
				Neuron_Layer_I	: ENTITY WORK.Neuron_Top 
				GENERIC MAP
					(
						Comp_Value		=> 4
					)
				PORT MAP(
					Clock 		=> Clock,
					Reset 		=> Reset,
					Start 		=> Start,
					Done_OUT		=> Done_I,
					INPUT_0 		=> INPUT_0,
					INPUT_1 		=> INPUT_1,
					INPUT_2 		=> INPUT_2,
					INPUT_3 		=> INPUT_3,
					INPUT_4 		=> (others=>'0'),
					INPUT_5 		=> (others=>'0'),
					INPUT_6 		=> (others=>'0'),
					INPUT_7 		=> (others=>'0'),
					INPUT_8 		=> (others=>'0'),
					INPUT_9 		=> (others=>'0'),
					Weight_0 	=> ROM(4*I),
					Weight_1 	=> ROM(4*I+1),
					Weight_2 	=> ROM(4*I+2),
					Weight_3 	=> ROM(4*I+3),
					Weight_4 	=> (others=>'0'),
					Weight_5 	=> (others=>'0'),
					Weight_6 	=> (others=>'0'),
					Weight_7 	=> (others=>'0'),
					Weight_8 	=> (others=>'0'),
					Weight_9 	=> (others=>'0'),
					Bias 			=> ROM(I+144),
					OUTPUT_I		=> OUTPUT_I(I)
				);
	END GENERATE GEN_I;
	----------------------------------------------------------
	-- Layer II
	----------------------------------------------------------
	GEN_II	:	FOR J IN 0 TO 7 GENERATE
			Neuron_Layer_II	: ENTITY WORK.Neuron_Top 
			GENERIC MAP
				(
					Comp_Value		=> 10
				)
			PORT MAP(
				Clock 		=> Clock,
				Reset 		=> Reset,
				Start 		=> Done_I,
				Done_OUT 	=> Done_II,
				INPUT_0 		=> OUTPUT_I(0),
				INPUT_1 		=> OUTPUT_I(1),
				INPUT_2 		=> OUTPUT_I(2),
				INPUT_3 		=> OUTPUT_I(3),
				INPUT_4 		=> OUTPUT_I(4),
				INPUT_5 		=> OUTPUT_I(5),
				INPUT_6 		=> OUTPUT_I(6),
				INPUT_7 		=> OUTPUT_I(7),
				INPUT_8 		=> OUTPUT_I(8),
				INPUT_9 		=> OUTPUT_I(9),
				Weight_0 	=> ROM(40+10*J),
				Weight_1 	=> ROM(40+10*J+1),
				Weight_2 	=> ROM(40+10*J+2),
				Weight_3 	=> ROM(40+10*J+3),
				Weight_4 	=> ROM(40+10*J+4),
				Weight_5 	=> ROM(40+10*J+5),
				Weight_6 	=> ROM(40+10*J+6),
				Weight_7 	=> ROM(40+10*J+7),
				Weight_8 	=> ROM(40+10*J+8),
				Weight_9 	=> ROM(40+10*J+9),
				Bias 			=> ROM(J+144+10),
				OUTPUT_I 	=> OUTPUT_II(J)
			);
	END GENERATE GEN_II;
	----------------------------------------------------------
	-- Layer III
	----------------------------------------------------------	
	GEN_III	:	FOR K IN 0 TO 2 GENERATE
			Neuron_Layer_III	: ENTITY WORK.Neuron_Top 
			GENERIC MAP
			(
				Comp_Value		=> 8
			)
			PORT MAP(
				Clock 		=> Clock,
				Reset 		=> Reset,
				Start 		=> Done_II,
				Done_OUT 	=> Done_III,
				INPUT_0 		=> OUTPUT_II(0),
				INPUT_1 		=> OUTPUT_II(1),
				INPUT_2 		=> OUTPUT_II(2),
				INPUT_3 		=> OUTPUT_II(3),
				INPUT_4 		=> OUTPUT_II(4),
				INPUT_5 		=> OUTPUT_II(5),
				INPUT_6 		=> OUTPUT_II(6),
				INPUT_7 		=> OUTPUT_II(7),
				INPUT_8 		=> (others=>'0'),
				INPUT_9 		=> (others=>'0'),
				Weight_0 	=> ROM(120+8*K),
				Weight_1 	=> ROM(120+8*K+1),
				Weight_2 	=> ROM(120+8*K+2),
				Weight_3 	=> ROM(120+8*K+3),
				Weight_4 	=> ROM(120+8*K+4),
				Weight_5 	=> ROM(120+8*K+5),
				Weight_6 	=> ROM(120+8*K+6),
				Weight_7 	=> ROM(120+8*K+7),
				Weight_8 	=> (others=>'0'),
				Weight_9 	=> (others=>'0'),
				Bias 			=> ROM(K+144+10+8),
				OUTPUT_II	=> OUTPUT_III(K)
			);
	END GENERATE GEN_III;
	----------------------------------------------------------
	Comparator	: ENTITY WORK.Comparator_3_Number PORT MAP(
		INPUT_0 	=> OUTPUT_III(0),
		INPUT_1 	=> OUTPUT_III(1),
		INPUT_2 	=> OUTPUT_III(2),
		OUTPUT 	=> MLP_OUTPUT
	);
	----------------------------------------------------------
	MUX_Done		: ENTITY WORK.MUX 
	GENERIC MAP
	(
		MUX_Width	=> 2
	)
	PORT MAP(
		SEL 		=> Done_III,
		INPUT_1 	=> MLP_OUTPUT,
		INPUT_2 	=> (others=>'0'),
		OUTPUT 	=> OUTPUT
	);
	----------------------------------------------------------
	Done	<=	Done_III;
	----------------------------------------------------------
end Behavioral;