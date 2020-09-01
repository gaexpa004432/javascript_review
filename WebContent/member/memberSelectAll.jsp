<%@page import="member.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<%
ArrayList<MemberVO> list = (ArrayList<MemberVO>) request.getAttribute("list");
for( MemberVO member : list){ %>

<tr><td><%=member.getId()%></td>
<td><%=member.getPw()%></td>
<td><%=member.getGender()%></td>
<td><%=member.getJob()%></td>
<td><%=member.getMail()%></td>
<td><%=member.getMotive()%></td>
<td><%=member.getHobby()%></td>
<td><%=member.getRegdate()%></td></tr>
<%} %>
</table>
</body>
</html>