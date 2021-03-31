<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>(주)1조 &mdash; No.1 BigData Solution</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<link
	href="https://fonts.googleapis.com/css?family=Oswald:400,700|Muli:300,400,700,900"
	rel="stylesheet">

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
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">
	<jsp:include page="header.jsp" />
	
	<div class="limiter">
		<div class="container-manager">
			
			<div class="row align-items-center">

				<jsp:include page="sidebar.jsp"></jsp:include>
				<c:if test="${view == 'main'}">
					<jsp:include page="manager_main.jsp" />
				</c:if>
				<c:if test="${view == 'memberList'}">
					<jsp:include page="memberList.jsp" />
				</c:if>
				<c:if test="${view == 'boardList'}">
					<jsp:include page="manager_boardList.jsp" />
				</c:if>
				<c:if test="${view == 'noticeList'}">
					<jsp:include page="manager_noticeList.jsp" />
				</c:if>
			</div>
		</div>
	</div>
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

	<script type="text/javascript">
		$(document).ready(function() {
			$(".plusIcon").click(function() {
				var obj = $(this);
				if (obj.hasClass("badge-dark")) {
					obj.hide();
					obj.next().show();
					obj.parent().parent().next().show();
				} else {
					obj.hide();
					obj.prev().show();
					obj.parent().parent().next().hide();
				}
			});

			$('.dropdown-menu list-unstyled success').click(function() {
				var parent = $(this).parent();
				if (parent.hasClass('open')) {
					parent.removeClass('open');
				} else {
					parent.addClass('open');
				}
			});

		});
	</script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>