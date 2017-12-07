<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<style>
.white {
	color: #000;
	background-color: #fff;
}

.btn-facebook {
	color: #ffffff;
	-webkit-text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
	background-color: #2b4b90;
	*background-color: #133783;
	background-image: -moz-linear-gradient(top, #3b5998, #133783);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#3b5998),
		to(#133783));
	background-image: -webkit-linear-gradient(top, #3b5998, #133783);
	background-image: -o-linear-gradient(top, #3b5998, #133783);
	background-image: linear-gradient(to bottom, #3b5998, #133783);
	background-repeat: repeat-x;
	border-color: #133783 #133783 #091b40;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff3b5998',
		endColorstr='#ff133783', GradientType=0);
	filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
}

.btn-facebook:hover, .btn-facebook:focus, .btn-facebook:active,
	.btn-facebook.active, .btn-facebook.disabled, .btn-facebook[disabled] {
	color: #ffffff;
	background-color: #133783 !important;
	*background-color: #102e6d !important;
}

.btn-facebook:active, .btn-facebook.active {
	background-color: #0d2456\9 !important;
}

#robot {
	margin: 10px
}
</style>
<script src='https://www.google.com/recaptcha/api.js'></script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Login via site</h3>
					</div>
					<div class="panel-body">
						<form accept-charset="UTF-8" name="login" role="form"
							method="post" action='<c:url value="/member/login.controller"/>'>
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="yourmail@example.com"
										id="email" name="email" type="email"><span id="span1">${errors.email}</span>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Password"
										id="password" name="password" type="password" value=""><span
										id="span2">${errors.password}</span>
								</div>
								<div class="checkbox">
									<label> <input name="remember" type="checkbox"
										value="Remember Me"> Remember Me
									</label>

								</div>
								<span>${errors.login}</span> <input
									class="btn btn-lg btn-success btn-block" type="submit"
									value="Login">
								<div id="robot" class="g-recaptcha"
									data-sitekey="6LfPNTsUAAAAAOFNAzpgtyOiDXMH7U_PThGoQt74"
									data-theme="dark"></div>
							</fieldset>
						</form>
						<hr />
						<!--  
                        <h4 style="text-align:center;">OR</h4>
                        <input class="btn btn-lg btn-facebook btn-block" type="submit" value="Login via facebook">
                        -->
						<!-- facebook -->
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
											+ response.name);
								});
							}
							function UserInfo() {
								FB
										.api(
												'/me',
												{
													fields : 'id,first_name,last_name,gender,email,birthday'
												}, function(response) {
													console.log(JSON.stringify(
															response, null,
															'\t'));
												});
							}
						</script>
						<!-- facebook -->
					</div>
				</div>
			</div>
		</div>
	</div>
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