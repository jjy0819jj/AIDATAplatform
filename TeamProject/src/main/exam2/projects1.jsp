<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- HEADER==================================== -->	
	<jsp:include page="header.jsp"/>
<!-- ========================================== -->
<script type="text/javascript">
var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android', 'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson');
for (var word in mobileKeyWords){
    if (navigator.userAgent.match(mobileKeyWords[word]) != null){
        location.href = "보내고 싶은 모바일 경로";
        break;
    }
}
</script>
			<div class="whole-wrap">
				<div class="project">
					<div class="section-top-border">
						<h3 class="mb-30">지자체 코로나 대시보드</h3>
						<div class="row">
							<iframe src="http://220.85.47.2:3000/d/vA7pWYHGz/0-8gae-jijace-korona-kaempein?orgId=1&refresh=5s" style="display:block; width:100vw; height: 100vh"></iframe>
						</div>
					</div>
				</div>
			</div>

<!-- FOOTER==================================== -->	
	<jsp:include page="footer.jsp"/>
<!-- ========================================== -->