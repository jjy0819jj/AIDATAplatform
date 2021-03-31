<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<link href="https://fonts.googleapis.com/css?family=Oswald:400,700|Muli:300,400,700,900" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <link rel="stylesheet" href="css/jquery.fancybox.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="css/aos.css">
	<link rel="stylesheet" href="css/style.css">
	<style>
table {
text-align: center;
}

th {
background-color: #352961;
text-align: center;
color: white;
}
</style>
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
<jsp:include page="header.jsp" />
<div class="limiter">
<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
				<form class="login100-form validate-form flex-sb flex-w" name="form1" method="post" action="login.do">
					<div class="col-lg-6 mb-5">
						<h2 class="section-title">MyPage</h2>
					</div>
					<table class="table table-hover" id="contents">
						<tbody>
							<tr>
								<td>이름</td>
								<td>${memberDTO.name}</td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td>${memberDTO.tel}-${memberDTO.tel2}-${memberDTO.tel3}</td>
							</tr>
							<tr>
								<td>직책</td>
								<c:if test="${memberDTO.member_code == 1}">
								<td>관리자</td>
								</c:if>
								<c:if test="${memberDTO.member_code == 2}">
								<td>사장</td>
								</c:if>
								<c:if test="${memberDTO.member_code == 3}">
								<td>부장</td>
								</c:if>
								<c:if test="${memberDTO.member_code == 4}">
								<td>대리</td>
								</c:if>
								<c:if test="${memberDTO.member_code == 5}">
								<td>사원</td>
								</c:if>
								<c:if test="${memberDTO.member_code == null}">
								<td>로그인 후 이용하시기 바랍니다.</td>
								</c:if>
								<c:if test="${memberDTO.member_code == 6}">
								<td>일반회원</td>
								</c:if>
							</tr>
							<tr>
								<td>입사일</td>
								<td>${memberDTO.startwork}</td>
							</tr>
							<tr>
								<td>주소</td>
								<td>${memberDTO.addr}</td>
							</tr>
							<tr>
								<td>입사지원서</td>
								<td>${memberDTO.file_name}</td>
							</tr>
						</tbody>
					</table>
					</form>
				</div>
			</div>
			</div>
  <jsp:include page="footer.jsp"/>
	
	<script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/main1.js"></script>
  <script src="//netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</body>
</html>