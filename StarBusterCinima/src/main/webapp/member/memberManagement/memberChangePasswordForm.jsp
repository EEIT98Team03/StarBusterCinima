<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member ChangePassword</title>
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
				<br><br>
				<form action='<c:url value="/member/changepassword.controller"/>' method="post">
				<h1 style="color:#0066CC">Dear ${loginUserInfo.name}</h2>
				<p style="font-size: 25px; color: #5C5C5C;">設定新的密碼</p>
				<p style="font-size: 15px; color: #5C5C5C;">請輸入(8-16)字元的新密碼，密碼請務必不能與帳號相同，</p>
				<p style="font-size: 15px; color: #5C5C5C;">您的密碼必須包含至少一個英文(A-Za-z)和至少一個數字(0-9)</p>
				<input  name="memberId" type="text" value="${loginUserInfo.memberId}" style="display:none">
				<p>&nbsp;</p>
				<input id="password1" name="password1" type="password" placeholder="新輸入新的密碼" required>
				<br>
				<p>&nbsp;</p>
				<input id="password2" name="password2" type="password" placeholder="新確認新的密碼" required>
				<p>&nbsp;</p>
				<input type="submit" value="確定">
				<p>&nbsp;</p>
				
				</form>
			</div>
		</div>
	</div>
</body>
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
	$(function(){
		$('#password2').blur(function(){
			if($('#password1').val()!=$('#password2').val()){
				
				alert('confirm your password');
			}
			
		});
		
		
	})
	
	
	
</script>

</html>