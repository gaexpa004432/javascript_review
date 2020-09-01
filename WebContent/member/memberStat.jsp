<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원통계</h3>
<h3>남녀비율</h3>
<% List<HashMap<String,Object>> list = (List<HashMap<String,Object>>)request.getAttribute("genderCnt");
	for(HashMap<String,Object> temp : list){
		
	
%>
<span>
<%=temp.get("gender")%></span>
<span>
<%=temp.get("cnt")%><br>
</span>
<% }
%>
<h5>직업별 회원수</h5>
<%=request.getAttribute("mailCnt") %>
</body>
</html>