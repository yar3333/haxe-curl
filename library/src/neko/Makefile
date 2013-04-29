OBJS	= hxCurl.o
CC      = gcc
CFLAGS	= -fPIC -I/usr/lib/neko/include
LDFLAGS = -shared -lneko -lcurl

all: $(OBJS)
	$(CC) $(LDFLAGS) $(CFLAGS) -o ../../ndll/Linux/hxCurl.ndll hxCurl.c

clean:
	rm -f $(OBJS)
	rm -rf ../../ndll/Linux/hxCurl.ndll
