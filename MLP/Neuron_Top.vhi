
-- VHDL Instantiation Created from source file Neuron_Top.vhd -- 16:47:23 04/28/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Neuron_Top
	PORT(
		Clock : IN std_logic;
		Reset : IN std_logic;
		Start : IN std_logic;
		INPUT_0 : IN std_logic_vector(7 downto 0);
		INPUT_1 : IN std_logic_vector(7 downto 0);
		INPUT_2 : IN std_logic_vector(7 downto 0);
		INPUT_3 : IN std_logic_vector(7 downto 0);
		INPUT_4 : IN std_logic_vector(7 downto 0);
		INPUT_5 : IN std_logic_vector(7 downto 0);
		INPUT_6 : IN std_logic_vector(7 downto 0);
		INPUT_7 : IN std_logic_vector(7 downto 0);
		INPUT_8 : IN std_logic_vector(7 downto 0);
		INPUT_9 : IN std_logic_vector(7 downto 0);
		Weight_0 : IN std_logic_vector(7 downto 0);
		Weight_1 : IN std_logic_vector(7 downto 0);
		Weight_2 : IN std_logic_vector(7 downto 0);
		Weight_3 : IN std_logic_vector(7 downto 0);
		Weight_4 : IN std_logic_vector(7 downto 0);
		Weight_5 : IN std_logic_vector(7 downto 0);
		Weight_6 : IN std_logic_vector(7 downto 0);
		Weight_7 : IN std_logic_vector(7 downto 0);
		Weight_8 : IN std_logic_vector(7 downto 0);
		Weight_9 : IN std_logic_vector(7 downto 0);
		Bias : IN std_logic_vector(7 downto 0);          
		OUTPUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Neuron_Top: Neuron_Top PORT MAP(
		Clock => ,
		Reset => ,
		Start => ,
		INPUT_0 => ,
		INPUT_1 => ,
		INPUT_2 => ,
		INPUT_3 => ,
		INPUT_4 => ,
		INPUT_5 => ,
		INPUT_6 => ,
		INPUT_7 => ,
		INPUT_8 => ,
		INPUT_9 => ,
		Weight_0 => ,
		Weight_1 => ,
		Weight_2 => ,
		Weight_3 => ,
		Weight_4 => ,
		Weight_5 => ,
		Weight_6 => ,
		Weight_7 => ,
		Weight_8 => ,
		Weight_9 => ,
		Bias => ,
		OUTPUT => 
	);


