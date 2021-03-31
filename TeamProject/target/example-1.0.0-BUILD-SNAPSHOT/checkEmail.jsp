<%@page import="member.dao.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 데이터
	String email = request.getParameter("email");
	// DB
	LoginDAO loginDAO = new LoginDAO();
	boolean exist = loginDAO.isExistId(email);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkIdClose() {
		// opener : 현재 브라우저 기준으로 부모 브라우저를 관리하는 내장 객체입니다.
		opener.joinForm.email.value = "<%=email %>";
		window.close();
		opener.joinForm.pwd.focus();
	}
</script>
</head>
<body>
<%	if(exist) { %>
	<%=email %>는 이미 사용중입니다.<br><br>
	<form action="checkEmail.jsp" method="post">
	아이디 <input type="text" name="email">
		 <input type="submit" value="중복 체크">
	</form>
<%	} else { %>
	<%=email %>는 사용 가능합니다.<br><br>
	<input type="button" value="사용" onclick="checkIdClose()">
<%	} %>
</head>
<body>

</body>
</html>