<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
<!-- HEADER==================================== -->	
	<jsp:include page="header.jsp"/>
<!-- ========================================== -->

			<section class="blog-posts-area section-gap-statistics">
				<div class="statistics-container">
					<div class="row">

						<div class="col-lg-3 sidebar">
							<div class="single-widget category-widget">
								<h4 class="title">카테고리</h4>
								<ul>
									<li><a href="statistics1.jsp" class="justify-content-between align-items-center d-flex"><h6>8개 지자체 코로나 캠페인</h6> <span>></span></a></li>
									<li><a href="statistics2.jsp" class="justify-content-between align-items-center d-flex"><h6>6개 은행 앱</h6>
								</ul>
							</div>
						</div>



						<div class="col-lg-9 post-list blog-post-list">
							<div class="single-post">

								<ul class="nav-statistics justify-content-center nav-statistics-fill nav-statistics-tabs">
								  <li class="nav-statistics-item">
									<a class="nav-statistics-link active" href="#">하루</a>
								  </li>
								  <li class="nav-statistics-item">
									<a class="nav-statistics-link" href="#">일주일</a>
								  </li>
								    <li class="nav-statistics-item">
									<a class="nav-statistics-link" href="#">1개월</a>
								  </li>
								  <li class="nav-statistics-item">
									<a class="nav-statistics-link disabled" href="#" tabindex="-1" aria-disabled="true">1년</a>
								  </li>
								</ul>

							<div class="row">
								<div class="col-md-12">
									<div class="single-widget checkbox-widget">
										<h4 class="title">페이지 선택</h4>
										<ul class="ks-cboxtags">
											<li>
											<input type="checkbox" id="checkbox1" value="메인" checked>
											<label for="checkbox1">메인 페이지</label>
											</li>

											<li>
											<input type="checkbox" id="checkbox2" value="선별진료소" checked>
											<label for="checkbox2">선별진료소 페이지</label>
											</li>

											<li>
											<input type="checkbox" id="checkbox3" value="확진자동선" checked>
											<label for="checkbox3">확진자동선 페이지</label>
											</li>

											<li>
											<input type="checkbox" id="checkbox4" value="기본지침" checked>
											<label for="checkbox4">기본지침 페이지</label>
											</li>

											<li>
											<input type="checkbox" id="checkbox5" value="지원정책" checked>
											<label for="checkbox5">지원정책 페이지</label>
											</li>
										  </ul>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="single-widget text-widget">
										<h4 class="title">모든 지자체의 로딩 평균 시간</h4>
										<h1>1.58초</h1>
									</div>
								</div>

								<div class="col-md-6">
									<div class="single-widget text-widget">
										<h4 class="title">적재 데이터</h4>
										<h1>1,561개</h1>
									</div>
								</div>
							</div>
								<div class="section-top-border">
									<div class="progress-table-wrap">
										<div class="progress-table">
											<div class="table-head">
												<div class="serial">순위</div>
												<div class="country">구분</div>
												<div class="visit">페이지 로딩 평균 시간</div>
												<div class="percentage"></div>
											</div>

											<div class="table-row">
												<div class="serial"><i class="fa fa-trophy"></i></div>
												<div class="country"> <img src="img/statistics/e1.jpg" alt="flag">서울시</div>
												<div class="visit">1.25초</div>
												<div class="percentage">
													<div class="progress">
														<div class="progress-bar color-1" role="progressbar" style="width: 12%" aria-valuenow="12" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
											</div>
											
											<div class="table-row">
												<div class="serial">2등</div>
												<div class="country"> <img src="img/statistics/e2.jpg" alt="flag">경기도</div>
												<div class="visit">1.37초</div>
												<div class="percentage">
													<div class="progress">
														<div class="progress-bar color-2" role="progressbar" style="width: 13%" aria-valuenow="13" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
											</div>

											<div class="table-row">
												<div class="serial">3등</div>
												<div class="country"> <img src="img/statistics/e3.jpg" alt="flag">광주시</div>
												<div class="visit">1.58초</div>
												<div class="percentage">
													<div class="progress">
														<div class="progress-bar color-3" role="progressbar" style="width: 16%" aria-valuenow="16" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
											</div>

											<div class="table-row">
												<div class="serial">4등</div>
												<div class="country"> <img src="img/statistics/e4.jpg" alt="flag">부산시</div>
												<div class="visit">2.25초</div>
												<div class="percentage">
													<div class="progress">
														<div class="progress-bar color-4" role="progressbar" style="width: 22%" aria-valuenow="22" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
											</div>

											<div class="table-row">
												<div class="serial">5등</div>
												<div class="country"> <img src="img/statistics/e5.jpg" alt="flag">인천시</div>
												<div class="visit">2.58초</div>
												<div class="percentage">
													<div class="progress">
														<div class="progress-bar color-5" role="progressbar" style="width: 26%" aria-valuenow="26" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
											</div>

											<div class="table-row">
												<div class="serial">6등</div>
												<div class="country"> <img src="img/statistics/e6.jpg" alt="flag">대구시</div>
												<div class="visit">2.87초</div>
												<div class="percentage">
													<div class="progress">
														<div class="progress-bar color-6" role="progressbar" style="width: 29%" aria-valuenow="29" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
											</div>

											<div class="table-row">
												<div class="serial">7등</div>
												<div class="country"> <img src="img/statistics/e7.jpg" alt="flag">대전시</div>
												<div class="visit">3.12초</div>
												<div class="percentage">
													<div class="progress">
														<div class="progress-bar color-7" role="progressbar" style="width: 31%" aria-valuenow="31" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
											</div>

											<div class="table-row">
												<div class="serial">8등</div>
												<div class="country"> <img src="img/statistics/e8.jpg" alt="flag">울산시</div>
												<div class="visit">3.87초</div>
												<div class="percentage">
													<div class="progress">
														<div class="progress-bar color-8" role="progressbar" style="width: 38%" aria-valuenow="38" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
											</div>


										</div>
									</div>
								</div>
								

                            <section class="comment-sec-area pt-80 pb-80">
                                <div class="container">
                                    <div class="row flex-row d-flex">
                                        <div class="input-group mb-4 pb-80">
										  <input type="text" class="form-control" placeholder="내용을 입력하세요." aria-label="댓글" aria-describedby="button-addon2">
										  <div class="input-group-append">
											<button class="btn btn-reply" type="button" id="button-addon2">댓글달기</button>
										  </div>
										</div>
                                    </div>
								</div>

									<h5 class="text-uppercase pb-40">5개의 댓글...</h5>

								<div class="container">
                                    <div class="row flex-column">
                                        <div class="comment-list">
                                            <div class="single-comment justify-content-between d-flex">
                                                <div class="user justify-content-between d-flex">
                                                    <div class="desc">
                                                        <h5><a href="#">전준영</a></h5>
                                                        <p class="date">2020년 8월 26일 3:12 pm </p>
                                                        <p class="comment">
                                                            서울시가 가장 빠르군요.
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="reply-btn">
                                                       <a href="" class="btn-reply text-uppercase">답글쓰기</a> 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="comment-list left-padding">
                                            <div class="single-comment justify-content-between d-flex">
                                                <div class="user justify-content-between d-flex">
                                                    <div class="desc">
                                                        <h5><a href="#">임성현</a></h5>
                                                        <p class="date">2020년 8월 26일 4:12 pm </p>
                                                        <p class="comment">
                                                            그러네요.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
										<div class="comment-list">
                                            <div class="single-comment justify-content-between d-flex">
                                                <div class="user justify-content-between d-flex">
                                                    <div class="desc">
                                                        <h5><a href="#">홍길동</a></h5>
                                                        <p class="date">2020년 8월 26일 7:12 pm </p>
                                                        <p class="comment">
                                                            테사추 화이팅
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="reply-btn">
                                                       <a href="" class="btn-reply text-uppercase">답글쓰기</a> 
                                                </div>
                                            </div>
                                        </div>
										<div class="comment-list">
                                            <div class="single-comment justify-content-between d-flex">
                                                <div class="user justify-content-between d-flex">
                                                    <div class="desc">
                                                        <h5><a href="#">김길동</a></h5>
                                                        <p class="date">2020년 8월 26일 8:12 pm </p>
                                                        <p class="comment">
                                                            자동화 툴로 24시간 자동으로 테스팅한다네요.
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="reply-btn">
                                                       <a href="" class="btn-reply text-uppercase">답글쓰기</a> 
                                                </div>
                                            </div>
                                        </div>
										<div class="comment-list">
                                            <div class="single-comment justify-content-between d-flex">
                                                <div class="user justify-content-between d-flex">
                                                    <div class="desc">
                                                        <h5><a href="#">이길동</a></h5>
                                                        <p class="date">2020년 8월 26일 9:12 pm </p>
                                                        <p class="comment">
                                                            울산은 분발해야 할거같습니다.
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="reply-btn">
                                                       <a href="" class="btn-reply text-uppercase">답글쓰기</a> 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>    
                            </section>
                            <!-- End comment-sec Area -->
                            
							</div>																		
						</div>
						
						
					</div>
				</div>	
			</section>
			<!-- End blog-posts Area -->
			
<!-- FOOTER==================================== -->	
	<jsp:include page="footer.jsp"/>
<!-- ========================================== -->

