<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
<!-- HEADER==================================== -->	
	<jsp:include page="header_nav.jsp"/>
	<jsp:include page="header_top.jsp"/>
<!-- ========================================== -->

    <div class="header pb-6">
      <div class="container-fluid mt-6">
        <div class="header-body">
          <div class="row align-items-center py-2">
          </div>
          <div class="row">
			<div class="col-xl-6 col-md-6">
				<div class="row">

					<div class="col-xl-6 col-md-6">
					  <div class="card card-stats">
						<!-- Card body -->
						<div class="card-body">
						  <div class="row">
							<div class="col">
							  <h5 class="card-title text-uppercase text-muted mb-0">수집</h5>
							  <span class="h2 font-weight-bold mb-2">1510시간</span><span class="h6 font-weight-light mb-2"> / 15000시간</span>
							</div>
							<div class="col-auto">
							  <div class="icon icon-shape bg-gradient-red text-white rounded-circle shadow mb-2">
								<i class="ni ni-folder-17"></i>
							  </div>
						  </div>
						  </div>
						  <span class="mb-2">23.12%</span>
							<div class="progress">
								<div class="progress-bar bg-info" role="progressbar" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100" style="width: 23%;"></div>
							</div>
						  <p class="mt-3 mb-0 text-sm">
						  <span class="text-nowrap">지난일기준</span>
							<span class="text-success mr-2"> 3.48% <i class="fa fa-arrow-up"></i></span>
						  </p>	
						</div>
					  </div>
					</div>

					<div class="col-xl-6 col-md-6">
					  <div class="card card-stats">
						<!-- Card body -->
						<div class="card-body">
						  <div class="row">
							<div class="col">
							  <h5 class="card-title text-uppercase text-muted mb-0">정제</h5>
							  <span class="h2 font-weight-bold mb-0">910시간</span><span class="h6 font-weight-light mb-2"> / 7500시간</span>
							</div>
							<div class="col-auto">
							  <div class="icon icon-shape bg-gradient-orange text-white rounded-circle shadow mb-2">
								<i class="ni ni-ruler-pencil"></i>
							  </div>
							</div>
						  </div>
						  <span class="mb-2">15.84%</span>
								<div class="progress">
									<div class="progress-bar bg-info" role="progressbar" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100" style="width: 15.8%;"></div>
								</div>
						  <p class="mt-3 mb-0 text-sm">
							<span class="text-nowrap">지난일기준</span>
							<span class="text-success mr-2"> 1.28% <i class="fa fa-arrow-up"></i></span>
						  </p>
						</div>
					  </div>
					</div>
				
					<div class="col-xl-6 col-md-6">
					  <div class="card card-stats">
						<!-- Card body -->
						<div class="card-body">
						  <div class="row">
							<div class="col">
							  <h5 class="card-title text-uppercase text-muted mb-0">가공</h5>
							  <span class="h2 font-weight-bold mb-0">129시간</span><span class="h6 font-weight-light mb-2"> / 7500시간</span>
							</div>
							<div class="col-auto">
							  <div class="icon icon-shape bg-gradient-green text-white rounded-circle shadow mb-2">
								<i class="ni ni-tag"></i>
							  </div>
							</div>
						  </div>
						  <span class="mb-2">8.27%</span>
								<div class="progress">
									<div class="progress-bar bg-info" role="progressbar" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100" style="width: 8%;"></div>
								</div>
						  <p class="mt-3 mb-0 text-sm">
							<span class="text-nowrap">지난일기준</span>
							<span class="text-success mr-2"> 6.28% <i class="fa fa-arrow-up"></i></span>
						  </p>
						</div>
					  </div>
					</div>

					<div class="col-xl-6 col-md-6">
					  <div class="card card-stats">
						<!-- Card body -->
						<div class="card-body">
						  <div class="row">
							<div class="col">
							  <h5 class="card-title text-uppercase text-muted mb-0">완료</h5>
							  <span class="h2 font-weight-bold mb-0">2시간</span><span class="h6 font-weight-light mb-2"> / 7500시간</span>
							</div>
							<div class="col-auto">
							  <div class="icon icon-shape bg-gradient-gray text-white rounded-circle shadow mb-2">
								<i class="ni ni-like-2"></i>
							  </div>
							</div>
						  </div>
						  <span class="mb-2">2.52%</span>
								<div class="progress">
									<div class="progress-bar bg-info" role="progressbar" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100" style="width: 2.5%;"></div>
								</div>
						  <p class="mt-3 mb-0 text-sm">
							<span class="text-nowrap">지난일기준</span>
							<span class="text-success mr-2"> 0.28% <i class="fa fa-arrow-up"></i></span>
						  </p>
						</div>
					  </div>
					</div>
			
				</div>
			</div>
					<div class="col-xl-6 col-md-6 mb-4">
						<div class="card h-100">
							<div class="card-header border-0">
							  <div class="row align-items-center">
								<div class="col-9">
								  <ul class="nav nav-tabs">
									  <li class="nav-item">
										<a class="nav-link active" href="#" data-toggle="tab">공지사항</a>
									  </li>
									  <li class="nav-item">
										<a class="nav-link" href="#" data-toggle="tab">가이드</a>
									  </li>
									</ul>
								</div>
								<div class="col text-right">
								  <a href="" class="btn btn-sm btn-neutral">전체보기</a>
								</div>
							  </div>
							</div>
							<div class="table-responsive table-sm table-hover">
							  <!-- Projects table -->
							  <table class="table align-items-center table-flush">
								<thead class="thead-light" style="display:none">
								  <tr>
									<th scope="col" width="1%">상태</th>
									<th scope="col" width="94%">목표</th>
									<th scope="col" width="5%">현재</th>
								  </tr>
								</thead>
								<tbody>

								  <tr>
									<th scope="row">
									  <span class="badge badge-danger badge-lg">필독</span>
									</th>
									<td>
									  개인정보 포함 데이터 처리 방침
									</td>
									<td>
									  이동하
									</td>
								  </tr>
								  <tr>
									<th scope="row">
									  <span class="badge badge-danger badge-lg">필독</span>
									</th>
									<td>
									  비속어 및 혐오발언, 정치적 발언 등의 기준
									</td>
									<td>
									  양형진
									</td>
								  </tr>
								  <tr>
									<th scope="row">
									  <span class="badge badge-default badge-lg">신규</span>
									</th>
									<td>
									  급여 계좌의 정보 변경시 꼭 연락해주시길 부탁드립니다.
									</td>
									<td>
									  양형진
									</td>
								  </tr>
								  <tr>
									<th scope="row">
									  <span class="badge badge-default badge-lg">신규</span>
									</th>
									<td>
									  음성 편집기의 편리한 사용법을 알려드립니다.
									</td>
									<td>
									  이동하
									</td>
								  </tr>
								  <tr>
									<th scope="row">
									  <span class="badge badge-secondary badge-lg">공지</span>
									</th>
									<td>
									  검수 진행중인 데이터셋에 대한 수정 및 재수집
									</td>
									<td>
									  이동하
									</td>
								  </tr>
								  <tr>
									<th scope="row">
									  <span class="badge badge-secondary badge-lg">공지</span>
									</th>
									<td>
									  작업량에 따른 급여 지급 기준
									</td>
									<td>
									  양형진
									</td>
								  </tr>
								 
								</tbody>
							  </table>
							</div>
						  </div>
						  </div>
						</div>
					</div>
			</div>

        
      
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--6">
      <div class="row">
	  <div class="col-xl-6 mb-6">
          <div class="card h-100">
            <div class="card-header bg-transparent">
              <div class="row align-items-center">
                <div class="col">
                  <h6 class="text-light text-uppercase ls-1 mb-1">데이터셋</h6>
                  <h5 class="h3 mb-0">전체현황</h5>
                </div>
                <div class="col">
                  <ul class="nav nav-pills justify-content-end">
                    <li class="nav-item mr-2 mr-md-0" data-toggle="chart" data-target="#chart-sales-dark" data-update='{
					"data":{
					"labels": ["5/3~5/7", "5/10~5/14", "5/17~5/21", "5/24~5/29", "5/31~6/4", "6/7~6/11", "6/14~6/18", "6/21~6/25"],
					"datasets":[
					{ "data": [103, 208, 310, 422, 527, 680, 720, 776, 828] },
					{ "data": [33, 157, 251, 327, 452, 582, 627, 690, 810] }
					]}}' 
					>
                      <a href="#" class="nav-link py-2 px-3 active" data-toggle="tab">
                        <span class="d-none d-md-block">주별</span>
                        <span class="d-md-none">M</span>
                      </a>
                    </li>


                    <li class="nav-item" data-toggle="chart" data-target="#chart-sales-dark" data-update='{
					"data":{
					"labels": ["5/3", "5/4", "5/5", "5/6", "5/7", "5/8", "5/9", "5/10"],
					"datasets":[
					{ "data": [13, 28, 31, 42, 57, 68, 70, 77, 88] },
					{ "data": [3, 15, 21, 32, 42, 52, 67, 60, 80] }
					]}}' >
                      <a href="#" class="nav-link py-2 px-3" data-toggle="tab">
                        <span class="d-none d-md-block">일별</span>
                        <span class="d-md-none">W</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="card-body">
              <!-- Chart -->
              <div class="chart">
                <!-- Chart wrapper -->
                <canvas id="chart-sales-dark" class="chart-canvas"></canvas>
              </div>
            </div>
          </div>
		</div>

	  	<div class="col-xl-3 mb-6">
          <div class="card h-100">
				<div class="card-header border-0">
				  <div class="row align-items-center">
					<div class="col">
					  <h5 class="mb-2">남녀별 목표 구축량</h5>
					   <div class="row align-items-center text-center">
						   <div class="col"><h3>남자</h3> <h4 class="font-weight-light mt--2">50%</h4></div>
						   <div class="col"><h3>여자</h3> <h4 class="font-weight-light mt--2">50%</h4></div>
					   </div>
					</div>
				  </div>
				</div>
				<hr class="mt--3 my-1" />
			   <div class="card-body mt--4 mb--4">
				  <!-- Chart -->
				  <div class="chart mt--2">
				  <h5 class="mt-4 mb--1">남녀별 실제 구축량</h5>
					<!-- Chart wrapper -->
					<canvas id="chart-pie-gender"></canvas>
				  </div>
				</div>
			</div>
		  </div>

		 <div class="col-xl-3 mb-6">
          <div class="card h-100">
				<div class="card-header border-0">
				  <div class="row align-items-center">
					<div class="col">
					  <h5 class="mb-2">연령대별 목표 구축량</h5>
					   <div class="row align-items-center text-center">
						   <div class="col"><h3>1~10</h3> <h4 class="font-weight-light mt--2">12.5%</h4></div>
						   <div class="col"><h3>10~60</h3> <h4 class="font-weight-light mt--2">75%</h4></div>
						   <div class="col"><h3>60~</h3> <h4 class="font-weight-light mt--2">12.5%</h4></div>
					   </div>
					</div>
				  </div>
				</div>
				<hr class="mt--3 my-1" />
			   <div class="card-body mt--4 mb--4">
				  <!-- Chart -->
				  <div class="chart mt--2">
				  <h5 class="mt-4 mb--1">연령대별 실제 구축량</h5>
					<!-- Chart wrapper -->
					<canvas id="chart-pie-age"></canvas>
				  </div>
				</div>
			</div>
		  </div>

		
	</div>
		
<!-- FOOTER==================================== -->	
	<jsp:include page="footer.jsp"/>
<!-- ========================================== -->
		