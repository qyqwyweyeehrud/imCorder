<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type='button' id='btnSelect' name='btnSelect' value='목록'/>
	<h3>회원 등록</h3>
	<form id='frm' name='frm' method='post' enctype="multipart/form-data"> <!-- enctype은 이미지도 함께 post하기위해서 작성해야한다 ///하지만   enctype을 사용하면 request.getParameter()를 사용할수 없다!! null일것이다!! -->
		<span>아이디</span>
		<input type='text' name='mId'/><br/>
		<span>비밀번호</span>
		<input type='password' name='pwd'/><br/>
		<span>등록일</span>
		<input type='date' name='rDate'/><br/>
		<span>이름</span>
		<input type='text' name='mName'/><br/>
		<span>학년</span>
		<select name='grade'>
			<option value='1'>1학년</option>
			<option value='2'>2학년</option>
			<option value='3'>3학년</option>
			<option value='4'>4학년</option>
			<option value='5'>5학년</option>
			<option value='6'>6학년</option>
			<option value='7'>7학년</option>
			<option value='8'>8학년</option>
			<option value='9'>9학년</option>
			<option value='10'>10학년</option>
			
		</select><br/>
		<span>사진</span>
		<input type="file" name='photo' id='photo'/><br/>
		<img width='200px' height='300px' id = 'pre'/>
		<input type='text' name='findStr' id='findStr' value='${param.findStr }'/>
		<input type='text' name='nowPage' id='nowPage' value='${param.nowPage }'/>
	</form>
	<input type='button' id='btnSave' name='btnSave' value='입력하기'/>
	<script>
		//데이터 흐름insert = servlet = dao = insertR
		$('#btnSave').click(function(){
			$('#frm').attr('action','insertR.mm').submit();
		});
		$('#btnSelect').click(function(){
			$('#frm').removeAttr('enctype');
			$('#frm').attr('action','select.mm').submit();
		});
		//이미지 프리뷰
		$('#photo').change(function(event){
			let ele = event.target;
			let url = ele.files[0];
				
			let reader = new FileReader();
			reader.readAsDataURL(url);
			
			reader.onload = function(e){
				let img = new Image();//이미지 객체 생성하라!!
				img.src = e.target.result;
				$('#pre').attr('src',img.src);
			}		
		});
	</script>
</body>
</html>