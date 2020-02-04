<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>req.jsp</title>
<script>
window.addEventListener("load", function(){
	btn.addEventListener("click", loadDoc);
});

function loadDoc() {
	  var xhttp = new XMLHttpRequest(); //xhr객체 생성
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	   		var res = xhttp.responseText; // String값 반환
	   		var obj = JSON.parse(res); //String 값 가진 res JSON타입으로 반환
	    	txtNO.value=obj.no;
	   		txtName.value=obj.name;
	    	}
	  	}
	                      //쿼리문자열 url? 변수명=값&변수명=값
	  xhttp.open("GET", "../GetJSON.do?", true);
	                                      //async 여부
	  xhttp.send();
	}
</script>
</head>
<body>
	<h3>ajax JSON연습</h3>
	 이름검색
	 <input id="txtNO">
	 <input id="txtName">
	<button type="button" id="btn">요청</button> 
</body>
</html>