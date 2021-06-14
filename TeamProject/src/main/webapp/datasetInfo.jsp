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
        <div class="col-xl-4 order-xl-2">
          <div class="card" style="width: 450px; position: fixed;">
            <div class="card-header">
              <div class="row align-items-center">
                <div class="col-5">
                  <h3 class="mb-0">NO.${vo.dno }</h3>
                  <c:set var="TextValue" value="${vo.logtime}"/>
                  <h5 class="text-muted">${fn:substring(TextValue,0,16) }</h5>
                </div>
                <div class="col-7">
                  <table class="table table-sm table-borderless">
                  	<thead class="thead-info">
                  		<tr align="center">
                  			<th scope="col">업로드</th>
                  			<th scope="col">검수담당</th>
                  		</tr> 
                  	</thead>
                  	<tbody class="list">
                  		<tr align="center">
                  			<td align="center">
                  				<div class="avatar-group">
									<a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="${vo.name }
									(${vo.tel})">
										<i class="ni ni-circle-08"></i>
									</a>
								</div>
                  			</td>
                  			<td align="center">
                  				<div class="avatar-group">
									<a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-original-title="${vo.name }
									(${vo.tel})">
										<i class="ni ni-circle-08"></i>
									</a>
								</div>
                  			</td>
                  		</tr>
                  	</tbody>
                  </table>
                </div>
              </div>
              
              <hr class="my-4"/>
              		<div class="row">
						<div class="col-12 comppercent" align="left">
							<span style="color: black;">
							완료
							<c:choose>
							<c:when test="${vo.compdata == 0 }">0</c:when>
							<c:otherwise>
							<fmt:formatNumber value="${vo.compdata/vo.totaldata*100 }" pattern=".00"/>
							</c:otherwise>
							</c:choose>% (${vo.compdata})
							</span>
							/ 
							반려
							<c:choose>
							<c:when test="${vo.faildata == 0 }">0</c:when>
							<c:otherwise>
							<fmt:formatNumber value="${vo.faildata/vo.totaldata*100 }" pattern=".00"/>
							</c:otherwise>
							</c:choose>% (${vo.faildata})
							/ 
							대기중
							(${vo.totaldata-(vo.compdata+vo.faildata)})
						</div>
					</div>
					<div class="row">
                        <div class="col-12">
                            <div class="progress compprogress" style="width: 100%; height: 30px;">
                                <div class="progress-bar bg-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" 
                                aria-valuemax="100" style="width: ${vo.compdata/vo.totaldata*100 }%;"></div>
                                <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="0" aria-valuemin="0" 
                                aria-valuemax="100" style="width: ${vo.faildata/vo.totaldata*100 }%;"></div>
                            </div>
                        </div>
                    </div>
              </div>
              <div class="card-body">
              	<div class="row">
              		<div class="col-lg-12 mb--3">
              			<div class="form-group">
              				<label class="form-control-label" for="input-username">
              				${vo.filename }
              				<h5 class="text-muted">(${vo.size }│ ${vo.length })</h5>
              				</label>
              			</div>
              		</div>
              	</div>
              	<pre>
max amplitude: 12341
min amplitude: -36916</pre>
			
				<table class="table table-sm">
                  	<tbody class="list">
                  		<tr>
                  			<td width="10%">
                  				<span class="badge badge-dot mr-4">
                  					<i class="bg-primary"></i>
                  					<span>소음환경</span>
                  				</span>
                  			</td>
                  			<td width="90%">
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
                  		</tr>
                  		<tr>
							<td>
                  				<span class="badge badge-dot mr-4">
                  					<i class="bg-primary"></i>
                  					<span>대화주제</span>
                  				</span>
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
                  		</tr>
                  		<tr>
							<td>
                  				<span class="badge badge-dot mr-4">
                  					<i class="bg-primary"></i>
                  					<span>성별</span>
                  				</span>
                  			</td>
                  			<td>
                  				<c:choose>
								<c:when test="${vo.gender == 1 }">남자</c:when>
								<c:when test="${vo.gender == 2 }">여자</c:when>
								</c:choose>
                  			</td>
                  		</tr>
                  		<tr>
							<td>
                  				<span class="badge badge-dot mr-4">
                  					<i class="bg-primary"></i>
                  					<span>연령대</span>
                  				</span>
                  			</td>
                  			<td>
                  				<c:choose>
								<c:when test="${vo.age == 1 }">10대 이하</c:when>
								<c:when test="${vo.age == 2 }">10대~60대</c:when>
								<c:when test="${vo.age == 3 }">60대 이상</c:when>
								</c:choose>
                  			</td>
                  		</tr>
                  		<tr>
							<td>
                  				<span class="badge badge-dot mr-4">
                  					<i class="bg-primary"></i>
                  					<span>특이사항</span>
                  				</span>
                  			</td>
                  			<td style="white-space:normal;">
                  				<c:choose>
								<c:when test="${empty vo.bigo }">없음</c:when>
								<c:otherwise>${vo.bigo }</c:otherwise>
								</c:choose>
                  			</td>
                  		</tr>
                  	</tbody>
                  </table>
                  <hr class="my-4"/>
                  	<div class="form-group">
	               		<div class="form-check-inline">
						  <input class="form-check-input" type="checkbox" value="1" id="chkwaiting" checked>
						  <label class="form-check-label" for="chkwaiting">
						    대기중
						  </label>
						</div>
						<div class="form-check-inline">
						  <input class="form-check-input" type="checkbox" value="1" id="chkcomplete" checked>
						  <label class="form-check-label" for="chkcomplete">
						    완료
						  </label>
						</div>
						<div class="form-check-inline">
						  <input class="form-check-input" type="checkbox" value="1" id="chkcompanion" checked>
						  <label class="form-check-label" for="chkcompanion">
						    반려
						  </label>
						</div>
						
						<input type="text" class="form-control my-2" id="fileSearch" placeholder="파일이름 입력"/>
						<!--  검수자: <input type="text" id="inspectorSearch" />-->
					</div>
					<h4 class="text-right"><a href='javascript:void(0);'
					onclick="searchData();">새로고침</a></h4>
                  <hr class="my-4"/>
                  <h4 class="text-right"><a href="#top">맨 위로가기</a></h4>
                </div>
              </div>
            </div>
        <div class="col-xl-8 order-xl-1">
          <div class="card">
            <div class="card-header" id="top">
            	<h3 class="mb-0 compcnt">
            	해당 원본 녹음 파일의 모든 문장 단위의 음성 파일들 (작업 목표 ${vo.totaldata }개 중 작업 완료 ${vo.compdata+vo.faildata }개)
            	</h3> 
			</div>
                <div class="form-group">
                  <table class="table align-items-center table-dark">
                  	<thead class="thead-dark">
                  		<tr>
                  			<th scope="col" width="5%"></th>
                  			<th scope="col" width="40%">데이터</th>
                  			<th scope="col" width="30%">검수상태</th>
                  			<th scope="col" width="20%">검수자</th>
                  			<th scope="col" width="5%"></th>
                  		</tr> 
                  	</thead>
                  	<tbody class="dataList">
                  	<c:forEach var="datavo" items="${dataList }">
                  		<tr class="${datavo.status }" id="${datavo.datano }">
                  			<td scope="row">
                  				${vo.dno }-${datavo.datano }
                  			</td>
                  			<td>
                  				${datavo.filename }
                  				<br>
                  				<audio controls>
								    <source src="resources/dataFiles/${datavo.filename }" type="audio/wav">
								</audio>
                  			</td>
                  			<td class="td_status">
                  				<c:choose>
								<c:when test="${datavo.status == 0 }">
								<span class="badge badge-dot mr-4">
                  					<i class="bg-secondary"></i>
                  					<span>대기중</span>
                  				</span>
								</c:when>
								<c:when test="${datavo.status == 1 }">
								<span class="badge badge-dot mr-4">
                  					<i class="bg-info"></i>
                  					<span>완료</span>
                  				</span>
								</c:when>
								<c:when test="${datavo.status == 2 }">
								<span class="badge badge-dot mr-4">
                  					<i class="bg-danger"></i>
                  					<span>반려</span>
                  				</span>
								</c:when>
								</c:choose>
                  			</td>
                  			<c:choose>
								<c:when test="${datavo.inspector != 0 }">
								<td id="inspector">
                  				<div class="avatar-group" style="visibility: visible;">
									<a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-html="true"
									data-original-title="${datavo.ins_name }<br>(${datavo.ins_tel })">
										<i class="ni ni-circle-08"></i>
									</a>
								</div>
                  				</td>
								</c:when>
								<c:otherwise>
								<td id="inspector">
								<div class="avatar-group" style="visibility: hidden;">
									<a href="#" class="avatar avatar-sm rounded-circle" data-toggle="tooltip" data-html="true"
									data-original-title="${datavo.ins_name }<br>(${datavo.ins_tel })">
										<i class="ni ni-circle-08"></i>
									</a>
								</div>
								</td>
								</c:otherwise>
							</c:choose>
							<td>
								<div class="dropdown">
									<a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown">
										<i class="fas fa-ellipsis-v"></i>
									</a>
									<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
										<a class="dropdown-item"
										href='javascript:void(0);'
										onclick="inspect(this, 38, ${vo.dno }, ${datavo.datano }, 1);">완료</a>
										<a class="dropdown-item"
										href='javascript:void(0);'
										onclick="inspect(this, 38, ${vo.dno }, ${datavo.datano }, 2);">반려</a>
										<a class="dropdown-item"
										href='javascript:void(0);'
										onclick="inspect(this, 38, ${vo.dno }, ${datavo.datano }, 0);">대기</a>
									</div>
								</div>
                  			</td>
                  			<td style="display:none">
                  			${datavo.ins_name }
                  			</td>
                  		</tr>
                  	</c:forEach>
                  	</tbody>
                  </table>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>

<script>
var inspect = function(id, Session_sno, dno, datano, inspect_Num) {
	var tr = $(id).closest('tr');
	var td_status = tr.children().eq(2);
	var td_inspector = tr.children().eq(3);
	tr.removeClass("1");
	tr.removeClass("2");
	tr.removeClass("3");

	if (inspect_Num == 0) {
		$(td_status).html('<span class="badge badge-dot mr-4">'+
				'<i class="bg-secondary"></i>'+
				'<span>대기중</span></span>');
		tr.addClass("0");
	} else if (inspect_Num == 1) {
		$(td_status).html('<span class="badge badge-dot mr-4">'+
				'<i class="bg-info"></i>'+
				'<span>완료</span></span>');
		tr.addClass("1");
	} else {
		$(td_status).html('<span class="badge badge-dot mr-4">'+
				'<i class="bg-danger"></i>'+
				'<span>반려</span></span>');
		tr.addClass("2");
	}
	var data = {"Session_sno": Session_sno,
			"dno": dno,
			"datano": datano,
			"inspect_Num": inspect_Num};
	
	$.ajax({
		url: "inspect.do",
		type: "POST",
		enctype: 'multipart/form-data',
		data: data,
		success: function(data){
			var userInfo = data.userInfo;
			var total = data.waiting+data.complete+data.companion;
			var progress = (Math.round(data.complete/total*10000)/100).toFixed(2);
			var failprogress = (Math.round(data.companion/total*10000)/100).toFixed(2);
			
			if (inspect_Num > 0){
				$(td_inspector).children().css("visibility", "visible");
				td_inspector.children().children().attr("data-original-title", userInfo.name+ "<br>("+userInfo.tel+")")				
			} else { $(td_inspector).children().css("visibility", "hidden"); }
			
			$(".comppercent").html('<span style="color: black;">완료 '+progress+' % ('+data.complete+')</span>'+
								' / 반려 '+failprogress+' % ('+data.companion+')'+
								' / 대기중 ('+data.waiting+')');
			$(".compcnt").html('해당 원본 녹음 파일의 모든 문장 단위의 음성 파일들 (작업 목표 '+
					total+'개 중 작업 완료 '+(data.complete+data.companion)+'개)');
			$(".compprogress").html('<div class="progress-bar bg-info" role="progressbar" '+
					'aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" '+
					'style="width:'+ progress +'%;"></div>'+
					'<div class="progress-bar bg-danger" role="progressbar" '+
					'aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" '+
					'style="width:'+ failprogress +'%;"></div>');
		},
		error: function(request, status, error){
			alert('code:'+request.status+"\n"+"error:"+error);
		}
	});	
}



$('input:checkbox[id="chkwaiting"],'+ 
	'input:checkbox[id="chkcomplete"],'+ 
	'input:checkbox[id="chkcompanion"]').on('change', function () {
	
		searchData();
});

$('input:text[id="fileSearch"]').keyup(function() {
	searchData();
})


var searchData = function() {
		$(".dataList > tr").hide();
		var chkwaiting = 0;
		var chkcomplete = 0;
		var chkcompanion = 0;
		var fileSearch = $("#fileSearch").val();
		//var inspectorSearch = $("#inspectorSearch").val();
		var filetemp = $(".dataList > tr > td:nth-child(6n+2):contains('" + fileSearch + "')");
		//var inspectortemp = $(".dataList > tr > td:nth-child(6n+6):contains('" + inspectorSearch + "')");
	    $(filetemp).parent().show();
	    //$(inspectortemp).parent().show();
		if ($('input:checkbox[id="chkwaiting"]').is(":checked") == true){chkwaiting = 1;}
		if ($('input:checkbox[id="chkcomplete"]').is(":checked") == true){chkcomplete = 1;}
		if ($('input:checkbox[id="chkcompanion"]').is(":checked") == true){chkcompanion = 1;}
		
		if(chkwaiting != 1) {$(".dataList > tr.0").hide();}
		if(chkcomplete != 1) {$(".dataList > tr.1").hide();}
		if(chkcompanion != 1) {$(".dataList > tr.2").hide();}

};
	
/*
var dataSearch = function(dno) {
	var chkwaiting = 0;
	var chkcomplete = 0;
	var chkcompanion = 0;
	if ($('input:checkbox[id="chkwaiting"]').is(":checked") == true){chkwaiting = 1;}
	if ($('input:checkbox[id="chkcomplete"]').is(":checked") == true){chkcomplete = 1;}
	if ($('input:checkbox[id="chkcompanion"]').is(":checked") == true){chkcompanion = 1;}
	
	var data = {"dno": dno,
			"chkwaiting": chkwaiting,
			"chkcomplete": chkcomplete,
			"chkcompanion": chkcompanion
			};
	
	$.ajax({
		url: "dataList.do",
		type: "POST",
		enctype: 'multipart/form-data',
		data: data,
		success: function(data){
			$(".dataList").html('');
			$("data-toggle").unbind();
			$.each(data.dataList, function(index, dataList) {
				$(".dataList").append('<tr><td scope="row">'+dataList.dno+'-'+dataList.datano+'</td>'+
				'<td>'+dataList.filename+'<br><audio controls><source src="resources/dataFiles/'+
				dataList.filename+'" type="audio/wav"></audio></td><td class="td_status">'+
				'<span class="badge badge-dot mr-4">'+
				'<i class="bg-secondary"></i><span>대기중</span></span></td>'+
				'<td><div class="avatar-group" style="visibility: visible;">'+
				'<a href="#" class="avatar avatar-sm rounded-circle" data-toggle2="tooltip" data-html="true" '+
				'data-original-title="테스트(테스트)">'+
				'<i class="ni ni-circle-08"></i></a></div></td>'+
				''+
				'<td><div class="dropdown">'+
				'<a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown">'+
				'<i class="fas fa-ellipsis-v"></i></a>'+
				'<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">'+
				'<a class="dropdown-item" href="javascript:void(0); "'+
				'onclick="inspect(this, 38,'+dataList.dno+','+dataList.datano+', 1);">완료</a>'+
				'<a class="dropdown-item" href="javascript:void(0); "'+
				'onclick="inspect(this, 38,'+dataList.dno+','+dataList.datano+', 2);">반려</a>'+
				'<a class="dropdown-item" href="javascript:void(0); "'+
				'onclick="inspect(this, 38,'+dataList.dno+','+dataList.datano+', 0);">대기</a>'+
				'</div></div></td>');
			})
		},
		error: function(request, status, error){
			alert('code:'+request.status+"\n"+"error:"+error);
		}
	});	
}

$(document).on('cilck', '[data-toggle="toggle"]', function(){
    alert("동적변경");
});
*/
</script>

<!-- FOOTER==================================== -->	
	<jsp:include page="footer.jsp"/>
<!-- ========================================== -->
		