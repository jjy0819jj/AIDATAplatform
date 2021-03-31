<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, inital-scale=1">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
table {
	text-align: center;
}

th {
	background-color: #352961;
	text-align: center;
	color: white;
}

.hover-me:hover {
	font-weight: bold;
	text-decoration: underline;
}
</style>

<title>Insert title here</title>
</head>
<body>

	<form action="applicationInsert.do" method="post" enctype="multipart/form-data">
		<div class="col-lg-6 mb-5">
			<h2 class="section-title">APPLICATION</h2><hr>
			<p>(주)1조에서 열정과 전문성을 가진 인재들을 기다립니다.</p>
		</div>
		
		<table class="table table-hover" id="contents">
			<thead>
				<tr>
					<th width="120px"></th>
					<th width="100px">번호</th>
					<th width="400px">채용공고</th>
					<th width="150px">지원기간</th>
					<th width="150px">게시일</th>
					<th width="50px"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="applicationDTO" items="${application}">
					<tr>

						<td><c:if
								test="${fn: contains(applicationDTO.subject, '2019')}">
								<span class="badge badge-secondary" title='미감'>마감</span>
							</c:if> <c:if test="${fn: contains(applicationDTO.subject, '2020')}">
								<span class="badge badge-success" title='진행'>진행</span>
							</c:if> <c:if test="${fn: contains(applicationDTO.subject, '수시')}">
								<span class="badge badge-danger" title='수시'>수시</span>
							</c:if> <c:if test="${fn: contains(applicationDTO.subject, '반기')}">
								<span class="badge badge-warning" title='수시'>공채</span>
							</c:if></td>
						<td>${applicationDTO.seq}</td>
						<td>
							<c:if test="${fn: contains(applicationDTO.subject, '2019')}">
								${applicationDTO.subject}
							</c:if> <c:if test="${fn: contains(applicationDTO.subject, '2020')}">
								<strong>${applicationDTO.subject}</strong>
							</c:if>
						</td>
						<td>${applicationDTO.appdate}</td>
						<td>${applicationDTO.logtime}</td>
						<td><span class="badge badge-dark plusIcon">▼</span> <span
							class="badge badge-light plusIcon" style="display: none">▲</span></td>
					</tr>
					<tr style="display: none">
						<td colspan="6" align="left"><c:if
								test="${fn: contains(applicationDTO.subject, '2019')}"></c:if> <c:if
								test="${fn: contains(applicationDTO.subject, '2020')}">
								<a href="resources/file/recruit_detail.pdf">▶
								<span class="hover-me" style="color:blue">채용공고/직무상세 모집요강</span></a>
								<br>
								<a href="resources/file/recruit_application.docx" download
									target="_blank">▶ <span class="hover-me" style="color:blue">입사지원서 다운로드</span></a>
								<br>
								<hr>
							</c:if> <c:if test="${fn: contains(applicationDTO.subject, '2019')}">
								<a>${applicationDTO.content}</a>
							</c:if> <c:if test="${fn: contains(applicationDTO.subject, '2020')}">
								<a>▶ ${applicationDTO.content}</a> &nbsp;
								<input type="file" name="uploadFile" class="btn btn-outline-primary">
								<button type="submit" class="btn btn-outline-primary">업로드</button>
							</c:if>
							<hr>
							<p>▶ 또는 e-mail: 1jo_recruit@1jo.com로, 영문 이력서 및 자기소개서 송부해주시면
								연락 드리겠습니다. (디자인 및 개발 직군의 경우 포트폴리오 첨부 필수)</p>
							<p>▶ 지원서 및 이력서 파일확장자는 .zip, .docx, .xlsx, .pdf 만 가능한 점 참고
								부탁드립니다.</p>
							<p>▶ 경력이 있으신 지원자 분도 신입으로 지원하실 수 있습니다.</p>

							<p>※ 문의사항: (02)-723-0123 또는 1jo_fnq@1jo.com으로 연락 주시기 바랍니다.</p></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>


		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center pagination-lg">
				<!-----------------이전------------------>
				<c:choose>
					<c:when test="${startPage>3 }">
						<li class="page-item"><a class="page-link"
							href="application.do?pg=${startPage - 1}" aria-label="Previous">
								<span aria-hidden="true">&laquo;◀</span>
						</a></li>
					</c:when>

					<c:otherwise>
						<li class="page-item disabled"><a class="page-link" href="#"
							tabindex="-1" aria-disabled="true"> <span aria-hidden="true">&laquo;◀</span>
						</a></li>
					</c:otherwise>
				</c:choose>
				<!--------------------------------------->

				<!-----------------페이지------------------>
				<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
					<c:if test="${pg == i}">
						<li class="page-item active" aria-current="page"><a
							class="page-link" href="application.do?pg=${i}">${i} <span
								class="sr-only">(current)</span></a></li>
					</c:if>
					<c:if test="${pg != i}">
						<li class="page-item"><a class="page-link"
							href="application.do?pg=${i}">${i}</a></li>
					</c:if>
				</c:forEach>
				<!--------------------------------------->

				<!-----------------다음------------------>
				<c:choose>
					<c:when test="${endPage<totalP }">
						<li class="page-item"><a class="page-link"
							href="application.do?pg=${endPage + 1}" aria-label="Next"> <span
								aria-hidden="true">▶&raquo;</span>
						</a></li>
					</c:when>

					<c:otherwise>
						<li class="page-item disabled"><a class="page-link" href="#"
							tabindex="-1" aria-disabled="true"> <span aria-hidden="true">▶&raquo;</span>
						</a></li>
					</c:otherwise>
				</c:choose>
				<!--------------------------------------->

			</ul>
		</nav>
	</form>
</body>
</html>