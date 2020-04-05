/**
 * product.js
 * date : 2020.02.24
 * 입고 자료가 발생되면 자동으로 재고량을 증가시켜 출력하는 프로그램
 * 로컬스토리지 사용(lacalStorage.setItem(key,v),getItem(key))
 */
let products =[];//입고 정보가 저장되는곳
let stock =[];//재고

//npm install node-localstorage 성치후
var LocalStorage = require('node-localstorage').LocalStorage;
localStorage = new LocalStorage('./');

let Data = function(code,codeName,ea,price){
	this.code = code;
	this.codeName = codeName;
	this.ea = ea;
	this.price = price;
	this.amount = this.ea*this.price;
}

let input = function(data){//입고 자료를 배열에 저장한후 code에 해당하는 품목의 재고데이터레 누적 계산
	products.push(data);
	let flag = true;
	
	for(let i=0;i<stock.length;i++){
		let s = stock[i];
		if(s.code==data.code){
			s.ea = Number(s.ea) + Number(data.ea);
			s.amt = Number(s.amount) + Number(data.amount);
			flag = false;
		}
	}
	if(flag){
		let sData = new Data(data.code,data.codeName,data.ea,data.price);
		stock.push(sData);
	}
	/*
	let temp = new Data2(data.code,data.ea);
	console.log(stock.length);
	if(stock.length==0){
		stock.push(temp);
		
	}
	if(stock.length!=0){
		for(i=0;i<stock.length;i++){
			if(stock[i].scode==data.code){
				stock[i].sea = stock[i].sea+data.ea;
				break;
			}
			break;
		}
		for(i=0;i<stock.length;i++){
			if(stock[i].scode!=data.code){
				stock.push(temp);
				break;
			
			}
			break;
		}
		break;
	}
*/
	
	
	
}
let output = function(){//입고 자료를 모두 추력하는
	for(var d of products){
		console.log('%s \t %s \t %s \t %s \t %s',d.code , d.codeName , d.ea.toLocaleString('en') ,d.price.toLocaleString('en'), d.amount.toLocaleString('en'));
	}
	console.log('------------------------');
	for(var s of stock){
		console.log('%s \t %s \t %s \t %s',s.code , s.codeName , s.ea.toLocaleString('en') , s.amount.toLocaleString('en'));
	}
	console.log('------------------------');
	
}
let save = function(){//배열을 문자열(jSON)로 변환하여 로컬스토리지에저장
	let temp = JSON.stringify(products);
	let temp2 = JSON.stringify(stock);
	localStorage.setItem("product",temp);
	localStorage.setItem("stoke",temp2);
}
let read =function(){//localStorage에 있는 값을 배열에 저장
	let temp = localStorage.getItem("product");
	let temp2 = localStorage.getItem("stoke");
	products = JSON.parse(temp);
	stock = JSON.parse(temp2);
	
}

let main = function(argv){
	let p1 = new Data("aaa","새우깡",1000,500);
	let p2 = new Data("aaa","새우깡",1500,500);
	let p3 = new Data("bbb","고구마깡",500,900);
	let p4 = new Data("ccc","감자깡",300,700);
	input(p1);
	input(p2);
	input(p3);
	input(p4);
	
	save();
	
	read();
	
	output();
}

