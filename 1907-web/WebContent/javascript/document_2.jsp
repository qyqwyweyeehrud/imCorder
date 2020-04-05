<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>document_2</title>
<style>
	form select{
		width:150px;
	}
</style>
</head>
<body>
	<h3>영화예매 동적 선택</h3>
	<form name='frm'>
		<label>지역</label>
		<select name='cty' id='cty' size='8'></select>
		<label>영화관</label>
		<select name='zone' id='zone' size='8'></select>
		<label>영화</label>
		<select name='cnt' id='cnt' size='8'></select>
	</form>
	<script>
		function init(){//초기값 생성
			let icty = ['안양','우한'];
			let izone = [
				['안양역 롯데시네마','일번가CGV'],
				['우한CGV','우한MEGABOX']
			];
			let icnt =[
				['말아톤','범죄도시','삼국지','김지영','시동','겨울왕국2'],
				['어벤져스','스파이터맨','제미니맨','반지의 제왕']
			];
			
			let cty = document.getElementById('cty');
			let zone = document.getElementById('zone');
			let cnt = document.getElementById('cnt');
			
			//국가 항목에 option 추가 //첫번째방법
			for(i=0;i<icty.length;i++){
				var op = document.createElement('option');
				var txt = document.createTextNode(icty[i]);
				op.setAttribute('value',icty[i]);
				op.appendChild(txt);
				cty.appendChild(op);
			}
			
			
			//국가선택이 되면 지역 변경//두번째방법
			cty.onchange = function(){
				let index = cty.selectedIndex;
				zone.length=0;//옵션 초기화
				for(i=0 ; i<izone[index].length ; i++){
					var txt = izone[index][i];
					zone.options[i]=new Option(txt,txt);
				}
				zone.onchange();
			}
			//영화관이 선택되면 영화변경 
			zone.onchange = function(){
				let index = zone.selectedIndex;
				cnt.length=0;//옵션 초기화
				for(i=0 ; i<icnt[index].length ;i++){
					var txt = icnt[index][i];
					cnt.options[i] = new Option(txt,txt);
				}
			}
			cty.onchange();
			zone.onchange();
		}
		init();
	</script>
</body>
</html>





















