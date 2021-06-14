<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
<!-- HEADER==================================== -->	
	<jsp:include page="header_nav.jsp"/>
	<jsp:include page="header_top.jsp"/>
<!-- ========================================== -->

   <div class="header bg-primary pb-6">
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center py-4">
           
          </div>
        </div>
      </div>
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--4">
      <div class="row">
        <div class="col">
          <div class="card">
            <!-- Card header -->
            <div class="card-header border-0">
				<!-- Search form -->
			  <form class="navbar-search navbar-search-light form-inline mr-sm-3" id="navbar-search-main">
				<div class="form-group mb-0">
				  <div class="input-group input-group-alternative input-group-merge">
					<div class="input-group-prepend">
					  <span class="input-group-text"><i class="fas fa-search"></i></span>
					</div>
					<input class="form-control" placeholder="Search" type="text">
				  </div>
				</div>
				<button type="button" class="close" data-action="search-close" data-target="#navbar-search-main" aria-label="Close">
				  <span aria-hidden="true">×</span>
				</button>
			  </form>
				<div class="col-12 text-right">
				  <a href="datasetUpload.jsp" class="btn btn-sm btn-neutral">데이터셋 업로드</a>
				</div>
              <h3 class="mb-0"></h3>
            </div>
            <!-- Light table -->
            <div class="table-responsive table-hover">
              <table class="table align-items-center table-flush"> 
                <thead class="thead-light">
                  <tr>
                    <th scope="col" width="1%"></th>
                    <th scope="col" width="10%">파일 이름</th>
                    <th scope="col" width="10%">소음환경</th>
                    <th scope="col" width="10%">대화주제</th>
					<th scope="col" width="20%">검수진행정도</th>
					<th scope="col" width="5%">작성자</th>
					<th scope="col" width="10%">업로드 일시</th>
                  </tr>
                </thead>
                <tbody class="list"> 
                <c:forEach var="vo" items="${datasetList }">
                <tr onClick="location.href='datasetInfo.do?dno=${vo.dno}'">
                    <td>
                      <div class="media align-items-center">
                        <div class="media-body">
                          <span class="name mb-0 text-sm">${vo.dno}
						  </span>
                        </div>
                      </div>
                    </td>
                    <td>
                      <div class="media align-items-center">
                        <div class="media-body">
                          <span class="name mb-0 text-sm">${vo.filename}
						  </span>
                        </div>
                      </div>
                    </td>
					
					<td>
						<c:choose>
						<c:when test="${vo.record == 1 }">1.가정 내 소음</c:when>
						<c:when test="${vo.record == 2 }">2.야외활동환경 (실내/실외)</c:when>
						<c:when test="${vo.record == 3 }">3.야외활동환경 (실내/실외)</c:when>
						<c:when test="${vo.record == 4 }">4.야외활동환경 (실내)</c:when>
						<c:when test="${vo.record == 5 }">5.야외활동환경 (실내)</c:when>
						<c:when test="${vo.record == 6 }">6.야외활동환경 (실내)</c:when>
						<c:when test="${vo.record == 7 }">7.야외활동환경 (실내)</c:when>
						<c:when test="${vo.record == 8 }">8.사무환경</c:when>
						<c:when test="${vo.record == 9 }">9.특수환경</c:when>
						<c:when test="${vo.record == 10 }">10.특수환경</c:when>
						<c:when test="${vo.record == 11 }">11.특수환경</c:when>
						</c:choose>
					</td>

					<td>
						<c:choose>
						<c:when test="${vo.topic == 1 }">1.주제1</c:when>
						<c:when test="${vo.topic == 2 }">2.주제2</c:when>
						<c:when test="${vo.topic == 3 }">3.주제3</c:when>
						<c:when test="${vo.topic == 4 }">4.주제4</c:when>
						<c:when test="${vo.topic == 5 }">5.주제5</c:when>
						</c:choose>
					</td>
					
					<td>
						<div class="row">
							<div class="col-9" align="left">
								<span style="color: black;">
								<c:choose>
								<c:when test="${vo.compdata+vo.faildata == 0 }">0</c:when>
								<c:otherwise>
								<fmt:formatNumber value="${(vo.compdata+vo.faildata)/vo.totaldata*100 }" pattern=".00"/>
								</c:otherwise>
								</c:choose>%
								</span>
							</div>
							<div class="col-3" align="right">
								${vo.compdata+vo.faildata }/${vo.totaldata }
							</div>
						</div>
						<div class="row">
	                        <div class="col-12">
	                            <div class="progress" style="width: 100%; height: 30px;">
	                                <div class="progress-bar bg-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" 
	                                aria-valuemax="100" style="width: ${vo.compdata/vo.totaldata*100 }%;"></div>
	                                <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="0" aria-valuemin="0" 
	                                aria-valuemax="100" style="width: ${vo.faildata/vo.totaldata*100 }%;"></div>
	                            </div>
	                        </div>
	                    </div>
					</td>

					<td>
						<div class="avatar-group">
							<a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-html="true"
							data-original-title="${vo.name }<br>(${vo.tel})">
								<i class="ni ni-circle-08"></i>
							</a>
						</div>
					</td>

					<td>
					<c:set var="TextValue" value="${vo.logtime}"/>
					${fn:substring(TextValue,0,10) }
					<br>
					${fn:substring(TextValue,11,16) }
                    </td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
            </div>
            <!-- Card footer -->
            <div class="card-footer py-4">
              <nav aria-label="...">
                <ul class="pagination justify-content-end mb-0">
                <!---------------------- 이전 ---------------------->
                <c:if test="${startPage>3 }">
                  <li class="page-item disabled">
                    <a class="page-link" href="datasetList.do?pg=${startPage - 1 }" tabindex="-1">
                      <i class="fas fa-angle-left"></i>
                      <span class="sr-only">Previous</span>
                    </a>
                  </li>
                </c:if>
                <!------------------------------------------------>
                
                <!---------------------- 페이지 ---------------------->
                <c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
                <c:if test="${pg == i }">
                  <li class="page-item active">
                    <a class="page-link" href="datasetList.do?pg=${i }">${i }</a><span class="sr-only">(current)</span>
                  </li>
                </c:if>
                <c:if test="${pg != i }">
                  <li class="page-item">
                    <a class="page-link" href="datasetList.do?pg=${i }">${i }</a>
                  </li>
                </c:if>
                </c:forEach>
                <!------------------------------------------------>
                  
                  
                <!---------------------- 다음 ---------------------->
                <c:if test="${endPage<totalP }">
                  <li class="page-item">
                    <a class="page-link" href="#">
                      <i class="fas fa-angle-right"></i>
                      <span class="sr-only">Next</span>
                    </a>
                  </li>
                </c:if>
                <!------------------------------------------------>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
      <!-- Dark table
      <div class="row">
        <div class="col">
          <div class="card bg-default shadow">
            <div class="card-header bg-transparent border-0">
              <h3 class="text-white mb-0">Dark table</h3>
            </div>
            <div class="table-responsive">
              <table class="table align-items-center table-dark table-flush">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col" class="sort" data-sort="name">Project</th>
                    <th scope="col" class="sort" data-sort="budget">Budget</th>
                    <th scope="col" class="sort" data-sort="status">Status</th>
                    <th scope="col">Users</th>
                    <th scope="col" class="sort" data-sort="completion">Completion</th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <tbody class="list">
                  <tr>
                    <th scope="row">
                      <div class="media align-items-center">
                        <a href="#" class="avatar rounded-circle mr-3">
                          <img alt="Image placeholder" src="../assets/img/theme/bootstrap.jpg">
                        </a>
                        <div class="media-body">
                          <span class="name mb-0 text-sm">Argon Design System</span>
                        </div>
                      </div>
                    </th>
                    <td class="budget">
                      $2500 USD
                    </td>
                    <td>
                      <span class="badge badge-dot mr-4">
                        <i class="bg-warning"></i>
                        <span class="status">pending</span>
                      </span>
                    </td>
                    <td>
                      <div class="avatar-group">
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="홍길동">
                          <img alt="Image placeholder" src="../assets/img/theme/team-1.jpg">
                        </a>
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="김길동">
                          <img alt="Image placeholder" src="../assets/img/theme/team-2.jpg">
                        </a>
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="Alexander Smith">
                          <img alt="Image placeholder" src="../assets/img/theme/team-3.jpg">
                        </a>
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="Jessica Doe">
                          <img alt="Image placeholder" src="../assets/img/theme/team-4.jpg">
                        </a>
                      </div>
                    </td>
                    <td>
                      <div class="d-flex align-items-center">
                        <span class="completion mr-2">60%</span>
                        <div>
                          <div class="progress">
                            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td class="text-right">
                      <div class="dropdown">
                        <a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fas fa-ellipsis-v"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                          <a class="dropdown-item" href="#">Action</a>
                          <a class="dropdown-item" href="#">Another action</a>
                          <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">
                      <div class="media align-items-center">
                        <a href="#" class="avatar rounded-circle mr-3">
                          <img alt="Image placeholder" src="../assets/img/theme/angular.jpg">
                        </a>
                        <div class="media-body">
                          <span class="name mb-0 text-sm">Angular Now UI Kit PRO</span>
                        </div>
                      </div>
                    </th>
                    <td class="budget">
                      $1800 USD
                    </td>
                    <td>
                      <span class="badge badge-dot mr-4">
                        <i class="bg-success"></i>
                        <span class="status">completed</span>
                      </span>
                    </td>
                    <td>
                      <div class="avatar-group">
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="홍길동">
                          <img alt="Image placeholder" src="../assets/img/theme/team-1.jpg">
                        </a>
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="김길동">
                          <img alt="Image placeholder" src="../assets/img/theme/team-2.jpg">
                        </a>
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="Alexander Smith">
                          <img alt="Image placeholder" src="../assets/img/theme/team-3.jpg">
                        </a>
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="Jessica Doe">
                          <img alt="Image placeholder" src="../assets/img/theme/team-4.jpg">
                        </a>
                      </div>
                    </td>
                    <td>
                      <div class="d-flex align-items-center">
                        <span class="completion mr-2">100%</span>
                        <div>
                          <div class="progress">
                            <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td class="text-right">
                      <div class="dropdown">
                        <a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fas fa-ellipsis-v"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                          <a class="dropdown-item" href="#">Action</a>
                          <a class="dropdown-item" href="#">Another action</a>
                          <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">
                      <div class="media align-items-center">
                        <a href="#" class="avatar rounded-circle mr-3">
                          <img alt="Image placeholder" src="../assets/img/theme/sketch.jpg">
                        </a>
                        <div class="media-body">
                          <span class="name mb-0 text-sm">Black Dashboard</span>
                        </div>
                      </div>
                    </th>
                    <td class="budget">
                      $3150 USD
                    </td>
                    <td>
                      <span class="badge badge-dot mr-4">
                        <i class="bg-danger"></i>
                        <span class="status">delayed</span>
                      </span>
                    </td>
                    <td>
                      <div class="avatar-group">
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="홍길동">
                          <img alt="Image placeholder" src="../assets/img/theme/team-1.jpg">
                        </a>
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="김길동">
                          <img alt="Image placeholder" src="../assets/img/theme/team-2.jpg">
                        </a>
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="Alexander Smith">
                          <img alt="Image placeholder" src="../assets/img/theme/team-3.jpg">
                        </a>
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="Jessica Doe">
                          <img alt="Image placeholder" src="../assets/img/theme/team-4.jpg">
                        </a>
                      </div>
                    </td>
                    <td>
                      <div class="d-flex align-items-center">
                        <span class="completion mr-2">72%</span>
                        <div>
                          <div class="progress">
                            <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100" style="width: 72%;"></div>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td class="text-right">
                      <div class="dropdown">
                        <a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fas fa-ellipsis-v"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                          <a class="dropdown-item" href="#">Action</a>
                          <a class="dropdown-item" href="#">Another action</a>
                          <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">
                      <div class="media align-items-center">
                        <a href="#" class="avatar rounded-circle mr-3">
                          <img alt="Image placeholder" src="../assets/img/theme/react.jpg">
                        </a>
                        <div class="media-body">
                          <span class="name mb-0 text-sm">React Material Dashboard</span>
                        </div>
                      </div>
                    </th>
                    <td class="budget">
                      $4400 USD
                    </td>
                    <td>
                      <span class="badge badge-dot mr-4">
                        <i class="bg-info"></i>
                        <span class="status">on schedule</span>
                      </span>
                    </td>
                    <td>
                      <div class="avatar-group">
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="홍길동">
                          <img alt="Image placeholder" src="../assets/img/theme/team-1.jpg">
                        </a>
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="김길동">
                          <img alt="Image placeholder" src="../assets/img/theme/team-2.jpg">
                        </a>
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="Alexander Smith">
                          <img alt="Image placeholder" src="../assets/img/theme/team-3.jpg">
                        </a>
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="Jessica Doe">
                          <img alt="Image placeholder" src="../assets/img/theme/team-4.jpg">
                        </a>
                      </div>
                    </td>
                    <td>
                      <div class="d-flex align-items-center">
                        <span class="completion mr-2">90%</span>
                        <div>
                          <div class="progress">
                            <div class="progress-bar bg-info" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%;"></div>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td class="text-right">
                      <div class="dropdown">
                        <a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fas fa-ellipsis-v"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                          <a class="dropdown-item" href="#">Action</a>
                          <a class="dropdown-item" href="#">Another action</a>
                          <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">
                      <div class="media align-items-center">
                        <a href="#" class="avatar rounded-circle mr-3">
                          <img alt="Image placeholder" src="../assets/img/theme/vue.jpg">
                        </a>
                        <div class="media-body">
                          <span class="name mb-0 text-sm">Vue Paper UI Kit PRO</span>
                        </div>
                      </div>
                    </th>
                    <td class="budget">
                      $2200 USD
                    </td>
                    <td>
                      <span class="badge badge-dot mr-4">
                        <i class="bg-success"></i>
                        <span class="status">completed</span>
                      </span>
                    </td>
                    <td>
                      <div class="avatar-group">
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="홍길동">
                          <img alt="Image placeholder" src="../assets/img/theme/team-1.jpg">
                        </a>
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="김길동">
                          <img alt="Image placeholder" src="../assets/img/theme/team-2.jpg">
                        </a>
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="Alexander Smith">
                          <img alt="Image placeholder" src="../assets/img/theme/team-3.jpg">
                        </a>
                        <a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="Jessica Doe">
                          <img alt="Image placeholder" src="../assets/img/theme/team-4.jpg">
                        </a>
                      </div>
                    </td>
                    <td>
                      <div class="d-flex align-items-center">
                        <span class="completion mr-2">100%</span>
                        <div>
                          <div class="progress">
                            <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td class="text-right">
                      <div class="dropdown">
                        <a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fas fa-ellipsis-v"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                          <a class="dropdown-item" href="#">Action</a>
                          <a class="dropdown-item" href="#">Another action</a>
                          <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <!-- Footer
      <footer class="footer pt-0">
        <div class="row align-items-center justify-content-lg-between">
          <div class="col-lg-6">
            <div class="copyright text-center  text-lg-left  text-muted">
              &copy; 2020 <a href="https://www.creative-tim.com" class="font-weight-bold ml-1" target="_blank">Creative Tim</a>
            </div>
          </div>
          <div class="col-lg-6">
            <ul class="nav nav-footer justify-content-center justify-content-lg-end">
              <li class="nav-item">
                <a href="https://www.creative-tim.com" class="nav-link" target="_blank">Creative Tim</a>
              </li>
              <li class="nav-item">
                <a href="https://www.creative-tim.com/presentation" class="nav-link" target="_blank">About Us</a>
              </li>
              <li class="nav-item">
                <a href="http://blog.creative-tim.com" class="nav-link" target="_blank">Blog</a>
              </li>
              <li class="nav-item">
                <a href="https://github.com/creativetimofficial/argon-dashboard/blob/master/LICENSE.md" class="nav-link" target="_blank">MIT License</a>
              </li>
            </ul>
          </div>
        </div>
      </footer>
    </div>
  </div>
		
<!-- FOOTER==================================== -->	
	<jsp:include page="footer.jsp"/>
<!-- ========================================== -->
		