#include <stdlib.h>
#include <curl/curl.h>
#include <curl/types.h>
#include <curl/easy.h>
#include <neko.h>

#define STRINGIFY(x) #x
#define N2STR(x) STRINGIFY(x)
#define val_match_or_fail(v,t) if(!val_is_##t(v)) { failure("Excepted "#t" in `"__FILE__"' at line "N2STR(__LINE__)"."); }

DEFINE_KIND(k_curl_handle);

value hxcurl_init()
{
	CURL *curl;
	curl = curl_easy_init();
	value ak_curl = alloc_abstract(k_curl_handle, curl);
	val_gc(ak_curl, hxcurl_close);
	return ak_curl;
}
DEFINE_PRIM(hxcurl_init,0);

void hxcurl_close(value curl_handle)
{	
	//val_check_kind(curl_handle, k_curl_handle);
	curl_easy_cleanup(val_data(curl_handle));
}
DEFINE_PRIM(hxcurl_close, 1);

value hxcurl_setopt(value curl_handle, value opt, value url)
{
	val_check_kind(curl_handle, k_curl_handle);
	val_match_or_fail(opt, int);
	curl_easy_setopt(val_data(curl_handle), CURLOPT_URL, val_string(url));
	return val_true;
}
DEFINE_PRIM(hxcurl_setopt, 3);

value hxcurl_exec(value curl_handle)
{
	val_check_kind(curl_handle, k_curl_handle);
	curl_easy_perform(val_data(curl_handle));
	
	return val_null;
}
DEFINE_PRIM(hxcurl_exec, 1);