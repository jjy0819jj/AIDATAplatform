<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
<!-- HEADER==================================== -->	
	<jsp:include page="header.jsp"/>
<!-- ========================================== -->

			<section class="blog-posts-area section-gap-statistics-black">
				<div class="statistics-container">
						<div class="col-lg-12">
							<div class="single-widget category-widget">
								<h4 class="title">카테고리</h4>
								<ul>
								<c:choose>
								  		<c:when test="${cg==1 }">
								  			<li><a href="statistics.do?cg=1&rg=1" class="justify-content-between align-items-center d-flex"><h6><span>8개 지자체 코로나 캠페인</span></h6></a></li>
								  		</c:when>
								  		<c:otherwise>
								  			<li><a href="statistics.do?cg=1&rg=1" class="justify-content-between align-items-center d-flex"><h6>8개 지자체 코로나 캠페인</h6></a></li>
								  		</c:otherwise>
								</c:choose>
								<c:choose>
								  		<c:when test="${cg==2 }">
								  			<li><a href="statistics.do?cg=2&rg=1" class="justify-content-between align-items-center d-flex"><h6><span>6개 은행 앱</span></h6></a></li>
								  		</c:when>
								  		<c:otherwise>
								  			<li><a href="statistics.do?cg=2&rg=1" class="justify-content-between align-items-center d-flex"><h6>6개 은행 앱</h6></a></li>
								  		</c:otherwise>
								</c:choose>
								</ul>
							</div>
						</div>



						<div class="col-lg-12 post-list blog-post-list">
							<div class="single-post">

								<ul class="nav-statistics justify-content-center nav-statistics-fill nav-statistics-tabs">
								  <li class="nav-statistics-item">
								  	<c:choose>
								  		<c:when test="${rg==1 }">
								  			<a class="nav-statistics-link active" href="statistics.do?cg=${cg }&rg=1">하루</a>
								  		</c:when>
								  		<c:otherwise>
								  			<a class="nav-statistics-link" href="statistics.do?cg=${cg }&rg=1">하루</a>
								  		</c:otherwise>
								  	</c:choose>
								  </li>
								  <li class="nav-statistics-item">
								 	 <c:choose>
								  		<c:when test="${rg==2 }">
								  			<a class="nav-statistics-link active" href="statistics.do?cg=${cg }&rg=2">일주일</a>
								  		</c:when>
								  		<c:otherwise>
								  			<a class="nav-statistics-link" href="statistics.do?cg=${cg }&rg=2">일주일</a>
								  		</c:otherwise>
								  	</c:choose>
								  </li>
								    <li class="nav-statistics-item">
									<c:choose>
								  		<c:when test="${rg==3 }">
								  			<a class="nav-statistics-link active" href="statistics.do?cg=${cg }&rg=3">한달</a>
								  		</c:when>
								  		<c:otherwise>
								  			<a class="nav-statistics-link" href="statistics.do?cg=${cg }&rg=3">한달</a>
								  		</c:otherwise>
								  	</c:choose>
								  </li>

								</ul>

							
							<div class="row">
								<div class="col-md-12">
									<div class="single-widget text-widget">
										<h4 class="title">전체 평균 시간</h4>
										<h1>${totalAvg/1000 }초</h1>
									</div>
								</div>
							</div>
							<c:set var="rank" value="0"/>
								<div class="section-top-border">
									<div class="progress-table-wrap col-md-12">
										<div class="progress-table">
											<div class="table-head">
												<div class="serial">순위</div>
												<div class="country">구분</div>
												<div class="visit">평균 시간</div>
												<div class="percentage">전체평균과의 차이</div>
											</div>
										<c:forEach var="vo" items="${list}">
										<input type="hidden" value="${rank=rank+1 }">
											<div class="table-row">
												<c:choose>
											  		<c:when test="${rank==1 }">
											  			<div class="serial"><i class="fa fa-trophy"></i></div>
											  		</c:when>
											  		<c:otherwise>
											  			<div class="serial">${rank}등</div>
											  		</c:otherwise>
										  		</c:choose>
												
												<div class="country"><!-- <img src="img/statistics/${vo.name }.jpg" alt="flag">  -->${vo.name }</div>
												<div class="visit">${vo.duration/1000 }초</div>
												<div class="percentage">
												<c:choose>
											  		<c:when test="${(vo.duration-totalAvg) > 0}">
											  			<font color="red">+${(vo.duration-totalAvg)/1000 }초</font>
											  		</c:when>
											  		<c:otherwise>
											  			<font color="#77FF70">${(vo.duration-totalAvg)/1000 }초</font>
											  		</c:otherwise>
										  		</c:choose>
													
												</div>
												<!--
												<div class="percentage">
													<div class="progress">
														 <div class="progress-bar color-1" role="progressbar" style="width: ${vo.duration/20 }%" aria-valuenow="12" aria-valuemin="0" aria-valuemax="100"></div> 
													</div>
												</div>
												-->
											</div>
										</c:forEach>
										
										</div>
									</div>
								</div>
								

                            <section class="comment-sec-area pt-80 pb-80">
                                <div class="container">
                                        <div class="mb-4 pb-80">
	                                        <form action="statisticsComment.do" accept-charset="utf-8" method="get">
	                                        <input type="hidden" name="category" value="${cg }">
	                                        <input type="hidden" name="rg" value="${rg }">
											  <div class="form-group row">
											    <div class="col-sm-2">
											      <input type="text" placeholder="이름 작성..." class="form-control" name="name">
											    </div>
											  </div>
											  <div class="form-group row">
											 	 <div class="col-sm-12">
												 	 <div class="input-group">
													    <input type="text" class="form-control" placeholder="댓글 내용 작성..." name="content">
													    <div class="input-group-append">
															<button class="btn btn-reply" type="submit" id="button-addon2">댓글달기</button>
														</div>
													</div>
												</div>
											  </div>
											</form>
										</div>
								</div>

									<h5 class="text-uppercase pb-40">${fn:length(Commentlist)}개의 댓글...</h5>

								<div class="container">
                                    <div class="row flex-column">
                                    <c:forEach var="vo" items="${Commentlist}">
                                        <div class="comment-list main-comment">
                                            <div class="single-comment justify-content-between d-flex">
                                                <div class="user justify-content-between d-flex">
                                                    <div class="desc">
                                                        <h5>${vo.name}</h5>
                                                        <p class="date">${vo.logtime} </p>
                                                        <p class="comment">
                                                            	${vo.content}
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="reply-btn">
                                                       <a href="" class="btn-reply text-uppercase">답글</a> 
                                                </div>
                                            </div>
                                        </div>
                                     </c:forEach>
                                        <!--  
                                        <div class="comment-list left-padding">
                                            <div class="single-comment justify-content-between d-flex">
                                                <div class="user justify-content-between d-flex">
                                                    <div class="desc">
                                                        <h5>임성현</h5>
                                                        <p class="date">2020년 8월 26일 4:12 pm </p>
                                                        <p class="comment">
                                                            그러네요.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
										<div class="comment-list main-comment">
                                            <div class="single-comment justify-content-between d-flex">
                                                <div class="user justify-content-between d-flex">
                                                    <div class="desc">
                                                        <h5>홍길동</h5>
                                                        <p class="date">2020년 8월 26일 7:12 pm </p>
                                                        <p class="comment">
                                                            테사추 화이팅
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="reply-btn">
                                                       <a href="" class="btn-reply text-uppercase">답글</a> 
                                                </div>
                                            </div>
                                        </div>
										<div class="comment-list main-comment">
                                            <div class="single-comment justify-content-between d-flex">
                                                <div class="user justify-content-between d-flex">
                                                    <div class="desc">
                                                        <h5>김길동</h5>
                                                        <p class="date">2020년 8월 26일 8:12 pm </p>
                                                        <p class="comment">
                                                            자동화 툴로 24시간 자동으로 테스팅한다네요.
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="reply-btn">
                                                       <a href="" class="btn-reply text-uppercase">답글</a> 
                                                </div>
                                            </div>
                                        </div>
										<div class="comment-list main-comment">
                                            <div class="single-comment justify-content-between d-flex">
                                                <div class="user justify-content-between d-flex">
                                                    <div class="desc">
                                                        <h5>이길동</h5>
                                                        <p class="date">2020년 8월 26일 9:12 pm </p>
                                                        <p class="comment">
                                                            울산은 분발해야 할거같습니다.
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="reply-btn">
                                                       <a href="" class="btn-reply text-uppercase">답글</a> 
                                                </div>
                                            </div>
                                        </div>
                                        -->
                                    </div>
                                </div>    
                            </section>
                            <!-- End comment-sec Area -->
                            
							</div>																		
						</div>
					</div>
			</section>
			<!-- End blog-posts Area -->
			
<!-- FOOTER==================================== -->	
	<jsp:include page="footer.jsp"/>
<!-- ========================================== -->

