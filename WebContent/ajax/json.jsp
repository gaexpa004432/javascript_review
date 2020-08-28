<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="result"></div>
<script>
	var obj = { id:"homg",name : "hong"};
	var arr = [	{ id:"ho3",name : "hong"},{ id:"ho2",name : "hong"},{ id:"ho3",name : "hong"}];
	var objArr = { id:"homg", name:"hong", hobby : ["one","two","three"]};
	var objobj = { cnt:4 , members:{cnt:4, list:[ "kin","lee" ]}};
	console.log(objobj.members);
	result.innerHTML += objobj.members.list[0]+"<br>";
</script>
</body>
</html>