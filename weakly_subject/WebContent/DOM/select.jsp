<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select</title>
<script>
	window.addEventListener("load",function init(){
		btnR.addEventListener("click",function(){
			if (subject.selectedIndex > -1){
				//선택항목 오른쪽 추가, 여러건은 for문 사용
				var opt = document.createElement("option");
				opt.text= subject.options[subject.selectedIndex].text;
				choose.add(opt);
				//선택항목 삭제
				subject.remove(subject.selectedIndex);
			} 
			
		})
		
		btnL.addEventListener("click",function(){
			if (subject.selectedIndex > -1){
				//선택항목 왼쪽 추가, 여러건은 for문 사용
				var opt = document.createElement("option");
				opt.text= choose.options[choose.selectedIndex].text;
				subject.add(opt);
				//선택항목 삭제
				choose.remove(choose.selectedIndex);
			}
		})
		
		//btnALL 버튼 이벤트
		btnALL.addEventListener("click",function(){
				var len = subject.length;
				for (i=0; i<len; i++){
					var opt = document.createElement("option");
					opt.text = subject.options[i];
					choose.add(opt);
				}
				for (i=len-1; i>=0; i++){
					subject.remove(i);
				}	
		})
	});
</script>
</head>
<body>
	<select id="subject" multiple="multiple" size="5">
		<option value="java">자바
		<option value="jsp">JSP
		<option value="spring">스프링
	</select>
	<button type="button" id="btnR">▶</button>
	<button type="button" id="btnALL">ALL</button>
	<button type="button" id="btnL">◀</button>
	<select id="choose" multiple="multiple" size="5"></select>
</body>
</html>