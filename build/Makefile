OUT		= ../library/ndll/Linux/hxCurl.ndll
OBJS	= obj/hxCurl.o
CC      = gcc
CFLAGS	= -fPIC -I/usr/lib/neko/include
LDFLAGS = -shared -lneko -lcurl

all: $(OBJS)
	$(CC) $(LDFLAGS) $(CFLAGS) -o $(OUT) hxCurl.c

clean:
	rm -f $(OBJS)
	rm -rf $(OUT)
