<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<link rel="stylesheet" type="text/css" href="../css/my.css" />
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="281482587669-99chdrvlekaavehkf82g2c90kn2hs67m.apps.googleusercontent.com">
<title>Login</title>
</head>
<body>
	<div class="container">
		<div class="logo">
			<img src="../images/logo.png">
		</div>
	</div>
	
	<div style="width:280px;margin:20px auto;">
		<h2>請用Google帳號登入</h2>
		<img id="loginImage" src="../images/glogin.gif" style="width:222px;"><br />
		<div class="g-signin2" data-onsuccess="onSignIn" style="width:222px;"></div>
	</div>
	<div style="width:280px;margin:20px auto;">
		<button id="buttonNewMember" class="btn btn-success" style="width: 220px;">註冊</button>
	</div>
  <script>
      function onSignIn(googleUser) {
         var profile = googleUser.getBasicProfile();

         var redirectUrl = '/StarBusterCinima/g.login.admin';

         var form = $('<form action="' + redirectUrl + '" method="get">' +
                          '<input type="text" name="id_token" value="' +
                           googleUser.getAuthResponse().id_token + '" />' +
                                                                '</form>');
         $('body').append(form);
         form.submit();
      }

   </script>
</body>
</html>