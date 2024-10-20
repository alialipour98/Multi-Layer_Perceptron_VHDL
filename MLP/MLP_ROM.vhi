
-- VHDL Instantiation Created from source file MLP_ROM.vhd -- 23:25:30 04/27/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MLP_ROM
	PORT(
		Clock : IN std_logic;
		ReadEn : IN std_logic;
		AddrRD : IN std_logic_vector(7 downto 0);          
		DataRD : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_MLP_ROM: MLP_ROM PORT MAP(
		Clock => ,
		ReadEn => ,
		AddrRD => ,
		DataRD => 
	);


