CC=gcc
sdir=src/
odir=obj/
idir=include/
_src=gtstartfunc.c gtstart.c
_obj=gtstartfunc.o gtstart.o
_deps=gtstart.h

cflags=-I$(idir)

obj=$(patsubst %, $(odir)%, $(_obj))

gt: $(obj)
	$(CC) `gtk-config --libs` `gtk-config --cflags` -o $@ $^ $(cflags)

$(odir)%.o:	$(sdir)%.c
	$(CC) `gtk-config --libs` `gtk-config --cflags` -o $@ -c $< $(cflags)

clean:
	$(RM) $(obj) gt
