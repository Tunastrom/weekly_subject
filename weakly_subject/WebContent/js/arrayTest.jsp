<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img { width: 200px; }
</style>
<script>
	window.onload = function(){
		 var result = "";
		//모든 이미지의 alt 속성만 div에 출력
		 var imgArr = document.getElementsByTagName("img");
		 console.log(imgArr);
		 for (i=0; i<imgArr.length; i++){
			 result += imgArr[i].alt + " ";
		 }
		 document.getElementById("result").innerHTML = "<br>"+result;
 	}
</script>
</head>
<body>
<img src="../images/Chrysanthemum.jpg" alt="국화">
<img src="../images/Desert.jpg" alt="사막">
<img src="../images/Penguins.jpg" alt="펭귄">
<div id="result"></div>
</body>
</html>