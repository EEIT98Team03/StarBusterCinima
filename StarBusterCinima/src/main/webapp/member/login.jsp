<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/test.css">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<style type="text/css">
@import url("https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");
body{ 
  overflow-x: hidden;
  margin: 0;
  padding: 0;
  background:black;
}
video { 
    position: absolute;
    top: 0%;
    left: 0%;
    bottom: 0%;
    min-width: 100vw;
    max-height: 685px;
    margin: 0 !important;
    padding: 0 !important;
    width: 100vw;
    height: 685px;
    z-index: -100;
    transform: translateX(0%) translateY(0%);
 	  background: url('#') no-repeat;
  	background-size: cover;
  	transition: 1s opacity;
    overflow: hidden;
}
.logo{
  position: absolute;
  width: 200px;
  margin: -12px 0px 0px -12px;
  padding: 0px
}
.headText{
  font-family: Agenda-Light, Agenda Light, Agenda, Arial Narrow, sans-serif;
  font-weight:100; 
  margin: 15% auto 0 5%;
  color: white;
}
.headText h1:before{
    font-family: FontAwesome;
    content: "\f18c";
    color: green;
    margin: 5px;
}
.headText h1:after{
    font-family: FontAwesome;
    content: "\f18c";
    color: green;
    margin: 5px;
}

#polina { 
  font-family: Agenda-Light, Agenda Light, Agenda, Arial Narrow, sans-serif;
  font-weight:100; 
  background: rgba(0,0,0,0.7);
  color: white;
  padding: 2%;
  width: 31%;
  margin: 3% 5% 5% auto;
  float: right;
}
.btn-facebook{
	background-color: #3b5998;
	color: #fff;
}
.btn-facebook:hover{
	background-color: #fff;
	color: #3b5998;
}
.btn-google{
	background-color: #c23321;
	color: #fff;
}
.btn-google:hover{
	background-color: #fff;
	color: #c23321;
}

@media screen and (max-width: 500px) { 
  #polina{
    width:90%;
    margin-top: -50% !important;
  } 
  video{
    display: none;
  }
}
@media screen and (max-device-width: 800px) {
  #bgvid { display: none; }
}

.video iframe{
  position: absolute;
  background: #000;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  z-index: -99;
  pointer-events: none;
  width: 100%;
  height: 100%;
}
.container-fluid{
	margin-top:150px;
}
.panel panel-primary{
	opacity:0.8
}
</style>
</head>
<body>
  <div class="logo text-center">
   <a href="/StarBusterCinima/index.jsp"><img src="/StarBusterCinima/images/SB02.png" style="height: 200px;margin-left:70px;margin-right:100px" /></a>
  </div>
<div class="container-fluid">

  <div class="container-fluid video">
	<div class="video">
<!-- 		<iframe src="http://localhost:8080/StarBusterCinima/adImages/imageId=16" frameborder="0" allowfullscreen></iframe> -->
		<iframe src="https://www.youtube.com/embed/JlGkuFI-lj0?ecver=1&controls=0&showinfo=0&rel=0&autoplay=1&loop=1&mute=1" frameborder="0" allowfullscreen></iframe>
 	 	<!-- 注意 Youtube embed 連結是置放在 src=" 和 ? 之間。? 之後的程式碼是控制像是自動播放，迴圈，和靜音設定：autoplay=1, loop=1, mute=1 -->
	</div>
  </div>

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
								<span>${errors.login}</span> 
								
								<c:if test="${not empty errors.resendEmailMember}">
								<a href="http://localhost:8080/StarBusterCinima/members/resendEmail=${errors.resendEmailMember}">重發認證信件</a>
								</c:if>
								<input class="btn btn-lg btn-success btn-block" type="submit" value="Login">
								<div >
								<a href="/StarBusterCinima/member/register.jsp"><span>註冊會員</span></a><span id="">忘記密碼</span>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
  
  
</div>

	

</body>
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

</html>