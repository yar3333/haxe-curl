package neko;

class CurlOpt
{
	private static inline var TYPE_LONG = 0;
	private static inline var TYPE_OBJECTPOINT = 10000;
	
	public static inline var URL = TYPE_OBJECTPOINT + 2;
	public static inline var POST = TYPE_LONG + 47;
	public static inline var POSTFIELDS = TYPE_OBJECTPOINT + 15;
	public static inline var HEADER = TYPE_LONG + 42;
	public static inline var HTTPHEADER = TYPE_OBJECTPOINT + 23;
}

class Curl 
{
	public static inline function init() : Dynamic
	{
		return hxcurl_init();
	}
	
	public static inline function close(resource:Dynamic) : Void
	{
		hxcurl_close(resource);
	}
	
	public static inline function setopt(resource:Dynamic, option:Int, value:Dynamic) : Void
	{
		hxcurl_setopt(resource, Lib.haxeToNeko(option), Lib.haxeToNeko(value));
	}
	
	public static inline function exec(resource:Dynamic) : String
	{
		return  Lib.nekoToHaxe(hxcurl_exec(resource));
	}
	
	private static var hxcurl_init = Lib.load("hxCurl","hxcurl_init", 0);
	private static var hxcurl_close = Lib.load("hxCurl","hxcurl_close", 1);
	private static var hxcurl_setopt = Lib.load("hxCurl","hxcurl_setopt", 3);
	private static var hxcurl_exec = Lib.load("hxCurl","hxcurl_exec", 1);
}

