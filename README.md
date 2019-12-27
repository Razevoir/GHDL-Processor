# GHDL-Processor
This is a complete, ground-up redo of my Xilinx ISE VHDL processor design.
The goal of the project is to write a processor that can accurately execute a set of instructions.
Design specifications include the use of multiple registers, a program counter that can be used to fetch instructions
and moved perform branching instructions, and a set of basic instructions that can be used for mathematics, loops, and
other processor functions.
Future design criteria will mostly be expanding current functionality with more registers and a larger core instruction
set, as well as features like execution pipelining, memory management, processor stack, and other things.

# Build Instructions
To compile the project, you'll need to have some form of GHDL installed. While I currently have it configured to use the
GCC backend, you can install whatever backend you like and make the appropriate adjustments in the Makefile. Once the
necessary dependencies are installed, the project can be built by simply using the command 'make' while in the top level
directory of the project.

# Viewing the output
In its current configuration, the project executes immediately upon being built and stores the testbench output in a file
called 'testbench.vcd'. You can view the contents of this file using GTKWave, which produces a graphical plot of all your
testbench data.
