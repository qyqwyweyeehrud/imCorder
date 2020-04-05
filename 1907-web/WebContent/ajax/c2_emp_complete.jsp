<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_complete</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	#sel{
		width:500px;
	}
	.sel{
		display: none;
	}
</style>
</head>
<body>
	<h3>사원정보 조회(자동완성 기능)</h3>
	<form name='frm' id='frm'>
		<input type='text' name='findStr' id='findStr' value='a' tabindex="10"/>
		<input type='button' name='btn' id='btn' value='검색'/>
		<br/>
		<select name='sel' id='sel' size='20' class='sel' tabindex="11">
		</select>
	</form>
	
	<script>
		$('#btn').click(function(){
			$('#findStr').keyup();
		});
	
		$('#findStr').keyup(function(){
			let param = $('#frm').serialize();
			$.getJSON('a7_emp_select_result.jsp' , param , function(json){
				frm.sel.length=0;
				if(json.length>0){
					$('#sel').removeClass();
				}else{
					$('#sel').addClass('sel');
				}
				for(i=0 ; i<json.length ; i++){
					let d = json[i];
					let op = new Option(d.id + "(" + d.mname +")" ,d.mname);
					frm.sel.options[i] = op;
				}
				frm.sel.selectedIndex=0;
			});
		});
		$('#sel').dblclick(function(){
			let temp = $(this).val();
			$('#findStr').val(temp);
		});
	</script>
</body>
</html>