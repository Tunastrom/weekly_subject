<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	//타이머연습
	//반복실행할 함수
	function printTime(){
		result.innerHTML = (new Date().getSeconds());
	}
	window.addEventListener("load", function(){
		window.setInterval(printTime, 1000);
		//기본함수는(alert등) 원래 window 객체에 속해 있지만 생략해서 쓸수 있는 것
		//이미지변경 타이머 지정
		setInterval(function(){
			var target = document.getElementsByTagName("img");
			var index = Math.floor(Math.random()*3);
				target[0].src = imgs[index];
		},1000)
	});
	//이미지배열
	var imgs = ["../images/Lighthouse.jpg",
				"../images/Jellyfish.jpg",
		        "../images/Hydrangeas.jpg"];
</script>
</head>
<body>
<div id="result"></div>
<img src="../images/Lighthouse.jpg">
</body>
</html>