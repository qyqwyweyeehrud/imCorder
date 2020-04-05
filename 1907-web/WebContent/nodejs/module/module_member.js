/**
 * 회원 관리에 해당하는 함수들을 모듈로 개발하여 제공하고자 한다,
module_member.js 파일에 모듈을 만드시오
Data(id,name,phone,address)
input(Data) -> 배열에 저장
output() -> 배열에 저장된 자료를 화면에 출력
select(id) -> id에 해당하는 회원 정보만을 화면에 출력

member.js(실핼파일)
let mm = require('./module_member');
mm.input(....);mm.input(....);mm.input(....);mm.input(....);
mm.select(1);
mm.output();
 */

let exp = {};
exp.array=[];
exp.data = function(id,name,phone,address){
	this.id = id;
	this.name = name;
	this.phone = phone;
	this.address = address;
}

exp.input = function(id,name,phone,address){
	let d1 = new exp.data(id,name,phone,address);
	exp.array.push(d1);
}
exp.output = function(){
	console.log('output ---------------------------------');
	for(var d of exp.array){
		console.log('%s \t %s \t %s \t %s',d.id , d.name , d.phone , d.address);
	}
}
exp.select = function(id){
	console.log('니가 찾아달라던 id:'+id+' ---------------------------------');
	for(let i=0;i<exp.array.length;i++){
		let a = exp.array[i];
		if(a.id==id){
			console.log('%s \t %s \t %s \t %s',a.id , a.name , a.phone , a.address);
		}
	}
}

module.exports = exp;