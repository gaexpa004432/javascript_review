<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(window).on("load",init);
	
	function init(){
		$(".price").hide();
		 $(".title").on("mouseenter mouseleave",function(){
		//	var price = $(this).parent().find(".price").eq(0);
			$(this).next().toggle();
		 });
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