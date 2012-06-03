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
	public static function request(method:String, url:String, ?data:Dynamic, ?headers:Array<String>) : String
	{
		var curl = NativeCurl.init();
		
		if (data != null && method.toLowerCase() == "get")
		{
			url += url.indexOf("?") >= 0 ? "&" : "?" + Lambda.map(Reflect.fields(data), function(fieldName) { 
				var fieldValue = Reflect.field(data, fieldName);
				return StringTools.urlEncode(fieldName) + "=" + StringTools.urlEncode(fieldValue);
			}).join("&");
		}
		
		NativeCurl.setopt(curl, CurlOpt.URL, url);
		
		#if php
		NativeCurl.setopt(curl, CurlOpt.RETURNTRANSFER, true);
		#end
		
		if (data != null && method.toLowerCase() == "post")
		{
			NativeCurl.setopt(curl, CurlOpt.POST, true);
			NativeCurl.setopt(curl, CurlOpt.POSTFIELDS, data);
		}
		
		if (headers != null)
		{
			NativeCurl.setopt(curl, CurlOpt.HTTPHEADER, headers);
		}
		
		var response = NativeCurl.exec(curl);
		
		NativeCurl.close(curl);		
		
		return response;
	}
	
	public static function get(url:String, ?data:Dynamic, ?headers:Array<String>) : String
	{
		return request("get", url, data, headers);
	}
	
	public static function post(url:String, ?data:Dynamic, ?headers:Array<String>) : String
	{
		return request("post", url, data, headers);
	}
}
