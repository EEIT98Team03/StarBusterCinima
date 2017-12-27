<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LoginResult</title>
<link rel="shortcut icon" type="image/png" href="/StarBusterCinima/images/logo.ico"/>
<link rel="stylesheet" type="text/css" href="/StarBusterCinima/css/home.css"></link>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
body{
/* background-color:#D9FFFF; */
}
.row text-center{
text-align:center;	
}
#innerbox2{
	margin: 180px auto;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row text-center">
			<div id="innerbox2" >
				<br> <br>
				<h1 style="color:#0066CC">Success</h2>
				<h2>Dear, ${userBean.name}</h3>
				<p style="font-size: 30px; color: #5C5C5C;">恭喜正式成為StarBusterCinima的會員</p>
				<p style="font-size: 30px; color: #5C5C5C;">畫面將在三秒後跳轉至登入頁面</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<img src="/StarBusterCinima/images/ajax-loader.gif" style="width:35%"/>

			</div>
		</div>
	</div>
	<script> 
 		function f() {
 			location.href = "http://localhost:8080/StarBusterCinima/member/login.jsp";
		}
 		var t = window.setTimeout(f, 3000);
	</script> 
</body>
</html>