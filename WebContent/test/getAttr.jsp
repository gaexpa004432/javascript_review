<%@page import="test.ShareObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>request : ${data.str} </h3>
	<%
	ShareObject obj1 = (ShareObject)request.getAttribute("data");
	if(obj1 != null){
		out.print(obj1.getStr());
		out.print(obj1.getCount());
	}
	%>
	
	<h3>request : ${sessionScope.data.str} </h3>
	<%
	ShareObject obj2 = (ShareObject)session.getAttribute("data");
	if(obj1 != null){
		out.print(obj2.getStr());
		out.print(obj2.getCount());
	}
	%>
<h3>파라미터 : ${param.name} ${param["name"]}</h3>
<%= request.getParameter("name") %> 

<h3> 헤더 : ${header["user-Agent"]} </h3>
<%= request.getHeader("user-Agent") %>

<h3> 컨텍스트패스 : ${pageContext.request.contextPath}</h3>
<%= request.getContextPath() %>


</body>
</html>