<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_event2</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
window.addEventListener("load",function(){
	// var btns = document.getElementsByClassName("btnSelect");
	// 단독 이벤트
/*	for(i=0; i<btns.length; i++) {
		btns[i].addEventListener("click",function(){
		// parentNode,getElementsByTagName[0]
		var td = this.parentNode.parentNode.getElementsByTagName("td")[0];
		alert(td.innerHTML);
		});
	} */
	
	// 그룹 이벤트
	// tbl.addEventListener("click",function(){
	// 	console.dir(event.target)  // 버튼
	// 	console.dir(this)		   // table
	// 	alert(event.target.parentNode.parentNode.getElementsByTagName("td")[0].innerHTML)
	// });
    $("button").on("click",function(){
        alert($(this).parents("tr").children(0).eq(0).text());
        console.log($(this).parents("tr"));
    })
	
});
</script>
</head>
<body>
<table border="1" id="tbl">
	<tbody>
		<tr>
			<td>kim</td>
			<td>30</td>
			<td><button type="button" class="btnSelect">선택</button></td>
		</tr>
		<tr>
			<td>park</td>
			<td>25</td>
			<td><button type="button" class="btnSelect">선택</button></td>
		</tr>
		<tr>
			<td>choi</td>
			<td>40</td>
			<td><button type="button" class="btnSelect">선택</button></td>
		</tr>
	</tbody>
</table>
</body>
</html>