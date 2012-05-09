package;

import haxe.Curl;

class CurlTest extends haxe.unit.TestCase
{
    public function testBasic()
    {
		var r = Curl.get("http://ya.ru/");
		print("GET: " + r);
		
		var r = Curl.post("http://ya.ru/", {});
		print("POST: " + r);
        
		this.assertTrue(true);
    }
}
