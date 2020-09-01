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
	if(frm.job.value =="select"){
		window.alert("select");
		frm.job.focus();
		return false;
	}
	var gender = document.querySelectorALL("[name='gender']:checked").length;
	//frm.submit();
	return true;
}
</script>
</head>
<body>
<link rel="stylesheet" type="text/css" href="/common.css" />
<%@include file="/menu.jsp" %>
<form id="frm" action="memberSelect.jsp" onsubmit="">
	<div>
	<P><label for="id">아이디</label> : <INPUT minlength="6" type="text" id="id" name="id" size="20" value=""></P>
	<P><label for="password">비밀번호</label> : <INPUT type="password" name="pw" id="password" size="20"></P>
	</div>
	
<div>
	<INPUT type="radio" name="gender" value="man" checked>남자&nbsp;
	<INPUT type="radio" name="gender" value="woman">여자
</div>
	<label for="job">직업</label>
<div>
<SELECT id="job" name="job" size="4">
<OPTION value="select" selected>선택</OPTION>
<OPTION value="inoccupation">무직</OPTION>
<OPTION value="jobless">백수</OPTION>
<OPTION value="Home security guard">자택 경비원</OPTION>
<OPTION value="housewife">전업주부</OPTION>
</SELECT>
</div>
<div>
<TEXTAREA name="content" rows="5" cols="50">
가입동기
</TEXTAREA>
</div>

<div>
<P>메일수신 여부<INPUT type="checkbox" name="mailYn" checked></P>
</div>
<div>
<button type = "button" onclick="inputCheck()">등록</button>&nbsp;&nbsp;
<button type = "reset" name = "reset" >리셋</button>
</div>
</form>
</body>
</html>