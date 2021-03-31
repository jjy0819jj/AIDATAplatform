<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- HEADER==================================== -->	
	<jsp:include page="header.jsp"/>
<!-- ========================================== -->
			<!-- start banner Area -->
			<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>
				<div class="container-fluid">
					<div class="row fullscreen d-flex align-items-center justify-content-center">
						<div class="banner-content col-lg-12 col-md-12">
							<h6 class="text-uppercase">Test Project Promotion Team</h6>
							<h1>
								테사추			
							</h1>
							<p class="text-white">
								자동화 모니터링 서비스를 24시간 365일 지원합니다.
							</p>
							<a href="dashboard.do?cg=1" class="primary-btn header-btn text-uppercase">프로젝트 보기</a>
						</div>												
					</div>
				</div>
			</section>
			<!-- End banner Area -->

			<!-- Start cat Area -->
			<section class="cat-area section-gap" id="feature">
				<div class="container">							
					<div class="row">
						<div class="col-lg-4">	
							<div class="single-cat d-flex flex-column">
								<a href="projects1.jsp" class="hb-sm-margin mx-auto d-block"><span class="hb hb-sm inv hb-facebook-inv"><span class="lnr lnr-history"></span></span></a>
								<h4 class="mb-20" style="margin-top: 23px;">24시간 테스트</h4>
								<p>
									자동화 프로그램으로 24시간 쉬지 않고<br> 테스트합니다.
								</p>
							</div>															
						</div>
						<div class="col-lg-4">	
							<div class="single-cat">
								<a href="statistics1.jsp" class="hb-sm-margin mx-auto d-block"><span class="hb hb-sm inv hb-facebook-inv"><span class="lnr lnr-chart-bars"></span></span></a>
								<h4 class="mt-40 mb-20">랭킹</h4>
								<p>
									진입시간을 통계내어 동일 업계의 타사와<br> 비교할 수 있습니다.
								</p>
							</div>															
						</div>
						<div class="col-lg-4">
							<div class="single-cat">
								<a href="projects1.jsp" class="hb-sm-margin mx-auto d-block"><span class="hb hb-sm inv hb-facebook-inv"><span class="lnr lnr-laptop-phone"></span></span></a>
								<h4 class="mt-40 mb-20">실시간 모니터링</h4>
								<p>
									테스트 과정을 실시간으로 모니터링하여 <br>어떤 문제점이 있는지 파악합니다.
								</p>
							</div>							
						</div>
					</div>
				</div>	
			</section>
			<!-- End cat Area -->		
			

			
					

			<!-- Start service Area 
			<section class="service-area section-gap" id="service">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-md-12 pb-30 header-text text-center">
							<h1 class="mb-10">Our Capturing Market Sectors</h1>
							<p>
								Who are in extremely love with eco friendly system..
							</p>
						</div>
					</div>						
					<div class="row">
						<div class="col-lg-4">
							<div class="single-service">
								<div class="thumb">
									<img src="img/s1.jpg" alt="">									
								</div>
								<h4>Automotive Engineering</h4>
								<p>
									inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
								</p>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="single-service">
								<div class="thumb">
									<img src="img/s2.jpg" alt="">									
								</div>
								<h4>Construction & Engineering</h4>
								<p>
									inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
								</p>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="single-service">
								<div class="thumb">
									<img src="img/s3.jpg" alt="">									
								</div>
								<h4>Industrial Engineering</h4>
								<p>
									inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
								</p>
							</div>
						</div>												
					</div>
				</div>	
			</section>
			<!-- End service Area -->
			

			<!-- Start faq Area -->
			<section class="faq-area section-gap relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row justify-content-center align-items-center">
						<div class="col-lg-3 col-md-6">
							<div class="single-faq">
								<div class="circle">
								  <div class="inner-error"></div>
								</div>
								<h5><span class="counter">${totalPlay }</span>회</h5>
								<p>
									총 테스트 횟수
								</p>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="single-faq">
								<div class="circle">
								  <div class="inner-error"></div>
								</div>
								<h5><span class="counter">${totalError }</span>회</h5>
								<p>
									오류 검사 횟수
								</p>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="single-faq">
								<div class="circle">
								  <div class="inner-error"></div>
								</div>
								<h5><span class="counter">65</span>회</h5>
								<p>
									랭킹 변화
								</p>
							</div>
						</div>	
						<div class="col-lg-3 col-md-6">
							<div class="single-faq">
								<div class="circle">
								  <div class="inner-error"></div>
								</div>
								<h5><span class="counter">79</span></h5>
								<p>
									협력업체
								</p>
							</div>
						</div>
					</div>
				</div>	
			</section>
			<!-- End faq Area -->


			<!-- Start project Area
			<section class="project-area section-gap" id="project">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-md-8 pb-30 header-text text-center">
							<h1 class="mb-10">Latest Finished Projects</h1>
							<p>
								Who are in extremely love with eco friendly system..
							</p>
						</div>
					</div>						
					<div class="row">
						<div class="col-lg-8 col-md-8">
							<a href="img/p1.jpg" class="img-gal">
								<img class="img-fluid single-project" src="img/p1.jpg" alt="">
							</a>	
						</div>
						<div class="col-lg-4 col-md-4">
							<a href="img/p2.jpg" class="img-gal">
								<img class="img-fluid single-project" src="img/p2.jpg" alt="">
							</a>	
						</div>						
						<div class="col-lg-6 col-md-6">
							<a href="img/p3.jpg" class="img-gal">
								<img class="img-fluid single-project" src="img/p3.jpg" alt="">
							</a>	
						</div>
						<div class="col-lg-6 col-md-6">
							<a href="img/p4.jpg" class="img-gal">
								<img class="img-fluid single-project" src="img/p4.jpg" alt="">
							</a>	
						</div>		
					</div>
				</div>	
			</section>
			<!-- End project Area -->
						
			<!-- Start feedback Area
			<section class="feedback-area section-gap relative" id="feedback">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-md-12 pb-30 header-text text-center">
							<h1 class="mb-10 text-white">Enjoy our Client’s Feedback</h1>
							<p class="text-white">
								Who are in extremely love with eco friendly system..
							</p>
						</div>
					</div>			
					<div class="row feedback-contents justify-content-center align-items-center">
						<div class="col-lg-6 feedback-left relative d-flex justify-content-center align-items-center">
							<div class="overlay overlay-bg"></div>
							<a class="play-btn" href="https://www.youtube.com/watch?v=ARA0AxrnHdM"><img class="img-fluid" src="img/play-btn.png" alt=""></a>
						</div>
						<div class="col-lg-6 feedback-right">
							<div class="active-review-carusel">
								<div class="single-feedback-carusel">
									<div class="title d-flex flex-row">
										<h4 class="text-white pb-10">Fannie Rowe</h4>
										<div class="star">
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>								
										</div>										
									</div>
									<p class="text-white">
										Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
									</p>
								</div>
								<div class="single-feedback-carusel">
									<div class="title d-flex flex-row">
										<h4 class="text-white pb-10">Fannie Rowe</h4>
										<div class="star">
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star"></span>								
										</div>										
									</div>
									<p class="text-white">
										Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
									</p>
								</div>
								<div class="single-feedback-carusel">
									<div class="title d-flex flex-row">
										<h4 class="text-white pb-10">Fannie Rowe</h4>
										<div class="star">
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked	"></span>								
										</div>										
									</div>
									<p class="text-white">
										Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
									</p>
								</div>																
							</div>
						</div>
					</div>
				</div>	
			</section>
			<!-- End feedback Area -->
			
	
			<!-- Start blog Area
			<section class="blog-area section-gap" id="blog">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-md-12 pb-30 header-text">
							<h1>Latest posts from our Blog</h1>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> labore  et dolore magna aliqua.
							</p>
						</div>
					</div>
					<div class="row">	
						<div class="single-blog col-lg-4 col-md-4">
							<div class="thumb">
								<img class="f-img img-fluid mx-auto" src="img/b1.jpg" alt="">	
							</div>
							<div class="bottom d-flex justify-content-between align-items-center flex-wrap">
								<div>
									<img class="img-fluid" src="img/user.png" alt="">
									<a href="#"><span>Mark Wiens</span></a>
								</div>
								<div class="meta">
									13th Dec
									<span class="lnr lnr-heart"></span> 15
									<span class="lnr lnr-bubble"></span> 04
								</div>
							</div>							
							<a href="#">
								<h4>Portable Fashion for young women</h4>
							</a>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore  et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip exea.
							</p>
						</div>
						<div class="single-blog col-lg-4 col-md-4">
							<div class="thumb">
								<img class="f-img img-fluid mx-auto" src="img/b2.jpg" alt="">	
							</div>
							<div class="bottom d-flex justify-content-between align-items-center flex-wrap">
								<div>
									<img class="img-fluid" src="img/user.png" alt="">
									<a href="#"><span>Mark Wiens</span></a>
								</div>
								<div class="meta">
									13th Dec
									<span class="lnr lnr-heart"></span> 15
									<span class="lnr lnr-bubble"></span> 04
								</div>
							</div>							
							<a href="#">
								<h4>Portable Fashion for young women</h4>
							</a>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore  et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip exea.
							</p>
						</div>
						<div class="single-blog col-lg-4 col-md-4">
							<div class="thumb">
								<img class="f-img img-fluid mx-auto" src="img/b3.jpg" alt="">	
							</div>
							<div class="bottom d-flex justify-content-between align-items-center flex-wrap">
								<div>
									<img class="img-fluid" src="img/user.png" alt="">
									<a href="#"><span>Mark Wiens</span></a>
								</div>
								<div class="meta">
									13th Dec
									<span class="lnr lnr-heart"></span> 15
									<span class="lnr lnr-bubble"></span> 04
								</div>
							</div>							
							<a href="#">
								<h4>Portable Fashion for young women</h4>
							</a>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore  et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip exea.
							</p>
						</div>												
											
												
					</div>
				</div>	
			</section>
			<!-- end blog Area -->	
				
			<!-- start footer Area
			<footer class="footer-area section-gap">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 col-md-6 col-sm-6">
							<div class="single-footer-widget">
								<h6>About Us</h6>
								<p>
									
									테스트사업추진단 대표이사 : 류재규 | 이메일 : ryu@kca21.com<br>
									사업자등록번호 : 612-42-18240 | 전화 : 02)532-0532 | 팩스 : 02) 532-0231<br>
									주소 : 서울시 서초구 반포본동 891번지 대윤빌딩<br>
								</p>
								<p class="footer-text">
									Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
								</p>								
							</div>
						</div>				
						<div class="col-lg-2 col-md-6 col-sm-6 social-widget">
							<div class="single-footer-widget">
								<h6>Follow Us</h6>
								<p>Let us be social</p>
								<div class="footer-social d-flex align-items-center">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
									<a href="#"><i class="fa fa-dribbble"></i></a>
									<a href="#"><i class="fa fa-behance"></i></a>
								</div>
							</div>
						</div>							
					</div>
				</div>
			</footer>	
			<!-- End footer Area -->	

<!-- FOOTER==================================== -->	
	<jsp:include page="footer.jsp"/>
<!-- ========================================== -->


