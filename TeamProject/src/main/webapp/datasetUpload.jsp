<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
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
    <form action="datasetInsert.do" method="post" accept-charset="UTF-8" enctype="multipart/form-data" id="uploadForm" class="needs-validation">
      <div class="row">
        <div class="col-xl-4 order-xl-2">
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
                    <div class="col-lg-7">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">소음환경</label>
                        <select multiple class="form-control" id="exampleFormControlSelect2" name="record" required>
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
						<div class="invalid-feedback">
							소음환경을 선택하세요.
						</div>
                      </div>
                    </div>
					<div class="col-lg-5">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">대화주제</label>
                        <select multiple class="form-control" id="exampleFormControlSelect2" name="topic" required>
						  <option value=1>주제1</option>
						  <option value=2>주제2</option>
						  <option value=3>주제3</option>
						  <option value=4>주제4</option>
						  <option value=5>주제5</option>
						</select>
						<div class="invalid-feedback">
							대화주제를 선택하세요.
						</div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">성별</label>
                        <div class="custom-control custom-radio">
						  <input type="radio" id="customRadio1" name="gender" class="custom-control-input" value=1 required>
						  <label class="custom-control-label" for="customRadio1">남자</label>
						</div>
						<div class="custom-control custom-radio">
						  <input type="radio" id="customRadio2" name="gender" class="custom-control-input" value=2 required>
						  <label class="custom-control-label" for="customRadio2">여자</label>
						</div>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">연령대</label>
                        <div class="custom-control custom-radio">
						  <input type="radio" id="customRadio4" name="age" class="custom-control-input" value=1 required>
						  <label class="custom-control-label" for="customRadio4">10대 이하</label>
						</div>
						<div class="custom-control custom-radio">
						  <input type="radio" id="customRadio5" name="age" class="custom-control-input" value=2 required>
						  <label class="custom-control-label" for="customRadio5">10대 ~ 60대</label>
						</div>
						<div class="custom-control custom-radio">
						  <input type="radio" id="customRadio6" name="age" class="custom-control-input" value=3 required>
						  <label class="custom-control-label" for="customRadio6">60대 이상</label>
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
                        <textarea rows="4" class="form-control" placeholder="해당 데이터셋의 특이사항이 있다면 작성
ex)성별 및 연령대가 계정과 다름 등" name="bigo"></textarea>
                      </div>
                    </div>
                  </div>
                </div>
                <hr class="my-5" />
                <div class="pl-lg-4">
                  <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg btn-block"><i class="ni ni-cloud-upload-96" style="font-size: 15px;"></i> 업로드!</button>
                  </div>
                </div>
            </div>
          </div>
        </div>
        <div class="col-xl-8 order-xl-1">
          <div class="card">
            <div class="card-header">
              <div class="row align-items-center">
                <div class="col-4">
                  <h3 class="mb-0">파일 올리기 </h3>
                </div>
				<!--
                <div class="col-4 text-right">
                  <a href="#!" class="btn btn-sm btn-primary">Settings</a>
                </div>
				-->
              </div>
            </div>
            <div class="card-body">
                <h6 class="heading-small text-muted mb-4">원본 녹음 파일</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-12">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">파일</label>
                        <input type="file" id="input-username" name="uploadFile" class="form-control">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-first-name">파일 용량</label>
                        <input type="text" id="input-first-name" class="form-control" value="" name="lengthForm" disabled>
                        <input type="hidden" value="" name="length">
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-last-name">음성 길이</label>
                        <input type="text" id="input-last-name" class="form-control" value="" name="sizeForm" disabled>
                        <input type="hidden" value="" name="size">
                      </div>
                    </div>
                  </div>
                </div>

                <hr class="my-4" />
                <!-- Description -->
                <h6 class="heading-small text-muted mb-4">문장 단위 음성 파일</h6>
                <div class="pl-lg-4">
                  <div class="form-group">
                    <label class="form-control-label">해당 원본 녹음 파일의 모든 문장 단위의 음성 파일들</label>
					<input type="file" id="input-username" class="form-control" name="uploadDatas" multiple required>
						<div class="invalid-feedback">
							파일을 선택해주세요.
						</div>
					<div class="card mt-2">
						<div class="card-body">
							<div class="dataList">
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
$("input[name=uploadFile]").on('change', function(){
	var form = $('#uploadForm')[0];
	var formData = new FormData(form);
		$.ajax({
			url: "datasetLength.do",
			type: "POST",
			enctype: 'multipart/form-data',
			data: formData,
			processData: false,
			contentType: false,
			success: function(data){
				var size = data.size + "KB";
				$('input[name=length]').val(data.duration);
				$('input[name=lengthForm]').val(data.duration);
				$('input[name=size]').val(size);
				$('input[name=sizeForm]').val(size);
			},
			error: function(request, status, error){
				alert('code:'+request.status+"\n"+"error:"+error);
			}
		});	
});

$("input[name=uploadDatas]").on('change', function(){
	var form = $('#uploadForm')[0];
	var formData = new FormData(form);
		$.ajax({
			url: "dataLength.do",
			type: "POST",
			enctype: 'multipart/form-data',
			data: formData,
			processData: false,
			contentType: false,
			success: function(data){
				$('.dataList').html('');
				$.each(data.dataList, function(index, list){
					$('.dataList').append(''+
							'<div class="row">'+
							'<div class="col-10">'+list.filename+' ('+list.size+')</div> <div class="col-2 test-muted test-right">│ '+list.length+
							'</div>');
				})
			},
			error: function(request, status, error){
				alert('code:'+request.status+"\n"+"error:"+error);
			}
		});	
});

(function() {
	'use strict';
	window.addEventListener('load', function() {
		var forms = document.getElementsByClassName('needs-validation');
		var validation = Array.prototype.filter.call(forms, function(form) {
			form.addEventListener('submit', function(event) {
				if (form. checkValidity() === false) {
					event.preventDefault();
					event.stopPropagation();
				}
				form.classList.add('was-validated');
			}, false);
		});
	}, false);
})();
</script>
		
<!-- FOOTER==================================== -->	
	<jsp:include page="footer.jsp"/>
<!-- ========================================== -->
		