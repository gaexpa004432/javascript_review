<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input name="num1" id="num1">+
	<input name="num2" id="num2">=
	<input name="result" id="result">
	<button id="btnResult" type="button" onclick="checkresult()">결과확인</button>
	<button id="btnInit" type="button" onclick="init()">초기화</button>
	<div id="divResult"></div>
</body>
<script>
var o =  0;
var x = 0;
init();
function init(){
	num1.value = Math.floor(Math.random() * 10);
	num2.value = Math.floor(Math.random() * 10);
	divResult.innerText = "정답 " + o + " 오답 " + x ;
	result.value = "";
}
function checkresult(){
	
	var sum = parseInt(num1.value) + parseInt(num2.value);
	if(parseInt(result.value) == sum){
		
		o++;
		init();
	}else{
		
		x++;
		init();
	}
}
	if( o + x == 5){
		alert("끝 "+ o*20 + "점");
		btnResult.disabled = "disabled";
	}

</script>
</html>