/**
 * 
 */
let btnFunc = function(){
	if($('#btnSearch')!=null){
		$('#btnSearch').click(function(){
			$('#frm').attr('action','select').submit();//서브밋을하면 요정정보가 select로 넘어간다 //서버에 라우터 정보가 넘어간다
		})
	}
	
	if($('#btnInsert')!=null){
		$('#btnInsert').click(function(){
			$('#frm').attr('action','insert').submit();
		})
	}
	if($('#btnSave')!=null){
		$('#btnSave').click(function(){
			$('#frm').attr('action','insertR').submit();
		})
	}
	if($('#btnSelect')!=null){
		$('#btnSelect').click(function(){
			$('#frm').attr('action','select').submit();
		})
	}
	if($('#btnDelete')!=null){
		$('#btnDelete').click(function(){
			let yn = confirm("정말??")
			if(yn){
				$('#frm').attr('action','deleteR').submit();
			}
		})
	}
	if($('#btnModify')!=null){
		$('#btnModify').click(function(){
			$('#frm').attr('action','modify').submit();
			
		})
	}
	if($('#btnUpdate')!=null){
		$('#btnUpdate').click(function(){
			$('#frm').attr('action','modifyR').submit();
			
		})
	}
	/*
	//목록 으로 버튼
	if($('#btnSelect')!=null){
		$('#btnSelect').click(function(){
			location.href = 'select.html';
		})
	}
	//입력으로 가기 버튼
	if($('#btnInsert')!=null){
		$('#btnInsert').click(function(){
			location.href = 'insert_form.html';
		})
	}
	//입력 > 추가버튼
	if($('#btnSave')!=null){
		$('#btnSave').click(function(){
			location.href = 'insert_result.html';
		})
	}
	//수정 화면으로가기 버튼
	if($('#btnModify')!=null){
		$('#btnModify').click(function(){
			location.href = 'modify_form.html';
		})
	}
	//수정완료버튼
	if($('#btnUpdate')!=null){
		$('#btnUpdate').click(function(){
			location.href = 'modify_result.html';
		})
	}
	//삭제버튼
	if($('#btnDelete')!=null){
		$('#btnDelete').click(function(){
			let yn = confirm("정말?");
			if(yn){
				location.href = 'delete_result.html';
			}
		})
	}
	*/
}


let view = function(mId){
	frm.mId.value = mId;
	frm.method = 'post';
	$('#frm').attr('action','view').submit();
}
let insert = function(){
	btnFunc();
	frm.rDate.valueAsDate = new Date();
}

/*
let select = function(){
	btnFunc();
}
let modify = function(){
	btnFunc();
}
let insert = function(){
	btnFunc();
	frm.rDate.valueAsDate = new Date();
}
let selectOne = function(){
	btnFunc();
}
*/