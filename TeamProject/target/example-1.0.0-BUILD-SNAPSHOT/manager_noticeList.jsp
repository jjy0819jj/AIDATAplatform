<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html>
<div>
	<h2 class="section-title">Manager</h2>
</div>
<table class="table table-striped" id="contents" style="">
	<thead>
		<tr>
			<th width="100px"></th>
			<th width="550px">제목</th>
			<th width="100px">날짜</th>
			<th width="50px"></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td colspan=4><a
				href="noticeInsert.do?seq=${boardDTO.seq}&pg=${pg}">
					<button type="button" class="btn btn-outline-primary"
						style="float: center;">추가</button>
			</a></td>
		</tr>
		<jsp:useBean id="currTime" class="java.util.Date" />
		<fmt:formatDate value="${currTime}" var="currTime"
			pattern="yyyy.MM.dd" />
		<c:forEach var="boardDTO" items="${list}">
			<tr>
				<td><c:if test="${currTime == boardDTO.logtime}">
						<span class="badge badge-success" title='오늘 올라온 공지입니다.'>NEW</span>
					</c:if> <c:if test="${boardDTO.rank==1 }">
						<span class="badge badge-danger" title='필독사항입니다.'>필독</span>
					</c:if> <c:if test="${boardDTO.rank==2 }">
						<span class="badge badge-warning" title='회사 공고 사항입니다.'>공고</span>
					</c:if> <c:if test="${boardDTO.rank==3 }">
						<span class="badge badge-primary" title='공지사항입니다.'>공지</span>
					</c:if> <c:if test="${boardDTO.rank==0 }">
						<span class="badge badge-secondary" title='비공개 공지입니다.'>비공개</span>
					</c:if></td>
				<td>${boardDTO.subject}</td>
				<td>${boardDTO.logtime}</td>
				<td><span class="badge badge-dark plusIcon">▼</span> <span
					class="badge badge-light plusIcon" style="display: none">▲</span></td>
			</tr>
			<tr style="display: none">
				<td colspan=4 style="text-align: left;">
					<form action="noticeUpdate.do" method="post">
						<input type="hidden" name="seq" value="${boardDTO.seq }">
						<div class="mb-3">
							<c:choose>
								<c:when test="${boardDTO.rank==1 }">
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="rank"
											id="inlineRadio1" value="1" checked> <label
											class="form-check-label" for="inlineRadio1">필독</label>
									</div>
								</c:when>
								<c:otherwise>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="rank"
											id="inlineRadio1" value="1"> <label
											class="form-check-label" for="inlineRadio1">필독</label>
									</div>
								</c:otherwise>

							</c:choose>
							<c:choose>
								<c:when test="${boardDTO.rank==2 }">
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="rank"
											id="inlineRadio2" value="2" checked> <label
											class="form-check-label" for="inlineRadio2">공고</label>
									</div>
								</c:when>
								<c:otherwise>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="rank"
											id="inlineRadio2" value="2"> <label
											class="form-check-label" for="inlineRadio2">공고</label>
									</div>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${boardDTO.rank==3 }">
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="rank"
											id="inlineRadio3" value="3" checked> <label
											class="form-check-label" for="inlineRadio3">일반</label>
									</div>
								</c:when>
								<c:otherwise>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="rank"
											id="inlineRadio3" value="3"> <label
											class="form-check-label" for="inlineRadio3">일반</label>
									</div>
								</c:otherwise>

							</c:choose>
							<c:choose>
								<c:when test="${boardDTO.rank==0 }">
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="rank"
											id="inlineRadio4" value="0" checked> <label
											class="form-check-label" for="inlineRadio4">비공개</label>
									</div>
								</c:when>
								<c:otherwise>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="rank"
											id="inlineRadio4" value="0"> <label
											class="form-check-label" for="inlineRadio4">비공개</label>
									</div>
								</c:otherwise>
							</c:choose>
							<small id="rankhelp" class="form-text text-muted">필독, 공고,
								일반 순으로 공지가 보여지며 비공개 상태는 사용자 페이지에서 보이지 않습니다.</small>
						</div>
						<div class="mb-3">
							<label>제목</label> <input class="form-control form-control-lg"
								name="subject" type="text" placeholder="제목을 입력해주세요."
								value="${boardDTO.subject }">
						</div>
						<div class="mb-3">
							<label>내용</label>
							<textarea class="form-control" name="content"
								placeholder="공지할 내용을 입력해주세요." cols="30" rows="5">${boardDTO.content }</textarea>
						</div>

						<a href="noticeUpdate.do">
							<button type="submit" class="btn btn-outline-primary"
								style="float: right;">저장</button>
						</a> <a href="noticeDelete.do?seq=${boardDTO.seq}">
							<button type="button" class="btn btn-outline-danger"
								style="float: right;">삭제</button>
						</a>
					</form>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</div>
</div>
<div>

	<!--  
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center pagination-lg">
			
			<c:choose>
				<c:when test="${startPage>3 }">
					<li class="page-item"><a class="page-link"
						href="managerNoticeList.do?pg=${startPage - 1}"
						aria-label="Previous"> <span aria-hidden="true">&laquo;◀</span>
					</a></li>
				</c:when>

				<c:otherwise>
					<li class="page-item disabled"><a class="page-link" href="#"
						tabindex="-1" aria-disabled="true"> <span aria-hidden="true">&laquo;◀</span>
					</a></li>
				</c:otherwise>
			</c:choose>
			

			
			<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
				<c:if test="${pg == i}">
					<li class="page-item active" aria-current="page"><a
						class="page-link" href="managerNoticeList.do?pg=${i}">${i} <span
							class="sr-only">(current)</span></a></li>
				</c:if>
				<c:if test="${pg != i}">
					<li class="page-item"><a class="page-link"
						href="managerNoticeList.do?pg=${i}">${i}</a></li>
				</c:if>
			</c:forEach>
		

			
			<c:choose>
				<c:when test="${endPage<totalP }">
					<li class="page-item"><a class="page-link"
						href="managerNoticeList.do?pg=${endPage + 1}" aria-label="Next">
							<span aria-hidden="true">▶&raquo;</span>
					</a></li>
				</c:when>

				<c:otherwise>
					<li class="page-item disabled"><a class="page-link" href="#"
						tabindex="-1" aria-disabled="true"> <span aria-hidden="true">▶&raquo;</span>
					</a></li>
				</c:otherwise>
			</c:choose>
			

		</ul>
	</nav>
	-->