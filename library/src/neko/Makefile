OBJS	= hxCurl.o
CC      = gcc
CFLAGS	= -fPIC -I/usr/lib/neko/include
LDFLAGS = -shared -lneko -lcurl

../../ndll/Linux/hxCurl.ndll: $(OBJS)
	gcc -shared -lneko -lcurl -o ../../ndll/Linux/hxCurl.ndll hxCurl.o

clean:
	rm -f $(OBJS)
	rm -rf ../../ndll/Linux/hxCurl.ndll
