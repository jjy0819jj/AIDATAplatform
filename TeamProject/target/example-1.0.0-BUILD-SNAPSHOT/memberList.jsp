<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
</head>
<div>
	<h2 class="section-title">Manager</h2>
</div>
<table class="table table-hover" id="contents">
	<tr>
		<th>이름</th>
		<th>이메일(Id)</th>
		<th>비밀번호</th>
		<th>전화번호</th>
		<th>직책</th>
		<th>입사일</th>
		<th>주소</th>
		<th>이력서</th>
		<th colspan="2">관리</th>
	</tr>
	<c:forEach var="memberDTO" items="${list}">
		<tr>
			<td>${memberDTO.name}</td>
			<td>${memberDTO.email}</td>
			<td>${memberDTO.pwd}</td>
			<td>${memberDTO.tel}-${memberDTO.tel2}-${memberDTO.tel3}</td>
			<c:if test="${memberDTO.member_code == 1}">
				<td>관리자</td>
			</c:if>
			<c:if test="${memberDTO.member_code == 2}">
				<td>사장</td>
			</c:if>
			<c:if test="${memberDTO.member_code == 3}">
				<td>부장</td>
			</c:if>
			<c:if test="${memberDTO.member_code == 4}">
				<td>대리</td>
			</c:if>
			<c:if test="${memberDTO.member_code == 5}">
				<td>사원</td>
			</c:if>
			<c:if test="${memberDTO.member_code == 6}">
				<td>일반회원</td>
			</c:if>
			<c:if test="${memberDTO.member_code == null}">
				<td>일반회원</td>
			</c:if>
			<td>${memberDTO.startwork}</td>
			<td>${memberDTO.addr}</td>
			<c:choose>
				<c:when test="${memberDTO.member_code == 1 }">
				<td></td>
				</c:when>
				<c:otherwise>
					<c:choose>
						<c:when test="${memberDTO.file_name != '없음' }">
						<td><a class="btn btn-outline-primary" href="resumeView.do?file_name=${memberDTO.file_name}&email=${memberDTO.email}" target="_blank">
							이력서</a></td>
						</c:when>
						<c:otherwise>
							<td>없음</td>
						</c:otherwise>
					</c:choose>
				</c:otherwise>
			</c:choose>
			
			
			<c:choose>
			<c:when test="${memberDTO.member_code == 1 }">
			<td>
				관리자
			</td>
			</c:when>
			<c:otherwise>
			<td><a href="memberUpdateForm.do?email=${memberDTO.email}">
					<button type="button" class="btn btn-outline-primary">수정</button>
			</a> <a href="memberDelete.do?email=${memberDTO.email}">
					<button type="button" class="btn btn-outline-danger">삭제</button>
			</a></td>
			</c:otherwise>
			</c:choose>
		</tr>
	</c:forEach>
</table>
</div>
</div>
<div>
<c:if test="${resume == 0 }">
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center pagination-lg">
			<!-----------------이전------------------>
			<c:choose>
				<c:when test="${startPage>3 }">
					<li class="page-item"><a class="page-link"
						href="memberList.do?pg=${startPage - 1}" aria-label="Previous"> <span
							aria-hidden="true">&laquo;◀</span>
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
						class="page-link" href="memberList.do?pg=${i}">${i} <span
							class="sr-only">(current)</span></a></li>
				</c:if>
				<c:if test="${pg != i}">
					<li class="page-item"><a class="page-link"
						href="memberList.do?pg=${i}">${i}</a></li>
				</c:if>
			</c:forEach>
			<!--------------------------------------->

			<!-----------------다음------------------>
			<c:choose>
				<c:when test="${endPage<totalP }">
					<li class="page-item"><a class="page-link"
						href="memberList.do?pg=${endPage + 1}" aria-label="Next"> <span
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
</c:if>