<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>function_field</title>
</head>
<body>
<script>
	let student={
		id : "hong",//속성
		irum : "홍길동",//속성
		getId : function(){
			return this.id;
		},
		getIrum : function(){
			return this.irum;
		},
		setId : function(id){
			this.id = id;
		},
		setIrum : function(irum){
			this.irum = irum;
		}
	}
		console.log("id=",student.getId());
		console.log("irum=",student.getIrum());
		
		student.setIrum('김도경');
		student.setId('kim');
		
		console.log("id=",student.getId());
		console.log("irum=",student.getIrum());
</script>

</body>
</html>