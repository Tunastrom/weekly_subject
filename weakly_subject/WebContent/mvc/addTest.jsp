<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시험지등록 (5 of 6)</title>
<script src="jquery.min.js"></script>
<script type="text/javascript" src="input_Check.js"></script>
<style type="text/css">
    tr, td { height: 60px; }
	.input { width: 500px; padding: 5px; height:35px;
	         margin-left: 20px; border-style: solid;
	         border-style: solid; border-width: thin;
	         border-color: gray; border-radius: 5px; } 
	.input_short { width: 150px; padding: 5px; height:35px;
	               margin-left: 20px; border-style: solid;
	               border-style: solid; border-width: thin;
	               border-color: gray; border-radius: 5px; } 
    .input_h { width: 700px; padding: 5px; height: 70px; 
	           margin-left: 20px; border-style: solid;
	           border-style: solid; border-width: thin;
	           border-color: gray; border-radius: 5px; }
	select { width: 150px; height: 40px; padding: 5px;
	         margin-left: 20px; border-style: solid;
	         border-width: thin; border-color: gray; border-radius: 5px; }
	.radio { margin: 10px; width: 20px; height:20px; padding: }
	.r_font { font-size: 15px; }
	.apply { height: 40px; width: 80px; font-size: 20px; 
	         color: white; background-color: SteelBlue; 
	         border-style: solid; border-width: thin; 
	         border-color: SteelBlue ; border-radius: 5px; }
	.cancle{ height: 40px; width: 80px; margin-left: 10px; 
	         font-size: 20px; color: white; background-color: Gold; 
	         border-style: solid; border-width: thin; 
	         border-color: Gold ; border-radius: 5px; }
</style>
<script>
$(function(){
	var radio_id;
	var radio_stat;
	
	$(".radio_parents").children().hover(function(){
		radio_id=$(this).attr("id");                             
		radio_stat = $('#'+radio_id).prop("checked");    console.log(radio_stat);
	});
	
	$(".radio_parents").children().click(function(){
		if (radio_stat == true) {
			$('#'+radio_id).prop("checked", false); 
		} else {
			$('#'+radio_id).prop("checked", true);  
		} 
	})
	
	$(".radio_parents").children().mouseup(function(){
		radio_stat=$('#'+radio_id).prop("checked");  console.log(radio_stat);
	});
	
	$(".r_font").hover(function(){
		radio_id=$(this).prev().attr("id");     console.log(radio_id);
		radio_stat = $('#'+radio_id).prop("checked");    console.log(radio_stat);
	});
	
	$("r_font").click(function(){
		if (radio_stat == true) {
			$('#'+radio_id).prop("checked", false); 
		} else {
			$('#'+radio_id).prop("checked", true);  
		} 
	});
	
	$("r_font").mouseup(function(){
		radio_stat=$('#'+radio_id).prop("checked");  console.log(radio_stat);
	});
});
</script>
</head>
<body>
	<div style="margin: 200px;">
	    <font style="font-size: 24px; font-weight: bold;" >시험지등록</font>
	    <form id="frm" name="frm" action="testlist1.html" method="post" onsubmit="return testFormCheck()">
		<table style="margin: 25px 0px 0px 25px;">
		    <caption align="bottom" style="margin-top: 20px;">
					<div>
					   <button type="submit" class="apply">등록</button>
					   <button type="button" class="cancle" onclick="location.href='testlist1.html'">목록</button>
					</div> 
			</caption>
			<tr>
				<th width="100">시험명</th>
				<td colspan="4">
					<input type="text" name="testName" class="input" value="신입사원 레벨 테스트">
				</td>
			</tr>
			<tr>
				<th>문항 수</th>
				<td style="width: 210px;">
					<input type="text" name="questCount" class="input_short" value="10">
				</td>
				<th align="right">시험시간</th>
				<td>
					<input type="text" name="testTime" class="input_short"  value="1시간">
				</td>
			</tr>	
			<tr>
				<th>시험종목</th>
				<td>
					<select>
				       <option value="001">데이터베이스</option>
				       <option value="002">자바</option>
				       <option value="003">오라클</option>
				    </select>
				</td>
			</tr>	
			<tr>
				<th>상세정보</th>
				<td colspan="4">
					<input type="text" name="details" class="input_h" value="예담 주식회사 2020년 신입사원 공채 실기 테스트입니다.">
				</td>
			</tr>	
			<tr>
				<th>출제유형</th>
				<td colspan="3">
					<div>
						<span class="radio_parents">
							<input type="radio" class="radio" name="type1" id="type1" value="R" checked>
						    <font class="r_font">랜덤출제</font>
						</span>
						<span class="radio_parents">
							<input type="radio" class="radio" name="type2" id="type2" value="A">
						    <font class="r_font">고정출제</font>
						</span>
					</div>
				</td>
			</tr>				
		</table>
		</form>
	</div>
</body>
</html>