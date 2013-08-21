package;

import haxe.Curl;

class CurlTest extends haxe.unit.TestCase
{
    public function testBasic()
    {
		var r = Curl.get("http://stoloboev.ru/1.txt");
		print("GET: " + r + "\n");
		
		var r = Curl.post("http://stoloboev.ru/upload.php", { file:"@Main.hx" });
		print("POST: " + r + "\n");
        
		this.assertTrue(true);
    }
}
