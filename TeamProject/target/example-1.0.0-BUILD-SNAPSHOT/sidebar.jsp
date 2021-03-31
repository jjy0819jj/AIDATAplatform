<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap-verticaltabs.css"/>
	<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
	<script type="text/javascript" src="js/bootstrap-transition.js"></script>
	<script type="text/javascript" src="js/bootstrap-tab.js"></script>
</head>
<body>
  <div class="tabbable verticaltabs-container"> <!-- Wrap the Bootstrap Tabs/Pills in this container to position them vertically -->
    <ul class="nav nav-tabs">
      <li><a href="manager.do">Main</a></li>
      <li><a href="memberList.do?pg=1">Member</a></li>
      <li><a href="managerNoticeList.do">Notice</a></li>
      <li><a href="managerBoardList.do?pg=1">Qusetion</a></li>
    </ul>
    
      <div class="tab-pane fade in active" id="home">
      </div>
      <div class="tab-pane fade" id="profile">
      
      </div>
      <div class="tab-pane fade" id="messages">
      </div>
      <div class="tab-pane fade" id="settings">
      </div>
      <div class="tab-pane fade" id="contact">
      </div>
    </div>
  
</body>
</html>
