-- Main file for my current experiments with VHDL programming --
library IEEE;
use IEEE.numeric_std.ALL;

-- The top level module of our processor is an entity simply named "processor"
entity processor is
	-- We currently only define two inputs and one outputs
	-- Technically, this is /actually/ an adder circuit right now
	port (in1, in2: in unsigned(7 downto 0);
	     sum: out unsigned(7 downto 0));
end processor;


-- Here we define the architecture of processor
-- It's named "behavioral" just for convention right now
architecture behavioral of processor is
begin
	sum <= in1+in2;
end behavioral;
