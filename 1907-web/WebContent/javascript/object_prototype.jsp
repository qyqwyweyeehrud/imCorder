<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>object_prototype</title>
<style>
	#result{
		width:500px;
		height:300px;
		border:1px solid #000;
	}
	#result div{
		margin:auto;
		margin-top:13px;
		font-size:1.5em;
	}
	div span{
		display:inline-block;
		color:#fff;
	}
	div span:first-child{
		background-color: #ff0000;
		width:80px;
		height:50px;
	}
	div span:nth-child(2n) {
		background-color: #0000ff;
		width:80px;
		height:50px;
	}
	div span:last-child {
		background-color: #00ff00;
		width:80px;
		height:50px;
	}
	div span:nth-child(3n) {
		background-color: #999;
		width:80px;
		height:50px;
	}
	
	
	
</style>
</head>
<body>
	<h3>prototype을 사용한 메서드 선언</h3>
	<div id = 'result'></div>
	<Script>
		function Product(code,codeName,ea,price){
			this.code = code;
			this.codeName = codeName;
			this.ea = ea;
			this.price =price;
		}
		//Product 로 만들어진 객체들이 사용하는 공유메서드(prototype)
		Product.prototype.setCode = function(code){this.code = code};
		Product.prototype.setCodeName = function(codeName){this.codeName = codeName};
		Product.prototype.setEa = function(ea){this.ea = ea};
		Product.prototype.setPrice = function(price){this.price = price};
		Product.prototype.toJSON = function(){
			let str = {
				"code": this.code,
				"codeName" : this.codeName,
				"ea" : this.ea,
				"price" : this.price
			};
			return str;
		}
		Product.prototype.toHTML = function(){
			let str = 
				'<div>' + '<span>' + this.code     + '</span>'
						+ '<span>' + this.codeName + '</span>'
						+ '<span>' + this.ea       + '</sapn>'
						+ '<span>' + this.price    + '</span>' + '</div>';
			return str;
		}
		
		
		let r = document.getElementById('result');
		Product.prototype.setCode('aaa');
		Product.prototype.setCodeName('새우깡');
		Product.prototype.setEa(2);
		Product.prototype.setPrice(3000);
		console.log(Product.prototype.toJSON())
		r.innerHTML = Product.prototype.toHTML();
	</Script>

</body>
</html>