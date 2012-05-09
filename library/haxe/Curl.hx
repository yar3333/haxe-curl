package haxe;

class Curl 
{
	public static function get(url:String) : String
	{
		#if php
		
		var curl = php.Curl.init();
		php.Curl.setopt(curl, php.Curl.CurlOpt.URL, url);
		php.Curl.setopt(curl, php.Curl.CurlOpt.RETURNTRANSFER, true);
		var response = php.Curl.exec(curl);
		php.Curl.close(curl);		
		
		#elseif neko
		
		var curl = new neko.Curl(url);
		curl.action();
		var response = curl.get_data();
		
		#end
		
		return response;
	}
	
	public static function post(url:String, data:Dynamic) : String
	{
		#if php
		
		var curl = php.Curl.init();
		php.Curl.setopt(curl, php.Curl.CurlOpt.URL, url);
		php.Curl.setopt(curl, php.Curl.CurlOpt.RETURNTRANSFER, true);
		php.Curl.setopt(curl, php.Curl.CurlOpt.POST, true);
		php.Curl.setopt(curl, php.Curl.CurlOpt.POSTFIELDS, data);
		var response = php.Curl.exec(curl);
		php.Curl.close(curl);		
		
		#elseif neko
		
		var curl = new neko.Curl(url);
		
		// TODO: post data
		
		curl.action();
		var response = curl.get_data();
		
		#end
		
		return response;
	}
}
