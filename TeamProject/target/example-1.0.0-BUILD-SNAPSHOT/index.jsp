<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>(주)1조 &mdash; No.1 BigData Solution</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=df5388bf84e3bd08e358ad5dc1edc8e7"></script>
<link
	href="https://fonts.googleapis.com/css?family=Oswald:400,700|Muli:300,400,700,900"
	rel="stylesheet">

<link rel="stylesheet" href="fonts/flaticon2/font/flaticon.css">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/jquery.fancybox.min.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
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


	<div id="overlayer"></div>
	<div class="loader">
		<div class="spinner-border text-primary" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>


	<div class="site-wrap">

		<div class="site-mobile-menu site-navbar-target">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>


		<!-- header -->
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
										<li><a href="#home2-section">(주)1조</a></li>
										<li><a href="#ceo-hello-section">CEO 인사말</a></li>
										<li><a href="#ceo-history-section">회사연혁</a></li>
										<li><a href="#ceo-vision-section">미션 및 비전</a></li>
									</ul></li>

								<li class="dropdown"><a href="#" class="nav-link" data-toggle="dropdown">PRODUCTS</a>
									<ul class="dropdown-menu list-unstyled success">
										<li><a href="#work-section">전체보기</a></li>
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
										<li><a href="#news-section">뉴스레터</a></li>
										<li><a href="#notice-section">공지사항</a></li>
										<li><a href="#video-section">홍보영상</a></li>
									</ul></li>

								<li class="dropdown"><a href="#" class="nav-link" data-toggle="dropdown">RECRUIT</a>
									<ul class="dropdown-menu list-unstyled success">
										<li><a href="#recruit-section">채용공고</a></li>
										<li><a href="#people">인재상</a></li>
										<c:if test="${sessionScope.email != null}">
										<li><a href="application.do?pg=1">입사지원</a></li>
										</c:if>
										<li><a href="mypage.do">마이페이지</a></li>
									</ul></li>

								<li class="dropdown"><a href="#" class="nav-link" data-toggle="dropdown">CONTACT
										US</a>
									<ul class="dropdown-menu list-unstyled success">
										<li><a href="#contact-section">찾아오시는 길</a></li>
										<li><a href="#fnq-section">Q&A</a></li>
										<li><a href="#question-section">문의하기</a></li>
									</ul></li>
									</ul>
						</nav>
					</div>
					<div class="ml-auto">
						<c:choose>
						<c:when test="${sessionScope.email == null}">
						<nav class="site-navigation position-relative text-right"
							role="navigation">
							
							<ul
								class="site-menu main-menu site-menu-dark js-clone-nav mr-auto d-none d-xl-block">
								<li><a href="join.do" class="nav-link">JOIN</a></li>
								<li class="cta"><a href="login.do" class="nav-link"><span
										class="border bg-danger rounded text-white border-danger">LOGIN</span></a></li>
							</ul>
						</nav>
						</c:when>
						<c:when test="${sessionScope.email == 'manager@1jo.com'}">
						<nav class="site-navigation position-relative text-right"
							role="navigation">
							<ul
								class="site-menu main-menu site-menu-dark js-clone-nav mr-auto d-none d-xl-block">
								<li><span>${sessionScope.name}님</span></li>
								<li class="cta"><a href="manager.do" class="nav-link"><span
										class="border bg-danger rounded text-white border-danger">관리자페이지</span></a></li>
								<li class="cta"><a href="logout.do" class="nav-link"><span
										class="border bg-danger rounded text-white border-danger">logout</span></a></li>
							</ul>
						</nav>
						</c:when>
						<c:otherwise>
							<nav class="site-navigation position-relative text-right"
							role="navigation">
							
							<ul
								class="site-menu main-menu site-menu-dark js-clone-nav mr-auto d-none d-xl-block">
								<li><span>${sessionScope.name}님</span></li>
								<li class="cta"><a href="mypage.do" class="nav-link"><span
										class="border bg-danger rounded text-white border-danger">내정보</span></a></li>
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


		<!-- home-section -->
		<div class="intro-section custom-owl-carousel" id="home-section">
			<jsp:include page="home.jsp"/>
		</div>
		

		<!-- home-section2(love our works) -->
		<div class="site-section section-1" id="home2-section">
			<jsp:include page="home2.jsp"/>
		</div>

		<!-- ceo-hello-section -->
		<div class="site-section" id="ceo-hello-section" data-aos="fade">
			<jsp:include page="ceo_hello.jsp"/>
		</div>
		
		<!-- ceo-history-section -->
		<div class="site-section" id="ceo-history-section" data-aos="fade">
			<jsp:include page="ceo_history.jsp"/>
		</div>
		
		<!-- ceo-vision-section -->
		<div class="pricing-wrap bg-primary pricing-counter" id="ceo-vision-section" data-aos="fade">
			<jsp:include page="ceo_vision.jsp"/>
		</div>
		
		
		<<!-- work-section -->
		<div class="site-section section-2" id="work-section" data-aos="fade">
			<jsp:include page="work.jsp"/>
		</div>



		<!-- news-section -->
		<div class="site-section testimonial-wrap custom-owl-carousel"
			id="news-section">
			<jsp:include page="news.jsp"/>
		</div>


		<!-- notice-section -->
		<div class="site-section" id="notice-section" data-aos="fade">
			<jsp:include page="notice.jsp"/>
		</div>
		
		<!-- video-section -->
		<div class="site-section" id="video-section" data-aos="fade">
			<jsp:include page="video.jsp"/>
		</div>
		
		<!-- recruit-section -->
		<div class="site-section bg-light" id="recruit-section" data-aos="fade">
			<jsp:include page="recruit.jsp"/>
		</div>
		
		<!-- people-section -->
		<div id="people">
			<jsp:include page="people.jsp"/>
		</div>

		<!-- contact-section -->
		<div class="site-section" id="contact-section" data-aos="fade">
			<jsp:include page="contact.jsp"/>
		</div>
		
		<div class="site-section" id="fnq-section" data-aos="fade">
			<jsp:include page="boardList.jsp"/>
		</div>
		
		<!-- question-section -->
		<div class="site-section" id="question-section" data-aos="fade">
			<jsp:include page="question.jsp"/>
		</div>
		

		<!-- footer -->
		<footer class="footer-section bg-light">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<h3>A b o u t U s</h3>
						<ul class="list-unstyled footer-links">
							<li><a class="smoothscroll">전 자 정 보 공 시</a></li>
							<li><a class="smoothscroll">내 부 정 보 관 리 규 정</a></li>
							<li><a class="smoothscroll">개 인 정 보 처 리 방 침</a></li>
						</ul>
					</div>

					<div class="col-md-3 ml-auto">
						<h3>s i t e l i n k s</h3>
						<ul class="list-unstyled footer-links">
							<li><a href="#home-section" class="smoothscroll">C O M P A N Y</a></li>
							<li><a href="#work-section" class="smoothscroll">P R O D U C T S</a></li>
							<li><a href="#news-section" class="smoothscroll">R E S O U R C E S</a></li>
							<li><a href="#recruit-section" class="smoothscroll">R E C R U I T</a></li>
							<li><a href="#contact-section" class="smoothscroll">C O N T A C T U S</a></li>
						</ul>
					</div>

					<div class="col-md-4">
						<h3>S u b s c r i b e</h3>
						<ul class="list-unstyled footer-links">
							<li><a class="smoothscroll">고 객 센 터 : 070-7011-3900<br>(월 ~ 금, 09 ~ 18시)</a></li>
						</ul>
					</div>
				</div>

				<div class="row pt-5 mt-5 text-center">
					<div class="col-md-12">
						<div class="border-top pt-5">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | <a
									href="http://localhost:8080/example/index.jsp" target="_blank">(주)1JO CORP.</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>

						</div>
					</div>

				</div>
			</div>
		</footer>
		
	</div>
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
		        if( obj.hasClass("badge-dark") ){
		         obj.hide();
		         obj.next().show();           
		         obj.parent().parent().next().show();
		        }else{
		          obj.hide();
		          obj.prev().show();
		          obj.parent().parent().next().hide();
		        }
		   });
		});
	
	$(document).ready(function () { 
		if (${viewPoint == 'board'}) { 
			$('html, body').animate({ scrollTop: $('#board-section').offset().top }, 500); } 
		else if (page_id == 'question') { 
			$('html, body').animate({ scrollTop: $('#' + page_id + '-section').offset().top }, 500); } 
	 });
	</script>
	
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>