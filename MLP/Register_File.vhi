
-- VHDL Instantiation Created from source file Register_File.vhd -- 17:47:54 04/25/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Register_File
	PORT(
		Clock 	: IN std_logic;
		Load 		: IN std_logic;
		ReadEn 	: IN std_logic;
		Reset 	: IN std_logic;
		AddRead 	: IN std_logic_vector(1 downto 0);
		INPUT_0 	: IN std_logic_vector(7 downto 0);
		INPUT_1 	: IN std_logic_vector(7 downto 0);
		INPUT_2 	: IN std_logic_vector(7 downto 0);
		INPUT_3 	: IN std_logic_vector(7 downto 0);          
		OUTPUT 	: OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Register_File: Register_File PORT MAP(
		Clock => ,
		Load => ,
		ReadEn => ,
		Reset => ,
		AddRead => ,
		INPUT_0 => ,
		INPUT_1 => ,
		INPUT_2 => ,
		INPUT_3 => ,
		OUTPUT => 
	);


