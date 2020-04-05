<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax_in_jquery</title>
<script src='../lib/jquery-3.4.1.js'></script>
<script src='member.js'></script>
</head>
<body>
	<h3>ajax in jquery</h3>
	<input type='button' value='$.get' id='btnGet'/>
	<input type='button' value='$.post' id='btnPost'/>
	<input type='button' value='$.json' id='btnJson'/>
	<input type='button' value='$.load' id='btnLoad'/>
	<input type='button' value='$.ajax' id='btnAjax'/>
	<form name='frm' id='frm'>
		<input type='text' name='findStr' id='findStr' value='a'/>
		<input type='text' name='ea' value='1500'/>
		<input type='text' name='price' value='500'/>
	</form>
	<h3>Result</h3>
	<div id='result'></div>
	
	<script>
		$('#btnGet').click(function(){
			let findStr = $('#findStr').val();
			$.get('a7_emp_select_result.jsp?findStr='+findStr,function(data){//저기에 get타입으로 보내고 / 성공하면data를 가져옴 /따로 지정안하면text타입이다
				$('#result').text(data);
			});
		});
		
		$('#btnPost').click(function(){
			let param = $('#frm').serialize();
			console.log(param);
			$.post('a7_emp_select_result.jsp',param,function(data){
				$('#result').text(data);
			});
		});
		
		$('#btnJson').click(function(){
			let param = $('#frm').serialize();
			$.getJSON('a7_emp_select_result.jsp',param,function(json){//$.getJSON이 JSON.parse까지 해준다
				let str ='';
				for(d of json){
					str +='<li>아이디 :' + d.id +'<li>이름 : ' + d.mname + '<hr/>';
				}
				$('#result').html(str);
			});
		});
		
		$('#btnLoad').click(function(){//겟,포스트 를하게되면 처리된 결과를 어디에 표시해달라고 써야되지만 /load는 매직이라서 앞에서써버리면된다
			$('#result').load("member_insert.jsp");
		});
		
		$('#btnAjax').click(function(){
			let param = $('#frm').serialize();
			$.ajax({
				url		:'a7_emp_select_result.jsp',
				type	:'get',
				data	:param, // 수신된 데이터 타입
				dataType:'json',
				success	: function(json){//성공 했을때
					let str ='';
					for(d of json){
						str +='<li>아이디 :' + d.id +'<li>이름 : ' + d.mname + '<hr/>';
					}
					$('#result').html(str);
				}
			});
		});
	</script>
</body>
</html>