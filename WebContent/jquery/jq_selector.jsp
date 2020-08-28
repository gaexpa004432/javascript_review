<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
<table border="1" id="tb1">
	<tbody id="members"></tbody>

</table>
<script>
var datas = [{id:'chichi', age:30, regdate:'2020/01/02'}, 
			 {id:'hong',   age:20, regdate:'2020/02/02'},
			 {id:'kim',    age:25, regdate:'2020/01/10'},
			 {id:'park',   age:35, regdate:'2020/05/20'}
			]
//배열의 값을 테이블 태그에 출력
 var i = 0;
for(o of datas){
 var row = members.insertRow();
// row.addEventListener("click",function(){
//	 this.childNodes[0].innerHTML="alert";
// })
	for(i in o){
		console.log(o[i]);
 var cell = row.insertCell();
		console.log(o);
  cell.innerHTML= o[i];
		
	}
}

$("td:first-child").css("background-color","violet");
$("td:nth-child(2)").css("background-color","pink");
$("td:nth-child(3)").css("background-color","hotpink");
$("#std").closet("background-color","hotpink");
</script>
</body>
</html>