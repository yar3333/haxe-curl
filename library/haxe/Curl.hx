package haxe;

#if php
typedef NativeCurl = php.Curl;
#elseif neko
typedef NativeCurl = neko.Curl;
#end

class Curl 
{
	public static function get(url:String) : String
	{
		var curl = NativeCurl.init();
		NativeCurl.setopt(curl, php.Curl.CurlOpt.URL, url);
		#if php
		NativeCurl.setopt(curl, php.Curl.CurlOpt.RETURNTRANSFER, true);
		#end
		var response = NativeCurl.exec(curl);
		NativeCurl.close(curl);		
		return response;
	}
	
	public static function post(url:String, data:Dynamic) : String
	{
		var curl = NativeCurl.init();
		NativeCurl.setopt(curl, php.Curl.CurlOpt.URL, url);
		#if php
		NativeCurl.setopt(curl, php.Curl.CurlOpt.RETURNTRANSFER, true);
		#end
		NativeCurl.setopt(curl, php.Curl.CurlOpt.POST, true);
		NativeCurl.setopt(curl, php.Curl.CurlOpt.POSTFIELDS, data);
		var response = NativeCurl.exec(curl);
		NativeCurl.close(curl);		
		return response;
	}
}
