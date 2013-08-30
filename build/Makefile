include Makefile.platform
include Makefile.ndll

PROJECT=curl

ifeq ($(PLATFORM),Windows)
	CURLPATH=D:\MyProg\_tools\libcurl
	CCFLAGS+= -I $(NEKOPATH)\include -I $(CURLPATH)\include
	LDFLAGS+= -L$(NEKOPATH) -L$(CURLPATH)\lib\Release
	LDFLAGS+= $(NEKOPATH)\neko.dll
	LDFLAGS+= -lcurllib
else
	LDFLAGS+= -lneko
	LDFLAGS+= -lcurl
endif
