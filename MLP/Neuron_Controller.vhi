
-- VHDL Instantiation Created from source file Neuron_Controller.vhd -- 15:05:37 04/27/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Neuron_Controller
	PORT(
		Clock : IN std_logic;
		Reset : IN std_logic;
		Start : IN std_logic;
		Done : IN std_logic;          
		ReadRF : OUT std_logic;
		INC : OUT std_logic;
		Load1 : OUT std_logic;
		Load2 : OUT std_logic;
		LoadRF : OUT std_logic;
		LoadACC : OUT std_logic;
		INIT1 : OUT std_logic;
		INIT2 : OUT std_logic;
		INIT_C : OUT std_logic;
		INIT_ACC : OUT std_logic
		);
	END COMPONENT;

	Inst_Neuron_Controller: Neuron_Controller PORT MAP(
		Clock => ,
		Reset => ,
		ReadRF => ,
		INC => ,
		Load1 => ,
		Load2 => ,
		LoadRF => ,
		LoadACC => ,
		INIT1 => ,
		INIT2 => ,
		INIT_C => ,
		INIT_ACC => ,
		Start => ,
		Done => 
	);


