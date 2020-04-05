<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>function_declare</title>
</head>
<body>
	<h3>function declare</h3>
	<h4>익명 함수</h4>
	<script>
		var f = function(){//함수의 이름은 없지만 그 함수가 의미하는건 변수f가 담고있다
			return 'hong';
		}
		console.log(f());
		var f2 = function(a){
			return 'retrurn value:' +a;
		}
		console.log(f2('park'));
	</script>
	
	<h4 id='h4'>callback함수</h4>
	<script>
		let h4 = document.getElementById('h4');
		h4.onmouseover = abc;
		function abc(){
			console.log('h4에 마우스가 올라감');
		}
	</script>
	
	<h4>선언적 함수(hosing이 된다)</h4>
	<script>
		hoi('123');
		function hoi(n){//메모리에 먼저올라가서 호이징된다
			console.log(n);
		}
		hoi('456');
	</script>
	
	<h4>함수적 선언(not hoising)</h4>
	<script>
		let ff = function func(){
			//펑크라는 이름이있지만 이게 f라는 변수에 들어가는 것이다
			console.log('함수적 선언,not hoising');
		}
		ff();
	</script>
	
	<h4>즉시 실행 함수</h4>
	<script>
		( 	function(){
				console.log('즉시 실행된 함수');
			}()
		);
	</script>
	
	<h4>화살표 함수</h4>
	<script>
	//function func2(a,b){return a+b;}
		let func2=(a,b)=>{return a+b;};
		console.log(func2(10,20));
	</script>

</body>
</html>