<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- HEADER==================================== -->	
	<jsp:include page="header.jsp"/>
<!-- ========================================== -->

			<div class="whole-wrap">
				<div class="project">
					<div class="section-top-border">
						<div class="row">
							<c:choose>
							
								<c:when test="${cg==1 }">
									<c:choose>
										<c:when test="${isMobile == ture }">
											<iframe src="http://220.85.47.2:3000/d/Q3Sx9jvGz/mobile-8gae-jijace-korona-kaempein?orgId=1&refresh=5s" style="display:block; width:100vw; height: 100vh"></iframe>
										</c:when>
										<c:otherwise>
									  		<iframe src="http://220.85.47.2:3000/d/vA7pWYHGz/0-8gae-jijace-korona-kaempein?orgId=1&refresh=5s" style="display:block; width:100vw; height: 100vh"></iframe>
										</c:otherwise>
									</c:choose>
								</c:when>
								
								<c:otherwise>
								  	<c:choose>
										<c:when test="${isMobile == ture }">
											<iframe src="http://220.85.47.2:3000/d/iVcHg3vMk/mobile-6gae-eunhaeng-aeb?orgId=1&refresh=30m" style="display:block; width:100vw; height: 100vh"></iframe>
										</c:when>
										<c:otherwise>
									  		<iframe src="http://220.85.47.2:3000/d/VDAQrENMk/0-6gae-eunhaeng-aeb?orgId=1&refresh=30m" style="display:block; width:100vw; height: 100vh"></iframe>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
								
							</c:choose>
							
						</div>
					</div>
				</div>
			</div>

<!-- FOOTER==================================== -->	
	<jsp:include page="footer.jsp"/>
<!-- ========================================== -->