<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>글쓰기</h3>
	<form name='brd'>
		<label>작성자</label>
		<input type='text' name='mName'/><br/>
		<label>제목</label>
		<input type='text' name='subject'/><br/>
		<textarea rows='10' cols='70' name='content'></textarea><br/>
		<input type='button' name='btnSave' value='저장'/>
		<input type='button' name='btnSelect' value='목록'/>
	</form>
	<script>
		function Member(serial,mDate,mName,subject,content){
			this.serial = serial;
			this.mDate = mDate;
			this.mName = mName;
			this.subject = subject;
			this.content = content;
		}
		Member.prototype.toJSON = function(){
			let str = {
				"serial":this.serial,
				"mDate":this.mDate,
				"mName":this.mName,
				"subject":this.subject,
				"content":this.content
			};
			return str;
		}
		Member.prototype.setSerial = function(serial){this.serial=serial;}
		//오늘 날짜 가져오기
		let d = new Date();
		let year = d.getFullYear();
		let mon = d.getMonth()+1;
		let nal = d.getDay();
		
		//홈페이지에서 값을 가져와 변수에담기
		let se = 1;
		let da = year + "년" + mon + "월" + nal + "일";
		let array =[];
		
		brd.btnSave.onclick = function(){
			let m = new Member(se,da,brd.mName.value,brd.subject.value,brd.content.value);
			array.push(m.toJSON());
			localStorage.setItem("mkey",JSON.stringify(array));
			se++
			m.setSerial(se);
		}
	</script>
</body>
</html>
























