<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>(주)1조 &mdash; No.1 BigData Solution</title>
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
</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
   <jsp:include page="header.jsp" />
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
				<form class="login100-form validate-form flex-sb flex-w" action="joinOk.do" name="joinForm" method="post">
					<span class="login100-form-title p-b-51"> Join </span>

					<legend> ID(E-mail) </legend>
					<div class="wrap-input100 validate-input m-b-16"
						data-validate="이메일을 입력해주세요.">
						<input class="input100" type="email" name="email"
							placeholder="이메일"> 
						<input type="button" class="login100-form-btn" value="아이디 중복 확인" onclick="checkId()">
						<span class="focus-input100"></span>
					</div>

					<legend> Password </legend>
					<div class="wrap-input100 validate-input m-b-16"
						data-validate="비밀번호를 입력해주세요.">
						<input class="input100" type="password" name="pwd"
							placeholder="비밀번호"> <span class="focus-input100"></span>
					</div>
					
					<legend> Password Check</legend>
					<div class="wrap-input100 validate-input m-b-16"
						data-validate="비밀번호를 다시 입력해주세요.">
						<input class="input100" type="password" name="repwd"
							placeholder="비밀번호 확인"> <span class="focus-input100"></span>
					</div>

					<legend> Name </legend>
					<div class="wrap-input100 validate-input m-b-16"
						data-validate="이름을 입력해주세요.">
						<input class="input100" type="text" name="name" placeholder="이름">
						<span class="focus-input100"></span>
					</div>

					<legend> Tel </legend>
					<div class="wrap-input100 validate-input m-b-16" data-validate="번호를 입력해주세요">
						<input class="input33" type="text" name="tel"
							placeholder="010"> <span class="focus-input33"></span> -
						<input class="input33" type="text" name="tel2"
							placeholder="1234"> <span class="focus-input33"></span> -
						<input class="input33" type="text" name="tel3"
							placeholder="5678"> <span class="focus-input33"></span>
					</div>
					<legend> Addr </legend>
					<div class="wrap-input100 validate-input m-b-16"
						data-validate="주소를 입력해주세요.">
						<input class="input100" type="text" name="addr" placeholder="주소">
						<span class="focus-input100"></span>
					</div>
					<div class="container-login100-form-btn m-t-17">
						<input type="submit" class="login100-form-btn" value="Join" onclick="checkWrite()">
					</div>
					
					<div class="wrap-input100 validate-input m-b-16"
						data-validate="중복검사를 실행해주세요." id="IdCheck">
						<input class="input100" type='hidden' id='same'>
						<span class="focus-input100"></span>
					</div>

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
  <script src="js/checkScript.js"></script>
  
  <script type="text/javascript">
	$(document).ready(function () {
	   $(".plusIcon").click(function () {
	        var obj = $(this);
	        if( obj.hasClass("badge-light") ){
	         obj.hide();
	         obj.next().show();           
	         obj.parent().parent().next().show();
	        }else{
	          obj.hide();
	          obj.prev().show();
	          obj.parent().parent().next().hide();
	        }
	   });
	   
	   $('.dropdown-menu list-unstyled success').click(function(){
			  var parent = $(this).parent();
			  if(parent.hasClass('open')) { 
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