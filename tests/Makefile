ifeq ($(shell getconf LONG_BIT),64)
        PLATFORM=Linux64
else
        PLATFORM=Linux
endif

export NEKOPATH:=/usr/lib/neko:../../library/ndll/$(PLATFORM)

all:
	cp -r support/* bin
	haxe -cp ../library -cp src -main Main -neko bin/index.n
	cd bin && neko index.n
