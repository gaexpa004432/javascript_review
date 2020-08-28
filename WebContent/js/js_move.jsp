<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img { width : 100px;
		 top : 100px;
		 left : 100px;
	    position : relative;}
</style>
<script>
	document.addEventListener("mousemove",function(){
		console.log(event.clientX,event.clientY);
		console.log(event.pageX,event.pageY);
		if(event.button == 1){
		img1.style.top = (event.clientY) + "px";
		img1.style.left = (event.clientX) + "px";
		}
	})
	document.addEventListener("keydown",function(){
		
		console.log(event.keyCode);
		if(event.keyCode == 37){
			console.log(event.keyCode);
		img1.style.left = (img1.style.left- 10) +"px";
		}
		
	})
</script>
</head>

<body>
	<img id="img1" src="../images/111.gif">
</body>
</html>