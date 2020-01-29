<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>homework3_date.jsp</title>
<script>
	window.addEventListener("load",function(){
		//버튼 클릭 이벤트 지정
		btnCalc.addEventListener("click",function(){
			var inputDate = inDate.value;
			console.log(inputDate);
			//입력날짜와 오늘 날짜까지의 일수 계산하여 div에 출력 "남은 일수는 00일입니다."
			var inputArr=[];
			var Sindex=0;
			var Lindex=4
			var Arrindex=0;
			while(Lindex<=8){
				inputArr[Arrindex] = String(inputDate.slice(Sindex,Lindex));
				console.log(inputArr[Arrindex]);
				if (Sindex == 0){
					Sindex += 4;
				} else {
					Sindex += 2;
				}
				Lindex += 2;
				Arrindex++;
			}
			inputDate = inputArr.join(",");
			console.log(new Date());
			console.log(inputDate);
			var result1 = (new Date() - new Date(inputDate));
			console.log(result1);
			console.log(result1/1000/60/60/24); 
			var result2 = result1/1000/60/60/24;
			result.innerHTML="오늘로부터 "
			if (result2 >= 1){
				result.innerHTML+=Math.round(result2)+"일 전";
			} else if (result2 < 0){
				result.innerHTML+= Math.round(result2)*-1+"일 후"
			} else {
				result.innerHTML="그날은 오늘입니다"
			}
		
			//반올름해서 출력 할 것
		});
	
		
		
		
		//날짜 연산 가능함 
		//var a = new Date() - new Date(2020,0,10); //밀리세컨드 long int
		//console.log(a / 1000 / 60 / 60 /24 );  
	});
</script>
</head>
<body>
날짜 카운터다운<br>
<input id="inDate"><button type="button" id="btnCalc">계산</button>
<div id="result"></div>
</body>
</html>