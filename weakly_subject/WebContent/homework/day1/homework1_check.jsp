<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>homework.jsp</title>
<script>
window.onload = function(){
	var btn = document.getElementById("btnCheck");
	btn.addEventListener("click", inputCheck);
}

function inputCheck(){
//모든 항목 필수입력 체크
var txtArr = document.querySelectorAll("textarea,[type=text]"); 
for(i=0;i<txtArr.length;i++){
	if(txtArr[i].value == "") {
		alert(txtArr[i].id +"가 입력되지 않았습니다.");
		return;
	}
}
//이름은 최소 길이가 5글자 이상인지 체크하고 모두 대문자로 변경하여 출력
	var name = mbName.value; 
	if (mbName.value.length >= 5){
		name = name.toUpperCase();
	} else {
		name += " 5글자 미만";
	}
	result.innerHTML += "이름: "+ name +"<br>";
	
//이메일은 "@"와 "."을 포함하는지 체크하여 true/false 결과 출력
	function isEmail(asValue) {
		var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		return regExp.test(asValue); // 형식에 맞는 경우 true 리턴	
	}
	result.innerHTML += "이메일: " + mbEmail.value + " " + isEmail(mbEmail.value) +"<br>";
	
//등록일자는 날짜 형식이 맞는지 체크하고 년도는 2015~2019년도 사이인지 체크하여 결과 출력
	function isDatetime(d)
	{
    	var re = /^201[5-9][/](0[1-9]|1[0-2])[/](0[1-9]|[1-2][0-9]|3[0-1])$/;
    //         yyyy -       MM      -       dd           hh     :   mm  :   ss
   		return re.test(d);
	}
	result.innerHTML += "등록일자: " + mbDate.value + " " + isDatetime(mbDate.value)+"<br>";

//홈페이지는 http로 시작하는지 체크(regexp)하여 결과 출력
	function isHttp(url){
		var regExp = /^(http?):\/\/([a-z0-9-]+\.)+[a-z0-9]{2,4}.*$/
		return regExp.test(url);
	}
	result.innerHTML += "홈페이지: " + mbHomepage.value + " " + isHttp(mbHomepage.value)+"<br>";

//성적은 소수점 2자리까지만 입력하였는지 체크(regexp)하고 아니라면 둘째자리까지만 변경하여 div에 출력
	function ScoreFormat(score){
		var regExp = /^(\d{1,3}) ([.]\d{0,2}?)?$/;
		return regExp.test(score);	
	}
	var SFormat = Number(mbScore.value);
	console.log(SFormat);
	if ( !ScoreFormat(SFormat) && SFormat != ''){
		mbScore.value = SFormat.toFixed(2);
	} 
	result.innerHTML += "성적: " + SFormat + "<br>";
	
//비고란의  \n(엔터키) 를 <br>태그로 변환(replace)하여 출력
	var text = mbBigo.value;
	var count = 0;
	var index = 0;
	var res="";
	console.log(text.lastIndexOf("\n"));
	while(index<=text.lastIndexOf("\n")){
		index=text.indexOf("\n",index);
		if(index==null){
			return
		};
		count++;
		index++;
	}
	for(i=0;i<count;i++){
		res = text.replace("\n","<br>");
		text = res;
	}
	result.innerHTML += res;
}
</script>
</head>
<body>
<form>
	이름 <input type="text" id="mbName" value="test123"/><br>
	이메일 <input type="text" id="mbEmail" value="t@t"/><br>
	등록일자 <input type="text" id="mbDate" value="2014/12/12"/><br>
	홈페이지 <input type="text" id="mbHomepage" value="yedam.ac"/><br>
	성적 <input type="text" id="mbScore" value="67.123"/><br>
	비고 <textarea id="mbBigo"></textarea>
	<button type="button" id="btnCheck">입력확인</button>
</form>
<div id="result">
</div>
</body>
</html>