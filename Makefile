CC=gcc

sdir=src/
odir=obj/
idir=include/

_src=gtstartfunc.c gtstart.c
_obj=gtstartfunc.o gtstart.o

cflags=-I$(idir)
gflags=`gtk-config --cflags`
glibs=`gtk-config --libs`

obj=$(patsubst %, $(odir)%, $(_obj))

gt: $(obj)
	$(CC) $(glibs) $(gflags) -o $@ $^ $(cflags)

$(odir)%.o:	$(sdir)%.c
	$(CC) $(glibs) $(gflags) -o $@ -c $< $(cflags)

clean:
	$(RM) $(obj) gt
