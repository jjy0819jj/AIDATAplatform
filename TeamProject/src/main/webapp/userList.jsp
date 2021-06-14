<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <div class="col-xl-4 order-xl-2">
          <div class="card card-profile">
            
          </div>
        </div>
        <div class="col-xl-8 order-xl-1">
          <div class="card">
            <div class="card-header">
              <div class="row align-items-center">
                <div class="col-12 text-right">
                  <a href="userInsert.jsp" class="btn btn-sm btn-primary">새계정 생성</a>
                </div>
              </div>
            </div>
            <div class="card-body">
              <div class="table-responsive table-hover">
				  <table class="table align-items-center table-flush"> 
					<thead class="thead-light">
					  <tr>
						<th scope="col" width="10%">권한</th>
						<th scope="col" width="15%"></th>
						<th scope="col" width="10%">이름</th>
						<th scope="col" width="10%">가입일시</th>
						<th scope="col" width="30%">수집 작업량</th>
						<th scope="col" width="30%">검수 작업량</th>
					  </tr>
					</thead>
					<tbody class="list">
					<c:forEach var="vo" items="${usersList }">
						<tr onClick="userInfo(this, ${vo.sno});">
							<th scope="row">
								<c:choose>
								<c:when test="${vo.rank ==0 }">관리자</c:when>
								<c:when test="${vo.rank ==1 }">수집자</c:when>
								<c:when test="${vo.rank ==2 }">정제자</c:when>
								<c:when test="${vo.rank ==3 }">책임자</c:when>
								</c:choose>
							</th>
							<td>
							  <div class="avatar-group">
									<a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-html="true"
									data-original-title="${vo.name }<br>(${vo.tel })">
										<i class="ni ni-circle-08"></i>
									</a>
								</div>
							</td>
							<td>${vo.name}</td>
							<td>${vo.logtime}</td>
							<td>-</td>
							<td>-</td>
						</tr>
					</c:forEach>
					</tbody>
              </table>
            </div>
				
            </div>
          </div>
        </div>
      </div>
		
		
<script>

var userInfo = function(id, sno) {
	$('tr').css("background-color", "#FFFFFF");
	$('tr:hover').css("background-color", "#f6f9fc");
	$(id).css("background-color", "#DCDCDC");
	
	$.ajax({
		url: "getuserInfo.do",
		type: "POST",
		data: {"sno": sno},
		success: function(data){
			var vo = data.userInfo;
			var html = '';
			var gender = '';
			var rank = '';
			
			if (vo.gender==1) gender = '남자'; else gender = '여자';
			if (vo.rank==1) rank = '수집자'; else if (vo.rank==2) rank = '정제자'; 
			else if (vo.rank==3) rank = '책임자'; else rank = '관리자';
			
			html += '<div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">';
			html += '<div class="d-flex float-right">';	
			html += '<a href="#" class="btn btn-sm btn-info">전체작업현황</a>';	
			html += '<a href="#" class="btn btn-sm btn-default float-right">수정</a>';	
			html += '<a href="#" class="btn btn-sm btn-danger float-right">삭제</a>';	
			html += '</div></div>';	
			
			html += '<hr class="my-4" />';	
			
			html += '<div class="card-body pt-0">';	
			html += '<div class="row">';	
			html += '<div class="col">';	
			html += '<div class="card-profile-stats d-flex justify-content-center">';	
			
			html += '<div>';	
			html += '<span class="heading">123시간</span>';	
			html += '<span class="description">수집 작업량</span>';	
			html += '</div>';	
			html += '<div>';	
			html += '<span class="heading">0 시간</span>';	
			html += '<span class="description">검수 작업량</span>';	
			html += '</div></div></div></div>';	
			
			html += '<hr class="my-4" />';	
			html += '<div class="text-left">';
			
			html += '<h5 class="h3"><span>'+vo.name+'</span></h5>';	
			html += '<div class="h5 font-weight-300">';	
			html += '<i class="ni location_pin mr-2"></i>'+rank+'</div>';	
			
			html += '<hr class="my-4" />';	
			
			html += '<div class="h5 mt-4">';	
			html += '<i class="ni business_briefcase-24 mr-2"></i>ID - '+vo.id;	
			html += '</div>';	
			html += '<div class="h5 mt-2">';	
			html += '<i class="ni business_briefcase-24 mr-2"></i>PW - '+vo.password;	
			html += '</div>';
			html += '<div class="h5 mt-2">';	
			html += '<i class="ni business_briefcase-24 mr-2"></i>성별 - '+gender;	
			html += '</div>';
			html += '<div class="h5 mt-2">';	
			html += '<i class="ni business_briefcase-24 mr-2"></i>생년월일 - '+vo.birth;	
			html += '</div>';
			
			html += '<hr class="my-4" />';
			html += '<div class="text-center"><div><i class="ni education_hat mr-2 mt-2"></i>최근 활동 로그</div>';
			html += '<div class="h5">';
			html += '<i class="ni business_briefcase-24 mr-2"></i>2021/05/21 12:36 - 데이터셋 업로드';
			html += '</div>';
			html += '<div class="h5">';
			html += '<i class="ni business_briefcase-24 mr-2"></i>';
			html += '<button type="button"><i class="ni ni-fat-add"></i></button>';
			html += '</div></div></div></div>';
		
			$('.card-profile').html(html);
		},
		error: function(request, status, error){
			alert('code:'+request.status+"\n"+"error:"+error);
		}
	});	
	
}

</script>
<!-- FOOTER==================================== -->	
	<jsp:include page="footer.jsp"/>
<!-- ========================================== -->
		