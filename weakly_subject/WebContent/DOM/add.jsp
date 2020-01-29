<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.back{background-color: cyan;}
	.back:hover {background-color: red;}
</style>
<script>
	window.addEventListener("load",function(){
		btn.addEventListener("click", function(){
			//div에 input태그 추가
			var newinput = document.createElement("input");
			//태그의 속성지정
			newinput.type="text";
			//value에 "홍길동"
			newinput.value="홍길동";
			newinput.classList.add('back'); //<input class="back">
			
	/*		//배경색을 yellow로 지정
			newinput.style.backgroundColor="yellow";
			//event mouseover시에 배경색을 blue로 변경
			newinput.addEventListener("mouseover",function(){
				newinput.style.backgroundColor="blue";
			})
			newinput.addEventListener("mouseout",function(){
				newinput.style.backgroundColor="yellow";
			}) */
			
			result.appendChild(newinput);
		});
	})
</script>
</head>
<body>
<button type="button" id="btn">추가</button>
<div id="result"></div>
</body>
</html>