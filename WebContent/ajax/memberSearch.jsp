<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<body>


<button type="button" onclick="loadDoc()">Change Content</button>



<input type="text" id="name">

<div id="result"></div>
<script>

function loadDoc() {
  var url = $("#name").val();
  console.log(url);
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4) {
    	if( this.status == 200){
    			console.log(this.responseText);
    	var obj = JSON.parse(this.responseText).boxOfficeResult.dailyBoxOfficeList;
      			console.log(obj);
      		for(o of obj){
      			console.log(o);
      			
      		document.getElementById("result").innerHTML += o.movieNm+"<br>";
      		}
      	}else{
      		
      	}
    }else
    	{
    	 document.getElementById("result").innerHTML = "처리중";
    	}
  };
  xhttp.open("GET", "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt="+ url, true);
  xhttp.send();
}
</script>
</body>
</html>