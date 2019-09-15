CFLAGS = -Wall
#target exe
all: hello.o myfunc.o
        g++ $(CFLAGS) -o myexe hello.o myfunc.o

#rebuild if either of the files below change
hello.o: hello.cpp myfunc.h
        g++ $(CFLAGS) -c hello.cpp

#rebuild if either of the files below change
myfunc.o: myfunc.cpp myfunc.h
        g++ $(CFLAGS) -c myfunc.cpp

#type 'make clean' to remove following
clean:
        rm -f * .o myexe.exe

