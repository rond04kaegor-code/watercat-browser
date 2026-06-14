DDLImport "DDLBrowser";

func main() {
    clear();
    say("WaterCat Browser v1.0");
    
    let html = "<!DOCTYPE html><html><head><meta charset=UTF-8><title>WaterCat</title><style>body{font-family:sans-serif;background:#0a0a1a;color:white;display:flex;align-items:center;justify-content:center;min-height:100vh;margin:0}.box{text-align:center}h1{font-size:60px;background:linear-gradient(135deg,#ff6b6b,#feca57,#48dbfb);-webkit-background-clip:text;-webkit-text-fill-color:transparent}input{padding:15px 25px;font-size:18px;border-radius:30px;border:2px solid #48dbfb;background:#1a1a2e;color:white;width:400px;outline:none}button{background:#48dbfb;color:#0a0a1a;border:none;padding:10px 30px;border-radius:30px;font-size:16px;cursor:pointer;margin:5px}.active{background:#ff6b6b;color:white}</style></head><body><div class=box><h1>🐱 WaterCat</h1><input id=q placeholder=Search... onkeypress='if(event.key===\"Enter\")s()'><br><br><button class=active id=gBtn onclick='e(\"google\")'>Google</button><button id=yBtn onclick='e(\"yandex\")'>Yandex</button><button id=dBtn onclick='e(\"duckduckgo\")'>DuckDuckGo</button><button id=bBtn onclick='e(\"bing\")'>Bing</button></div><script>var ce=\"google\";function s(){var q=document.getElementById(\"q\").value;if(!q)return;var u={google:\"https://google.com/search?q=\",yandex:\"https://yandex.ru/search/?text=\",duckduckgo:\"https://duckduckgo.com/?q=\",bing:\"https://bing.com/search?q=\"};window.location.href=u[ce]+encodeURIComponent(q)}function e(n){ce=n;document.querySelectorAll(\"button\").forEach(function(b){b.classList.remove(\"active\")});document.getElementById(n==\"google\"?\"gBtn\":n==\"yandex\"?\"yBtn\":n==\"duckduckgo\"?\"dBtn\":\"bBtn\").classList.add(\"active\")}</script></body></html>";
    
    write_file("/tmp/watercat.html", html);
    
    let browser = create_browser("WaterCat", "file:///tmp/watercat.html", 1000, 700);
    browser.show();
    browser.run();
}
