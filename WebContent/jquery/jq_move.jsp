<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>js_move</title>
<style>
	img {width: 100px;
		 top : 100px;
		 left : 100px;
		 position : relative;}
</style>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<img src="../images/Koala.jpg" id="img1">
<script>
	$(document).on("mousemove",function(){
			// img1.style.left = event.clientX + "px";
			// img1.style.top = event.clientY + "px";  // 마우스 움직일때마다 사진따라다님
		$("#img1").css("left",event.clientX+"px").css("top",event.clientY+"px");
	})
		// if(event.button == 0) {
		// }
	
	$(document).on("keydown",function(){
		// console.log(event.keyCode);
		if(event.keyCode == 37) {
			console.log($("#img1").offset().left);
			$("#img1").css("left",($("#img1").offset().left - 10) + "px");  // 키보드 좌로 움직이기 가능하다
		} else if(event.keyCode == 39) {
			img1.style.left = (parseInt(img1.style.left)+10) + "px";  // 키보드 우로 움직이기 가능하다
		} else if(event.keyCode == 38) {
			img1.style.top = (parseInt(img1.style.top)-10) + "px";  // 키보드 상로 움직이기 가능하다
		} else if(event.keyCode == 40) {
			img1.style.top = (parseInt(img1.style.top)+10) + "px";  // 키보드 하로 움직이기 가능하다
		}
	});
	
</script>
</body>
</html>