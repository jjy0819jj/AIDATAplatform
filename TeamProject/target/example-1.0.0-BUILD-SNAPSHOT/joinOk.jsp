<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	if(${su > 0}) {
		alert("회원가입이 완료되었습니다.")
		location.href="index.do";
	} else { 
		alert("회원가입에 실패하셨습니다.")
		location.href="join.do";
	} 
	
</script>
</head>
<body>

</body>
</html>