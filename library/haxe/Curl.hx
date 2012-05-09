package haxe;

class Curl 
{
	public static function get(url:String) : String
	{
		if #php
		
		var curl = new php.Curl();
		curl.setopt(php.CurlOpt.URL, serverUrl);
		curl.setopt(php.CurlOpt.RETURNTRANSFER, true);
		var response = curl.exec();
		curl.close();		
		
		#elseif neko
		
		var curl = new neko.Curl(url);
		curl.action();
		var response = curl.get_data();
		
		#end
		
		return response;
	}
	
	public function post(url:String, data:Dynamic) : String
	{
		if #php
		
		var curl = new php.Curl();
		curl.setopt(php.CurlOpt.URL, serverUrl);
		curl.setopt(php.CurlOpt.RETURNTRANSFER, true);
		curl.setopt(php.CurlOpt.POST, true);
		curl.setopt(php.CurlOpt.POSTFIELDS, data);
		var response = curl.exec();
		curl.close();		
		
		#elseif neko
		
		var curl = new neko.Curl(url);
		
		// TODO: post data
		
		curl.action();
		var response = curl.get_data();
		
		#end
		
		return response;
	}
}
