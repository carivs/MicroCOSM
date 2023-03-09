OBJECTS = mersenne.o StatFunctions.o

default:  Microsimulation

Microsimulation: Microsimulation.cpp $(OBJECTS) Microsimulation.h StatFunctions.h randomc.h
	g++ -std=c++14 -O2 Microsimulation.cpp $(OBJECTS) -I. -o $@

%.o: %.cpp %.h 
	g++ -std=c++14 -O2 -I. -c $<
