<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img {
	width : 100px;
}
</style>
</head>
<body>
	<script >
var imgArr =["../113.png",
			 "../114.png",
			 "../images/111.gif",
			 "../112.gif"];
for(var i =0; i < imgArr.length; i++ ){
var img = document.createElement("img");
	img.src = imgArr[i];
	document.body.appendChild(img);
	img.addEventListener("mouseenter", function(){
		this.style.width = "200px";
	})
	img.addEventListener("mouseleave", function(){
		this.style.width = "100px";
	})
//document.write("<img src='"+imgArr[i]+"'>");
}
</script>
</body>
</html>