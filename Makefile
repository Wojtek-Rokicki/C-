# Mój plik makefile - wpisz 'make all' aby skompilować cały program
# (właściwie wystarczy wpisać 'make' - all jest domyślny jako pierwszy cel)
CPP = g++  

all: hello.o main.o
	$(CPP) hello.o main.o -o test

hello.o: hello.cpp  library.hpp
	$(CPP) hello.cpp -c -o hello.o

main.o: main.cpp library.hpp
	$(CPP) main.cpp -c -o main.o

clean:
	rm -f *.o test
