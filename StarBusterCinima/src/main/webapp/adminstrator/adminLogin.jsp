<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Backstage Login</title>
<link rel="shortcut icon" type="image/png" href="/StarBusterCinima/images/logo.ico"/>
<style>
body {
	background-image: url("/StarBusterCinima/images/adminBackground.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
.loginBox{
	width:400px;
	height:300px;
	box-shadow:1px 5px 5px #666;
	position:absolute;
	left:50%;
	top:50%;
	margin-top:-150px;
	margin-left:-200px;
	
/*     margin:auto auto; */
/*     padding:10px; */
}
/* .container-fluid.lf { */
/*   height: 100%; */
/*   display: table; */
/*   width: 100%; */
/*   padding: 0; */
/* } */
/* .container-fluid.lf .row-fluid { */
/*   height: 100%; */
/*   display: table-cell; */
/*   vertical-align: middle; */
/* } */
/* .container-fluid.lf .centering { */
/*   float: none; */
/*   margin: 0 auto; */
/*   width: 300px; */
/* } */
/* .container-fluid.lf .centering .row { */
/*   -webkit-border-radius: 5px 5px 5px 5px; */
/*   -moz-border-radius: 5px 5px 5px 5px; */
/*   -ms-border-radius: 5px 5px 5px 5px; */
/*   -o-border-radius: 5px 5px 5px 5px; */
/*   border-radius: 5px 5px 5px 5px; */
/*   -webkit-box-shadow: 0px 0px 6px 2px rgba(0, 0, 0, 0.05); */
/*   -moz-box-shadow: 0px 0px 6px 2px rgba(0, 0, 0, 0.05); */
/*   box-shadow: 0px 0px 6px 2px rgba(0, 0, 0, 0.05); */
/* } */
/* .container-fluid.lf .centering .lfhead, */
/* .container-fluid.lf .centering .lfbody, */
/* .container-fluid.lf .centering .lffooter { */
/*   border: 1px solid #c3d5d9; */
/*   background-color: #fefefe; */
/*   min-height: 20px; */
/* } */
/* .container-fluid.lf .centering .lfhead { */
/*   border-bottom: 0; */
/*   -webkit-border-radius: 5px 5px 0 0; */
/*   -moz-border-radius: 5px 5px 0 0; */
/*   -ms-border-radius: 5px 5px 0 0; */
/*   -o-border-radius: 5px 5px 0 0; */
/*   border-radius: 5px 5px 0 0; */
/* } */
/* .container-fluid.lf .centering .lfbody { */
/*   border-top: 0; */
/*   border-bottom: 0; */
/* } */
/* .container-fluid.lf .centering .lfbody .input-group-addon { */
/*   color: #8f8f8f; */
/* } */
/* .container-fluid.lf .centering .lfbody .form-control:focus { */
/*   -webkit-box-shadow: 0px 0px 6px 2px rgba(0, 0, 0, 0.05); */
/*   -moz-box-shadow: 0px 0px 6px 2px rgba(0, 0, 0, 0.05); */
/*   box-shadow: 0px 0px 6px 2px rgba(0, 0, 0, 0.05); */
/*   border-color: #76ccea; */
/* } */
/* .container-fluid.lf .centering .lffooter { */
/*   background-color: #f0f5f8; */
/*   -webkit-border-radius: 0 0 5px 5px; */
/*   -moz-border-radius: 0 0 5px 5px; */
/*   -ms-border-radius: 0 0 5px 5px; */
/*   -o-border-radius: 0 0 5px 5px; */
/*   border-radius: 0 0 5px 5px; */
/*   padding-top: 16px; */
/* } */
/* .container-fluid.lf .centering .lffooter .text-left { */
/*   padding-top: 8px; */
/* } */
/* .container-fluid.lf .centering .lffooter label { */
/*   font-weight: normal; */
/*   color: #8f8f8f; */
/* } */
h4{
color:white;
}
.error{
	color:red;
	text-align:right;
	font-size:large;
}
</style>
</head>
<body>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<a href="/StarBusterCinima/index.jsp" target="_blank" style="margin-left:35px"><img src="/StarBusterCinima/images/SB02.png" style="height: 300px;margin-left:70px;margin-right:100px" /></a>
<div class="loginBox">
 <div class="row">
          <form action="<c:url value="/adminstrator/login.controller"/>" method="post" >
            <div class="col-xs-12 lfhead">
            </div>
            
            
            <div class="col-xs-12 lfbody">
            <h1 style="text-align:center;color:white;">管理員登入</h1>
            <p>&nbsp;</p>
           	 <h4>帳號:</h4>
              <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                <input id="email" type="email" class="form-control" name="email" value="" tabindex="1" placeholder="Email Address">
              </div>
                <div class="error">${error.email}</div>
              </div>
              <div class="form-group">
              
              <h4>密碼:</h4>
              <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                <input id="password" type="password" class="form-control" name="password" value="" tabindex="2" placeholder="Password">                    
              </div>
                <div class="error" >${error.password}</div>
              </div>
            </div>
            <div class="col-xs-12 lffooter">
<!--               <div class="col-xs-6"> -->
<!--                 <div class="form-group text-left"> -->
<!--                   <input type="checkbox" tabindex="3" class="" name="remember" id="remember"> -->
<!--                   <label for="remember"> Remember Me</label> -->
<!--                 </div> -->
<!--               </div> -->
              <div class="col-xs-12">
                <div class="error" >${error.adminstrator}${loginMessage}</div>
                <div class="form-group text-right" stype="text-align:center">
                <input type="submit" name="login-submit" tabindex="4" class="btn btn-primary" value="Login">
              </div>
              </div>
            </div>
           </form>
         </div>
</div>
</body>
</html>