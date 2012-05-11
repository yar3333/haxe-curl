export NEKOPATH:=/usr/lib/neko:../../library/ndll/Linux

all:
	@echo ${NEKOPATH}
	haxe -cp ../../library -cp . -main Main -neko Main.n
	neko Main.n
