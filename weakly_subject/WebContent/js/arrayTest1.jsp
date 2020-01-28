<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../2weak/jquery.min.js"></script>
</head>
<body>
<input type="text" value="java">
<input type="text" value="jsp">
<input type="text" value="spring">
<button type="button" id="btnResult">결과확인</button>
<div id="result"></div>
<script>
	let strArr = [];
	btnResult.addEventListener("click", funcToArray);
	
	function funcToArray(){
		let inputArr = document.getElementsByTagName("input");
		if ($("#result") == null){
			//type이 "text"인 텍스트필의 입력값을 배열에 저장
			for(i=0; i<inputArr.length; i++){
				strArr.push(inputArr[i].value);
			}
			//strArr값을 div에 출력
			result.innerHTML = strArr.join("-");
		} 
		 //반복하면 계속 div에 추가됨 
		
	}
</script>
</body>
</html>