<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Abril+Fatface|Fredoka+One"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" />
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/lightbox.css">
<style>
/* CSS used here will be applied after bootstrap.css 
Ref: http://www.bootply.com/d8RMa03wW7
*/
html, body {
	height: 100%;
	padding-top: 70px;
	font-family: 'Fredoka One', cursive;
	font-family: 'Abril Fatface', cursive;
}

section {
	height: calc(90% - 50px);
}

.affix {
	padding: 0px;
	-webkit-transition: padding 0.2s linear;
	-moz-transition: padding 0.2s linear;
	-o-transition: padding 0.2s linear;
	transition: padding 0.2s linear;
}

.affix-top {
	padding-top: 15px;
	padding-bottom: 15px;
	-webkit-transition: padding 0.5s linear;
	-moz-transition: padding 0.5s linear;
	-o-transition: padding 0.5s linear;
	transition: padding 0.5s linear;
}

.menu {
	width: 100%;
	overflow: auto;
	list-style-type: none;
	margin-top: 30px;
	color: white;
}

.menu li {
	float: left;
	width: 7em;
	font-size: 20px;
	text-align: center;
}

.menu a {
	color: white;
}
.navbar-header span{
color: white;
}
</style>

</head>
<body>

	<!-- Begin Navbar -->
	<div id="nav">
		<div class="navbar navbar-inverse navbar-fixed-top" data-spy="affix"
			data-offset-top="100">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"><img style="width: 132px"
						class="img-responsive logo"
						src="/StarBusterCinima/images/SB01.png" alt=""></a>
				</div>
				<div id="navbar" class="collapse navbar-collapse">
					<ul class="menu">
						<li class="active"><a href="#">攔截問答管理</a></li>
						<li><a href="#about">智識庫管理</a></li>
						<li><a href="#contact">查看統計報表</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.contatiner -->
			<div style="width:100%;height:100%;color:#21BABA;font-size:18px">
				管理員:&nbsp;&nbsp;&nbsp;${AdministratorInfo.name}&nbsp;&nbsp;
			</div>	
		</div>
	</div>
	<!-- Begin Navbar -->
</body>
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script
	src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script>

	</script>

</html>