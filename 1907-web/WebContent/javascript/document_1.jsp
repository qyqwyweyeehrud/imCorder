<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>document_1</title>
</head>
<body>
	<h3>document(I)</h3>
	<script>
		function first(){
			//헤드라인 만들기---------------------------------------------------
			let header = document.createElement('h1');//만든다고 브라우저에 바로뜨는게아님 메모리에만 올라가있음
			let textNode  = document.createTextNode('Hello DOM');
			header.appendChild(textNode);//헤더에 문자열이 들어가있는것이다
			
			document.body.appendChild(header);
			//버튼만들기----------------------------------------------------------
			let btn = document.createElement('input');
			btn.setAttribute('type','button');
			btn.setAttribute('value','버튼');
			btn.style.width='150px';
			btn.style.height='50px';
					
			document.body.appendChild(btn);
			//br 만든기----------------------------------------------------------
			let br = document.createElement('br');
			document.body.appendChild(br);
			//text box(input type='text')---------------------------------------
			let inputbox = document.createElement('input');
			inputbox.setAttribute('type','text');
			inputbox.setAttribute('value','hong');
						
			document.body.appendChild(inputbox);
		}
		first();//onload로 실행안되도 무조건 이함수가 호출되기때문에 onload에서 사용될게 여기다쓰면됨 ,onload는 잘쓰지않음
	</script>

</body>
</html>