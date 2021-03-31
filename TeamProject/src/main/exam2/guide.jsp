<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
<!-- HEADER==================================== -->	
	<jsp:include page="header.jsp"/>
<!-- ========================================== -->
		<section class="blog-posts-area section-gap-statistics">
				<div class="container">
					<h3><h1 class="mb-30"></h1></h3>
					<div class="section-top-border" style="border-top: 3px dotted gainsboro !important;">
						<p class="question" style="padding: 11px;font-family:NanumGothicExtraBold;font-weight: bold;">대시보드에는 어떤 기능들이 있나요?</p>
						<p class="explain">테스트 사업 추진단의 대시보드에서는 <b>원하는 시간대 별로</b> 8개의 지자체(서울,경기,광주,대구,인천,울산,대전,부산) 6개의 은행(우리,농협,국민,신한,기업,하나)의 웹페이지 혹은 앱의 접속 로딩 시간을 <b>체크 이를 순위 혹은 그래프</b>로 나타내어 주는 기능이 있습니다.</p>
					</div>
					<div class="section-top-border"></div>
					<b class="hungry">1.&nbsp</b><p class="question" style="padding: 10px;">순위 표</p>
						<p class="explain">8개 지자체의 코로나 캠페인_선별진료소 페이지의 웹 페이지에 접속하는데 걸리는 시간을 순위대로 표현해주는 표입니다.소수점 둘째 자리까지 나오며 속도가 느릴경우 노란색 많이 느릴 경우 빨간색으로 표시됩니다.</p>
						<img src="img/explain_4.png" alt="" title="" style="max-width:100%"/>
					<div class="section-top-border"></div>
					<b class="hungry">2.&nbsp</b><p class="question" style="padding: 10px;">평균 및 간략 순위</p>
						<p class="explain">그래프에서 나오지 않는 평균 시간을 보여줌과 동시에 1등과 꼴등을 간략하게 보여줘서 차이가 얼마나 나는지 손쉽게 알 수 있습니다.</p>
						<img src="img/explain_5.png" width="1095px;"alt="" title="" style="max-width:100%"/>
					<div class="section-top-border"></div>
					<b class="hungry">3.&nbsp</b><p class="question" style="padding: 10px;">실시간 모니터링</p>
						<p class="explain">8개 지자체의 코로나 캠페인 선별 진료소의 페이지의 접속 시간을 실시간으로 꺾인 선 그래프로 나타내어 줌으로서 어느 시간대에 접속 문제가 많이 발생하는지 손쉽게 알 수 있습니다.</p>
						<img src="img/explain_6.png" width="1095px;"alt="" title="" style="margin: 0px 0px 90px 0px" style="max-width:100%"/>
					<div class="section-top-border"></div>
					<b class="hungry">4.&nbsp</b><p class="question" style="margin:-40px 0px 7px 0px; padding: 10px;">검색 장면 선택하기</p>
						<p class="explain">테스트 사업 추진단의 대시보드에서 아래의 그림의<b> 2번 빨간 박스 </b>를 클릭하면 원하는 페이지의 순위와 그래프를 쉽게 찾아서 볼 수 있습니다.</p>
						<img src="img/explain_3.png" width="1095px;"alt="" title="" style="max-width:100%"/>
					<div class="section-top-border" style="border-top: 3px dotted gainsboro !important;">
						<b class="hungry">5.&nbsp</b><p class="question" style="padding: 10px">검색 시간 설정하기</p>
						<p class="explain">테스트 사업 추진단의 대시보드에서 아래의 그림의<b> 1번 빨간 박스 </b>를 클릭</p>
						<img src="img/explain_1.png" width="1095px;"alt="" title="" style="max-width:100%"/>
						<p class="explain" style="margin: 35px 0px 20px 7px;">보고 싶은 시간대를 클릭하면 원하는 시간대의 자료가 나타난다.</p>
						<img src="img/explain_2.png" width="1095px;"alt="" title="" style="max-width:100%"/>
					</div>
				</div>
		</section>
						
<!-- FOOTER==================================== -->	
	<jsp:include page="footer.jsp"/>
<!-- ========================================== -->
