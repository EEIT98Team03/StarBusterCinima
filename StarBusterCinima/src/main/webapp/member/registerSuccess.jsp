<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register Success</title>
<link rel="shortcut icon" type="image/png" href="/StarBusterCinima/images/logo.ico"/>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<style>
body{
/* background-color:#D9FFFF; */
}
#innerbox2 {
	margin: 180px auto
}
.container{
	
}
</style>
</head>
<body>
<%-- 	<jsp:include page="${pageScope.request.contextPath}/fragement/top.jsp"></jsp:include> --%>
	<div class="container">
		<div id="innerbox1" class="row text-center">
			<div id="innerbox2" class="col-sm-6 col-sm-offset-3">
				<br><br>
				<h2 style="color: #0fad00">Success</h2>
				<c:if test="${not empty autoEmailAddress}">
					<a href="${autoEmailAddress}" target="_blank">系統偵測郵件平台</a>
				</c:if>
				<c:if test="${empty autoEmailAddress}">
					<h3>請到你的Email address 收取認證信件</h3>
				</c:if>
				<h3>Dear, ${userName}</h3>
				<p style="font-size: 20px; color: #5C5C5C;">Thank you for
					verifying your Mobile No.We have sent you an email "${userEmail}"
					with your details Please go to your above email now and login.</p>
				<!--  
				<a href='<c:url value="/member/login.jsp"/>' class="btn btn-success">
					    Log in     </a> <br> <br>
					-->
			</div>

		</div>
	</div>
<!-- 	<p>&nbsp;</p> -->
<!-- 	<p>&nbsp;</p> -->
<!-- 	<p>&nbsp;</p> -->
<!-- 	<p>&nbsp;</p> -->
<!-- 	<p>&nbsp;</p> -->
<!-- 	<p>&nbsp;</p> -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
		integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
		integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
		crossorigin="anonymous"></script>
<%-- 	<jsp:include page="${pageScope.request.contextPath}/fragement/bot.jsp"></jsp:include> --%>
</body>
</html>