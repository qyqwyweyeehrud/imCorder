<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array_3_sort</title>
</head>
<body>
	<h3>배열 정렬</h3>
	<script>
		//sort는 문자열 정렬을 해버림 숫자로 정렬을 안함 , 숫자로 정렬되도록 만들어줘야함
		let array1 =[12312,41,25,12,51,123,136,13,1,13,51,35,13];
		let array2 =["q34eqw","qw46eq","qrq6wr","Qw3safsd","w1qe","ewsd25g","wqff2","23"];
		console.log('array1 의 sort전 :' ,array1);
		console.log('array2 의 sort전 :' ,array2);
		array1.sort();
		array2.sort();
		console.log('array1 의 sort후 :' ,array1);
		console.log('array2 의 sort후 :' ,array2);
		
		//오름차 정렬 //내림차 정렬하려면 right-left로 순서를 바꾸면됨
		array1.sort(function(left,right){
			return left-right;	
		});
		console.log('array1 숫자 정렬후 :' ,array1);
		array1.reverse();
		console.log('array1 의 내림차정렬 :' ,array1);
		
		console.log('join:' , array1.join('----->'))//배열과 배열사이에 ,대신에 ----->로 써달라
		
		//OBJECT형 데이터를 배열에 저장한 후 원하는 키로 정렬
		function Data(id, score){
			this.id = id;
			this.score=score;
		}
		let array3 =[];
		array3.push(new Data('1',60));
		array3.push(new Data('17',70));
		array3.push(new Data('4',30));
		array3.push(new Data('26',10));
		array3.push(new Data('9',50));
		array3.push(new Data('3',80));
		
		//id순으로 오름차순 문자열 정렬
		function idSort(obj1 ,obj2){
			let r = (obj1.id>obj2.id)? 1 :-1;
			return r;
			//return id1-id2;		
		}
		console.log('objectSort------------------------');
		console.log('id순으로 문자열 정렬------------------------');
		array3.sort(idSort);
		for(d of array3){
			console.log( d.id +':'+ d.score);
		}
		
		//score순으로 오름차순 숫자 정렬
		function socreSort(obj1,obj2){
			return Number(obj1.score) - Number(obj2.score);
		}
		console.log('score순으로 숫자 정렬------------------------')
		array3.sort(socreSort);
		for(d of array3){
			console.log(d.id +":"+d.score);
		}
		
		//배열 요소 삭제
		for(i=array1.length-1; i>=0 ; i--){//역순으로 돌려야된다.
			if(array1[i]>100){
				array1.splice(i,1);
			}
		}
		console.log('삭제후 :' ,array1);
		
		
		
		
		
		
	</script>

</body>
</html>




















