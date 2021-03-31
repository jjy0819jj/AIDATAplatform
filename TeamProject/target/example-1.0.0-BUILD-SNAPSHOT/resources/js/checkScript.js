var check = false;

function checkWrite() {
	var frm = document.joinForm;
	if(check != true) {
		alert("아이디 중복검사를 먼저 실행해주세요.");
	} else if(frm.pwd.value != frm.repwd.value) {
		alert("비밀번호가 맞지 않습니다.");
		frm.repwd.focus();
	} else {
		//frm.submit();
		document.getElementById("same").value = "CheckOK";
	}
}

function checkId() {
	var sId = document.joinForm.email.value;
	if (sId == "") {
		alert("먼저 아이디를 입력하세요.");
		document.joinFrom.email.focus();
	} else {
		window.open("checkEmail.jsp?email=" + sId, "",
				"width=350 height=100 left=500 top=200");
		var Idcheck = document.getElementById('IdCheck');
		Idcheck.style.display = 'none';
	}
	check = true;
}