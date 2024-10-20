
-- VHDL Instantiation Created from source file Comparator.vhd -- 11:54:30 04/27/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Comparator
	PORT(
		INPUT_1 : IN std_logic_vector(2 downto 0);
		INPUT_2 : IN std_logic_vector(2 downto 0);          
		EQ : OUT std_logic
		);
	END COMPONENT;

	Inst_Comparator: Comparator PORT MAP(
		EQ => ,
		INPUT_1 => ,
		INPUT_2 => 
	);


