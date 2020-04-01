CC=gcc
CFLAGS=-Og -m64 -S

all: arith.s

arith.s: arith.c
	${CC} ${CFLAGS} arith.c

clean:
	rm arith.s

compare:
	diff -b -B -I '.ident*' -I '.file*' arith.s arith_complete.s
  
