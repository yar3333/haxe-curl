set NEKOPATH=%NEKOPATH%;..\library\ndll\Windows

haxe -cp ../library -cp src -main Main -neko bin/index.n
neko bin/index.n
