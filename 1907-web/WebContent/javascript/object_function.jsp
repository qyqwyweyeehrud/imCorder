<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>object_function</title>
</head>
<body>
	<h3>funtion을 사용한 객체 생성, 가장만이씀</h3>
	<p>
	function ABC( [매개변수] ){.....}<br/>
	let obj = new ABC();
	클래스역할과 메서드역할을 한다
	</p>
	<script>
		function Student(id,name,phone){//클래스 명이자 생성자 이다
			this.id = id;
			this.name = name;
			this.phone = phone;
			this.setId = function(id){this.id=id};
			this.setName = function(name){this.name=name};
			this.setPhone = function(phone){this.phone = phone};
			this.getId = function(){return this.id};
			this.getName = function(){return this.name};
			this.getPhone = function(){return this.phone};
			this.toString = function(){
				let str = this.id + ':' + this.name + ':' + this.phone;
				return str;
			}
			this.toJSON = function(){//자기가 가지고있는 멤버들을 제이슨타입의 맵구조로 리턴한다
				let str={"id"  :this.id,
						"name" :this.name,
						"phone":this.phone
				};
				return str;
			}
			this.toHTML = function(){
				let str = '<div><span>'+this.id +'</span>'
							+  '<span>'+this.name + '</span>'
							+  '<span>'+this.phone + '</span>'+'</div>'
				return str;
			}
		}
		let s1 = new Student();
		s1.setId('aaa');
		s1.setName('홀길동');
		s1.setPhone('111-111');
		console.log(s1.toString());
		console.log(s1.toJSON());
		console.log(s1.toHTML());
		
		let s2 = new Student('bbb','춘향','010-2222');
		console.log(s2.toString());
		console.log(s2.toJSON());
		console.log(s2.toHTML());
		
		let array = [];//let array = new Array();
		array.push(s1);
		array.push(s2);
		for(i=0 ; i<array.length ; i++){
			console.log(array[i].toJSON());
		}
	</script>
</body>
</html>






















