<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script>

$(window).on("load", init);
function init(){
    var sum =0;
    for(var i =0; i < $("td:nth-child(2)").length; i++){
   sum += parseInt($("td:nth-child(2)").eq(i).text());
    }
    $("#kor").text(sum);
$(document).ready( function () {
    $('#tbl').DataTable();
} );

   }
	
</script>
</head>
<body>
<table border="1" id="tbl">
	<thead>
		<tr>
			<th>이름</th>
			<th>국어</th>
			<th>영어</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>kim</td>
			<td>90</td>
			<td>80</td>
		</tr>
		<tr>
			<td>park</td>
			<td>60</td>
			<td>100</td>
		</tr>
		<tr>
			<td>choi</td>
			<td>40</td>
			<td>100</td>
		</tr>			
	</tbody>
</table>
<div>국어합계: <span id="kor"></span></div>
</body>
</html>