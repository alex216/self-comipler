CFLAGS=-std=c11 -g -static

one_int_compiler: one_int_compiler.c

test: one_int_compiler
	./test.sh

clean:
	rm -f one_int_compiler *.o *~ tmp*

.PHONY: test clean
