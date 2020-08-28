<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	$("#btnAdd").on("click",function(){
	$("ul").append($("<li>").text($("#fruit").val()));
		
	});


$("ul").on("mouseover","li",function(){
		$(this).css("background-color","green")
	})
	
});
</script>
</head>
<body>
<input id="fruit"><button type="button" id="btnAdd">추가</button>
<ul>
	<li>자바
	<li>스프링
</ul>
<script>
</script>
</body>
</html>