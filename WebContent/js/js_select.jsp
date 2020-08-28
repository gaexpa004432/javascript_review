<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input id="txtFruit" >
<button type="button" id="btnAdd" onclick="addFruit()">추가</button>
<button type="button" id="btnDel" onclick="delFruit()">삭제</button>
<select id="ListFruit"></select>
<script type="text/javascript">
function addFruit(){
	  var option = document.createElement("option");
	  option.text = txtFruit.value;
	  option.value=ListFruit.length;
	  ListFruit.add(option);
}
function delFruit(){
	ListFruit.remove(ListFruit.selectedIndex);
}
txtFruit.addEventListener("keypress",function(){
	if(event.keyCode == 13){
		addFruit();
	}
})
</script>
</body>
</html>