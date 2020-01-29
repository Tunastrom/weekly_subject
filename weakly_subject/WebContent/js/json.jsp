<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	//json객체 {}
	let TestDTO = { no:1,exam_nm:"홍길동", exam_no:"첫번째글" }
	
	//json스트링배열 []
	let atrArr = [ "키위","포도","파인애플"]
	
	//객체배열 []
	let TestArr = [ { no:1, exam_nm:"홍길동", exam_no:"1" },
		            { no:2, exam_nm:"김길동", exam_no:"2" }, 
		            { no:1, exam_nm:"정길동", exam_no:"3" } ];
	//TestDTO 작성자 출력
	document.write(TestDTO.exam_nm + "<br>");
	//boardArr 두번째 과일 출력
	document.write(atrArr[1]+"<br>");
	//boardArr의 세번째 게시글의 번호 출력
	document.write(TestArr[2].exam_no+"<br>");
</script>
</head>
<body>
</body>
</html>