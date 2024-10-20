
-- VHDL Instantiation Created from source file MUX.vhd -- 18:46:05 04/28/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MUX
	PORT(
		SEL : IN std_logic;
		INPUT_1 : IN std_logic_vector(7 downto 0);
		INPUT_2 : IN std_logic_vector(7 downto 0);          
		OUTPUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_MUX: MUX PORT MAP(
		SEL => ,
		INPUT_1 => ,
		INPUT_2 => ,
		OUTPUT => 
	);


