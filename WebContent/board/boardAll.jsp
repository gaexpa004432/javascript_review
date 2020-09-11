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
<table id="table" border="1">
	<thead><tr><th>제목</th><th>내용</th><th>작성자</th><th>일자</th><th>조회</th><th>파일첨부</th></tr></thead>
			<tbody><tr><td>하하</td><td>ㅁㄴㅇpsps</td><td>백승엽</td><td>2020-8-20</td><td>10</td><td></td></tr>
			<tr><td>허허</td><td>ㅁㄴㅇpsps</td><td>백승승</td><td>2020-8-21</td><td>15</td><td></td></tr>
			</tbody>
		<%-- 	<td>
			 <c:if test="${not empty board.filename}">
			 	<img src="../images/${board.filename }" style="width:50px">
			 </c:if>
			</td> --%>
			
			<%-- <a href="downLoad.do?filename=${board.filename }">${board.filename }</a> --%>
	
</table>
</body>
</html>