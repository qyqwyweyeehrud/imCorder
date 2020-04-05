/**
 * data_process.js
 * date:2020.02.26
 * get , post , put , del 타입의 라우터로 데이터 처리
 * 1)서버 구동 확인
 * 	-public/item.html 이 부라우저에 표시되는지
 * 2)전체 데이터 표시확인
 * 3)데이터추가
 * 4)데이터 수정
 * 5)데이터 삭제
 * 데이터 처리결과는 console로 처리
 */
var items =[
	{"name": "우유" , "price":"2000"},
	{"name": "홍차" , "price":"5000"},
	{"name": "커피" , "price":"3000"}
]

var express = require('../begin/node_modules/express');
var bodyParser = require('../begin/node_modules/body-parser');
var app = express();

var methodOverride = require('../begin/node_modules/method-override');

app.use(methodOverride(function(req, res){
  if (req.body && typeof req.body === 'post' && '_method' in req.body) {
    // look in urlencoded POST bodies and delete it
    var method = req.body._method;
    delete req.body._method
    return method
  }
}));


app.use(express.static('public'));
app.use(bodyParser.urlencoded({extended:false}));
//라우팅을 사용해
//전체조회
app.post('/all',function(req,resp){
	let str ='<div id="title"><span class="a">품목</span><span class="b">가격</span></div>';
	for(d of items){
		str +='<div><span class="a">'+d.name + '</span class="b"><span>' + d.price + '</span></div>';
	}
	let css = "<style>#title{background-color:black; color:white;}</style>"
	resp.send(css + str);
});
//품목조회
app.get('/search',function(req,resp){
	let find = req.param('name');
	let msg = '검색결과<br/>';
	for(d of items){
		if(d.name==find){
			msg +='<li>품목 :'+d.name
				+ '<li>단가 :' +d.price;
		}
	}
	resp.send(msg);
	/*
	var id = Number(req.params.id);
	if(isNaN(id)){
		//오류: 잘못된경로
		resp.send({
			error:'숫자를 입력하세요!'
		})
	}else if(items[id]){
		//정상
		resp.send(items[id]);
	}else{
		//오류 : 요소가 없을경우
		resp.send({
			error:'존재하지 않는 데이터 입니다!'
		})
	}
	*/
});
//입력
app.post('/insert',function(req,resp){
	var name = req.body.name;
	var price = req.body.price;
	var item ={
			'name' : name,
			'price' : price
	};
	//데이터를 추가합니다
	items.push(item);
	//응답합니다
	let msg ='<span>데이터가 추가되었습니다'+item.name +item.price;
	resp.send(msg);
});
//수정
app.post('/modify',function(req,resp){
	var name = req.body.name;
	var price = req.body.price;
	
	for(d of items){
		if(d.name==name){
			d.price=price;
		}
	}
	resp.send(name+'의 단가가'+price+'로 수정됫다');
	
});
app.post('/del',function(req,resp){
	var name = req.body.name;
	for(let i=0 ; i<items.length;i++){
		if(items[i].name == name){
			items.splice(i,1);
		}
	}
	resp.send('<font color="red">'+name +'자료가 삭제됨....</font>');
});

app.listen(9991,function(){
	 console.log('http://127.0.0.1:9991 서버가 러닝중...');
});




















