library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Neuron_Controller is

	PORT
	(
		Clock		:	IN		STD_LOGIC;
		Reset		:	IN		STD_LOGIC;
		ReadRF	:	OUT	STD_LOGIC;
		INC		:	OUT	STD_LOGIC;
		Load1		:	OUT	STD_LOGIC;
		Load2		:	OUT	STD_LOGIC;
		LoadRF	:	OUT	STD_LOGIC;
		LoadACC	:	OUT	STD_LOGIC;
		INIT1		:	OUT	STD_LOGIC;
		INIT2		:	OUT	STD_LOGIC;
		INIT_C	:	OUT	STD_LOGIC;
		INIT_ACC	:	OUT	STD_LOGIC;
		Start		:	IN		STD_LOGIC;
		Done		:	IN		STD_LOGIC
	);

end Neuron_Controller;

architecture Behavioral of Neuron_Controller is

	Constant	INIT			:	unsigned(2 DOWNTO 0)	:=	"000";
	Constant	STRT			:	unsigned(2 DOWNTO 0)	:=	"001";
	Constant	LD_RF			:	unsigned(2 DOWNTO 0)	:=	"010";
	Constant	LD_PR			:	unsigned(2 DOWNTO 0)	:=	"011";
	Constant	LD_AC			:	unsigned(2 DOWNTO 0)	:=	"100";
	Constant	NOP			:	unsigned(2 DOWNTO 0)	:=	"101";
	
	Signal Present_State	:	unsigned(2 DOWNTO 0)	:=	(others=>'0');
	Signal Next_State		:	unsigned(2 DOWNTO 0)	:=	(others=>'0');

begin

	-----------------------I-----------------------
	process(Clock, Reset)
	begin
		if (Reset = '1') then
			Present_State	<=	(others=>'0');
		elsif (Clock = '1' AND Clock'event) then
			Present_State	<=	Next_State;
		end if;
	end process;
	----------------------II----------------------
	process(Present_State, Start, Done)
	begin
		CASE (Present_State) IS
			---------------------------
			WHEN INIT	=>
				if (Start = '1') then
					Next_State	<=	STRT;
				else
					Next_State	<=	INIT;
				end if;
			---------------------------
			WHEN STRT	=>
				if (Start = '0') then
					Next_State	<=	LD_RF;
				else
					Next_State	<=	STRT;
				end if;
			---------------------------
			WHEN LD_RF	=>
				Next_State	<=	LD_PR;
			---------------------------
			WHEN LD_PR	=>
				Next_State	<=	LD_AC;
			---------------------------
			WHEN LD_AC	=>
				Next_State	<=	NOP;
			---------------------------
			WHEN NOP	=>
				if (Done = '1') then
					Next_State	<=	INIT;
				else
					Next_State	<=	LD_PR;
				end if;
			---------------------------
			WHEN OTHERS	=>
				NULL;
		END CASE;
	end process;
	----------------------III----------------------
	process(Present_State)
	begin
		ReadRF	<=	'0';
		INC		<=	'0';
		Load1		<=	'0';
		Load2		<=	'0';
		LoadRF	<=	'0';
		LoadACC	<=	'0';
		INIT1		<=	'0';
		INIT2		<=	'0';
		INIT_C	<=	'0';
		INIT_ACC	<=	'0';
		-----------------------
		case (Present_State) is
			WHEN INIT	=>
				INIT1		<=	'1';
				INIT2		<=	'1';
				INIT_C	<=	'1';
			WHEN LD_RF	=>
				LoadRF	<=	'1';
				INIT_ACC	<=	'1';
			WHEN LD_PR	=>
				load1		<=	'1';
				load2		<=	'1';
				ReadRF	<=	'1';
			WHEN LD_AC	=>
				LoadACC	<=	'1';
				INC		<=	'1';
			WHEN OTHERS	=>
				NULL;
		end case;
		-----------------------
	end process;
	--------------------------------------------
end Behavioral;













