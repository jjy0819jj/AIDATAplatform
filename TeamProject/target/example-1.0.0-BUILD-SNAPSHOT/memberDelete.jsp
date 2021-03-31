<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
if(${su > 0}) {
	alert("회원정보 삭제 완료")
	location.href="manager.do?pg=1";
} else { 
	alert("회원정보 삭제 실패")
	location.href="manager.do?pg=1";
} 
</script>
</head>
<body>

</body>
</html>