.PHONY: all clean
all: prog

clean:
	rm -f prog prog.o other.o

prog: prog.o other.o
	$(CXX) -o $@ $^

prog.o: prog.cc
	$(CXX) -c -o $@ $<

other.o: other.cc
	VARIABLE=value $(CXX) -c -o $@ $<