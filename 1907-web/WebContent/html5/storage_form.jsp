<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>storage_form</title>
</head>
<body>
	<h3>폼정보를 storage에 저장후 재성정하기</h3>
	<form name='frm'>
		<label>아이디</label>
			<input type='text' name='mId'/><br/>
		<label>성별</label>
			<label><input type='radio' name='gender' value='m'>남자</label>
			<label><input type='radio' name='gender' value='f'>여자</label><br/>
		<label>취미</label>
			<label><input type='checkbox' name='hobby' value='축구'>축구</label>
			<label><input type='checkbox' name='hobby' value='야구'>야구</label>
			<label><input type='checkbox' name='hobby' value='배구'>배구</label>
			<label><input type='checkbox' name='hobby' value='족구'>족구</label><br/>
		<label>과정선택</label>
			<select size='1' name='subject'>
				<option value='java'>java</option>
				<option value='css'>css</option>
				<option value='html'>html</option>
				<option value='javascript'>javascript</option>
			</select>
		<p/>
		<input type='button' value='SAVE' name='btnSave'/>
	</form>
	
	<script>
		//저장된 object를 가져다 form 상태값을 변경
		let obj = localStorage.getItem("data");
		if(obj !=null){
			let d = JSON.parse(obj);//저장된 문자열을 객체로 만들어라
			frm.mId.value = d.mId;
			if(d.gender == 'm'){
				frm.gender[0].checked =true;
			}else{
				frm.gender[1].checked = true;
			}
			for(i=0 ; i<frm.hobby.length;i++){
				for(j=0 ; j<d.hobby.length ; j++){
					if(frm.hobby[i].value == d.hobby[j]){
						frm.hobby[i].checked = true;
						break;
					}
				}
			}
			for(i=0 ; i<frm.subject.options.length ; i++){
				if(frm.subject.options[i].value == d.subject){
					frm.subject.selectedIndex = i;
				}
			}
		}
		frm.btnSave.onclick = function(){
			let mId = frm.mId.value;
			let gender;
			let hobby =[];//배열 선언(JASON type)
			let subject;
			if(frm.gender[0].checked) gender=frm.gender[0].value;
			else					  gender=frm.gender[1].value;
			
			for(i=0 ; i<frm.hobby.length ; i++){
				if(frm.hobby[i].checked) hobby.push(frm.hobby[i].value);
			}
			subject = frm.subject.value;
			//오브젝트 생성
			let d = new Data(mId,gender,hobby,subject);
			let s = JSON.stringify(d);//저장항데이터를 문자열로
			//console.log('savedata',s);
			localStorage.setItem("data",s);
		}
		function Data(mId,gender,hobby,subject){
			this.mId = mId;
			this.gender = gender;
			this.hobby = hobby;
			this.subject = subject;
			//왼쪽은 데이타가 가지고있는 필드 오른쪽은 매개면수
		}
	</script>

</body>
</html>