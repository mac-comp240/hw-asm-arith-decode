CC=gcc
CFLAGS=-Og -m64 -S

all: hw3_arith.s

hw3_arith.s: hw3_arith.c
	${CC} ${CFLAGS} hw3_arith.c

clean:
	rm hw3_arith.s

compare:
	diff -I -b -B '.ident*' hw3_arith.s hw3_arith_complete.s
  
