function questFormCheck(){
	if (frm.qeustion.value==""){
		alert("문제이름을 입력하세요");
		frm.qeustion.focus();
		return false;
	}
	if (frm.selection1.value==""){
		alert("보기1을 입력하세요");
		frm.selection1.focus();
		return false;
	}
	if (frm.selection2.value==""){
		alert("보기2를 입력하세요");
		frm.selection2.focus();
		return false;
	}
	if (frm.selection3.value==""){
		alert("보기3을 입력하세요");
		frm.selection3.focus();
		return false;
	}
	if (frm.selection4.value==""){
		alert("보기4를 입력하세요");
		frm.selection4.focus();
		return false;
	}
	if (frm.selection4.value==""){
		alert("보기4를 입력하세요");
		frm.selection4.focus();
		return false;
	}
	if (frm.comment.value==""){
		alert("해설을 입력하세요");
		frm.comment.focus();
		return false;
	}
	if (!frm.score1.checked
		&& !frm.score2.checked
		&& !frm.score3.checked
		&& !frm.score4.checked){
		alert("정답을 입력하세요");
		frm.score1.focus();
		return false;
	}
	return true;
}

function testFormCheck(){
	if (frm.testName.value==""){
		alert("시험명을 입력하세요");
		frm.testName.focus();
		return false;
	}
	
	if (frm.questCount.value == ""){
		alert("문항수를 입력하세요");
		frm.questCount.focus();
		return false;
	}
		
	if (frm.testTime.value==""){
		alert("시험시간을 입력하세요");
		frm.testTime.focus();
		return false;
	}
	if (frm.details.value==""){
		alert("상세정보를 입력하세요");
		frm.details.focus();
		return false;
	}
	if (!frm.type1.checked
		&& !frm.type2.checked){
		alert("정답을 입력하세요");
		frm.type1.focus();
			return false;
		}
	return true;
}
