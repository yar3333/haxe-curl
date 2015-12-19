include Makefile-platform
include Makefile-ndll

PROJECT=curl

ifeq ($(PLATFORM),Windows)
	CURLPATH=D:\MyProg\_tools\libcurl\0.9
	CCFLAGS+= -I $(NEKOPATH)\include -I $(CURLPATH)\include
	LDFLAGS+= -L$(NEKOPATH)
	LDFLAGS+= $(CURLPATH)\libcurl_imp.lib
else
	LDFLAGS+= -lcurl
endif
