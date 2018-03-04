# Mój plik makefile - wpisz 'make all' aby skompilować cały program
# (właściwie wystarczy wpisać 'make' - all jest domyślny jako pierwszy cel)
CC = gcc  

all: hello.o main.o
	$(CC) hello.o main.o -o test

hello.o: hello.cpp  library.hpp
	$(CC) hello.cpp -c -o hello.o

main.o: main.cpp library.hpp
	$(CC) main.cpp -c -o main.o

clean:
	rm -f *.o test
