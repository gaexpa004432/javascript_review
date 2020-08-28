<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	table {padding: 10px;
		border : 1px solid blue;
	}
</style>
<script>
$(function(){
	$("#left").on("click","tr",function(){
		$("#right").append($(this));
	});
	  $("#right").on("click","tr",function(){
		$("#left").append($(this));
	})  
	
})
</script>
</head>
<body>
<table id="left" border="1">
	<tr><td>홍길동</td><td>30</td></tr>
	<tr><td>김길동</td><td>30</td></tr>
	<tr><td>백길동</td><td>30</td></tr>
</table>
<table border="1" id="right"></table>
<script>
</script>
</body>
</html>