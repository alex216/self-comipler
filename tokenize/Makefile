CFLAGS=-std=c11 -g -static

tokcom: tokcom.c

test: tokcom
	./test.sh

clean:
	rm -f tokcom *.o *~ tmp*

.PHONY: test clean
