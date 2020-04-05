/**
 * router.js
 * date:2020-02-26
 * 
 */
var express = require('../begin/node_modules/express');
var app = express();

app.use(express.static('public'));

app.all('/a',function(req,resp){// /a라는 항목이 들어왔을때
	resp.send('<h1>page A</h1>');
})
app.all('/b',function(req,resp){// /b라는 항목이 들어왔을때
	resp.send('<h1>page B</h1>');
})
app.all('/c',function(req,resp){// /c라는 항목이 들어왔을때
	resp.send('<h1>page C</h1>');
})
app.listen(9991,function(){
	console.log('http://127.0.0.1:9991/[a|b|c] 로 가세요');
})