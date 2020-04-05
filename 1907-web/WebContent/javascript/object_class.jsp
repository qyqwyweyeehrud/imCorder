<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>object_class</title>
</head>
<body>
	<h3>class를사용한 객체 생성</h3>
	<script>
		class Member{
			constructor(id,name,phone){//constructor라는 키워드를 사용해 생성자를 정의한다
				this.id = id;
				this.name = name;
				this.phone = phone;
			}
			setId(id){//브라우저의 특성에 따라 앞에 set을 붙여야하는 브라우저도 있다
				this.id = id;
			}
			setName(name){
				this.name = name;
			}
			setPhone(phone){
				this.phone = phone;
			}
			getId(){
				return this.id;
			}
			getName(){
				return this.name;
			}
			getPhone(){
				return this.phone;
			}
			toString(){
				let str = 'id :'+ this.id + 'name :' + this.name + 'phone :' + this.phone;
				return str;
			}
			toJASON(){
				let str = {"id":this.id , "name":this.name , "phone":this.phone};
				return str;
			}
			toHTML(){
				let str = '<div>'
						+ '<span>' + this.id + '</span>' 
						+ '<span>' + this.name + '</span>'
						+ '<span>' + this.phone + '</span>'
						+ '</div>';
				return str;
			}
		}
		//객체를 생성하여 배열에 저장후 console에 출력
		let m1 = new Member('a001' , 'hong' ,'010-111');
		let m2 = new Member('a002' , 'kim' , '010-222');
		let m3 = new Member('a003' , 'park' ,'010-333');
		let array = [];
		array.push(m1);
		array.push(m2);
		array.push(m3);
		for(i=0 ; i<array.length ; i++){
			console.log(array[i].toString());
			console.log(array[i].toJASON());
			console.log(array[i].toHTML());
			
		}
		
	</script>

</body>
</html>