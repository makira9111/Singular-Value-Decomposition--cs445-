# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Makefile for Problem Set 1; CS 445
# Anton Petrov - 22-09-11

CFLAGS = -g3 -std=c99 -pedantic -Wall -lm
CC = gcc

all: clean jacobi

jacobi: main.c getLine.o jacobi.o
	${CC} ${CFLAGS} -o $@ $^

getLine.o: getLine.c getLine.h

jacobi.o: jacobi.c jacobi.h

clean:
	/bin/rm -f *.o jacobi *-sqrt.txt *-square_and_add.txt
