CC=gcc
sdir=src/
odir=obj/
idir=include/
_src=gstart.c gstartfunc.c
_obj=gstart.o gstartfunc.o
_deps=gstart.h

cflags=-I$(idir)

obj=$(patsubst %, $(odir)%, $(_obj))
src=$(patsubst %, $(sdir)%, $(_src))
deps=$(patsubst %, $(idir)%, $(_deps))

$(odir)%.o: $(src)%.c $(deps)
	$(CC) -o $@ -c $< $(cflags)
gstartmain : $(obj)
	$(CC) -o $@ $^ $(cflags)
clean :
	$(RM) $(obj) gstartmain
