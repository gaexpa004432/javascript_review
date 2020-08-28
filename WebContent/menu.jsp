<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="../common.css" />
<ul class="menu">
	<li><a href="../member/memberinsert.jsp">회원등록</a></li>
	<li><a href="../member/memberALL.jsp">회원목록</a></li>
	<li><a href="../member/memberSelect.jsp">상세보기</a></li>
	<li><a href="../board/boardInsert.jsp">게시판 입력</a></li>
	<li><a href="../board/boardAll.jsp">게시판 보기 </a></li>
</ul>
<div id="divpageName"></div>
<hr>
<script type="text/javascript">
	url = location.pathname;
	var pageName = url.substring(url.lastIndexOf("/")+1 );
		lis = document.querySelectorAll(".menu li");
	divpageName.innerText = pageName;
	if(pageName == "memberinsert.jsp"){
		lis[0].className="menuActive";
	}else if(pageName == "memberALL.jsp"){
		lis[1].className="menuActive";
		
	}
	</script>
</body>
</html>