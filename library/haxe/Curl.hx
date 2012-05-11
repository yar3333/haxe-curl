package haxe;

#if php
typedef NativeCurl = php.Curl;
typedef CurlOpt = php.Curl.CurlOpt;
#elseif neko
typedef NativeCurl = neko.Curl;
typedef CurlOpt = neko.Curl.CurlOpt;
#end

class Curl 
{
	public static function get(url:String) : String
	{
		var curl = NativeCurl.init();
		NativeCurl.setopt(curl, CurlOpt.URL, url);
		#if php
		NativeCurl.setopt(curl, CurlOpt.RETURNTRANSFER, true);
		#end
		var response = NativeCurl.exec(curl);
		NativeCurl.close(curl);		
		return response;
	}
	
	public static function post(url:String, data:Dynamic) : String
	{
		var curl = NativeCurl.init();
		NativeCurl.setopt(curl, CurlOpt.URL, url);
		#if php
		NativeCurl.setopt(curl, CurlOpt.RETURNTRANSFER, true);
		#end
		NativeCurl.setopt(curl, CurlOpt.POST, true);
		NativeCurl.setopt(curl, CurlOpt.POSTFIELDS, data);
		var response = NativeCurl.exec(curl);
		NativeCurl.close(curl);		
		return response;
	}
}
