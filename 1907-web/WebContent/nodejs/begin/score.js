/**
 * Score.js
 */
let array =[];
let Data = function(name,kor,eng){
	this.name = name;
	this.kor = kor;
	this.eng = eng;
	this.tot = this.kor+this.eng;
	this.avg = this.tot/2;
}
let input = function(data){
	let temp = JSON.stringify(data);
	array.push(temp);
}
let output = function(){
	for(d of array){
		let temp = JSON.parse(d);
		console.log('name : %s',temp.name);
		console.log('kor : %d',temp.kor);
		console.log('eng : %d',temp.eng);
		console.log('tot : %d',temp.tot);
		console.log('avg : %d',temp.avg);
		console.log('-----------------');
	}
}
let main = function(args){ //public static void main(String[] arg)
	let d1 = new Data('hong',20,30);
	let d2 = new Data('gong',40,80);
	let d3 = new Data('fong',50,40);
	let d4 = new Data('dong',30,60);
	input(d1);
	input(d2);
	input(d3);
	input(d4);
	output();
}
