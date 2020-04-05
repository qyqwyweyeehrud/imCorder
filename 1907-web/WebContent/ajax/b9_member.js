/**
 * 회원관리
 * date : 2020.01.21
 */
let xhr =new XMLHttpRequest();
let xhr1 =new XMLHttpRequest();
let init = function(){

	xhr.open('get','b6_member_select.jsp');
	xhr.send();
	xhr.onreadystatechange = function(){
		if(xhr.status==200 && xhr.readyState==4){
			let temp = xhr.responseText;
			let data = jQuery.parseJSON(temp);
			console.log(data);
			let str1=	"<form id='frm'>"
					+		"<input type= 'button' value='회원추가' name='btnInsert' id='btnInsert'/>"
					+		"<input type='text' name='findStr' id='findStr'/>"
					+		"<input type='button' value='검색' name='btnfind' id='btnfind'/>"
					+	"</form>"
				str1+=	"<div class='main'>"
				str1+=		"<span class='mid'>" + "아이디" + "</span>"
					+		"<span class='mpwd'>" + "이름" + "</span>"
					+		"<span class='mdate'>" + "가입일" +"</span>"
					+		"<span class='mgrade'>" + "학번" +"</span>"
					+	"</div>";
			
			let str2="<div class='submain'>";
			for(let i=0 ; i<data.length ; i++){
				str2+=		"<div class='item'>"
					+			"<span class='id'>" + data[i].mid + "</span>"
					+			"<span class='pwd'>" + data[i].pwd + "</span>"
					+			"<span class='date'>" + data[i].rdate +"</span>"
					+			"<span class='grade'>" + data[i].grade + "</span>"
					+		"</div>";
			};
			str2+="</div>";
			$('#result').html(str1+str2);
			
			
			$('#btnfind').on('click',function(){
				let v1 = $('#findStr').val();
				let url1 = 'b61_member_select.jsp?findStr='+v1;
				console.log(url1);
				xhr1.open('get',url1);
				xhr1.send();
				xhr1.onreadystatechange = function(){
					if(xhr1.status==200 && xhr1.readyState==4){
						let temp1 = xhr1.responseText;
						let data1 = jQuery.parseJSON(temp1);
						console.log(data1);
						let str3="";
						for(let i =0 ; i<data1.length ; i++){
							str3 +=		"<div class='item'>"
								+			"<span class='id'>" + data1[i].mid + "</span>"
								+			"<span class='pwd'>" + data1[i].pwd + "</span>"
								+			"<span class='date'>" + data1[i].rdate +"</span>"
								+			"<span class='grade'>" + data1[i].grade + "</span>"
								+		"</div>"
								
						};
						$('.submain').html('');
						$('.submain').html(str3);
					}
				}
			});
		};
	};
};































