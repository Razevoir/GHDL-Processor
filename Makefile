GHDL=ghdl-gcc
GHDLFLAGS=
GHDLOBJS=\
	 processor.o\
	 testbench.o\
	 testbench

test: $(GHDLOBJS)
	./testbench --vcd=testbench.vcd

%: %.o
	$(GHDL) -e $(GHDLFLAGS) $@

%.o: %.vhdl
	$(GHDL) -a $(GHDLFLAGS) $<

clean:
	rm *.o testbench testbench.vcd
	$(GHDL) --remove
