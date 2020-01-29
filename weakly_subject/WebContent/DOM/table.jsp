<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table,td{
		border: 1px solid black; display: inline-block; }
	div {
		border: 1px solid black; }
</style>
<script>
	window.addEventListener("load", function(){
		var row = tbl2.insertRow(0);
		var cell1 = row.insertCell(0);
		var cell2 = row.insertCell(1);
		cell1.innerHTML="홍길동";
		cell2.innerHTML="100";
		
//tr태그에 더블클릭 이벤트 지정. 선택한 행을 오른쪽(tbl2)으로 이동 
		var rows1 = tbl1.rows
		for(i=0; i<tbl1.rows.length; i++){
			var select = tbl1.rows[i];
				select.addEventListener("click",function(){
				tbl2.rows[tbl2.rows.length].append(select);
				tbl1.deleteRow(select.rowIndex);
			});	
		}
		
		var trs = document.querySelectorAll("#tbs1 tr");
		var tblBody = document.querySelectAll("#tbl2 tbody");
		for (i=0; i<trs.length; i++){
			trs[i].addEventListener("click",function(){
					
			});	
		}
			
	/*	tr2.addEventListener("click",function(){
			tbl2.append(tr2);
			tbl1.deleteRow(tr2.rowIndex);
		}); */
		
		
	});
	//element.appendChild()
	//element.insertBefore(p1,pw)
	//                 넣는 것  기준   
</script>
</head>
<body>
<table id="tbl1">
	<tr id="tr1"><td>1</td><td>2</td></tr>
	<tr id="tr2"><td>1</td><td>2</td></tr>
</table>
<table id="tbl2">
</table>

<div id="div1">
	<p id="p1">this is a paragraph.</p>
	<p id="p2">this is another paragraph.</p>
</div>

<div id="div2"></div>
</body>
</html>