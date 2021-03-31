<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<div class="container section-counter">
	<div>
		<h2 class="section-title">Manager</h2>
	</div>
	<div class="row">
		<div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay=""
			style="cursor: pointer;"
			onclick="location.href='memberList.do?pg=1';">
			<div class="counter d-flex align-items-start mb-5">
				<div class="icon-wrap">
					<span class="flaticon-group text-primary"></span>
				</div>

				<div class="counter-text">
					<strong>${totalMember }</strong> <span>MEMBER<br> <small
						class="form-text text-muted">전체 회원</small></span>
				</div>
			</div>
		</div>


		<div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100"
			style="cursor: pointer;"
			onclick="location.href='managerNoticeList.do?pg=1';">
			<div class="counter d-flex align-items-start mb-5">
				<div class="icon-wrap">
					<span class="flaticon-television text-primary"></span>
				</div>
				<div class="counter-text">
					<strong>${totalNotice }</strong> <span>NOTICE<br> <small
						class="form-text text-muted">게시중인 공지사항</small></span>
				</div>
			</div>
		</div>

		<div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200"
			style="cursor: pointer;"
			onclick="location.href='managerBoardList.do?pg=1';">
			<div class="counter d-flex align-items-start">
				<div class="icon-wrap">
					<span class="flaticon-chat text-primary"></span>
				</div>
				<div class="counter-text">
					<strong>${totalBoard }</strong> <span>QUESTION<br> <small
						class="form-text text-muted">답변대기중 질문</small></span>
				</div>
			</div>
		</div>

		<div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300"
			style="cursor: pointer;"
			onclick="location.href='memberResumeList.do?pg=1';">
			<div class="counter d-flex align-items-start">
				<div class="icon-wrap">
					<span class="flaticon-add-file text-primary"></span>
				</div>
				<div class="counter-text">
					<strong>${totalResume }</strong> <span>NEW RESUME<br> <small
						class="form-text text-muted">새 이력서</small></span>
				</div>
			</div>
		</div>
	</div>
	<br>


	<div class="row">
		<span>NEW Users<br> <small class="form-text text-muted">신규
				가입자 현황</small></span>
		<hr>
		<canvas class="my-4 w-100" id="myChart" width="900" height="300"></canvas>
	</div>
</div>

<script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script>
<script src="../assets/dist/js/bootstrap.bundle.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
<script type="text/javascript">
(function () {
  'use strict'

  feather.replace()

  // Graphs
  var ctx = document.getElementById('myChart')
  // eslint-disable-next-line no-unused-vars
  var myChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: [
        '${days[0]}',
        '${days[1]}',
        '${days[2]}',
        '${days[3]}',
        '${days[4]}',
        '${days[5]}',
        '오늘'
      ],
      datasets: [{
        data: [
        ${list[0] },
        ${list[1] },
        ${list[2] },
        ${list[3] },
        ${list[4] },
        ${list[5] },
        ${list[6] }
        ],
        lineTension: 0,
        backgroundColor: 'transparent',
        borderColor: '#007bff',
        borderWidth: 4,
        pointBackgroundColor: '#007bff'
      }]
    },
    options: {
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: false
          }
        }]
      },
      legend: {
        display: false
      }
    }
  })
}())
</script>