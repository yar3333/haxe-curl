package;

import haxe.Curl;

class CurlTest extends haxe.unit.TestCase
{
    public function testBasic()
    {
		var r = Curl.get("http://ya.ru/");
		sys.io.File.saveContent("out-ya.html", r);
		assertTrue(r != null && r != "");
    }
    
    public function testHttps()
    {
		var r = Curl.get("https://google.com");
		sys.io.File.saveContent("out-google.html", r);
		assertTrue(r != null && r != "");
    }
    
    public function testUpload()
    {
		var r = Curl.post("http://localhost/upload.php", { file:"@Main.hx" });
		print("POST: " + r + "\n");
		assertTrue(true);
    }
}
