ifeq ($(shell getconf LONG_BIT),64)
	X64=1
endif

SRC_DIR=src
OBJ_DIR=obj

OBJS=$(OBJ_DIR)/hxCurl.o

ifdef X64
	OUT=../library/ndll/Linux64/hxCurl.ndll
else
	OUT=../library/ndll/Linux/hxCurl.ndll
endif 

CC=gcc

CFLAGS=-shared -fPIC #-I/usr/lib/neko/include
LDFLAGS=-shared -lneko -lcurl

build: $(OBJS)
	$(CC) $(OBJS) -o $(OUT) $(LDFLAGS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJS)
	rm -f $(OUT)

all: clean build 
