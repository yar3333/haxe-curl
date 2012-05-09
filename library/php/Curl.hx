/*
Copyright (c) 2010 Tiana RAZAFINDRALAMBO

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

package php;

class CurlInfo
{
	public static inline var HTTP_CODE = "CURLINFO_HTTP_CODE";
	public static inline var EFFECTIVE_URL = "CURLINFO_HTTP_CODE";
	public static inline var FILETIME = "CURLINFO_FILETIME";
	public static inline var TOTAL_TIME = "CURLINFO_TOTAL_TIME";
	public static inline var NAMELOOKUP_TIME = "CURLINFO_NAMELOOKUP_TIME";
	public static inline var CONNECT_TIME = "CURLINFO_CONNECT_TIME";
	public static inline var PRETRANSFER_TIME = "CURLINFO_PRETRANSFER_TIME";
	public static inline var STARTTRANSFER_TIME = "CURLINFO_STARTTRANSFER_TIME";
	public static inline var REDIRECT_TIME = "CURLINFO_REDIRECT_TIME";
	public static inline var SIZE_UPLOAD = "CURLINFO_SIZE_UPLOAD";
	public static inline var SIZE_DOWNLOAD = "CURLINFO_SIZE_DOWNLOAD";
	public static inline var SPEED_DOWNLOAD = "CURLINFO_SPEED_DOWNLOAD";
	public static inline var HEADER_SIZE = "CURLINFO_HEADER_SIZE";
	public static inline var HEADER_OUT = "CURLINFO_HEADER_OUT";
	public static inline var REQUEST_SIZE = "CURLINFO_REQUEST_SIZE";
	public static inline var SSL_VERIFYRESULT = "CURLINFO_SSL_VERIFYRESULT";
	public static inline var CONTENT_LENGTH_DOWNLOAD = "CURLINFO_CONTENT_LENGTH_DOWNLOAD";
	public static inline var CONTENT_LENGTH_UPLOAD = "CURLINFO_CONTENT_LENGTH_UPLOAD";
	public static inline var CONTENT_TYPE = "CURLINFO_CONTENT_TYPE";
}

class CurlOpt
{
	public static inline var AUTOREFERER = "CURLOPT_AUTOREFERER";
	public static inline var BINARYTRANSFER = "CURLOPT_BINARYTRANSFER";
	public static inline var COOKIESESSION = "CURLOPT_COOKIESESSION";
	public static inline var CRLF = "CURLOPT_CRLF";
	public static inline var DNS_USE_GLOBAL_CACHE = "CURLOPT_DNS_USE_GLOBAL_CACHE";
	public static inline var FAILONERROR = "CURLOPT_FAILONERROR";
	public static inline var FILETIME = "CURLOPT_FILETIME";
	public static inline var FOLLOWLOCATION = "CURLOPT_FOLLOWLOCATION";
	public static inline var FORBID_REUSE = "CURLOPT_FORBID_REUSE";
	public static inline var FRESH_CONNECT = "CURLOPT_FRESH_CONNECT";
	public static inline var FTP_USE_EPRT = "CURLOPT_FTP_USE_EPRT";
	public static inline var FTP_USE_EPSV = "CURLOPT_FTP_USE_EPSV";
	public static inline var FTPAPPEND = "CURLOPT_FTPAPPEND";
	public static inline var FTPASCII = "CURLOPT_FTPASCII";
	public static inline var FTPLISTONLY = "CURLOPT_FTPLISTONLY";
	public static inline var HEADER = "CURLOPT_HEADER";  
	public static inline var HTTPGET = "CURLOPT_HTTPGET";
	public static inline var HTTPPROXYTUNNEL = "CURLOPT_HTTPPROXYTUNNEL";
	public static inline var MUTE = "CURLOPT_MUTE";
	public static inline var NETRC = "CURLOPT_NETRC";
    public static inline var NOBODY = "CURLOPT_NOBODY";
	public static inline var NOPROGRESS = "CURLOPT_NOPROGRESS";
	public static inline var NOSIGNAL = "CURLOPT_NOSIGNAL";
	public static inline var POST = "CURLOPT_POST";
	public static inline var PUT = "CURLOPT_PUT";
	public static inline var RETURNTRANSFER = "CURLOPT_RETURNTRANSFER";
	public static inline var SSL_VERIFYPEER = "CURLOPT_SSL_VERIFYPEER";
	public static inline var TRANSFERTEXT = "CURLOPT_TRANSFERTEXT";
	public static inline var UNRESTRICTED_AUTH = "CURLOPT_UNRESTRICTED_AUTH";
	public static inline var UPLOAD = "CURLOPT_UPLOAD";
	public static inline var VERBOSE = "CURLOPT_VERBOSE";
	public static inline var BUFFERSIZE = "CURLOPT_BUFFERSIZE";
	public static inline var CLOSEPOLICY = "CURLOPT_CLOSEPOLICY";
	public static inline var CONNECTTIMEOUT = "CURLOPT_CONNECTTIMEOUT";
	public static inline var CONNECTTIMEOUT_MS = "CURLOPT_CONNECTTIMEOUT_MS";
	public static inline var DNS_CACHE_TIMEOUT = "CURLOPT_DNS_CACHE_TIMEOUT";
	public static inline var FTPSSLAUTH = "CURLOPT_FTPSSLAUTH";
	public static inline var HTTP_VERSION = "CURLOPT_HTTP_VERSION";
	public static inline var HTTPAUTH = "CURLOPT_HTTPAUTH";
	public static inline var INFILESIZE = "CURLOPT_INFILESIZE";
	public static inline var LOW_SPEED_LIMIT = "CURLOPT_LOW_SPEED_LIMIT";
	public static inline var LOW_SPEED_TIME = "CURLOPT_LOW_SPEED_TIME";
	public static inline var MAXCONNECTS = "CURLOPT_MAXCONNECTS";
	public static inline var MAXREDIRS = "CURLOPT_MAXREDIRS";
	public static inline var PORT = "CURLOPT_PORT";
	public static inline var PROTOCOLS = "CURLOPT_PROTOCOLS";
	public static inline var PROXYAUTH = "CURLOPT_PROXYAUTH";
	public static inline var PROXYPORT = "CURLOPT_PROXYPORT";
	public static inline var PROXYTYPE = "CURLOPT_PROXYTYPE";
	public static inline var REDIR_PROTOCOLS = "CURLOPT_REDIR_PROTOCOLS";
	public static inline var RESUME_FROM = "CURLOPT_RESUME_FROM";
	public static inline var SSL_VERIFYHOST = "CURLOPT_SSL_VERIFYHOST";
	public static inline var SSLVERSION = "CURLOPT_SSLVERSION";
	public static inline var TIMECONDITION = "CURLOPT_TIMECONDITION";
	public static inline var TIMEOUT = "CURLOPT_TIMEOUT";
	public static inline var TIMEOUT_MS = "CURLOPT_TIMEOUT_MS";
	public static inline var TIMEVALUE = "CURLOPT_TIMEVALUE";
	public static inline var CAINFO = "CURLOPT_CAINFO";
	public static inline var CAPATH = "CURLOPT_CAPATH";
	public static inline var COOKIE = "CURLOPT_COOKIE";
	public static inline var COOKIEFILE = "CURLOPT_COOKIEFILE";
	public static inline var COOKIEJAR = "CURLOPT_COOKIEJAR";
	public static inline var CUSTOMREQUEST = "CURLOPT_CUSTOMREQUEST";
	public static inline var EGDSOCKET = "CURLOPT_EGDSOCKET";
	public static inline var ENCODING = "CURLOPT_ENCODING";
	public static inline var FTPPORT = "CURLOPT_FTPPORT";
	public static inline var INTERFACE = "CURLOPT_INTERFACE";
	public static inline var KRB4LEVEL = "CURLOPT_KRB4LEVEL";
	public static inline var POSTFIELDS = "CURLOPT_POSTFIELDS";
	public static inline var PROXY = "CURLOPT_PROXY";
	public static inline var PROXYUSERPWD = "CURLOPT_PROXYUSERPWD";
	public static inline var RANDOM_FILE = "CURLOPT_RANDOM_FILE";
	public static inline var RANGE = "CURLOPT_RANGE";
	public static inline var REFERER = "CURLOPT_REFERER";
	public static inline var SSL_CIPHER_LIST = "CURLOPT_SSL_CIPHER_LIST";
	public static inline var SSLCERT = "CURLOPT_SSLCERT";
	public static inline var SSLCERTPASSWD = "CURLOPT_SSLCERTPASSWD";
	public static inline var SSLCERTTYPE = "CURLOPT_SSLCERTTYPE";
	public static inline var SSLENGINE = "CURLOPT_SSLENGINE";
	public static inline var SSLENGINE_DEFAULT = "CURLOPT_SSLENGINE_DEFAULT";
	public static inline var SSLKEY = "CURLOPT_SSLKEY";
	public static inline var SSLKEYPASSWD = "CURLOPT_SSLKEYPASSWD";
	public static inline var SSLKEYTYPE = "CURLOPT_SSLKEYTYPE";
	public static inline var URL = "CURLOPT_URL";
	public static inline var USERAGENT = "CURLOPT_USERAGENT";
	public static inline var USERPWD = "CURLOPT_USERPWD";
	public static inline var HTTP200ALIASES = "CURLOPT_HTTP200ALIASES";
	public static inline var HTTPHEADER = "CURLOPT_HTTPHEADER";
	public static inline var POSTQUOTE = "CURLOPT_POSTQUOTE";
	public static inline var QUOTE = "CURLOPT_QUOTE";
	public static inline var FILE = "CURLOPT_FILE";
	public static inline var INFILE = "CURLOPT_INFILE";
	public static inline var STDERR = "CURLOPT_STDERR";
	public static inline var WRITEHEADER = "CURLOPT_WRITEHEADER";
	public static inline var HEADERFUNCTION = "CURLOPT_HEADERFUNCTION";
	public static inline var PASSWDFUNCTION = "CURLOPT_PASSWDFUNCTION";
	public static inline var PROGRESSFUNCTION = "CURLOPT_PROGRESSFUNCTION";
	public static inline var READFUNCTION = "CURLOPT_READFUNCTION";
	public static inline var WRITEFUNCTION = "CURLOPT_WRITEFUNCTION";
}

class Curl 
{ 		
	public static inline function init(url:String = null):String
	{		
		return untyped __call__("curl_init", url);
	}
	public static inline function errno(resource:String):Int
	{
		return untyped __call__("curl_errno", resource);
	}
	
	public static inline function copy_handle(resource:String):String
	{
		return untyped __call__("curl_copy_handle", resource);
	}
	public static inline function close(resource:String)
	{
		return untyped __call__("curl_close", resource);
	}	 
	
	public static inline function exec(resource:String):String
	{ 
		var val = untyped __call__("curl_exec", resource); 
		return ((!val)?null:(cast val));
	}
		
	public static inline function setopt(resource:String, option:String, value:Dynamic):Bool
	{
		return untyped __call__("curl_setopt", resource, untyped __php__(option), value);
	}
	
	public static inline function getinfo(resource:String):Dynamic
	{
		return untyped __call__("curl_getinfo", resource);
	}
	
	public static inline function error(resource:String):String
	{
		return untyped __call__("curl_error", resource);
	}
	public static inline function multi_add_handle(resourceA:String, resourceB:String)
	{
		return untyped __call__("curl_multi_add_handle", resourceA, resourceB);
	}	
	public static inline function multi_close(resource:String)
	{	
		return untyped __call__("curl_multi_close", resource);
	}
	public static inline function multi_exec(resource:String, still_running:Int=null)
	{
		return untyped __call__("curl_multi_exec", resource, still_running);
	}
	public static inline function multi_getcontent(resource:String)
	{
		return untyped __call__("curl_multi_getcontent", resource);
	}
	public static inline function multi_info_read(resource:String, msgs_in_queue:Int = null)
	{
		return untyped __call__("curl_multi_info_read", resource, msgs_in_queue);
	}
	public static inline function multi_init()
	{
		return untyped __call__("curl_multi_init");
	}
	public static inline function multi_remove_handle(resourceA:String, resourceB:String)
	{
		return untyped __call__("curl_multi_init", resourceA, resourceB);
	}
	public static inline function multi_select(resource:String, timeout:Float = 1.0)
	{
		return untyped __call__("curl_multi_select", resource, timeout);
	}
	public static inline function multi_setopt_array(resource:String, array:Dynamic)
	{
		return untyped __call__("curl_multi_setopt_array", resource, array);
	}
}
