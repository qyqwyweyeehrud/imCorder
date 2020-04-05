/**
 * web server test
 * data: 2020.02.26
 */
var express = require('../begin/node_modules/express');

var app = express();
app.listen(9991,function(){//포트번호,실행이됬을때 function
	console.log('server running at http://127.0.0.1:9991');
})

app.use(function(req,resp){
	resp.send('<h1>하이 방가가가방가르룽룽</h1>');//리스폰스에 센드해라 내가 원하는 데이터를
})