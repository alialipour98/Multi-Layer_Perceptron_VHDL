LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY Layer_Neuron_tb IS
END Layer_Neuron_tb;

ARCHITECTURE behavior OF Layer_Neuron_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT Layer_Neuron
    PORT(
         Clock 	: IN  std_logic;
         Reset 	: IN  std_logic;
         ReadRF 	: IN  std_logic;
         INC 		: IN  std_logic;
         Load1 	: IN  std_logic;
         Load2 	: IN  std_logic;
         LoadRF 	: IN  std_logic;
         LoadACC 	: IN  std_logic;
         INIT1 	: IN  std_logic;
         INIT2 	: IN  std_logic;
         INIT_C 	: IN  std_logic;
         INIT_ACC : IN  std_logic;
         Done		: OUT std_logic;
         INPUT_0 	: IN  Signed(7 downto 0);
         INPUT_1 	: IN  Signed(7 downto 0);
         INPUT_2 	: IN  Signed(7 downto 0);
         INPUT_3 	: IN  Signed(7 downto 0);
         INPUT_4 	: IN  Signed(7 downto 0);
         INPUT_5 	: IN  Signed(7 downto 0);
         INPUT_6 	: IN  Signed(7 downto 0);
         INPUT_7 	: IN  Signed(7 downto 0);
         INPUT_8 	: IN  Signed(7 downto 0);
         INPUT_9 	: IN  Signed(7 downto 0);
         Weight_0 : IN  Signed(7 downto 0);
         Weight_1 : IN  Signed(7 downto 0);
         Weight_2 : IN  Signed(7 downto 0);
         Weight_3 : IN  Signed(7 downto 0);
         Weight_4 : IN  Signed(7 downto 0);
         Weight_5 : IN  Signed(7 downto 0);
         Weight_6 : IN  Signed(7 downto 0);
         Weight_7 : IN  Signed(7 downto 0);
         Weight_8 : IN  Signed(7 downto 0);
         Weight_9 : IN  Signed(7 downto 0);
         Bias 		: IN	Signed(7 downto 0);
         OUTPUT 	: OUT Signed(7 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal Clock 		: std_logic := '0';
   signal Reset 		: std_logic := '0';
   signal ReadRF 		: std_logic := '0';
   signal INC 			: std_logic := '0';
   signal Load1 		: std_logic := '0';
   signal Load2 		: std_logic := '0';
   signal LoadRF 		: std_logic := '0';
   signal LoadACC 	: std_logic := '0';
   signal INIT1 		: std_logic := '0';
   signal INIT2 		: std_logic := '0';
   signal INIT_C 		: std_logic := '0';
   signal INIT_ACC 	: std_logic := '0';
   signal Done		 	: std_logic := '0';

   signal INPUT_0 	: Signed(7 downto 0) := (others => '0');
   signal INPUT_1 	: Signed(7 downto 0) := (others => '0');
   signal INPUT_2 	: Signed(7 downto 0) := (others => '0');
   signal INPUT_3 	: Signed(7 downto 0) := (others => '0');
   signal INPUT_4 	: Signed(7 downto 0) := (others => '0');
   signal INPUT_5 	: Signed(7 downto 0) := (others => '0');
   signal INPUT_6 	: Signed(7 downto 0) := (others => '0');
   signal INPUT_7 	: Signed(7 downto 0) := (others => '0');
   signal INPUT_8 	: Signed(7 downto 0) := (others => '0');
   signal INPUT_9 	: Signed(7 downto 0) := (others => '0');
   signal Weight_0 	: Signed(7 downto 0) := (others => '0');
   signal Weight_1 	: Signed(7 downto 0) := (others => '0');
   signal Weight_2 	: Signed(7 downto 0) := (others => '0');
   signal Weight_3 	: Signed(7 downto 0) := (others => '0');
   signal Weight_4 	: Signed(7 downto 0) := (others => '0');
   signal Weight_5 	: Signed(7 downto 0) := (others => '0');
   signal Weight_6 	: Signed(7 downto 0) := (others => '0');
   signal Weight_7 	: Signed(7 downto 0) := (others => '0');
   signal Weight_8 	: Signed(7 downto 0) := (others => '0');
   signal Weight_9 	: Signed(7 downto 0) := (others => '0');
   signal Bias 		: Signed(7 downto 0) := (others => '0');

 	--Outputs
   signal OUTPUT 		: Signed(7 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Layer_Neuron
	PORT MAP 
	(
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
		Done 		=> Done,
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
		Weight_0 => Weight_0,
		Weight_1 => Weight_1,
		Weight_2 => Weight_2,
		Weight_3 => Weight_3,
		Weight_4 => Weight_4,
		Weight_5 => Weight_5,
		Weight_6 => Weight_6,
		Weight_7 => Weight_7,
		Weight_8 => Weight_8,
		Weight_9 => Weight_9,
		Bias 		=> Bias,
		OUTPUT 	=> OUTPUT
	);

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clock_period*10;

      -- insert stimulus here 

		INPUT_0	<=	to_signed(12,  8);
		INPUT_1	<=	to_signed(34,  8);
		INPUT_2	<=	to_signed(21,  8);
		INPUT_3	<=	to_signed(10,  8);
		INPUT_4	<=	to_signed(13,  8);
		INPUT_5	<=	to_signed(15,  8);
		INPUT_6	<=	to_signed(21,  8);
		INPUT_7	<=	to_signed(41,  8);
		INPUT_8	<=	to_signed(45,  8);
		INPUT_9	<=	to_signed(10,  8);

		Weight_0 <= to_signed(+13, 8);
		Weight_1 <= to_signed(-46, 8);
		Weight_2 <= to_signed(-42, 8);
		Weight_3 <= to_signed(+16, 8);
		Weight_4 <= to_signed(-21, 8);
		Weight_5 <= to_signed(+28, 8);
		Weight_6 <= to_signed(-33, 8);
		Weight_7 <= to_signed(+32, 8);
		Weight_8 <= to_signed(-37, 8);
		Weight_9 <= to_signed(-42, 8);

		Bias		<=	to_signed(+10, 8);

		LoadRF	<=	'1';
		wait for Clock_period;
		LoadRF	<=	'0';
		
		INIT_ACC	<=	'1';
		Load1		<=	'1';
		Load2		<=	'1';
		ReadRF	<=	'1';
		wait for Clock_period;

		Load1		<=	'0';
		Load2		<=	'0';
		ReadRF	<=	'0';
		INIT_ACC	<=	'0';
		wait for Clock_period;

		LoadACC	<=	'1';
		wait for Clock_period;

		LoadACC	<=	'0';
		INC		<=	'1';
		wait for Clock_period;
		INC		<=	'0';
		----------------------
		LoadRF	<=	'1';
		wait for Clock_period;
		LoadRF	<=	'0';
		
		Load1		<=	'1';
		Load2		<=	'1';
		ReadRF	<=	'1';
		wait for Clock_period;

		Load1		<=	'0';
		Load2		<=	'0';
		ReadRF	<=	'0';
		wait for Clock_period;

		LoadACC	<=	'1';
		wait for Clock_period;

		LoadACC	<=	'0';
		INC		<=	'1';
		wait for Clock_period;
		INC		<=	'0';
		----------------------
		LoadRF	<=	'1';
		wait for Clock_period;
		LoadRF	<=	'0';
		
		Load1		<=	'1';
		Load2		<=	'1';
		ReadRF	<=	'1';
		wait for Clock_period;

		Load1		<=	'0';
		Load2		<=	'0';
		ReadRF	<=	'0';
		wait for Clock_period;

		LoadACC	<=	'1';
		wait for Clock_period;

		LoadACC	<=	'0';
		INC		<=	'1';
		wait for Clock_period;
		INC		<=	'0';
		----------------------
		LoadRF	<=	'1';
		wait for Clock_period;
		LoadRF	<=	'0';
		
		Load1		<=	'1';
		Load2		<=	'1';
		ReadRF	<=	'1';
		wait for Clock_period;

		Load1		<=	'0';
		Load2		<=	'0';
		ReadRF	<=	'0';
		wait for Clock_period;

		LoadACC	<=	'1';
		wait for Clock_period;

		LoadACC	<=	'0';
		INC		<=	'1';
		wait for Clock_period;

		INC		<=	'0';
		wait for Clock_period;
		----------------------
		LoadRF	<=	'1';
		wait for Clock_period;
		LoadRF	<=	'0';
		
		Load1		<=	'1';
		Load2		<=	'1';
		ReadRF	<=	'1';
		wait for Clock_period;

		Load1		<=	'0';
		Load2		<=	'0';
		ReadRF	<=	'0';
		wait for Clock_period;

		LoadACC	<=	'1';
		wait for Clock_period;

		LoadACC	<=	'0';
		INC		<=	'1';
		wait for Clock_period;

		INC		<=	'0';
		wait for Clock_period;
		----------------------
		LoadRF	<=	'1';
		wait for Clock_period;
		LoadRF	<=	'0';
		
		Load1		<=	'1';
		Load2		<=	'1';
		ReadRF	<=	'1';
		wait for Clock_period;

		Load1		<=	'0';
		Load2		<=	'0';
		ReadRF	<=	'0';
		wait for Clock_period;

		LoadACC	<=	'1';
		wait for Clock_period;

		LoadACC	<=	'0';
		INC		<=	'1';
		wait for Clock_period;

		INC		<=	'0';
		wait for Clock_period;
		----------------------
		LoadRF	<=	'1';
		wait for Clock_period;
		LoadRF	<=	'0';
		
		Load1		<=	'1';
		Load2		<=	'1';
		ReadRF	<=	'1';
		wait for Clock_period;

		Load1		<=	'0';
		Load2		<=	'0';
		ReadRF	<=	'0';
		wait for Clock_period;

		LoadACC	<=	'1';
		wait for Clock_period;

		LoadACC	<=	'0';
		INC		<=	'1';
		wait for Clock_period;

		INC		<=	'0';
		wait for Clock_period;
		----------------------
		LoadRF	<=	'1';
		wait for Clock_period;
		LoadRF	<=	'0';
		
		Load1		<=	'1';
		Load2		<=	'1';
		ReadRF	<=	'1';
		wait for Clock_period;

		Load1		<=	'0';
		Load2		<=	'0';
		ReadRF	<=	'0';
		wait for Clock_period;

		LoadACC	<=	'1';
		wait for Clock_period;

		LoadACC	<=	'0';
		INC		<=	'1';
		wait for Clock_period;

		INC		<=	'0';
		wait for Clock_period;
		----------------------
		LoadRF	<=	'1';
		wait for Clock_period;
		LoadRF	<=	'0';
		
		Load1		<=	'1';
		Load2		<=	'1';
		ReadRF	<=	'1';
		wait for Clock_period;

		Load1		<=	'0';
		Load2		<=	'0';
		ReadRF	<=	'0';
		wait for Clock_period;

		LoadACC	<=	'1';
		wait for Clock_period;

		LoadACC	<=	'0';
		INC		<=	'1';
		wait for Clock_period;

		INC		<=	'0';
		wait for Clock_period;
		----------------------
		LoadRF	<=	'1';
		wait for Clock_period;
		LoadRF	<=	'0';
		
		Load1		<=	'1';
		Load2		<=	'1';
		ReadRF	<=	'1';
		wait for Clock_period;

		Load1		<=	'0';
		Load2		<=	'0';
		ReadRF	<=	'0';
		wait for Clock_period;

		LoadACC	<=	'1';
		wait for Clock_period;

		LoadACC	<=	'0';
		INC		<=	'1';
		wait for Clock_period;

		INC		<=	'0';
		INIT_C	<=	'1';
		wait for Clock_period;
		INIT_C	<=	'0';

      wait;
   end process;

END;
