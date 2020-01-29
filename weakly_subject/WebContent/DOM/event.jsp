<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event.jsp</title>
<script>
	window.addEventListener("load",init);
	function init(){
		//이벤트 전파 예시
		divItem.addEventListener("click",function(){
			alert('goodgood');
		});
		btn.addEventListener("click",function(e){
			alert('goodgood');
			e.stopPropagation();//전파중지메ㅅㅓ드
		});
	}
</script>
</head>
<body>
	<div id="divItem">
		<button type="button" id="btn">버튼</button>
	</div>
</body>
</html>