<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style>
.white {
	color: #000;
	background-color: #fff;
}
#robot {
	margin: 10px
}
	.login{
background-color:black;
color:white;
}
</style>

	
<link rel="stylesheet" type="text/css" href="/StarBusterCinima/css/home.css"></link>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	

</head>
<body>

<jsp:include page="${pageScope.request.contextPath}/fragement/top.jsp"></jsp:include>

	<div class="container">
		<div class="row">
			<div id="innerbox" class="col-md-4 col-md-offset-4">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Login via site</h3>
					</div>
					<div class="panel-body">
						<form accept-charset="UTF-8" name="login" role="form"
							method="post" action='<c:url value="/member/login.controller"/>'>
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="yourmail@example.com"
										id="email" name="email" type="email" value="${sessionScope.user}"><span id="span1">${errors.email}</span>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Password"
										id="password" name="password" type="password" value="${sessionScope.password}"><span
										id="span2">${errors.password}</span>
								</div>
								<div class="checkbox">
									<label> <input name="remember" type="checkbox"
									<c:if test='${sessionScope.rememberMe==true}'>
										checked='checked'
									</c:if>  value="true"> Remember Me
									</label>

								</div>
								<div id="html_element"></div>
								<p>&nbsp;</p>
								<span>${errors.login}</span> <input
									class="btn btn-lg btn-success btn-block" type="submit"
									value="Login">
									<p>&nbsp;</p>
								
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="${pageScope.request.contextPath}/fragement/bot.jsp"></jsp:include>
						<!--  
                        <h4 style="text-align:center;">OR</h4>
                        <input class="btn btn-lg btn-facebook btn-block" type="submit" value="Login via facebook">
                        -->
						<!-- facebook -->
						<!--  
						<fb:login-button scope="public_profile,email"
							onlogin="checkLoginState();"></fb:login-button>
						<input class="btn btn-lg btn-facebook btn-block" type="submit"
							value="Logout via facebook" onclick="UserInfo()">
						<div id="status"></div>
						<script>
							window.fbAsyncInit = function() {
								FB.init({
									appId : '324829661330267',
									xfbml : true,
									version : 'v2.0'
								});
							};

							(function(d, s, id) {
								var js, fjs = d.getElementsByTagName(s)[0];
								if (d.getElementById(id)) {
									return;
								}
								js = d.createElement(s);
								js.id = id;
								js.src = "//connect.facebook.net/en_US/sdk.js";
								fjs.parentNode.insertBefore(js, fjs);
							}(document, 'script', 'facebook-jssdk'));

							function statusChangeCallback(response) {
								console.log('statusChangeCallback');
								console.log(response);
								// The response object is returned with a status field that lets the
								// app know the current login status of the person.
								// Full docs on the response object can be found in the documentation
								// for FB.getLoginStatus().
								if (response.status === 'connected') {
									// Logged into your app and Facebook.
									testAPI();
								} else if (response.status === 'not_authorized') {
									// The person is logged into Facebook, but not your app.
									document.getElementById('status').innerHTML = 'Please log '
											+ 'into this app.';
								} else {
									// The person is not logged into Facebook, so we're not sure if
									// they are logged into this app or not.
									document.getElementById('status').innerHTML = 'Please log '
											+ 'into Facebook.';
								}
							}

							// This function is called when someone finishes with the Login
							// Button.  See the onlogin handler attached to it in the sample
							// code below.
							function checkLoginState() {
								FB.getLoginStatus(function(response) {
									statusChangeCallback(response);
								});
							}

							// Here we run a very simple test of the Graph API after login is
							// successful.  See statusChangeCallback() for when this call is made.
							function testAPI() {
								console
										.log('Welcome!  Fetching your information.... ');
								FB
										.api(
												'/me',
												function(response) {
													console
															.log('Successful login for: '
																	+ response.name);
													document
															.getElementById('status').innerHTML = 'Thanks for logging in, '
															+ response.name

															+ '!';
												});
							}
							function logout() {
								FB.logout(function(response) {
									console.log('Successful logout for: '
											+ response.name + response.email);
								});
							}
							function UserInfo() {
								FB
										.api(
												'/me',
												{
													fields : 'id,first_name,last_name,gender,email,birthday,locale'
												}, function(response) {
													console.log(JSON.stringify(
															response, null,
															'\t'));
												});
							}
						</script>
						-->
						<!-- facebook -->
<!-- g-recaptcha -->	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
		integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
		crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		$("form").submit(function() {
			var response = grecaptcha.getResponse();
			if (response.length == 0) {
				alert('Please check the Captcha');
				return false;
			}
		});
	});
</script>
<script type="text/javascript">
	var onloadCallback = function() {
		grecaptcha.render('html_element', {
			'sitekey' : '6LfPNTsUAAAAAOFNAzpgtyOiDXMH7U_PThGoQt74'
		});
	};
</script>
<script
	src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
	async defer>
	
</script>
<!-- g-recaptcha -->
	<script>
		//$('selectors').css('樣式名稱','樣式值')
		// 	$(document).ready(function(){
		$('#email').blur(checkValue1).focus(setDefault1);
		$('#password').blur(checkValue2).focus(setDefault2);
		// 	})
		function checkValue1() {
			var email = $('#email').val();
			if (email == '') {
				$('#span1').text("請輸入email");
			}
		}
		function checkValue2() {
			var password = $('#password').val();
			if (password == '') {
				$('#span2').text("請輸入password");
			}
		}

		function setDefault1() {
			$('#span1').text("");
		}
		function setDefault2() {
			$('#span2').text("");
		}
	</script>
	
</body>
</html>