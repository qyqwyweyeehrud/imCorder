<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.mongodb.DBObject"%>
<%@page import="java.util.List"%>
<%@page import="mongo.MongoMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='./lib/jquery-3.4.1.js'></script>
<style>
	
	#title span{
		display : block;
		background-color : #000;
		float : left;
		color: white;
		width: 110px;
		text-align: center;
	}
	#title{
		background-color: #000;
		width:500px;
		height:22px;
	}
	.item span{
		display : block;
		float : left;
		width: 110px;
		border-right: 1px dotted #666;
		text-align: center;
	}
	.item:hover{
		background-color: #000;
	}
	.item{
		width:500px;
		height:22px;
	}
	
</style>
</head>
<body>
	<div id='main'>
		<%
			request.setCharacterEncoding("utf-8");
			String findStr = request.getParameter("findStr");
			if(findStr==null) findStr="";
			MongoMember mm = new MongoMember();//이객체가 생성되는순간 몽고 디비 연결작업을하고 겟디비를사용해서m1907을 선택하고 콜렉션은 멤버를 선택하고 그게 dbc로넘어오면 그 dbc를 가지고 무언가를 할것이다
			List<DBObject> list = mm.select(findStr);
		%>
	<form name='frm' id='frm' method='post'>
		<input type='submit' name='btnInsert' id='btnInsert' value='회원입력'/>
		<input type='text' name='findStr' id='findStr' value='<%=findStr%>'/>
		<input type='submit' value='검색' name='btnFind' id='btnFind'/>
		<input type='hidden' name='mId'/>
	</form>
	</div>
	<div id = 'title'>
		<span class = 'mId'>아이디</span>
		<span class = 'mName'>이름</span>
		<span class = 'rDate'>등록일</span>
		<span class = 'grade'>학년</span>
	</div>
	<div>
		<div id = 'result'>
			<%	
				for(DBObject o : list){
					out.print("<div class = 'item' onclick='view(\"" + o.get("mId") + "\")' >");
					out.print("<span class = 'mId'>" + o.get("mId")+"</span>");
					out.print("<span class = 'mName'>" + o.get("mName")+"</span>");
					out.print("<span class = 'rDate'>" + o.get("rDate")+"</span>");
					out.print("<span class = 'grade'>" + o.get("grade")+"</span>");
					out.print("</div>");
				}
			%>
		</div>
	</div>
	
	<script>
	
	$('#btnInsert').click(function(){
		$('#frm').attr('action','insert.jsp');
	});
	var view =function(mId){
		frm.mId.value=mId;
		frm.method = 'post';
		$('#frm').attr('action','view.jsp').submit();
	}
	
	
	
	
	</script>
</body>
</html>