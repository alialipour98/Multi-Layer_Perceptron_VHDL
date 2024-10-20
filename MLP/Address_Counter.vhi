
-- VHDL Instantiation Created from source file Address_Counter.vhd -- 17:55:04 04/25/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Address_Counter
	PORT(
		Clock : IN std_logic;
		Reset : IN std_logic;
		INIT : IN std_logic;
		INC : IN std_logic;          
		OUTPUT : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_Address_Counter: Address_Counter PORT MAP(
		Clock => ,
		Reset => ,
		INIT => ,
		INC => ,
		OUTPUT => 
	);


