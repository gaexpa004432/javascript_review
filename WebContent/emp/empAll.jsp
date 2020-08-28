<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>사원목록</h3>
<a href="#" >king</a><br>
<a href="#" >steven</a><br>
<a href="#" >scott</a><br>
<script>
var a = document.getElementsByTagName("a");
//for(var i = 0 ; i<a.length;i++) {
//	a[i].addEventListener("click",choose);	
//}
a.addEventListener("click",choose);	
	function choose(){
		opener.document.getElementById("manager_id").value =
			window.event.target.innerHTML //opener 부모테이블 위치 
	}
</script>

</body>
</html>