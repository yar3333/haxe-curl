package ;

class Main
{
    static function main()
	{
		#if (php || neko)
		
		var r = new haxe.unit.TestRunner();
		r.add(new CurlTest());
		php.Lib.println("<pre>");
		r.run();
		php.Lib.println("</pre>");
		
		#end
	}
}
