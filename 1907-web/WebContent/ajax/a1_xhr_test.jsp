<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>xhr_test</title>
<style>
	.frame{
		display:inline-block;
		width:300px;
		height:200px;
		border:2px solid #00f;
		overflow: auto;
	}
	table tr:first-child{
		background-color:#ff8;
	}
	.item{
		background-color:#ffa;
	}
	.item span{
		text-align:center;
		display:block;
		float:left;
		border:0.5px dashed #faa;
	}
	.item span:first-child {
		width:30px;
		background-color:#faa;
	}
	.item span:last-child {
		width:30px;
		background-color:#fee;
	}
	.item span:nth-child(2) {
		width:215px;
	}
</style>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<h3>XMLHttpRequest 객체 Test</h3>
	<input type='button' value='ajax실행1' id='btn1'/>
	<input type='button' value='ajax실행2' id='btn2'/>
	<input type='button' value='CSV' id='btn3'/>
	<input type='button' value='XML' id='btn4'/>
	<input type='button' value='JSON' id='btn5'/>
	<p/>
	<div id='div1' class='frame'></div>
	<div id='div2' class='frame'></div>
	<div id='div3' class='frame'></div>
	<div id='div4' class='frame'></div>
	<div id='div5' class='frame'></div>
	
	<script>
		// 현재페이지가 새로고침되지안고 내가 원하는 페이지에 만들겟다
		//let div1 = document.getElementById('btn1');
		//btn1.onclick = function(){};
		let xhr = new XMLHttpRequest();//객체 생성
		
		$('#btn1').click(function(){
			xhr.open('get','a2_test1.html',true);//get타입으로 , 보낼곳 , 비동기로
			xhr.send();//요청 정보를 전송해라 응답정보가 요청 중이냐, 요청완료냐 계속 보낸다
			xhr.onreadystatechange=function(){//콜백함수 //이벤트는 모두 소문자이다
				//console.log(xhr.status + ',' + xhr.readyState);
				if(xhr.status==200 && xhr.readyState==4){//status는 200일때 성공된것이고 readyState가 4일때 응답정보 받는게 완료
					$('#div1').html(xhr.responseText);//responseText,responseHTML ,text는 데이터형식이 html타입,jsp(웹페이지 경과)타입,JSON타입 일때 ,
					//고정적으론 XML타입(구조 분석이 제일쉽다. 태그를 사용하기때문에 정보보다 태그가 많아질수도 있는 단점이있다) , JSON타입(xml과csv의 장점을 둘다가지고있다) , CSV(콤마 세터레이트 밸류/데이터가 , 로 들어오는형태,데이터 양이 무지하게 많을때 가장빠른 조치이다,구조 분석이 상당히 어렵다)
				};
			};
		});
		
		$('#btn2').click(function(){
			xhr.open('get','a3_test2.jsp',true);//get타입으로 , 보낼곳 , 동기로 // 어떤 정보를 요청하겠다
			xhr.send();//실제로 요청이된것
			xhr.onreadystatechange=function(){
				if(xhr.status==200 && xhr.readyState==4){
					$('#div2').html(xhr.responseText);
				};
			};
		});
		
		
		//=======db에서 읽은 정보를 CSV,XML,JSON 으로 만든걸 컨트롤하자==============
		
		//db에서 읽은정보를 csv로 만든걸 테이블로 만들자------------------------------------------------
		$('#btn3').click(function(){
			xhr.open('get','a4_csv.jsp');//get타입으로 , 보낼곳 , 동기로 // 어떤 정보를 요청하겠다
			xhr.send();//실제로 요청이된것
			xhr.onreadystatechange=function(){
				if(xhr.status==200 && xhr.readyState==4){
					//엔터키로 나눠서 배열로 만들자
					let array = xhr.responseText.split('\n');
					//,로 나누자
					let str  ="<table border='1' width='100%'>"
							 +"<tr><th>사번</th><th>성명</th><th>급여</th></tr>";
					for(let i = 0 ; i<array.length ; i++){
						if(array[i]=='\r' || array[i]=='') continue;//불필요한 데이터 필터링
						let data = array[i].split(',');
						str +=  '<tr>'
							+	'<td>' + data[0] + '</td>'
							+	'<td>' + data[1] + '</td>'
							+	'<td>' + data[2] + '</td>'
							+ 	'<tr>';
						
					}
					str +='</table>';
					
					$('#div3').html(str);
				};
			};
		});
		//db에서 읽은 정보를 xml로 만든걸 조작하자---------------------------------------------------
		$('#btn4').click(function(){
			xhr.open('get','a6_xml.jsp');
			xhr.send();
			xhr.onreadystatechange=function(){
				if(xhr.status==200 && xhr.readyState==4){
					
					let temp = xhr.responseXML;
					//console.log(temp);
					let deps = $(temp).find('department');//temp에서department라는 태크를 찾아라 / n개를 찾은 deps는 배열이된다
					let str ="";
					$(deps).each(function(index){ //배열 순행 함수each
						str +=  "<div class='item'>"
							+	"<span class='id'>" + $(this).find('id').text() + "</span>"
							+	"<span class='dname'>" + $(this).find('dname').text() + "</span>"
							+	"<span class='mid'>" + $(this).find('mid').text() + "</span>"
							+	"</div>";
					});
					$('#div4').html(str);
				}
			}
		});
		//db에서 읽은 정보를 JSON으로 만든걸 조작하자--------------------------------------------------
		$('#btn5').on('click',function(){
			xhr.open('get','a5_json.jsp');
			xhr.send();
			xhr.onreadystatechange = function(){
				if(xhr.status==200 && xhr.readyState==4){
					let temp = xhr.responseText;
					let data = jQuery.parseJSON(temp);
					console.log(data);
					let str="";
					for(let i =0 ; i<data.length ; i++){
						str +=  "<div class='item'>"
							+	"<span class='id'>" + data[i].id +"</span>"
							+	"<span class='dname'>" + data[i].fn + "</span>"
							+	"<span class='mid'>" + data[i].mid + "</span>"
							+	"</div>";
					};
					$('#div5').html(str);
				};
			};
		});
		
	</script>
</body>
</html>





























