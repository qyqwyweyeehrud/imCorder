/**
 * static.js
 * public 폴더안에 있는 파일들을 static형으로 로드
 * 
 */
var express = require('../begin/node_modules/express');
var app = express();

app.use(express.static('public'));
app.use(function(req,resp){
	console.log('hello static');
	resp.send("<h4>HELLO STATIC!!</h4>");
})
app.listen(9991,function(){
	console.log('http://127.0.0.1:9991');
})