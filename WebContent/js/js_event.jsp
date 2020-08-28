<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.price {
		display : none;
	}
</style>
<script>
init();
	function init(){
		var titles = document.getElementsByClassName("title");
				console.log(titles.length);
		for(var i=0;i < 3 ;i++){
			titles[i].addEventListener("mouseenter",function(){
				var price = this.parentNode.getElementsByClassName("price")[0];
				price.style.display="inline";
				console.log(titles);
			})
		}
	}
</script>
</head>
<body>
	<div>
		<span class="title">스프링</span>
		<span class="price">6000</span>
	</div>
	<div>
		<span class="title">자바</span>
		<span class="price">4000</span>
	</div>
	<div>
		<span class="title">자바스크립트</span>
		<span class="price">3000</span>
	</div>
</body>
</html>