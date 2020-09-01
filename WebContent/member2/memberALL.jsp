<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/menu.jsp" %>
<h3>회원 전체조회</h3>
<div>
<ul class="search">
	<li>메일수신여부</li>
	<li>성별</li>
	<li>아이디</li>
	<li>비번</li>
	<li>동기</li>
	<button>검색</button>
</ul>
</div>
<table id="table">
	<thead><tr><th>id</th><th>pw</th><th>gender</th><th>job</th><th>mail</th><th>motive</th></tr></thead>
			<tbody><tr><td>aaa</td><td>psps</td><td>male</td><td>nope</td><td>no</td><td>help</td></tr>
			<tr><td>bbb</td><td>psps</td><td>female</td><td>nope</td><td>yes</td><td>help</td></tr>
			</tbody>
	
	
</table>
</body>
</html>