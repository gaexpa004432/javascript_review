<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-left: 3px solid #369;
	margin: 20px 10px;
}

table th {
	width: 147px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #153d73;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

table td {
	width: 349px;
	padding: 10px;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

tr:hover {
	background-color: lightgrey;
}
</style>
<link rel="stylesheet" href="../jquery-ui.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../jquery-ui.js"></script>
<script>
$(function(){
$("#dialog").dialog({
	 autoOpen: false,
	 height: 300,
	 width: 350,
	 modal : true  // 닫아야지 부모창 이용가능
	 ,buttons : {
		 '확인' : function(){
			 $("#dialog").dialog("close");
		 }
	 }
});
	$("#date").on("change",function(){
var date = new Date();
var month = (date.getMonth() + 1);
var day = date.getDate();
if (month < 10){
	month = "0" + month; 
}
if(day < 10){
	day = "0" + day; 
}
var current = "" + date.getFullYear()+"" + month+"" + day;

//		if($("#name").val() == ""){
//			alert("일자를 입력하세요");
//			return false;
//		}
//  var url_add = $("#name").val();
	var url_add = $("#date").val().replace(/-/gi,"");
if(parseInt(current) < parseInt(url_add)){
	alert("현재날짜나 이전날짜를 선택해 주세요");
	console.log(parseInt(current.replace(/-/gi,"")));
	console.log(parseInt(url_add));
	$("#result").empty();
	return false;
}
console.log(current);
   var url ="http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt="+ url_add;
   // var url ="server/movie.json"
	$.getJSON(url,function(obj){
		$("#result").empty();
		var list = obj.boxOfficeResult.dailyBoxOfficeList;
		for(o of list){
			
			var tr = $("<tr>").append($("<th>").text(o.movieCd)).append($("<td>").text(o.movieNm));
        console.log(o.movieNm);
			$("#result").append(tr);
		};
	});
	});
	
	
	
	$("#result").on("click","tr",function(){
		
		var movieCd = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=430156241533f1d058c603178cc3ca0e&movieCd="+$(this).children().eq(0).text();
		$.getJSON(movieCd,function(obj){ 
			console.log(obj.movieInfoResult.movieInfo.movieNm);
			 var actor = obj.movieInfoResult.movieInfo.actors[0].peopleNm;
			 var director = obj.movieInfoResult.movieInfo.directors[0].peopleNm;
			 var openDt = obj.movieInfoResult.movieInfo.openDt;
			$("#dialog").empty();
			$("#dialog").parent().children().eq(0).text(obj.movieInfoResult.movieInfo.movieNm);
			$("#dialog").append($("<p>").text("감독 : "+director)).append($("<p>").text("주연 배우 : "+actor))
				.append($("<p>").text("상영 날짜 : " + openDt.substr(0,4)+"년 "+openDt.substr(4,2)+"월 " + openDt.substr(6,2)+"일"));
			
		$( "#dialog" ).dialog( "open" );
			  
		});
	});
});

</script>
</head>
<body>


	<!--<button type="button" id="btnList">Change Content</button>



  <input type="text" id="name" required> -->
	<input type="date" id="date">
	<table border="1" id="result"></table>
	<div id="dialog"></div>

</body>
</html>
