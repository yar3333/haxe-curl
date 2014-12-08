#include <stdlib.h>
#include <string.h>

#include <curl/curl.h>
#include <curl/easy.h>
#include <neko.h>

#define STRINGIFY(x) #x

#define val_match_or_fail(v, t) if(!val_is_##t(v)) { failure("Excepted "#t" in `"__FILE__"' at line "STRINGIFY(__LINE__)"."); }

DEFINE_KIND(k_curl_handle);

struct MemoryStruct
{
	char *memory;
	size_t size;
};

static size_t writeMemoryCallback(void *contents, size_t size, size_t nmemb, void *userp)
{
	size_t realsize = size * nmemb;
	struct MemoryStruct *mem = (struct MemoryStruct *)userp;
 
	mem->memory = (char *)realloc(mem->memory, mem->size + realsize + 1);
	if (mem->memory == NULL) 
	{
		/* out of memory! */ 
		printf("not enough memory (realloc returned NULL)\n");
		exit(EXIT_FAILURE);
	}
 
	memcpy(&(mem->memory[mem->size]), contents, realsize);
	mem->size += realsize;
	mem->memory[mem->size] = 0;
 
	return realsize;
}

value hxcurl_close(value curl_handle)
{	
	val_check_kind(curl_handle, k_curl_handle);
	curl_easy_cleanup(val_data(curl_handle));
	return val_null;
}
DEFINE_PRIM(hxcurl_close, 1);

value hxcurl_init()
{
	CURL *curl_handle = curl_easy_init();
	value ak_curl = alloc_abstract(k_curl_handle, curl_handle);
	return ak_curl;
}
DEFINE_PRIM(hxcurl_init, 0);

struct SetOptForm
{
	struct curl_httppost *formpost;
	struct curl_httppost *lastptr;
};

void setOptFormField(value v, field f, void *_form)
{
	struct SetOptForm *form = (struct SetOptForm*)_form;
	
	if (val_is_string(v))
	{
		char *s = val_string(v);
		if (*s != '@')
		{
			curl_formadd(
				 &(form->formpost), &(form->lastptr)
				,CURLFORM_COPYNAME, val_string(val_field_name(f))
				,CURLFORM_COPYCONTENTS, s
				,CURLFORM_END
			);
		}
		else
		{
			curl_formadd(
				 &(form->formpost), &(form->lastptr)
				,CURLFORM_COPYNAME, val_string(val_field_name(f))
				,CURLFORM_FILE, s + 1
				,CURLFORM_END
			);
		}
	}
}

value hxcurl_setopt(value curl_handle, value opt, value v)
{
	int i;
	struct curl_slist *headers = NULL;
	value *strings;
	
	val_check_kind(curl_handle, k_curl_handle);
	val_match_or_fail(opt, int);
	
	if (val_int(opt) == CURLOPT_POSTFIELDS)
	{
		struct SetOptForm form;
		form.formpost = NULL;
		form.lastptr = NULL;

		val_match_or_fail(v, object);
		
		val_iter_fields(v, setOptFormField, &form);

		curl_easy_setopt(val_data(curl_handle), CURLOPT_HTTPPOST, form.formpost);
	}
	else
	if (val_int(opt) == CURLOPT_HTTPHEADER)
	{
		if (val_is_array(v))
		{
			strings	= val_array_ptr(v);

			for (i=0; i<val_array_size(v); i++)
			{
				headers = curl_slist_append(headers, val_string(strings[i]));
			}
			curl_easy_setopt(val_data(curl_handle), CURLOPT_HTTPHEADER, headers);
		}
		else
		{
			printf("hxcurl_setopt HTTPHEADER: Array<String> expected.\n");
		}
	}
	else
	{
		if (val_is_string(v))
		{
			curl_easy_setopt(val_data(curl_handle), (CURLoption)val_int(opt), val_string(v));
		}
		else
		if (val_is_int(v))
		{
			curl_easy_setopt(val_data(curl_handle), (CURLoption)val_int(opt), val_int(v));
		}
		else
		if (val_is_bool(v))
		{
			curl_easy_setopt(val_data(curl_handle), (CURLoption)val_int(opt), val_bool(v));
		}
		else
		{
			printf("hxcurl_setopt: TYPE NOT SUPPORTED!\n");
		}
	}

	return val_true;
}
DEFINE_PRIM(hxcurl_setopt, 3);

value hxcurl_getinfo(value curl_handle, value opt)
{
	int option;
	value ret;

	val_check_kind(curl_handle, k_curl_handle);
	val_match_or_fail(opt, int);

	option = val_int(opt);
	switch (option & CURLINFO_TYPEMASK)
	{
		case CURLINFO_STRING:
		{
			char * vchar;
			curl_easy_getinfo(val_data(curl_handle), option, &vchar);
			ret = alloc_string(vchar);
			break;
		}
		case CURLINFO_LONG:
		{
			long vlong;
			curl_easy_getinfo(val_data(curl_handle), option, &vlong);
			ret = alloc_float(vlong);
			break;
		}
		case CURLINFO_DOUBLE:
		{
			double vdouble;
			curl_easy_getinfo(val_data(curl_handle), option, &vdouble);
			ret = alloc_int(vdouble);
			break;
		}
		default: {
			ret = alloc_string("hxcurl_getinfo: BAD_CURL_INFO");
			val_throw(ret);
			break;
		}
	}
	return ret;
}
DEFINE_PRIM(hxcurl_getinfo, 2);

value hxcurl_exec(value curl_handle)
{
	struct MemoryStruct chunk;
	value r;
	
	val_check_kind(curl_handle, k_curl_handle);
	
	chunk.memory = (char *)malloc(1);
	chunk.size = 0;
	curl_easy_setopt(val_data(curl_handle), CURLOPT_WRITEFUNCTION, writeMemoryCallback);
	curl_easy_setopt(val_data(curl_handle), CURLOPT_WRITEDATA, (void *)&chunk);
	curl_easy_perform(val_data(curl_handle));

	chunk.memory = (char *)realloc(chunk.memory, chunk.size + 1);
	chunk.memory[chunk.size] = '\0';
	r = alloc_string(chunk.memory);
	free(chunk.memory);
	return r;
}
DEFINE_PRIM(hxcurl_exec, 1);
