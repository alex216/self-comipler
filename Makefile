CFLAGS=-std=c11 -g -static

one-int-comipler: one-int-compiler.c

test: one-int-compiler
	./test.sh

clean:
	rm -f one-int-compiler *.o *~ tmp*

.PHONY: test clean
