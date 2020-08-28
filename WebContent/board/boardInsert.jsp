<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function inputCheck(){
	if(frm.value == ""){
		window.alert("id");
		frm.id.focus();
		return false;
	}
	if(frm.job.value =="password"){
		window.alert("password");
		frm.job.focus();
		return false;
	}
	var gender = document.querySelectorALL("[name='gender']:checked").length;
	frm.submit();
	//return true;
}
</script>
</head>
<body>
<link rel="stylesheet" type="text/css" href="/common.css" />
<%@include file="/menu.jsp" %>
<form id="frm" action="memberSelect.jsp" onsubmit="">
	<div>
	<P><label for="id">작성자</label> : <INPUT minlength="6" type="text" id="id" name="id" size="20" value=""></P>
	<P><label for="password">제목</label> : <INPUT type="text" name="pw" id="password" size="20"></P>
	</div>
	
	

<div>

<TEXTAREA name="content" rows="5" cols="50">
내용
</TEXTAREA>
</div>
<input type="file">
<div>
<button type = "button" onclick="inputCheck()">등록</button>&nbsp;&nbsp;
<button type = "reset" name = "reset" >리셋</button>
</div>
</form>
</body>
</html>