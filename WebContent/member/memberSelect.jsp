<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="/common.css" />
<%@include file="/menu.jsp" %>
     <%
        String name = request.getParameter("id");
        String pass = request.getParameter("pw");
        String gender = request.getParameter("gender");
        String job = request.getParameter("job");
        String content = request.getParameter("content");
        String mailYn = request.getParameter("mailYn");
    %>
<h3>내정보 조회</h3>
<div><span class="label">id :</span><%=name%></div>
<div><span class="label">pass :</span><%=pass%></div>
<div><span class="label">sex :</span><%=gender%></div>
<div><span class="label">job :</span><%=job%></div>
<div><span class="label">mail :</span><%=mailYn%></div>
<div><span class="label">동기 :</span><%=content%></div>
<button type="button" id="btnPage">목록으로
</button></body>
<script>
btnPage.addEventListener("click",goPage);
	function goPage(){
		// history.go(-1); //이전페이지
		
		
	}
</script>
</html>