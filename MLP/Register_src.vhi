
-- VHDL Instantiation Created from source file Register_src.vhd -- 23:16:36 04/25/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Register_src
	PORT(
		Clock : IN std_logic;
		Reset : IN std_logic;
		Load : IN std_logic;
		INIT : IN std_logic;
		INPUT : IN std_logic_vector(7 downto 0);          
		OUTPUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Register_src: Register_src PORT MAP(
		Clock => ,
		Reset => ,
		Load => ,
		INIT => ,
		INPUT => ,
		OUTPUT => 
	);


