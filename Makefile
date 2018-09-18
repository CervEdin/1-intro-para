# build an executable named myprog from myprog.c
CXX = g++
CXXFLAGS = -std=c++11 -Wall -pthread
OBJS = non-determinism.o

non-determinism :
	$(CXX) -c $(CXXFLAGS) non-determinism.cpp -o non-determinism

clean:
	$(RM) *.o non-determinism
