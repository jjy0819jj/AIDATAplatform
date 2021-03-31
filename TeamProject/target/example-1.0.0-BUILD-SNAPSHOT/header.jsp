<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>(주)1조 &mdash; No.1 BigData Solution</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


	
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
<link rel="stylesheet" href="css/header2.css">



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


		<header class="site-navbar py-4 js-sticky-header site-navbar-target"
			role="banner">

			<div class="container-fluid">
				<div class="d-flex align-items-center">
					<div class="site-logo">
						<a href="index.do" class="text-uppercase"><img
							src="images/logo.png" width="100" height="100" alt="Logo"></a>
					</div>
					<div>
						<nav class="site-navigation position-relative text-right"
							role="navigation">
							<ul
								class="site-menu main-menu js-clone-nav mr-auto d-none d-xl-block">

								<li class="dropdown"><a href="#" class="nav-link" data-toggle="dropdown">COMPANY</a>
									<ul class="dropdown-menu list-unstyled success">
										<li><a href="index.jsp#home2-section">(주)1조</a></li>
										<li><a href="index.jsp#ceo-hello-section">CEO 인사말</a></li>
										<li><a href="index.jsp#ceo-history-section">회사연혁</a></li>
										<li><a href="index.jsp#ceo-vision-section">미션 및 비전</a></li>
									</ul></li>

								<li class="dropdown"><a href="#" class="nav-link" data-toggle="dropdown">PRODUCTS</a>
									<ul class="dropdown-menu list-unstyled success">
										<li><a href="index.jsp#work-section">전체보기</a></li>
										<li><a
											href="http://localhost:8080/example/index.jsp#gallery-5">RemoteView™</a></li>
										<li><a
											href="http://localhost:8080/example/index.jsp#gallery-6">Aiworks㉿</a></li>
										<li><a
											href="http://localhost:8080/example/index.jsp#gallery-7">IljoMatrix™</a></li>
										<li><a
											href="http://localhost:8080/example/index.jsp#gallery-8">ICTtedworks™</a></li>
										<li><a
											href="http://localhost:8080/example/index.jsp#gallery-9">BlockTTo㉿</a></li>
									</ul>
									</li>
								

								<li class="dropdown"><a href="#" class="nav-link" data-toggle="dropdown">RESOURCES</a>
									<ul class="dropdown-menu list-unstyled success">
										<li><a href="index.jsp#news-section">뉴스레터</a></li>
										<li><a href="index.jsp#notice-section">공지사항</a></li>
										<li><a href="index.jsp#video-section">홍보영상</a></li>
									</ul></li>

								<li class="dropdown"><a href="#" class="nav-link" data-toggle="dropdown">RECRUIT</a>
									<ul class="dropdown-menu list-unstyled success">
										<li><a href="index.jsp#recruit-section">채용공고</a></li>
										<li><a href="index.jsp#people">인재상</a></li>
										<c:if test="${sessionScope.email != null}">
										<li><a href="application.do">입사지원</a></li>
										</c:if>
										<li><a href="mypage.do">마이페이지</a></li>
									</ul></li>

								<li class="dropdown"><a href="#" class="nav-link" data-toggle="dropdown">CONTACT
										US</a>
									<ul class="dropdown-menu list-unstyled success">
										<li><a href="index.jsp#contact-section">찾아오시는 길</a></li>
										<li><a href="index.jsp#fnq-section">Q&A</a></li>
										<li><a href="index.jsp#question-section">문의하기</a></li>
									</ul></li>
									</ul>
						</nav>
					</div>
					<div class="ml-auto">
						<c:choose>
						<c:when test="${sessionScope.email == null}">
						<nav class="site-navigation2 position-relative text-right"
							role="navigation">
							
							<ul
								class="site-menu main-menu site-menu-dark js-clone-nav mr-auto d-none d-xl-block">
								<li><a href="join.do" class="nav-link">JOIN</a></li>
								<li class="cta"><a href="login.do" class="nav-link"><span
										class="border bg-danger rounded text-white border-danger">LOGIN</span></a></li>
							</ul>
						</nav>
						</c:when>
						<c:otherwise>
							<nav class="site-navigation2 position-relative text-right"
							role="navigation">
							
							<ul
								class="site-menu main-menu site-menu-dark js-clone-nav mr-auto d-none d-xl-block">
								<li><span>${sessionScope.name}님</span></li>
								<li class="cta"><a href="logout.do" class="nav-link"><span
										class="border bg-danger rounded text-white border-danger">logout</span></a></li>
							</ul>
						</nav>
						</c:otherwise>
					</c:choose>
						<a href="#"
							class="d-inline-block d-xl-none site-menu-toggle js-menu-toggle float-right"><span
							class="icon-menu h3"></span></a>
					</div>
				</div>
			</div>

		</header>

	<!-- .site-wrap -->

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
	<script src="js/main.js"></script>
	<script type="text/javascript"
		src=" http://maps.google.com/maps/api/js?v=3.3&sensor=true"></script>
	<script src="js/maps.js"></script>
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
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>