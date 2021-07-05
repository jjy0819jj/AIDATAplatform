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
    <form action="userInsert.do" accept-charset="UTF-8" method="get">
      <div class="row">
        <div class="col-xl-4 order-xl-1">
          <div class="card">
            <div class="card-header">
              <div class="row align-items-center">
                <div class="col-12">
                  <h3 class="mb-0">세부 정보 입력 </h3>
                </div>
				<!--
                <div class="col-4 text-right">
                  <a href="#!" class="btn btn-sm btn-primary">Settings</a>
                </div>
				-->
              </div>
            </div>
            <div class="card-body">
					<div class="pl-lg-4">
					<div class="row">
	                    <div class="col-lg-12">
	                      <div class="form-group">
	                        <label class="form-control-label" for="input-username">아이디</label>
	                        <input type="text" class="form-control" name="id">
	                      </div>
	                    </div>
					</div>
					<div class="row">
	                    <div class="col-lg-12">
	                      <div class="form-group">
	                        <label class="form-control-label" for="input-username">비밀번호</label>
	                        <input type="text" class="form-control" name="password">
	                      </div>
	                    </div>
					</div>
					<div class="row">
						<div class="col-lg-12">
						  <div class="form-group">
							<label class="form-control-label" for="input-username">이름</label>
							<input type="text" class="form-control" name="name">
						  </div>
						</div>
					</div>
					
					<label class="form-control-label" for="input-username">핸드폰 번호</label>
						<div class="row">
							<div class="col-lg-3">
							  <div class="form-group">
								<input type="text" class="form-control" name="tel1" value="010">
							  </div>
							</div>
							<span class="mt-2">-</span>
							<div class="col-lg-4">
							  <div class="form-group">
								<input type="text" class="form-control" name="tel2">
							  </div>
							</div>
							<span class="mt-2">-</span>
							<div class="col-lg-4">
							  <div class="form-group">
								<input type="text" class="form-control" name="tel3">
							  </div>
							</div>
						</div>
					</div>
					<h6 class="heading-small text-muted mb-4">생년월일</h6>
					<div class="pl-lg-4">
						<div class="row">
							<div class="col-lg-6">
							  <div class="form-group">
								<label class="form-control-label" for="input-username">년</label>
								<input type="text" class="form-control" name="year">
							  </div>
							</div>
							<div class="col-lg-3">
							  <div class="form-group">
								<label class="form-control-label" for="input-username">월</label>
								<input type="text" class="form-control" name="month">
							  </div>
							</div>
							<div class="col-lg-3">
							  <div class="form-group">
								<label class="form-control-label" for="input-username">일</label>
								<input type="text" class="form-control" name="day">
							  </div>
							</div>
						</div>
					</div>

                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">성별</label>
                        <div class="custom-control custom-radio">
						  <input type="radio" id="customRadio1" class="custom-control-input" value=1 name="gender">
						  <label class="custom-control-label" for="customRadio1">남자</label>
						</div>
						<div class="custom-control custom-radio">
						  <input type="radio" id="customRadio2" class="custom-control-input" value=2 name="gender">
						  <label class="custom-control-label" for="customRadio2">여자</label>
						</div>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">연령대</label>
                        <div class="custom-control custom-radio">
						  <input type="radio" id="customRadio4" class="custom-control-input" value=1 name="age">
						  <label class="custom-control-label" for="customRadio4">10대 이하</label>
						</div>
						<div class="custom-control custom-radio">
						  <input type="radio" id="customRadio5" class="custom-control-input" value=2 name="age">
						  <label class="custom-control-label" for="customRadio5">10대 ~ 60대</label>
						</div>
						<div class="custom-control custom-radio">
						  <input type="radio" id="customRadio6" class="custom-control-input" value=3 name="age">
						  <label class="custom-control-label" for="customRadio6">60대 이상</label>
						</div>
                      </div>
                    </div>
                  </div>
                <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">직함</label>
                        <div class="custom-control custom-radio">
						  <input type="radio" id="customRadio10" class="custom-control-input" value=0 name="rank">
						  <label class="custom-control-label" for="customRadio10">관리자</label>
						</div>
                        <div class="custom-control custom-radio">
						  <input type="radio" id="customRadio7" class="custom-control-input" value=1 name="rank">
						  <label class="custom-control-label" for="customRadio7">크라우드워커</label>
						</div>
						<div class="custom-control custom-radio">
						  <input type="radio" id="customRadio8" class="custom-control-input" value=2 name="rank">
						  <label class="custom-control-label" for="customRadio8">직원</label>
						</div>
						<div class="custom-control custom-radio">
						  <input type="radio" id="customRadio9" class="custom-control-input" value=3 name="rank">
						  <label class="custom-control-label" for="customRadio9">책임자</label>
						</div>
                      </div>
                    </div>
                  </div>
                </div>
                <hr class="my-4" />
                <!-- Address -->
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-12">
                      <div class="form-group">
                        <label class="form-control-label" for="input-city">비고</label>
                        <textarea rows="4" class="form-control" placeholder="해당 계정의 특이사항이 있다면 작성"></textarea>
                      </div>
                    </div>
                  </div>
                </div>
                <hr class="my-5" />
                <div class="pl-lg-4">
                  <div class="form-group">
                    <button type="button" class="btn btn-primary btn-lg btn-block" onclick="location.href='tables.html'"><i class="ni ni-cloud-upload-96" style="font-size: 15px;"></i> 완료</button>
                  </div>
                </div>
            </div>
          </div>
        </div>
        <div class="col-xl-8 order-xl-2">
          <div class="card">
            <div class="card-header">
              <div class="row align-items-center">
                <div class="col-4">
                  <h3 class="mb-0">작업할당 </h3>
                </div>
				<!--
                <div class="col-4 text-right">
                  <a href="#!" class="btn btn-sm btn-primary">Settings</a>
                </div>
				-->
              </div>
            </div>
            <div class="card-body">
                <h6 class="heading-small text-muted mb-4">계정 권한 선택</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-4">
                    	<div class="card">
	                    	<div class="card-body">
		                    	<div class="custom-control custom-radio custom-control-inline">
		                    		<input type="radio" id="rankselect1" name="working" class="custom-control-input" value=1 checked>
		                    		<label class="custom-control-label" for="rankselect1">데이터 수집</label>
		                    	</div>
		                    	<div class="mt-2 ml-5">
		                    	수집할 데이터셋 0건
		                    	</div>
	                    	</div>
                    	</div>
                    </div>
                    <div class="col-lg-4">
                    	<div class="card">
	                    	<div class="card-body">
		                    	<div class="custom-control custom-radio custom-control-inline">
		                    		<input type="radio" id="rankselect2" name="working" class="custom-control-input" value=2>
		                    		<label class="custom-control-label" for="rankselect2">데이터 검수</label>
		                    	</div>
		                    	<div class="mt-2 ml-5">
		                    	검수할 계정 0건
		                    	</div>
                    		</div>
                    	</div>
                    </div>
                    <div class="col-lg-4">
                    	<div class="card">
                    		<div class="card-body">
		                    	<div class="custom-control custom-radio custom-control-inline">
		                    		<input type="radio" id="rankselect3" name="working" class="custom-control-input" value=3>
		                    		<label class="custom-control-label" for="rankselect3">책임 및 관리</label>
		                    	</div>
		                    	<div class="mt-2 ml-5">
		                    	권한 0건
		                    	</div>
	                    	</div>
                    	</div>
                   	</div>
                  </div>
                </div>
                    
              <hr class="my-4" />
              
              <div id="A">
              	<h6 class="heading-small text-muted mb-4">수집할 데이터셋 추가</h6>
                <div class="pl-lg-4">
                  <div class="row">
	                  <div class="col-lg-5">
							<table class="table align-items-center">
								<thead class="thead">
									<tr>
										<th scope="col" width="50%">소음환경</th>
										<th scope="col" width="45%">대화주제</th>
										<th scope="col" width="5%"></th>
									</tr>
								</thead>
								<tbody class="datasetlist">
								
								</tbody>
							</table>
	                     </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">소음환경</label>
                        <select multiple class="form-control" id="WorkingDataSet1">
						  <option value=1>1.가정 내 소음</option>
						  <option value=2>2.야외활동환경 (실내/실외)</option>
						  <option value=3>3.야외활동환경 (실내/실외)</option>
						  <option value=4>4.야외활동환경 (실내)</option>
						  <option value=5>5.야외활동환경 (실내)</option>
						  <option value=6>6.야외활동환경 (실외)</option>
						  <option value=7>7.야외활동환경 (실외)</option>
						  <option value=8>8.사무환경</option>
						  <option value=9>9.특수환경</option>
						  <option value=10>10.특수환경</option>
						  <option value=11>11.특수환경</option>
						</select>
                      </div>
                    </div>
					<div class="col-lg-3">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">대화주제</label>
                        <select multiple class="form-control" id="WorkingDataSet2">
						  <option value=1>주제1</option>
						  <option value=2>주제2</option>
						  <option value=3>주제3</option>
						  <option value=4>주제4</option>
						  <option value=5>주제5</option>
						</select>
                      </div>
                    </div>
                    
                  </div>
				  	<div class="row">
						<div class="col-lg-11">
						</div>
						<div class="col-lg-1">
							<button type="button" class="btn btn-outline-warning" onclick="WorkingDataSetAdd();">추가</button>
						</div>
					</div>
                </div>
              </div>
              
              <div id="B" style="display: none">
                <h6 class="heading-small text-muted mb-4">검수할 계정 선택</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-12">
					<table class="table align-items-center">
						<thead class="thead">
							<tr>
								<th scope="col" width="10%">계정 번호</th>
								<th scope="col" width="20%">직함</th>
								<th scope="col" width="20%">이름</th>
								<th scope="col" width="20%">성별</th>
								<th scope="col" width="20%">연령대</th>
								<th scope="col" width="10%"></th>
							</tr>
						</thead>
						<tbody class="userlist">
						<c:forEach var="vo" items="${usersList }">
						<tr>
							<td>
							  ${vo.sno }
							</td>
							<td>
								<c:choose>
								<c:when test="${vo.rank ==0 }">관리자</c:when>
								<c:when test="${vo.rank ==1 }">크라우드워커</c:when>
								<c:when test="${vo.rank ==2 }">직원</c:when>
								<c:when test="${vo.rank ==3 }">책임자</c:when>
								</c:choose>
							</td>
							
							<td>
							  ${vo.name }
							</td>
							<td>
								<c:choose>
								<c:when test="${vo.gender ==1 }">남자</c:when>
								<c:when test="${vo.gender ==2 }">여자</c:when>
								</c:choose>
							</td>
							<td>
								<c:choose>
								<c:when test="${vo.age ==1 }">10대 이하</c:when>
								<c:when test="${vo.age ==2 }">10대~60대</c:when>
								<c:when test="${vo.age ==3 }">60대 이상</c:when>
								</c:choose>
							</td>
							<td style="vertical-align:middle">
								<div class="form-check">
								  <input class="form-check-input" type="checkbox" value="" id="usersCheck">
								  <label class="form-check-label" for="usersCheck">
								  </label>
								</div>
							</td>
						</tr>
						</c:forEach>
						</tbody>
					</table>
                     </div>
                  </div>
                </div>
              </div>
              
              <div id="C" style="display: none">
                <h6 class="heading-small text-muted mb-4">관리권한 설정</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-12">
					<table class="table align-items-center">
						<thead class="thead">
							<tr>
								<th scope="col" width="20%">권한 이름</th>
								<th scope="col" width="75%">정보</th>
								<th scope="col" width="5%"></th>
							</tr>
						</thead>
						<tbody class="list">
						<tr>
							<th scope="row">
								사용자관리
							</th>
							<td>
								모든 사용자의 목록을 볼 수 있으며, 등록/수정/삭제 권한을 부여합니다.
							</td>
							<td>
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" id="usersCheck1">
							</div>
							</td>
						</tr>
						<tr>
							<th scope="row">
								데이터셋관리
							</th>
							<td>
								모든 데이터의 목록을 볼 수 있으며, 수정/삭제 권한을 부여합니다.
							</td>
							<td>
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" id="usersCheck1">
							</div>
							</td>
						</tr>
						<tr>
							<th scope="row">
								게시판관리
							</th>
							<td>
								게시판의 등록/수정/삭제 권한을 부여합니다.
							</td>
							<td>
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" id="usersCheck1">
							</div>
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
      </div>
      </form>
	</div>
		
<script>
var dataSetValue = 0;
var checkIdValue = 0;
var actionValue = 0;

$('input[type=radio][name=working]').on('click',function(){
	$('#A').css('display', 'none');
	$('#B').css('display', 'none');
	$('#C').css('display', 'none');
	var chkValue = $(this).val();
	if (chkValue == 1) {
		$('#A').css('display', 'block');
	} else if (chkValue == 2) {
		$('#B').css('display', 'block');
	} else {
		$('#C').css('display', 'block');
	}
});

var WorkingDataSetAdd = function() {
	var WorkingDataSet1 = $('#WorkingDataSet1 option:selected').val();
	var WorkingDataSet2 = $('#WorkingDataSet2 option:selected').val();
	var WorkingDataSetName1 = '';
	var WorkingDataSetName2 = '';
	var compareWorkingDataSet = String(WorkingDataSet1) + String(WorkingDataSet2);
	var flag = false;
	
	$("input[name=compareWorkingDataSet]").each(function(index, item){
		if ($(item).attr("value") == compareWorkingDataSet) {
			flag  = true;
			return false;
		}
	});
	
	if (flag == true) {
		alert("중복된 항목이 존재합니다.");
		return;
	}
	if (WorkingDataSet1 == null) {
		alert("소음환경을 선택해주세요.");
		$('#WorkingDataSet1').focus();
		return;
	} else {
		switch(WorkingDataSet1){
		case "1": WorkingDataSetName1 = '1.가정 내 환경'; break;
		case "2": WorkingDataSetName1 = '2.야외활동환경 (실내/실외)'; break;
		case "3": WorkingDataSetName1 = '3.야외활동환경 (실내/실외)'; break;
		case "4": WorkingDataSetName1 = '4.야외활동환경 (실내)'; break;
		case "5": WorkingDataSetName1 = '5.야외활동환경 (실내)'; break;
		case "6": WorkingDataSetName1 = '6.야외활동환경 (실외)'; break;
		case "7": WorkingDataSetName1 = '7.야외활동환경 (실외)'; break;
		case "8": WorkingDataSetName1 = '8.사무환경'; break;
		case "9": WorkingDataSetName1 = '9.특수환경'; break;
		case "10": WorkingDataSetName1 = '10.특수환경'; break;
		case "11": WorkingDataSetName1 = '11.특수환경'; break;
		}
	}
	if (WorkingDataSet2 == null) {
		alert("주제를 선택해주세요.");
		$('#WorkingDataSet2').focus();
		return;
	} else {
		switch(WorkingDataSet2){
		case "1": WorkingDataSetName2 = '주제1'; break;
		case "2": WorkingDataSetName2 = '주제2'; break;
		case "3": WorkingDataSetName2 = '주제3'; break;
		case "4": WorkingDataSetName2 = '주제4'; break;
		case "5": WorkingDataSetName2 = '주제5'; break;
		}
	}
	
	var html = '';
	
	html += '<tr>';
	html += '<td>'+WorkingDataSetName1+'<input type="hidden" name="WorkingDataSet1" value="'+WorkingDataSet1+'"></td>';
	html += '<td>'+WorkingDataSetName2+'<input type="hidden" name="WorkingDataSet2" value="'+WorkingDataSet2+'">';
	html += '<input type="hidden" name="compareWorkingDataSet" value="'+String(WorkingDataSet1)+String(WorkingDataSet2)+'"></td>';
	html += '<td><button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="deleteDataset(this);">';
	html += '<span aria-hidden="true">&times;</span></button></td></tr>';
	$('.datasetlist').append(html);
}

var deleteDataset = function(id) {
	var tr = $(id).closest('tr');
	tr.remove();
	fnDataSetValue(false);
}

var fnDataSetValue = function(sign) {
	var = 
	if (sign == true) {
		
	} else {
		
	}
}

</script>
<!-- FOOTER==================================== -->	
	<jsp:include page="footer.jsp"/>
<!-- ========================================== -->
		