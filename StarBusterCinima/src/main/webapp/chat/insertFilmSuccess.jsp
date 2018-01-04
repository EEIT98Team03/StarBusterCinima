<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">

<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	
<title>Film Backstage</title>
<style >
@import url(https://fonts.googleapis.com/earlyaccess/notosanstc.css);

*{
/*     border: 1px dotted red;                */
	margin: 0;
    padding: 0;
	font-family: 'Noto Sans TC';
	font-weight: 300;
/* 	color:white; */
}

body{
	
	background-color: #191919;
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


#out {
	text-align: center;
	width:90%;
	border-radius: 30px;
	margin: 10px auto;
	margin-top:140px;
	font-family: Microsoft JhengHei;
	height: 800px;;
}

body {
	margin: 0;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
	background-image: url("/StarBusterCinima/images/adminBackground.jpg");
	height:auto;

}
.contain{
	width:100%;
	margin:0 auto;
}
#calendar {
	max-width: 50%;
	margin: 50px;
}

.SectionData {
	text-align: center;
	margin: 10px;
	float: right;
}
#aaa {
	text-align: center;	
	position: absolute;
	bottom: 50%;	
	width:20%;
	left:65%; 
}
#d{
	position: absolute;
	bottom: 10%;
	right: 200px;
	width:30%;
	text-align: left;
}
label {
    display: inline-block;
    max-width: 100%;
    margin-bottom: 5px;
    font-weight: 500;
}
.radiospan{
	width:100px;
	float:left;
	text-align: left;
	padding: 0px 20px;
}
.form-check-input{
/* 	margin-right: 0px 20px; */
	
}
input[type=checkbox], input[type=radio]{
margin-left:-10px;
margin-right: 10px;
}
</style>
</head>
<body>
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
					<a class="navbar-brand" href="/StarBusterCinima/adminstrator/adminLogout.jsp"><img style="width: 132px"
						class="img-responsive logo" src="/StarBusterCinima/images/SB01.png" alt=""></a>
				</div>

				<div id="navbar" class="collapse navbar-collapse">
					<ul class="menu">
						<li class="active"><a href="#">攔截問答管理</a></li>
						<li><a href="/StarBusterCinima/chat/robotKnowledge.jsp">智識庫管理</a></li>
						<li><a href="/StarBusterCinima/chat/robotChart.jsp">查看統計報表</a></li>
						<li><a href="/StarBusterCinima/chat/robotAdManage.jsp">廣告管理</a></li>
						<li><a href="/StarBusterCinima/chat/filmsection.jsp">電影場次管理</a></li>
						<li><a href="/StarBusterCinima/chat/votebackstage.jsp">活動管理</a></li>
						<li><a href="/StarBusterCinima/chat/insertFilm.jsp">電影新增</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.contatiner -->
		</div>
	</div>


	<div class="jumbotron" id="out">	
	
	<div class="contain">
		<H2 style="margin-top:150px;margin-bottom:50px">新增成功</H2>
		<a href="/StarBusterCinima/index.jsp">
			<H4>點擊回客戶端首頁</H4>
		</a>
	</div>
</div>

<script type="text/javascript">
$(document).ready(function(){

	
});



</script>







<%-- ${param.username} --%>
<!-- '<c:url value="/filmMgmt/FilmMgmt.Controller" />' -->
</body>
</html>