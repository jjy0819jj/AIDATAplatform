<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- HEADER==================================== -->	
	<jsp:include page="header.jsp"/>
<!-- ========================================== -->
	
			<div class="whole-wrap">
				<div class="project">
					<div class="section-top-border">
						<h3 class="mb-30">지자체 코로나 대시보드</h3>
						<div class="row">
							<iframe src="http://220.85.47.2:3000/d/VDAQrENMk/0-6gae-eunhaeng-aeb?orgId=1&refresh=30m" style="display:block; width:100vw; height: 100vh"></iframe>
						</div>
					</div>
				</div>
			</div>

<!-- FOOTER==================================== -->	
	<jsp:include page="footer.jsp"/>
<!-- ========================================== -->
	