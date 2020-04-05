<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>function_declare2</title>
</head>
<body>
	<h3>function_declare2</h3>
	<p id='info'>
	자바 스크립트는 메서드의 중복선언을 하지 못하는 반면, 매개변수의 수를 가변적으로 사용함으로써 오버로딩을 구현한다
	</p>
	<script>
		function Func(a,b,c){
			console.log('a',a);
			console.log('b',b);
			console.log('c',c);
			console.log('----------------------------');
		}
		Func();//abc인식 못함
		Func(1);//a만 인식
		Func(1,2);//ab만 인식
		Func(1,2,3);//abc 모두 인식
		Func(1,2,3,4);//4는 대입될 변수없어서 날라감
		
		// arguments : 파라메터 값을 배열로 저장하고 있는 객체
		function My(){//이런 아규먼트를 사용하는건 공통적으로 사용할 라이브러리를 만드는게 아닌이상은 비추이다.
			console.log('----arguments test----')
			for(x of arguments){
				console.log(x);
			}
		}
		My('a');
		My(123,456);
		My('a',123,'가나다');
	</script>

</body>
</html>