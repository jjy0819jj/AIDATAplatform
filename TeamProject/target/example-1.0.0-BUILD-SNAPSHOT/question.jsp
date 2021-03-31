<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="container">

				<div class="row align-items-center">
					<div class="col-md-6 mr-auto order-2 order-md-1">
					<h2 class="section-title mb-3">SEND MESSAGE</h2>
						<c:choose>
						
							<c:when test="${sessionScope.email != null}">
								<p>문의를 남겨주시면, 최대한 빠른 시일 내에 답변 드리겠습니다.</p>
								<hr>
								<form method="post" action="boardWrite.do">
									<div class="form-group row2">
										<div class="col-md-6">
											<input type="email" class="form-control"style="width:250px;" placeholder="Email" id="email" value="${sessionScope.email }" readonly>
										</div>
									</div>
									<div class="form-group row2">
										<div class="col-md-12">
											<textarea class="form-control" style = "resize:none;" name="question" cols="30" rows="5"
												placeholder="문의하실 내용을 적어주세요."></textarea>
										</div>
									</div>
		
									<div class="form-group row2">
										<div class="col-md-6">
		
											<input type="submit"
												class="btn btn-primary py-3 px-5 btn-block"
												value="Send Message">
										</div>
									</div>
		
								</form>
							</c:when>
							
							
							
							<c:otherwise>
								<p>로그인 후 이용하실 수 있습니다.</p>
								<hr>
							</c:otherwise>
							
						</c:choose>
						<!-- contact us -->
						
						
					</div>
				</div>

			</div>
