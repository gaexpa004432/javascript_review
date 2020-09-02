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
<%= request.getAttribute("errormsg") %>
<% String id = (String)session.getAttribute("id");%>
<% if(id == null){ %>
<a href="/web/member/MemberLogin.jsp">로그인</a>
<% } else{ %>
<a href="/web/member/MemberLogout">로그아웃</a>
<% } %>
<a href="/web/member/memberUpdate.jsp"></a>
<a href="dept/deptInserForm.jsp">부서등록</a>
<a href="dept/DeptSelectAllServ">부서조회</a>
<a href="member/MemberSelectServ">멤버조회</a>
<a href="<%=application.getContextPath()%>/member/memberInsert.jsp">멤버등록</a>
<a href="board/boardInsert.do">보드 등록</a>
<% ShareObject obj1 = (ShareObject)application.getAttribute("data1"); 
	if(obj1 == null){
	 obj1.setCount(obj1.getCount()+1);
%>
<br>applicatrion : <%=  obj1.getStr() %><%= obj1.getCount() %>
<br>
<% ShareObject obj2 = (ShareObject)session.getAttribute("data"); 
	 obj2.setCount(obj2.getCount()+1);
%>
<br> session : <%=  obj2.getStr() %><%= obj2.getCount() %>
<%} %>
</body>
</html>