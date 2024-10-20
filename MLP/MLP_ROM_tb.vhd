LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY MLP_ROM_tb IS
END MLP_ROM_tb;
 
ARCHITECTURE behavior OF MLP_ROM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MLP_ROM
    PORT(
         Clock 	: IN  std_logic;
         ReadEn 	: IN  std_logic;
         AddrRD 	: IN  unsigned(7 downto 0);
         DataRD 	: OUT	Signed (7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clock 	: std_logic 			:= '0';
   signal ReadEn	: std_logic 			:= '0';
   signal AddrRD 	: unsigned(7 downto 0) := (others => '0');

 	--Outputs
   signal DataRD : Signed(7 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MLP_ROM PORT MAP (
          Clock 	=> Clock,
          ReadEn 	=> ReadEn,
          AddrRD 	=> AddrRD,
          DataRD 	=> DataRD
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

      wait;
   end process;

END;
