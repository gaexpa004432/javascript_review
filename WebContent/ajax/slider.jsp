<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  <style type="text/css">
  img {
  width : 200px;
  }
  </style>
<script>
$(function(){
	$(function(){
		  $('.bxslider').bxSlider({
		    mode: 'fade',
		    captions: true,
		    slideWidth: 200,
		    slideMargin : 10,
		    infiniteLoop : "true",
		    easing : "ease-in",
		    pagerCustom: "#bx-pager"
		  });
		});
})
</script>
</head>
<body>
<div class="bxslider">
  <div><img src="../images/Koala.jpg" ></div>
  <div><img src="../images/scta.png" ></div>
  <div><img src="../images/Penguins.jpg" ></div>
  <div><img src="../images/111.gif" ></div>
  <div><img src="../images/Chrysanthemum.jpg" ></div>
  <div><img src="../images/Hydrangeas.jpg" ></div>
  <div><img src="../images/Jellyfish.jpg" ></div>
  <div><img src="../images/Lighthouse.jpg" ></div>
</div>

<div class="bx-pager">
  <a data-slide-index="0" href=""><img src="../images/Koala.jpg" ></a>
  <a data-slide-index="1" href=""><img src="../images/scta.png" ></a>
 <a data-slide-index="2" href=""><img src="../images/Penguins.jpg" ></a>
  <a data-slide-index="3" href=""><img src="../images/111.gif" ></a>
  <a data-slide-index="4" href=""><img src="../images/Chrysanthemum.jpg" ></a>
  <a data-slide-index="5" href=""><img src="../images/Hydrangeas.jpg" ></a>
  <a data-slide-index="6" href=""><img src="../images/Jellyfish.jpg" ></a>
 <a data-slide-index="7" href=""><img src="../images/Lighthouse.jpg" ></a>
</div>
</body>
</html>