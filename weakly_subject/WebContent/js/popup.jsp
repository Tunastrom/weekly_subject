<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>popup.jsp (주소찾기)</title>
<script>
	window.addEventListener("load",function(){
		document.addEventListener("click",function(e){
			if (e.target.tagName == "SPAN"){
				//e.target이 a태그 인지 체크
				e.preventDefault();
				//a태그의 원래기능을 막음
				console.dir(e.target);
				//console.dir(this);
				var src = e.target.parentNode;
				var addrs = src.getElementsByTagName("span");
				console.log(addrs[0].innerHTML);
				console.log(addrs[1].innerHTML);
				//opener.frm.addr.value=e.target.innerHTML;
				//var param = { addr1 : addrs[0].innerHTML,
				//		      addr2 : addrs[1].innerHTML };
				var param = {};
				for (i=0; i<addrs.length ; i++){
					var 
				}
				opener.setAddr(param);
				//window.close();
				//팝업창에서
				//window 자기자신창
				//opener 팝업이 발생한 창
			}
		});
		//바디태그 찾아감
	});
</script>
</head>
<body>
	<a href="#"><span>대구</span><span>중구</span></a>
	<a href="#"><span>서울</span><span>강남구</span></a>
	<a href="#"><span>부산</span><span>연산구</span></a>
</body>
</html>