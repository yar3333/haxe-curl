package haxe;

class CurlUnsupportedMethodException
{
	public function new() {}
}

class CurlOpt
{
	public static inline var URL = "CURLOPT_URL";
	public static inline var RETURNTRANSFER = "CURLOPT_RETURNTRANSFER";
	public static inline var POST = "CURLOPT_POST";
	public static inline var POSTFIELDS = "CURLOPT_POSTFIELDS";
}

class Curl 
{
	#if php
	var pcurl : String;
	#elseif neko
	//var ncurl : neko.Curl;
	#end
	
	public function new() 
	{
		#if php
		pcurl = php.Curl.init();
		#elseif neko
		//ncurl = new neko.Curl();
		#end
	}
	
	public function setopt(opt:Dynamic, val:Dynamic) 
	{
		#if php
		php.Curl.setopt(pcurl, opt, val);
		#elseif neko
		throw new CurlUnsupportedMethodException();
		#end
	}
	
	public function exec() : String
	{
		#if php
		return php.Curl.exec(pcurl);
		#elseif neko
		throw new CurlUnsupportedMethodException();
		#end
		return null;
	}
	
	public function close()
	{
		#if php
		php.Curl.close(pcurl);
		#elseif neko
		throw new CurlUnsupportedMethodException();
		#end
	}
}
