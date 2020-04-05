<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_select_form</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<style>
	#search{
		width: 1020px;
		height:31px;
	}
	#search form{
		float:right;
	}
	#search form input[type=text]{
		width:910px;
		height:25px;
		border: 2px solid #aaa;
		border-radius:10px;
		text-align: right;
		font-size: 1.5em;
	}
	#search form input[type=button]{
		width:100px;
		height:30px;
		border: 2px solid #aaa;
		border-radius:10px;
		
	}
	#result{
		width: 1020px;
		height:500px;
		overflow:auto;
		border-bottom:0.5px solid #faa;
		
	}
	#non{
		width:1020px;
		height:30px;
	}
	.item{
		
		background-color:#ffa;
		
	}
	.item span{
		text-align:center;
		display:block;
		float:left;
		width:199px;
		
	}
	.item span:first-child {
		background-color:#fcc;
	}
	.item span:nth-child(3) {
		background-color:#fee;
	}
	.item1{
		width:1020;
		overflow: hidden;
	}
	.item1 span{
		background-color:#eee;
		text-align:center;
		display:block;
		float:left;
		border-bottom:0.5px solid #faa;
		width:199px;
		overflow: hidden;
	}
	.item1 span:last-child {
		width:220px;
	}
	
</style>
<body>
	<h3>문자열을 입력받아 employees 테이블에서 사번,급여,성명,급여,부서코드,부서명 을 조회하는 프로그램을 작성하시오 (데이터형식:json)</h3>
	<h3>사원조회</h3>
	<div id ='search'>
		<form name='frm' id='frm'>
			<input type='text' name='findStr' id='findStr'/>
			<input type='button' value='검색' id ='btnfind'/>
		</form>
	</div>
	<div id ='non'></div>
	<div id='header'></div>
	<div id='result'></div>

	<script>
		//엔터키를 누르고나 버튼의 타입이 서브밋이 클릭되면
		$('#frm').submit(function(){
			$('#btnfind').click();
			return false;
		});
	
		let xhr = new XMLHttpRequest();	
	
		$('#btnfind').on('click',function(){
			let v = $('#findStr').val();
			let url ='a7_emp_select_result.jsp?findStr='+v;
			
			
			xhr.open('get',url);
			xhr.send();
			xhr.onreadystatechange = function(){
				if(xhr.status==200 && xhr.readyState==4){
					let temp = xhr.responseText;
					let data = jQuery.parseJSON(temp);
					console.log(data);
					let str1="";
						str1+= "<div class='item1'>"
							+	"<span class='id1'>" + "사원코드" +"</span>"
							+	"<span class='dname1'>" + "급여" + "</span>"
							+	"<span class='mid1'>" + "이름" + "</span>"
							+	"<span class='mid1'>" + "부서코드" + "</span>"
							+	"<span class='mid1'>" + "부서아이디" + "</span>"
							+	"</div>";
					$('#header').html(str1);
					let str="";
					for(let i =0 ; i<data.length ; i++){
						str +=  "<div class='item'>"
							+	"<span class='id'>" + data[i].id +"</span>"
							+	"<span class='dname'>" + data[i].sal + "</span>"
							+	"<span class='mid'>" + data[i].mname + "</span>"
							+	"<span class='mid'>" + data[i].did + "</span>"
							+	"<span class='mid'>" + data[i].dname + "</span>"
							+	"</div>";
					};
					$('#result').html(str);
				}
			}
		});
	</script>
</body>
</html>