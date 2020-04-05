/**
 * data_type.js
 * date:2020.02.26
 */
var express = require('../begin/node_modules/express');
var app = express();
app.use(express.static('public'));

var items =[
	{'name' : '우류' , 'price':2000},
	{'name' : '홍차' , 'price':5000},
	{'name' : '커피' , 'price':9000}
]

app.all('/html',function(req,reps){
	var output ='';
	output += '<!DOCTYPE html>';
	output += '<html>';
	output += '<head>';
	output += '	<title>Data HTML</title>';
	output += '</head>';
	output += '<body>';
	for(d of items){
		output += '<div>';
		output += '		<h1>' + d.name + '</h1>';
		output += '		<h2>' + d.price + '</h2>';
		output += '</div>';
	};
	output += '</body>';
	output += '</html>';
	reps.send(output);
});
app.all('/json',function(req,reps){
	reps.send(items);
})
app.all('/xml',function(req,reps){
	var output ='';
	output += '<?xml version="1.0" encoding="UTF-8"?>';
	output += '<products>';
	for( d of items ){
		output += '<product>';
		output += '		<name>' + d.name + '</name>';
		output += '		<price>' + d.price + '</price>';
		output += '</product>';
	};
	output += '</products>';
	reps.type('text/xml');
	reps.send(output);
});
//http://127.0.0.1:9991/parameter?findStr=홍차
app.use('/parameter',function(req,resp){
	let findStr = req.param('findStr');//java의 request.getParameter('findStr')와 같다
	for(d of items){
		if(d.name == findStr){
			resp.send('단가 :'+d.price);
		}
	}
});
app.listen(9991,function(){
	console.log('http://127.0.0.1:9991/[html|json|xml]');
});