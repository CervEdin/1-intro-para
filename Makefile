# build an executable named myprog from myprog.c
CC= g++
CPPFLAGS = -std=c++11 -Wall -pthread

all: non-determinism.cpp 
 	-o non-determinism non-determinism.cpp

clean:
	$(RM) myprog
