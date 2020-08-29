<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="../jquery-ui.min.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="../jquery-ui.js"></script>
  <script src="https://bxslider.com/examples/auto-show-start-stop-controls/"></script>
<script src="//cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
 <script>
 $(function(){
	 $("#regDate").datepicker({
		  dateFormat: "yy-mm-dd",
		  minDate: -7,
		  maxDate: "1m"
	 });
	 $("#msg").dialog({
		 autoOpen: false,
		 height: 400,
		 width: 350,
		 modal : true  // 닫아야지 부모창 이용가능
		 ,buttons : {
			 'save' : function(){
				 alert("save")
			 },
			 'cancle' : function(){
				 $("#msg").dialog("close");
			 }
		 }
	 }); //다이얼 로그안 버튼 그키 자동 오픈 기능 추가
	 $("#popup").button().click(function(){
		 $("#msg").dialog("open");
	 });
	$("#acor").accordion({
		active:1
		,animate:1
		,collapsible: false
		,activate : function(event,ui){ //클릭이벤트
			console.log(ui.newHeader.text())
			console.log(ui.oldHeader.text())
		}           //event: "mouseover"
	}); 
 });
 
 </script>
</head>
<body>
<input id="regDate">
<span id="popup">popup</span>
<div id="msg" >
알림팝업
</div>
<input id="date" type="date" onclick="console.log(date.value)">
<div id="acor">
	<h3>자바</h3>
	<div>자바란 ..</div>
	<h3>이바</h3>
	<div>자바란 ..</div>
	<h3>오바</h3>
	<div>자바란 ..</div>
</div>

</body>
</html>