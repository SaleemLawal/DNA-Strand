CXX = g++
CXXFLAGS = -Wall

main:	Sequencer.o Strand.o main.cpp
	$(CXX) $(CXXFLAGS) Sequencer.o Strand.o main.cpp -o main

Strand.o:	Sequencer.o Strand.cpp Strand.h
	$(CXX) $(CXXFLAGS) -c Strand.cpp

Sequencer.o:	Sequencer.h Sequencer.cpp
	$(CXX) $(CXXFLAGS) -c Sequencer.cpp

clean:
	rm *.o*
	rm *~

run:
	./main
