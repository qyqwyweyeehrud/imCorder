<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>string 객체</title>
</head>
<body>
	<h3>String 객체</h3>
	<p id ='info'>
		<ol>
			<li>length : 문자열의 길이</li>
			<li>charAt(index) : index위치의 문자</li>
			<li>indexOf(str) , lastIndexOf(str) : str의 위치</li>
			<li>replace(regExp , replacement) : 문자열 변경(정규식)</li>
			<li>split(seperator , limit) : 문자열을 limit의 갯수만큼 분해</li>
			<li>substring(start [,end]) : 문자열 추출</li>
		</ol>
	</p>
	
	<script>
		let str = "abc 가나다 123 다나가";
		console.log("str.length :"+ str.length);
		
		let c = str.charAt(1);
		console.log('str.chartAt(1) :' ,c);
		
		let index1 = str.indexOf('가');
		let index2 = str.lastIndexOf('가');
		console.log('str.indexOf("가"):' , index1);
		console.log('str.lastindexOf("가"):' , index2);
		
		let rep1 = str.replace('가','각');
		let rep2 = str.replace(/가/,'간');//  /는 자체가 문법구조이다 /를쓸때 ""는 쓰지않도록
		let rep3 = str.replace(/가/g,'갇');//g를 사용해야 전부다 바꾼다 g=global
		console.log('rep1 :' ,rep1);
		console.log('rep2 :' ,rep2);
		console.log('rep3 :' ,rep3);
		
		let array = str.split(' ');//쪼개면 반환형은 배열이다
		for(d in array){//in은 index , of 는 value값
			console.log(d + ":" + array[d]);
		}
		
		let s1 = str.substring(0,3);
		console.log("str.substring(0,3):" , s1);
		let s2 = str.substring(11);
		console.log("str.substring(11):" , s2);
		
		let str2 = "881212-1234567";
		//생년 ,생원 , 생일 ,성별을 구별하여 console에 출력
		let y = str2.substring(0,2);
		let m = str2.substring(2,4);
		let n = str2.substring(4,6);
		
		let f = str2.substring(7,8);
		if(f=="1"){
			f = '남자';
		}else if(f=="2"){
			f = '여자';
		}
		console.log(y + "년" + m + "월" + n +"일생"+" 성별:" + f);
	</script>
</body>
</html>


























