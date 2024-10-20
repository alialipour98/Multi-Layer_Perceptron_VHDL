library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Neuron_Top is

	GENERIC
	(
		Counter_Width	:	INTEGER	:=	4;
		Comp_Value		:	INTEGER	:=	4
	);

	PORT
	(
		Clock			:	IN		STD_LOGIC;
		Reset			:	IN		STD_LOGIC;
		Start			:	IN		STD_LOGIC;
		Done_OUT		:	OUT	STD_LOGIC;

		INPUT_0		:	IN		Signed(7 DOWNTO 0);
		INPUT_1		:	IN		Signed(7 DOWNTO 0);
		INPUT_2		:	IN		Signed(7 DOWNTO 0);
		INPUT_3		:	IN		Signed(7 DOWNTO 0);
		INPUT_4		:	IN		Signed(7 DOWNTO 0);
		INPUT_5		:	IN		Signed(7 DOWNTO 0);
		INPUT_6		:	IN		Signed(7 DOWNTO 0);
		INPUT_7		:	IN		Signed(7 DOWNTO 0);
		INPUT_8		:	IN		Signed(7 DOWNTO 0);
		INPUT_9		:	IN		Signed(7 DOWNTO 0);

		Weight_0		:	IN		Signed(7 DOWNTO 0);
		Weight_1		:	IN		Signed(7 DOWNTO 0);
		Weight_2		:	IN		Signed(7 DOWNTO 0);
		Weight_3		:	IN		Signed(7 DOWNTO 0);
		Weight_4		:	IN		Signed(7 DOWNTO 0);
		Weight_5		:	IN		Signed(7 DOWNTO 0);
		Weight_6		:	IN		Signed(7 DOWNTO 0);
		Weight_7		:	IN		Signed(7 DOWNTO 0);
		Weight_8		:	IN		Signed(7 DOWNTO 0);
		Weight_9		:	IN		Signed(7 DOWNTO 0);

		Bias			:	IN		Signed(7 DOWNTO 0);

		OUTPUT_I		:	OUT	Signed(7 DOWNTO 0);
		OUTPUT_II	:	OUT	Signed(7 DOWNTO 0)
	);

end Neuron_Top;

architecture Behavioral of Neuron_Top is

		Signal ReadRF		:	STD_LOGIC	:=	'0';
		Signal INC			:	STD_LOGIC	:=	'0';
		Signal Load1		:	STD_LOGIC	:=	'0';
		Signal Load2		:	STD_LOGIC	:=	'0';
		Signal LoadRF		:	STD_LOGIC	:=	'0';
		Signal LoadACC		:	STD_LOGIC	:=	'0';
		Signal INIT1		:	STD_LOGIC	:=	'0';
		Signal INIT2		:	STD_LOGIC	:=	'0';
		Signal INIT_C		:	STD_LOGIC	:=	'0';
		Signal INIT_ACC	:	STD_LOGIC	:=	'0';

		Signal Done_Int	:	STD_LOGIC	:=	'0';

begin

	Done_OUT	<=	Done_Int;
	
	DP_Neuron	: ENTITY WORK.Layer_Neuron
	GENERIC MAP
	(
		Comp_Value	=>	Comp_Value
	)
	PORT MAP(
		Clock 		=> Clock,
		Reset 		=> Reset,
		ReadRF 		=> ReadRF,
		INC 			=> INC,
		Load1 		=> Load1,
		Load2 		=> Load2,
		LoadRF 		=> LoadRF,
		LoadACC 		=> LoadACC,
		INIT1 		=> INIT1,
		INIT2 		=> INIT2,
		INIT_C 		=> INIT_C,
		INIT_ACC 	=> INIT_ACC,
		Done 			=> Done_Int,
		INPUT_0 		=> INPUT_0,
		INPUT_1 		=> INPUT_1,
		INPUT_2 		=> INPUT_2,
		INPUT_3 		=> INPUT_3,
		INPUT_4 		=> INPUT_4,
		INPUT_5 		=> INPUT_5,
		INPUT_6 		=> INPUT_6,
		INPUT_7 		=> INPUT_7,
		INPUT_8 		=> INPUT_8,
		INPUT_9 		=> INPUT_9,
		Weight_0 	=> Weight_0,
		Weight_1 	=> Weight_1,
		Weight_2 	=> Weight_2,
		Weight_3 	=> Weight_3,
		Weight_4 	=> Weight_4,
		Weight_5 	=> Weight_5,
		Weight_6 	=> Weight_6,
		Weight_7 	=> Weight_7,
		Weight_8 	=> Weight_8,
		Weight_9 	=> Weight_9,
		Bias 			=> Bias,
		OUTPUT_I		=> OUTPUT_I,
		OUTPUT_II	=> OUTPUT_II
	);

	CTRL	: ENTITY WORK.Neuron_Controller PORT MAP(
		Clock 	=> Clock,
		Reset 	=> Reset,
		ReadRF 	=> ReadRF,
		INC 		=> INC,
		Load1 	=> Load1,
		Load2 	=> Load2,
		LoadRF 	=> LoadRF,
		LoadACC 	=> LoadACC,
		INIT1 	=> INIT1,
		INIT2 	=> INIT2,
		INIT_C 	=> INIT_C,
		INIT_ACC => INIT_ACC,
		Start 	=> Start,
		Done 		=> Done_Int
	);

end Behavioral;

