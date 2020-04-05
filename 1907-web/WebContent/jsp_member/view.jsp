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
	<h3>상세보기</h3>
	<form id='frm' name='frm' method='post'>
		<span>아이디</span>
		<input type='text' name='mId' value='${vo.mId }'/><br/>
		<span>비밀번호</span>
		<input type='password' name='pwd' value='${vo.pwd }'/><br/>
		<span>등록일</span>
		<input type='date' name='rDate' value='${vo.rDate }'/><br/>
		<span>이름</span>
		<input type='text' name='mName' value='${vo.mName }'/><br/>
		<span>학년</span>
		<select name='grade' id='grade'>
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
		<input type="file" name='photo' id='photo' /><br/>
		
		<c:choose>
			<c:when test='${empty vo.photos }'><!-- photos라고하는 list에 데이터가 하나도 없다면? empty가되겟지 -->
				<img width='200px' height='300px' id = 'pre' src='./upload/logban.jpg'/>
			</c:when>
			<c:otherwise>
				<c:forEach var='item' items='${vo.photos }'>
					<img width='200px' height='300px' id = 'pre' src='./upload/${item.sysFile }'/>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		<input type='hidden' name='findStr' id='findStr' value='${param.findStr }'/>
		<input type='hidden' name='nowPage' id='nowPage' value='${param.nowPage }'/>
		<input type='hidden' name='pw' id='pw'/>
	</form>
	<input type='button' id='btnModify' name='btnModify' value='수정하기'/>
	<input type='button' id='btnDelete' name='btnDelete' value='삭제하기'/>
	
	<script>
	$('#btnSelect').click(function(){
		$('#frm').attr('action','select.mm').submit();
	});
	$('#btnModify').click(function(){
		$('#frm').attr('action','modify.mm').submit();
	});
	$('#btnDelete').click(function(){
		let pw = prompt("암호를 입력해주세요","PW");
		$('#pw').val(pw);
		$('#frm').attr('action','deleteR.mm').submit();
		
	});
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
	$('#grade option').each(function(){
	    if($(this).val()=="${vo.grade}"){
	      $(this).attr("selected","selected"); // attr적용안될경우 prop으로 
	    }

	});
		
	</script>
</body>
</html>