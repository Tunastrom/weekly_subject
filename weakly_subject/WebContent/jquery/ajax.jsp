<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
//== $(document).ready() == window.load()
$(function(){ 
	result.innerHTML = "로딩중";
	$.ajax("./server/getName.jsp", 
			{ async:true //true = 비동기(default), false = 동기
			 ,beforeSend : function(){  }
			 ,cache : false
			 ,data  :  $("#frm").serialize() //frm의 모든 값들을 파라미터화 해라
			 ,dataType : "json" //넘오는 값들을 json으로 파싱하여 받음, default = HTML
		    }) 
    .done(function(data){result.innerHTML = data.name ;})
    .fail(function(){})
    .always(function(){});
    console.log("ajax end");
});

	
</script>
</head>
<body>
<form id="frm" name="frm">
    <input name="no" value="">
	<input name="name" value="">
</form>
<div id="result"></div>
</body>
</html>