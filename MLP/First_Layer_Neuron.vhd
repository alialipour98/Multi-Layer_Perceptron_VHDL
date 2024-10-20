library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Layer_Neuron is

	GENERIC
	(
		Counter_Width	:	INTEGER	:=	4;
		Comp_Value		:	INTEGER	:=	4
	);

	PORT
	(
		Clock			:	IN		STD_LOGIC;
		Reset			:	IN		STD_LOGIC;
		ReadRF		:	IN		STD_LOGIC;
		INC			:	IN		STD_LOGIC;
		Load1			:	IN		STD_LOGIC;
		Load2			:	IN		STD_LOGIC;
		LoadRF		:	IN		STD_LOGIC;
		LoadACC		:	IN		STD_LOGIC;
		INIT1			:	IN		STD_LOGIC;
		INIT2			:	IN		STD_LOGIC;
		INIT_C		:	IN		STD_LOGIC;
		INIT_ACC		:	IN		STD_LOGIC;
		Done			:	OUT	STD_LOGIC;

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

end Layer_Neuron;

architecture Behavioral of Layer_Neuron is

	Signal RF_W				:	Signed  (7  DOWNTO 0)	:=	(others=>'0');
	Signal RF_IN			:	Signed  (7  DOWNTO 0)	:=	(others=>'0');
	Signal BUF_OUT			:	Signed  (7  DOWNTO 0)	:=	(others=>'0');
	Signal Reg1_OUT		:	Signed  (7  DOWNTO 0)	:=	(others=>'0');
	Signal Reg2_OUT		:	Signed  (7  DOWNTO 0)	:=	(others=>'0');

	Signal Addr_RC			:	unsigned(Counter_Width-1 DOWNTO 0)	:= (others=>'0');
	Signal ZeroReg			:	unsigned(7 	DOWNTO 0)	:=	(others=>'0');
	Signal OUTPUT_Int		:	unsigned(7 	DOWNTO 0)	:=	(others=>'0');

	Signal ACC_OUT			:	unsigned(15 DOWNTO 0)	:=	(others=>'0');
	Signal ADD_OUT			:	Signed  (15 DOWNTO 0)	:=	(others=>'0');
	Signal MUL_OUT			:	Signed  (15 DOWNTO 0)	:=	(others=>'0');

begin

	OUTPUT_I		<=	Signed(OUTPUT_Int);
	OUTPUT_II	<=	Signed(ACC_OUT(13 DOWNTO 6));
	---------------------------------------------------
	RegFile_0	: ENTITY WORK.Register_File 
	PORT MAP
	(
		Clock 	=> Clock,
		Load 		=> LoadRF,
		ReadEn 	=> ReadRF,
		Reset 	=> Reset,
		AddRead 	=> Addr_RC,
		INPUT_0 	=> INPUT_0,
		INPUT_1 	=> INPUT_1,
		INPUT_2 	=> INPUT_2,
		INPUT_3 	=> INPUT_3,
		INPUT_4 	=> INPUT_4,
		INPUT_5 	=> INPUT_5,
		INPUT_6 	=> INPUT_6,
		INPUT_7 	=> INPUT_7,
		INPUT_8 	=> INPUT_8,
		INPUT_9 	=> INPUT_9,
		OUTPUT 	=> RF_IN
	);
	---------------------------------------------------
	RegFile_1	: ENTITY WORK.Register_File 
	PORT MAP
	(
		Clock 	=> Clock,
		Load 		=> LoadRF,
		ReadEn 	=> ReadRF,
		Reset 	=> Reset,
		AddRead 	=> Addr_RC,
		INPUT_0 	=> Weight_0,
		INPUT_1 	=> Weight_1,
		INPUT_2 	=> Weight_2,
		INPUT_3 	=> Weight_3,
		INPUT_4 	=> Weight_4,
		INPUT_5 	=> Weight_5,
		INPUT_6 	=> Weight_6,
		INPUT_7 	=> Weight_7,
		INPUT_8 	=> Weight_8,
		INPUT_9 	=> Weight_9,
		OUTPUT 	=> RF_W
	);
	---------------------------------------------------
	AddrCounter	: ENTITY WORK.Address_Counter 
	GENERIC MAP
	(
		Address_Width	=>	Counter_Width,
		Comp_Value		=> Comp_Value
	)
	PORT MAP(
		Clock 	=> Clock,
		Reset 	=> Reset,
		INIT 		=> INIT_C,
		INC 		=> INC,
		Done 		=> Done,
		OUTPUT 	=> Addr_RC
	);
	---------------------------------------------------
	Reg1			: ENTITY WORK.Register_src PORT MAP(
		Clock 	=> Clock,
		Reset 	=> Reset,
		Load 		=> Load1,
		INIT 		=> INIT1,
		INPUT 	=> RF_IN,
		OUTPUT 	=> Reg1_OUT
	);
	---------------------------------------------------
	Reg2			: ENTITY WORK.Register_src PORT MAP(
		Clock 	=> Clock,
		Reset 	=> Reset,
		Load 		=> Load2,
		INIT 		=> INIT2,
		INPUT 	=> RF_w,
		OUTPUT 	=> Reg2_OUT
	);
	---------------------------------------------------
	Multiplier	: ENTITY WORK.Multiplier PORT MAP(
		INPUT_1 	=> Reg1_OUT,
		INPUT_2 	=> Reg2_OUT,
		OUTPUT 	=> MUL_OUT
	);
	---------------------------------------------------
	Adder			: ENTITY WORK.Adder PORT MAP(
		INPUT_1 	=> MUL_OUT,
		INPUT_2 	=> Signed(ACC_OUT),
		OUTPUT 	=> ADD_OUT
	);
	---------------------------------------------------
	ACC			: ENTITY WORK.Accumulator PORT MAP(
		Clock 	=> Clock,
		Reset 	=> Reset,
		Load 		=> LoadACC,
		INIT 		=> INIT_ACC,
		INPUT 	=> unsigned(ADD_OUT),
		Bias_In 	=> unsigned(resize(Bias, 16)),
		OUTPUT 	=> ACC_OUT
	);
	---------------------------------------------------
	Multiplexer	: ENTITY WORK.MUX PORT MAP(
		SEL 		=> ACC_OUT(15),
		INPUT_1 	=> ZeroReg,
		INPUT_2 	=> ACC_OUT(13 DOWNTO 6),
		OUTPUT 	=> OUTPUT_Int
	);
end Behavioral;

