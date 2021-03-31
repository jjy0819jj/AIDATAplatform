<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<div>
	<h2 class="section-title">Manager</h2>
</div>
<table class="table table-striped" id="contents" style="">
	<thead>
		<tr>
			<th width="50px"></th>
			<th width="500px">제목</th>
			<th width="100px">작성자</th>
			<th width="100px">날짜</th>
			<th width="50px"></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="boardDTO" items="${list}">
			<c:choose>
				<c:when test="${boardDTO.hit==0 }">
					<tr>
						<td><span class="badge badge-danger" title='답변 대기중'>답변대기중</span></td>
						<td>${boardDTO.question}</td>
						<td>${boardDTO.name}</td>
						<td>${boardDTO.logtime}</td>
						<td><a href="boardDelete.do?seq=${boardDTO.seq}&pg=${pg}">
								<button type="button" class="btn btn-outline-danger">삭제</button>
						</a></td>
					</tr>
					<tr>
						<td colspan="5">
							<form action="boardUpdate.do" method="post">
								<input type="hidden" name="seq" value="${boardDTO.seq }">
								<input type="hidden" name="pg" value="${pg }">
								<div class="input-group mb-3">
									<input type="text" name="answer" class="form-control"
										placeholder="답변할 내용을 적어주세요." aria-label="Recipient's username"
										aria-describedby="button-addon2">
									<div class="input-group-append">
										<button type="submit" class="btn btn-outline-secondary"
											id="button-addon2">답변</button>
									</div>
								</div>
							</form>
						</td>
					</tr>
				</c:when>

				<c:otherwise>
					<tr>
						<td><span class="badge badge-success" title='답변 완료'>답변완료</span></td>
						<td>${boardDTO.question}</td>
						<td>${boardDTO.name}</td>
						<td>${boardDTO.logtime}</td>
						<td><a href="boardDelete.do?seq=${boardDTO.seq}">
								<button type="button" class="btn btn-outline-danger">삭제</button>
						</a></td>
					</tr>
					<tr>
						<td colspan="5">
							<form action="boardUpdate.do" method="get">
								<input type="hidden" name="seq" value="${boardDTO.seq }">
								<input type="hidden" name="pg" value="${pg }">
								<div class="input-group mb-3">
									<textarea style = "resize:none;" cols="50" rows="10" name="answer" class="form-control"
										 aria-label="Recipient's username"
										aria-describedby="button-addon2">${boardDTO.answer }</textarea>
									<div class="input-group-append">
										<button type="submit" class="btn btn-outline-secondary"
											id="button-addon2">수정</button>
									</div>
								</div>
							</form>
						</td>
					</tr>
				</c:otherwise>

			</c:choose>
		</c:forEach>
	</tbody>
</table>
</div>
</div>
<div>
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center pagination-lg">
			<!-----------------이전------------------>
			<c:choose>
				<c:when test="${startPage>3 }">
					<li class="page-item"><a class="page-link"
						href="manager_boardList.do?pg=${startPage - 1}"
						aria-label="Previous"> <span aria-hidden="true">&laquo;◀</span>
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
						class="page-link" href="manager_boardList.do?pg=${i}">${i} <span
							class="sr-only">(current)</span></a></li>
				</c:if>
				<c:if test="${pg != i}">
					<li class="page-item"><a class="page-link"
						href="manager_boardList.do?pg=${i}">${i}</a></li>
				</c:if>
			</c:forEach>
			<!--------------------------------------->

			<!-----------------다음------------------>
			<c:choose>
				<c:when test="${endPage<totalP }">
					<li class="page-item"><a class="page-link"
						href="manager_boardList.do?pg=${endPage + 1}" aria-label="Next">
							<span aria-hidden="true">▶&raquo;</span>
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