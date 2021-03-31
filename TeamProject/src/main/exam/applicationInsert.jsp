<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	if(${su > 0}) {
		alert("입사지원 완료 되었습니다.")
		location.href="mypage.do";
	} else { 
		alert("입사지원 실패")
		location.href="applicationList.do?pg=1";
	} 
</script>
</head>
<body>

</body>
</html>