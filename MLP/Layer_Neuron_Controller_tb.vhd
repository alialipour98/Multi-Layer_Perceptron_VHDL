LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY Neuron_Controller_tb IS
END Neuron_Controller_tb;
 
ARCHITECTURE behavior OF Neuron_Controller_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Neuron_Controller
    PORT(
         Clock 		: IN	std_logic;
         Reset 		: IN	std_logic;
         ReadRF 		: OUT	std_logic;
         INC 			: OUT	std_logic;
         Load1 		: OUT	std_logic;
         Load2 		: OUT	std_logic;
         LoadRF 		: OUT	std_logic;
         LoadACC 		: OUT	std_logic;
         INIT1 		: OUT	std_logic;
         INIT2 		: OUT	std_logic;
         INIT_C 		: OUT	std_logic;
         INIT_ACC 	: OUT	std_logic;
         Start 		: IN	std_logic;
         Done 			: IN	std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clock 		: std_logic := '0';
   signal Reset 		: std_logic := '0';
   signal Start 		: std_logic := '0';
   signal Done 		: std_logic := '0';

 	--Outputs
   signal ReadRF 		: std_logic;
   signal INC 			: std_logic;
   signal Load1 		: std_logic;
   signal Load2 		: std_logic;
   signal LoadRF 		: std_logic;
   signal LoadACC 	: std_logic;
   signal INIT1 		: std_logic;
   signal INIT2 		: std_logic;
   signal INIT_C 		: std_logic;
   signal INIT_ACC 	: std_logic;

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Neuron_Controller PORT MAP (
          Clock 		=> Clock,
          Reset 		=> Reset,
          ReadRF 		=> ReadRF,
          INC 			=> INC,
          Load1 		=> Load1,
          Load2 		=> Load2,
          LoadRF 		=> LoadRF,
          LoadACC 	=> LoadACC,
          INIT1 		=> INIT1,
          INIT2 		=> INIT2,
          INIT_C 		=> INIT_C,
          INIT_ACC	=> INIT_ACC,
          Start 		=> Start,
          Done 		=> Done
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

		Start <= '1';
		wait for Clock_period;
		Start <= '0';

		wait for 100*Clock_period;
		Done	<=	'1';
		wait for Clock_period;
		Done	<=	'0';
		
      wait;
   end process;

END;
