library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture behavioral of testbench is
	component processor is
		port(
			in1, in2: in unsigned(7 downto 0);
			sum: out unsigned(7 downto 0));
	end component;
	signal input1:	unsigned(7 downto 0);
	signal input2:	unsigned(7 downto 0);
	signal output:	unsigned(7 downto 0);
begin
	uut: processor port map (
		in1 => input1,
		in2 => input2,
		sum => output);

	stim_proc: process
	begin
		input1 <= "00001111";
		input2 <= "00111100";
		wait for 10 ns;
		input1 <= "00110011";
		input2 <= "11000011";
		wait for 10 ns;
		report "Test process concluded";
		wait;
	end process;
end;
