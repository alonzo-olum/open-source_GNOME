CC=gcc
CPP=g++

_SRC=demo.c
_OBJ=demo

_SRC_=demo.cpp
_OBJ_=demopp

SDIR=src/
IDIR=include/
ODIR=obj/

CFLAGS=-I$(IDIR)

OBJ=$(patsubst %, $(ODIR)%, $(_OBJ))
SRC=$(patsubst %, $(SDIR)%, $(_SRC))

OBJC=$(patsubst %, $(ODIR)%, $(_OBJ_))
SRCC=$(patsubst %, $(SDIR)%, $(_SRC_))

$(OBJ): $(SRC)
	$(CC) -o $@ $< $(CFLAGS)

demo: $(OBJC)

$(OBJC): $(SRCC)
	$(CPP) -std=c++11 -o $@ $< $(CFLAGS)

clean:
	$(RM) -r *.o $(OBJ) $(OBJC)

