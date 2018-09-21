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

performance :
	$(CXX) $(CXXFLAGS) performance.cpp -o performance
	for T in 1 2 4 8 16 32 ; do \
		for N in 1 2 4 8 16 32 ; do \
			echo "\nPerformance T=$$T N=$$N" ; \
			./performance $$T $$N ; \
		done \
	done

dining :
	$(CXX) $(CXXFLAGS) dining.cpp -o dining
	for i in 2 3 4 5 6 7 8 9 10 ; do \
		echo "\nPhilosophers : $$i\n" ; \
		./dining $$i ; \
	done

clean:
	$(RM) *.o non-determinism performance
