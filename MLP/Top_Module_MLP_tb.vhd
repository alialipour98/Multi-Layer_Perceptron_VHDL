LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

use ieee.std_logic_textio.all;
use std.textio.all;

ENTITY Top_Module_MLP_tb IS
END Top_Module_MLP_tb;
 
ARCHITECTURE behavior OF Top_Module_MLP_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Top_Module_MLP
    PORT(
         Clock 	: 	IN  	std_logic;
         Reset 	: 	IN  	std_logic;
         Start 	: 	IN  	std_logic;
         Done 		: 	OUT  	std_logic;
         INPUT_0 	: 	IN  	Signed  (7 DOWNTO 0);
         INPUT_1 	: 	IN  	Signed  (7 DOWNTO 0);
         INPUT_2 	: 	IN  	Signed  (7 DOWNTO 0);
         INPUT_3 	: 	IN  	Signed  (7 DOWNTO 0);
			OUTPUT	:	OUT	unsigned(1 DOWNTO 0)
        );
    END COMPONENT;
    
   --Inputs
   signal Clock 	: std_logic 			:= '0';
   signal Reset 	: std_logic 			:= '0';
   signal Start 	: std_logic 			:= '0';
   signal Done 	: std_logic 			:= '0';
   signal INPUT_0 : Signed(7 DOWNTO 0) := (others => '0');
   signal INPUT_1 : Signed(7 DOWNTO 0) := (others => '0');
   signal INPUT_2 : Signed(7 DOWNTO 0) := (others => '0');
   signal INPUT_3 : Signed(7 DOWNTO 0) := (others => '0');

	--Outputs
   signal OUTPUT : unsigned(1 DOWNTO 0) 	:= (others => '0');

   -- Clock period definitions
   constant Clock_period : time := 10 ns;

-- Read Test
-------------------------------------------------------------------------------------------------------------------------
	TYPE Test_Data IS ARRAY (0 TO 119) of Signed(7 DOWNTO 0);
-------------------------------------------------------------------------------------------------------------------------
	impure function init_ram_hex_1 return Test_Data is
	  file text_file : text open read_mode is "X_Test_Data.txt";
	  variable text_line 	: line;
	  variable L1 				: INTEGER;
	  variable ram_content 	: Test_Data;
	begin
	  for i in 0 to 119 loop
			 readline(text_file, text_line);
			 read(text_line, L1);
			 ram_content(i) := to_signed(L1, 8);
	  end loop;
	 
	  return ram_content;
	end function;
-------------------------------------------------------------------------------------------------------------------------
	Signal Test	:	Test_Data	:=	init_ram_hex_1;
-------------------------------------------------------------------------------------------------------------------------

-- Read Target
-------------------------------------------------------------------------------------------------------------------------
	TYPE Targer_Data IS ARRAY (0 TO 29) of unsigned(7 DOWNTO 0);
-------------------------------------------------------------------------------------------------------------------------
	impure function init_ram_hex_2 return Targer_Data is
	  file text_file : text open read_mode is "Y_Test_Data.txt";
	  variable text_line 	: line;
	  variable L1 				: INTEGER;
	  variable ram_content 	: Targer_Data;
	begin
	  for i in 0 to 29 loop
			 readline(text_file, text_line);
			 read(text_line, L1);
			 ram_content(i) := to_unsigned(L1, 8);
	  end loop;
	 
	  return ram_content;
	end function;
-------------------------------------------------------------------------------------------------------------------------
	Signal Targer		:	Targer_Data	:=	init_ram_hex_2;
-------------------------------------------------------------------------------------------------------------------------

	Signal j				:	unsigned(7 DOWNTO 0) 		:= (others=>'0');
	Signal k				:	unsigned(7 DOWNTO 0)			:= (others=>'0');

	Signal Done_Prev	:	STD_LOGIC	:=	'0';

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Top_Module_MLP PORT MAP (
          Clock 	=> Clock,
          Reset 	=> Reset,
          Start 	=> Start,
          Done 	=> Done,
          INPUT_0 => INPUT_0,
          INPUT_1 => INPUT_1,
          INPUT_2 => INPUT_2,
          INPUT_3 => INPUT_3,
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
		Variable i	:	INTEGER	:=	0;
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clock_period*10;

		-- 2
--		Start		<=	'1';
--		wait for Clock_period;
--		Start		<=	'0';
--		
--		INPUT_0	<=	to_signed(67, 8);
--		INPUT_1	<=	to_signed(31, 8);
--		INPUT_2	<=	to_signed(56, 8);
--		INPUT_3	<=	to_signed(24, 8);
		
		-- 0
--		Start		<=	'1';
--		wait for Clock_period;
--		Start		<=	'0';
--		
--		INPUT_0	<=	to_signed(50, 8);
--		INPUT_1	<=	to_signed(35, 8);
--		INPUT_2	<=	to_signed(13, 8);
--		INPUT_3	<=	to_signed(3, 8);		
		
		-- 1
--		Start		<=	'1';
--		wait for Clock_period;
--		Start		<=	'0';
--		
--		INPUT_0	<=	to_signed(57, 8);
--		INPUT_1	<=	to_signed(30, 8);
--		INPUT_2	<=	to_signed(42, 8);
--		INPUT_3	<=	to_signed(12, 8);

		-- 1
--		Start		<=	'1';
--		wait for Clock_period;
--		Start		<=	'0';
--		
--		INPUT_0	<=	to_signed(51, 8);
--		INPUT_1	<=	to_signed(25, 8);
--		INPUT_2	<=	to_signed(30, 8);
--		INPUT_3	<=	to_signed(11, 8);

--		for i in 0 to 29 loop
--			Start		<=	'1';
--			wait for Clock_period;
--			Start		<=	'0';
--			
--			INPUT_0	<=	Test(4*i);
--			INPUT_1	<=	Test(4*i+1);
--			INPUT_2	<=	Test(4*i+2);
--			INPUT_3	<=	Test(4*i+3);
--			
--			wait for Clock_period*100;
--			
--		end loop;
		
      wait;
   end process;

--	process(Clock)
--	begin
--		if (Clock = '1' AND Clock'event) then
--			Done_Prev	<=	Done;
--			if (Done = '1' AND Done_Prev = '0') then
--				if (OUTPUT = Targer(to_integer(j))(1 DOWNTO 0)) then
--					k <= k + 1;
--				end if;
--				j <= j + 1;
--			end if;
--		end if;
--	end process;
	

END;
