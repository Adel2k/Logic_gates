NAME = XOR

SOURCE = $(wildcard *.v)

WAVEFORM = waveform.vcd

all : run

run : compile
	vvp $(NAME)

compile : Makefile
	iverilog -o $(NAME) $(SOURCE)

view :
	gtkwave $(WAVEFORM)

clean :
	rm -f $(WAVEFORM) $(NAME)