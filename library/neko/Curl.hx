package neko;

class CurlOpt
{
	private static inline var TYPE_LONG = 0;
	private static inline var TYPE_OBJECTPOINT = 10000;
	
	public static inline var URL = TYPE_OBJECTPOINT + 2;
	//public static inline var RETURNTRANSFER = "CURLOPT_RETURNTRANSFER";
	public static inline var POST = TYPE_LOGN + 47;
	public static inline var POSTFIELDS = TYPE_OBJECTPOINT + 15;
}

class Curl 
{
	public static inline function init() : Dynamic
	{
		return hxcurl_init();
	}
	
	public static inline function close(resource:Dynamic) : Void
	{
		return hxcurl_close(resource);
	}
	
	public static inline function setopt(resource:Dynamic, option:Int, value:Dynamic) : Void
	{
		hxcurl_setopt(resource, option, value);
	}
	
	public static inline function exec(resource:Dynamic) : String
	{
		return hxcurl_exec(resource);
	}
	
	private static var hxcurl_init = neko.Lib.load("hxcurl","hxcurl_init", 0);
	private static var hxcurl_close = neko.Lib.load("hxcurl","hxcurl_close", 1);
	private static var hxcurl_setopt = neko.Lib.load("hxcurl","hxcurl_setopt", 3);
	private static var hxcurl_exec = neko.Lib.load("hxcurl","hxcurl_exec", 1);
}

