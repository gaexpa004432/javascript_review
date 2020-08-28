<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	$("#btnList").on("click",function(){
  var url_add = $("#name").val();
  var url ="http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt="+ url_add;
	$.getJSON(url,function(obj){
		var list = obj.boxOfficeResult.dailyBoxOfficeList;
		for(o of list){
			
			var tr = $("<tr>").append($("<td>").text(o.movieCd)).append($("<td>").text(o.movieNm));
        console.log(o.movieNm);
			$("#result").append(tr);
		};
	});
	});
});

</script>
</head>
<body>


<button type="button" id="btnList">Change Content</button>



<input type="text" id="name">

<table border="1" id="result"></table>

</body>
</html>
