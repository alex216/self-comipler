CFLAGS=-std=c11 -g -static

ascompiler: ascompiler.c

test: ascompiler
	./test.sh

clean:
	rm -f ascompiler *.o *~ tmp*

.PHONY: test clean
