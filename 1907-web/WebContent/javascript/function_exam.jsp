<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>function_exam</title>
<style>
	#result{
		width:400px;
		height:400px;
		border:1px solid #000;
		padding:20px;
		box-sizing:border-box;
		box-shadow:5px 5px 5px #777;
	}
</style>
</head>
<body>
	<p>
	음식이름을 checkbox로 여려개 만들고 선택된 항목을 div에 출력 하도록 각종 함수 선언 방식을 사용하여 처리하시오
	1.익명형
	1.callback 함수식
	2.함수식
	3.선언적 함수식
	4.화살표 함수식
	</p>
	<form name='frm'>
	<label><input type='checkbox' name='chk' value='짜장면'>짜장면</label>
	<label><input type='checkbox' name='chk' value='짬뽕'>짬뽕</label>
	<label><input type='checkbox' name='chk' value='탕수육'>탕수육</label>
	<label><input type='checkbox' name='chk' value='라조기'>라조기</label>
	<label><input type='checkbox' name='chk' value='단무지'>단무지</label><br/>
	<input type='button' name='btn1' value='익명형'/>
	<input type='button' name='btn2' value='callback'/>
	<input type='button' name='btn3' value='함수식'/>
	<input type='button' name='btn4' value='선언적 함수식'/>
	<input type='button' name='btn5' value='화살표 함수식'/>
	</form>
	<div id='result'></div>
	
	<script>
		let r = document.getElementById('result');
		let food = [];
		let str='';
		//공통 호출 함수
		function Gen(){
			food.length = 0;
			for(v of frm.chk){
				if(v.checked){
					food.push(v.value);
				}
			}
			return food;
		}
		function callBack(){
			str =  'callBack함수:'+Gen();
			r.innerHTML = str;
		}
		//즉시 실행 함수
		//(function{}())
		(function(){
			str =  '즉시실행함수:'+Gen();
			r.innerHTML = str;
		}());
		//익명형 //호이징x
		frm.btn1.onclick = function(){
			str = '익명형 함수:'+Gen();
			r.innerHTML = str;
		}
		//callback //호이징x
		frm.btn2.onclick = callBack;
		//함수식 //펑션을 어떤 변수에 담는 형태
		let func = function(){
			food.length = 0;
			for(v of frm.chk){
				if(v.checked){
					food.push(v.value);
				}
			}
			str='함수식:'+food;
			r.innerHTML =str;
		}
		frm.btn3.onclick = func;
		//선언적 함수식 -- 호이징 되기에 사용 지양
		//호출되는 function Gen{}의 유형이 선언적 함수
		frm.btn4.onclick = function(){
			str = '선언적 함수:'+Gen();
			r.innerHTML = str;
		}
		
		//화살표 함수식 / arrow function
		//let 변수명 = (매개변수) =>{처리내용} --------- 변수에 담고싶다면 변수선언
		//()=>{}
		let arrow = ()=>{
			str='arrow 함수 :' +Gen();
			r.innerHTML = str;
		}
		frm.btn5.onclick = arrow;
		
	</script>
</body>
</html>




















