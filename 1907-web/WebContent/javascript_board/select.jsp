<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#list{
		cursor: pointer;
		
	}
</style>
</head>
<body>
	<h4>게시판 목록</h4>
	<form name='brd'>
		<input type='text' name='findstr'/>
		<input type='button' name='btnSearch' value='검색'/>
	</form>
	<div id='title'>
		<span class = 'serial'>Number</span>
		<span class = 'subject'>제목</span>
		<span class = 'mName'>작성자</span>
		<span class = 'mDate'>작성일</span>
		<span class = 'hit'>조회수</span>
	</div>
	<div id = 'list'>
		<div class='items' onclick="location.href='view.jsp';">
			<span class = 'serial'>1</span>
			<span class = 'subject'>방가</span>
			<span class = 'mName'>길동이</span>
			<span class = 'mDate'>2020-01-12</span>
			<span class = 'hit'>500</span>
		</div>
	</div>
	<script>
		let list = document.getElementById('list');
		let jsonArray = localStorage.getItem("mkey");
		let arr = JSON.parse(jsonArray);
		
		let hit = 0;
		
		function Member(serial,subject,mName,mDate,hit){
			this.serial = serial;
			this.subject = subject;
			this.mName = mName;
			this.mDate = mDate;
			this.hit = hit;
		}
		
		Member.prototype.toHTML = function(){
			let str = `<div class = 'items' onclick="location.href='view.jsp';">
					 <span>  \${this.serial}  </span>
					 <span>  \${this.subject}  </span>
					 <span>  \${this.mName}  </span>
					 <span>  \${this.mDate}  </span>
					 <span>  \${this.hit}  </span>
					 </div>`;
					
			return str;
		}
		for(i=0 ; i<arr.length ; i++){
			let se = arr[i].serial;
			let su = arr[i].subject;
			let na = arr[i].mName;
			let da = arr[i].mDate;
			let m = new Member(se,su,na,da,hit);
			
			list.innerHTML += m.toHTML();
			
		}
		let equl = [];
		//검색 버튼 클릭시
		brd.btnSearch.onclick = function(){
			//div 초기화
			list.innerHTML = '';
			
			let s = brd.findstr.value;
			//텍스트상자에 값입력되면 검색되버리기
			for(i=0 ; i<arr.length ; i++){
				let se = arr[i].serial+"";
				let su = arr[i].subject;
				let na = arr[i].mName;
				let da = arr[i].mDate;
				if(se.indexOf(s)>-1 || su.indexOf(s)>-1 || na.indexOf(s)>-1 || da.indexOf(s)>-1){
					console.log(se);
					let m2 = new Member(se , su , na , da , hit);
					
					equl.push(m2);
				}
			}
					console.log(equl.length);
			
			for(j=0 ; j<equl.length ; j++){
				list.innerHTML += equl[j].toHTML();
			}
			equl=[];
		}
		//div item클릭시
		brd.list.items.onclick = function(){
			
		}
		
	</script>

</body>
</html>