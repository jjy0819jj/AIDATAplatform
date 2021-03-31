<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</style>

<title>Insert title here</title>
</head>
<body>
	<div class="site-section" id="board-section" data-aos="fade">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 mb-5">
					<h2 class="section-title">Any Questions?</h2>
					<p>저희 회사에 궁금한 것을 자유롭게 올려주세요. 가능한 빠르게 답변해드리겠습니다.</p>
				</div>
				<table class="table table-hover" id="contents">
					<thead>
						<tr>
							<th width="5%"></th>
							<th width="45%">제목</th>
							<th width="20%">작성자</th>
							<th width="20%">날짜</th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="boardDTO" items="${list}">
						<c:choose>
						<c:when test="${boardDTO.hit==0 }">
							<tr>
								<td><span class="badge badge-danger" title='답변 대기'>답변대기</span></td>
								<td><strong>${boardDTO.question}</strong></td>
								<td>${boardDTO.name}</td>
								<td>${boardDTO.logtime}</td>
								<td></td>
								<td></td>
							</tr>
							<tr style="display: none">
								<td colspan="5"><a>${boardDTO.answer}</a></td>
							</tr>
						</c:when>
						
						<c:otherwise>
							<tr>
								<td><span class="badge badge-success" title='답변 완료'>답변완료</span></td>
								<td>${boardDTO.question}</td>
								<td>${boardDTO.name}</td>
								<td>${boardDTO.logtime}</td>
								<td></td>
								<td><span class="badge badge-dark plusIcon">▼</span> <span
								class="badge badge-light plusIcon" style="display: none">▲</span></td>
							</tr>
							<tr style="display: none">
								<td colspan="5" align="left"><a>${boardDTO.answer}</a></td>
							</tr>
						</c:otherwise>
						
						</c:choose>
						</c:forEach>
					</tbody>
				</table>
			</div>
			
		</div>
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center pagination-lg">
				<!-----------------이전------------------>
				<c:choose>
				<c:when test="${startPage>3 }">
				<li class="page-item">
					<a class="page-link" href="board.do?pg=${startPage - 1}" aria-label="Previous">
						 <span aria-hidden="true">&laquo;◀</span>
					</a>
				</li>
				</c:when>
				
				<c:otherwise>
				<li class="page-item disabled">
					<a class="page-link" href="#" tabindex="-1" aria-disabled="true">
						 <span aria-hidden="true">&laquo;◀</span>
					</a>
				</li>
				</c:otherwise>	
				</c:choose>
				<!--------------------------------------->
				
				<!-----------------페이지------------------>
				<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
			  	   <c:if test="${pg == i}">
			       <li class="page-item active" aria-current="page">
				      <a class="page-link" href="board.do?pg=${i}">${i} <span class="sr-only">(current)</span></a>
				   </li>
			       </c:if>
				   <c:if test="${pg != i}">
				    <li class="page-item">
					  <a class="page-link" href="board.do?pg=${i}">${i}</a>
					</li>
				   </c:if>
			   </c:forEach>
				<!--------------------------------------->
				
				<!-----------------다음------------------>
				<c:choose>
				<c:when test="${endPage<totalP }">
				<li class="page-item">
					<a class="page-link" href="board.do?pg=${endPage + 1}" aria-label="Next">
						 <span aria-hidden="true">▶&raquo;</span>
					</a>
				</li>
				</c:when>
				
				<c:otherwise>
				<li class="page-item disabled">
					<a class="page-link" href="#" tabindex="-1" aria-disabled="true">
						 <span aria-hidden="true">▶&raquo;</span>
					</a>
				</li>
				</c:otherwise>	
				</c:choose>
				<!--------------------------------------->
				
			</ul>
		</nav>
	</div>

</body>
</html>