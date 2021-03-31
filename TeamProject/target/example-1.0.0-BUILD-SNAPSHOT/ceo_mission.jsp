<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<!-- https://github.com/StartBootstrap/startbootstrap-shop-item -->

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  
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
    <link rel="stylesheet" href="css/ceo_hello.css">

  <title>(주)1조-미션 및 비전</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-item.css" rel="stylesheet">

</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  
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
    
     <!--<header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">
      
      <div class="container-fluid">
        <div class="d-flex align-items-center">
          <div class="site-logo"><a href="index.jsp" class="text-uppercase"><img src="images/logo.png" width="100" height="100" alt="Logo"></a></div>
          <div>
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-xl-block">
              
                <li><a href="#" class="nav-link" data-toggle="dropdown">COMPANY</a>
                 <ul class="dropdown-menu">
                 	<li><a href="#home-section">(주)1조</a></li>
                 	<li class="divider"></li>
                	<li><a href="ceo_hello.jsp">CEO 인사말</a></li>
                	<li><a href="#">회사연혁</a></li>
                	<li><a href="#">미션 및 비전</a></li>
                  </ul>
                 </li>
                 
                <li><a href="#" class="nav-link" data-toggle="dropdown">PRODUCTS</a>
                 <ul class="dropdown-menu">
                	<li><a href="#work-section">전체보기</a></li>
                	<li class="divider"></li>
                	<li><a href="#">제품1</a></li>
                	<li><a href="#">제품2</a></li>
                	<li><a href="#">제품3</a></li>
                  </ul>
                </li>
                
                
                <li><a href="#" class="nav-link" data-toggle="dropdown">RESOURCES</a>
                 <ul class="dropdown-menu">
                	<li><a href="#testimonials-section">뉴스레터</a></li>
                	<li class="divider"></li>
                	<li><a href="#">공지사항</a></li>
                	<li><a href="#video-section">동영상</a></li>
                  </ul>
                </li>
                
                <li><a href="#" class="nav-link" data-toggle="dropdown">RECRUIT</a>
                 <ul class="dropdown-menu">
                	<li><a href="#services-section">채용공고</a></li>
                	<li class="divider"></li>
                	<li><a href="#">인재상</a></li>
                	<li><a href="#">입사지원</a></li>
                	<li><a href="#">마이페이지</a></li>
                  </ul>
                </li>
                
                <li><a href="#" class="nav-link" data-toggle="dropdown">CONTACT US</a>
				 <ul class="dropdown-menu">
                	<li><a href="#contact-section">찾아오시는 길</a></li>
                	<li class="divider"></li>
                	<li><a href="#">F&Q</a></li>
                	<li><a href="#">문의하기</a></li>
                </ul>
               </li>
            </nav>
          </div>
          <div class="ml-auto">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu site-menu-dark js-clone-nav mr-auto d-none d-xl-block">
                <li><a href="join.jsp" class="nav-link">JOIN</a></li>
                <li class="cta"><a href="login.jsp" class="nav-link"><span class="border bg-danger rounded text-white border-danger">LOGIN</span></a></li>
              </ul>
            </nav>
            <a href="#" class="d-inline-block d-xl-none site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3"></span></a>
          </div>
        </div>
      </div>
      
    </header>  -->

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">
        <div class="site-logo"><a href="index.jsp" class="text-uppercase"><img src="images/logo.png" width="100" height="100" alt="Logo"></a></div>
        <div class="list-group">
          <a href="ceo_hello.jsp" class="list-group-item">CEO 인사말</a>
          <a href="ceo_history.jsp" class="list-group-item">회사연혁</a>
          <a href="ceo_mission.jsp" class="list-group-item active">미션 및 비전</a>
        </div>
      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

        <div class="card mt-4">
          <img class="card-img-top img-fluid" src="images/ceo_hello2.jpg" width="400" height="600" alt="ceo_hello">
          <div class="card-body">
            <h3 class="card-title">Lorem ipsum</h3>
            <h4>CEO</h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente dicta fugit fugiat hic aliquam itaque facere, soluta. Totam id dolores, sint aperiam sequi pariatur praesentium animi perspiciatis molestias iure, ducimus!</p>
            <br>
            <h5 class="card-title">CEO Hello</h5>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            
            <!--<span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span>
            4.0 stars-->
          </div>
        </div>
        <!-- /.card -->

        <!--<div class="card card-outline-secondary my-4">
          <div class="card-header">
            CEO hello
          </div>
          <div class="card-body">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <!--<a href="#" class="btn btn-success">Leave a Review</a>-->
          <!--</div>-->
        <!--</div>-->
        <!-- /.card -->

      </div>
      <!-- /.col-lg-9 -->

    </div>

  </div>
  <!-- /.container -->
	
	<br>
	
  <!-- Footer -->
  <footer class="footer-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <h3>About Us</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro consectetur ut hic ipsum et veritatis corrupti. Itaque eius soluta optio dolorum temporibus in, atque, quos fugit sunt sit quaerat dicta.</p>
          </div>

          <div class="col-md-3 ml-auto">
            <h3>Links</h3>
            <ul class="list-unstyled footer-links">
              <li><a href="index.jsp#home-section" class="smoothscroll">COMPANY</a></li>
              <li><a href="index.jsp#work-section" class="smoothscroll">PRODUCTS</a></li>
              <li><a href="index.jsp#testimonials-section" class="smoothscroll">RESOURCES</a></li>
              <li><a href="index.jsp#services-section" class="smoothscroll">RECRUIT</a></li>
              <li><a href="index.jsp#contact-section" class="smoothscroll">CONTACT US</a></li>
            </ul>
          </div>

          <div class="col-md-4">
            <h3>Subscribe</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt incidunt iure iusto architecto? Numquam, natus?</p>
            <form action="#">
              <div class="d-flex mb-5">
                <input type="text" class="form-control rounded-0" placeholder="Email">
                <input type="submit" class="btn btn-primary rounded-0" value="Subscribe">
              </div>
            </form>
          </div>

        </div>

        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
              <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
            
            </div>
          </div>
          
        </div>
      </div>
    </footer>
 </div><!-- .site-wrap -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/main.js"></script>
  <script type="text/javascript" src=" http://maps.google.com/maps/api/js?v=3.3&sensor=true"></script>
  <script src="js/maps.js"></script>

</body>

</html>

