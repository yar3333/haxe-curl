all:
    haxe -cp ../../library -cp . -main Main -neko tests/Main.n
    export NEKOPATH=/usr/lib/neko:../../library/ndll/Linux
    neko Main.n
