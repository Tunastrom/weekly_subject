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
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	    xmlDoc= xhttp.responseXML;
	    var table="<tr><th>no</th><th>name</th></tr>";
	    var x = xmlDoc.getElementsByTagName("");
	    for (i = 0; i <x.length; i++) {
	      table += "<tr><td>" +
	      x[i].getElementsByTagName("ARTIST")[0].childNodes[0].nodeValue +
	      "</td><td>" +
	      x[i].getElementsByTagName("TITLE")[0].childNodes[0].nodeValue +
	      "</td></tr>";
	    }
	    document.getElementById("demo").innerHTML = table;
	  }
	  var param = "no="+txtNO.value; 
	                      //쿼리문자열 url? 변수명=값&변수명=값
	  xhttp.open("GET", "../GetXML.do?" + param, true);
	  xhttp.send();
	}
</script>
</head>
<body>
	<h3>ajax 연습</h3>
	 이름검색
	 <input id="txtNO">
	 <input id="txtName">
	<button type="button" id="btn">요청</button> 
</body>
</html>