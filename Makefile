# build an executable named myprog from myprog.c
CXX = g++
CXXFLAGS = -std=c++11 -Wall -pthread
OBJS = non-determinism.o

non-determinism :
	$(CXX) $(CXXFLAGS) non-determinism.cpp -o non-determinism
	for i in 1 2 3 4 5 ; do \
		echo "\nRun number: $$i\n" ; \
		./non-determinism ; \
	done	

clean:
	$(RM) *.o non-determinism
