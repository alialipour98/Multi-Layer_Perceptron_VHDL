LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY Neuron_Top_tb IS
END Neuron_Top_tb;
 
ARCHITECTURE behavior OF Neuron_Top_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Neuron_Top
    PORT(
         Clock 		: IN  std_logic;
         Reset 		: IN  std_logic;
         Start 		: IN  std_logic;
         Done_OUT 	: OUT std_logic;
         INPUT_0 		: IN  Signed(7 downto 0);
         INPUT_1 		: IN  Signed(7 downto 0);
         INPUT_2 		: IN  Signed(7 downto 0);
         INPUT_3 		: IN  Signed(7 downto 0);
         INPUT_4 		: IN  Signed(7 downto 0);
         INPUT_5 		: IN  Signed(7 downto 0);
         INPUT_6 		: IN  Signed(7 downto 0);
         INPUT_7 		: IN  Signed(7 downto 0);
         INPUT_8 		: IN  Signed(7 downto 0);
         INPUT_9 		: IN  Signed(7 downto 0);
         Weight_0 	: IN  Signed(7 downto 0);
         Weight_1 	: IN  Signed(7 downto 0);
         Weight_2 	: IN  Signed(7 downto 0);
         Weight_3 	: IN  Signed(7 downto 0);
         Weight_4 	: IN  Signed(7 downto 0);
         Weight_5 	: IN  Signed(7 downto 0);
         Weight_6 	: IN  Signed(7 downto 0);
         Weight_7 	: IN  Signed(7 downto 0);
         Weight_8 	: IN  Signed(7 downto 0);
         Weight_9 	: IN  Signed(7 downto 0);
         Bias 			: IN  Signed(7 downto 0);
         OUTPUT_I 	: OUT	Signed(7 downto 0);
         OUTPUT_II 	: OUT	Signed(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clock 		: std_logic 			:= '0';
   signal Reset 		: std_logic 			:= '0';
   signal Start 		: std_logic 			:= '0';
   signal Done_OUT	: std_logic 			:= '0';
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
   signal OUTPUT_I 		: Signed(7 downto 0);
   signal OUTPUT_II		: Signed(7 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Neuron_Top PORT MAP (
          Clock 		=> Clock,
          Reset 		=> Reset,
          Start 		=> Start,
          Done_OUT	=> Done_OUT,
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
          Weight_0 	=> Weight_0,
          Weight_1 	=> Weight_1,
          Weight_2 	=> Weight_2,
          Weight_3 	=> Weight_3,
          Weight_4 	=> Weight_4,
          Weight_5 	=> Weight_5,
          Weight_6 	=> Weight_6,
          Weight_7 	=> Weight_7,
          Weight_8 	=> Weight_8,
          Weight_9 	=> Weight_9,
          Bias 		=> Bias,
          OUTPUT_I 	=> OUTPUT_I,
          OUTPUT_II	=> OUTPUT_II
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

		INPUT_0	<=	to_signed(50,  8);
		INPUT_1	<=	to_signed(35,  8);
		INPUT_2	<=	to_signed(13,  8);
		INPUT_3	<=	to_signed(3,  8);
		INPUT_4	<=	to_signed(0,  8);
		INPUT_5	<=	to_signed(0,  8);
		INPUT_6	<=	to_signed(0,  8);
		INPUT_7	<=	to_signed(0,  8);
		INPUT_8	<=	to_signed(0,  8);
		INPUT_9	<=	to_signed(0,  8);

		Weight_0 <= to_signed(11, 8);
		Weight_1 <= to_signed(-11, 8);
		Weight_2 <= to_signed(-60, 8);
		Weight_3 <= to_signed(-8, 8);
		Weight_4 <= to_signed(0, 8);
		Weight_5 <= to_signed(0, 8);
		Weight_6 <= to_signed(0, 8);
		Weight_7 <= to_signed(0, 8);
		Weight_8 <= to_signed(0, 8);
		Weight_9 <= to_signed(0, 8);

		Bias		<=	to_signed(16, 8);

		Start		<=	'1';
      wait for Clock_period;
		Start		<=	'0';

      wait;
   end process;

END;
