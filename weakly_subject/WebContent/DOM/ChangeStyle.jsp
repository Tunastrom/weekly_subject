<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.addEventListener("load", init);//기본형
	function init(){
		//메뉴바 rollover 기능에 사용하기 좋은 이벤트
		btn.addEventListener("mouseover",function(){
			result.style.display="none"; 
		});
		btn.addEventListener("mouseout",function(){
			result.style.display=""; 
		});
		img1.addEventListener("error", function(){
			//이미지의 src 변경
			img1.src="../images/Koala.jpg";
		})
		console.log(img1);
	}
</script>
</head>
<body>
	<button type="button" id="btn">숨기기</button>
	<div id="result" style="display:none">남산의 부장들 소개</div>
	<img id="img1" src="../images/Penguins.jpg" onerror="this.src= '../images/Koala.jpg'">
</body>
</html>