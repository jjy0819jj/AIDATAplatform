<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, inital-scale=1">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
	<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6 mb-5">
						<h2 class="section-title">NOTICE</h2>
						<p>(주)1조 고객분들께 전달드리는 공지사항입니다.</p>
					</div>
					<table class="table table-hover" id="contents">
						<thead>
							<tr>
								<th width="10%">양식</th>
								<th width="70%">제목</th>
								<th width="15%">날짜</th>
								<th width="5%"></th>
							</tr>
						</thead>
						<tbody>
						<jsp:useBean id="currTime" class="java.util.Date" />
						<fmt:formatDate value="${currTime}" var="currTime" pattern="yyyy.MM.dd" />
							<c:forEach var="dto" items="${notice}">
							<c:if test="${dto.rank > 0 }">
							<tr>
								<td>
								<c:if test="${currTime == dto.logtime}">
								<span class="badge badge-success" title='오늘 올라온 공지입니다.'>NEW</span>
								</c:if>
								<c:if test="${dto.rank==1 }">
								<span class="badge badge-danger" title='필독사항입니다.'>필독</span>
								</c:if>
								<c:if test="${dto.rank==2 }">
								<span class="badge badge-warning" title='회사 공고 사항입니다.'>공고</span>
								</c:if>		
								<c:if test="${dto.rank==3 }">
								<span class="badge badge-primary" title='공지사항입니다.'>공지</span>
								</c:if>
								</td>
								<td>${dto.subject}</td>
								<td>${dto.logtime}</td>
								<td><span class="badge badge-dark plusIcon">▼</span>
									<span class="badge badge-light plusIcon" style="display: none">▲</span></td>
							</tr>
							<tr style="display: none">
								<td colspan="5" align="left">${dto.content}</td>
							</tr>
							</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>


</body>
</html>