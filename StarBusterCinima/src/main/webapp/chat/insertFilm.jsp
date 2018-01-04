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
	height: auto;
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
		<form class="form-horizontal" enctype="multipart/form-data"
				method="post" name="FilmBean" id="insert"
				action='<c:url value="/films/controller/filminsert.controller"/>'>
				
				
				
	<!-- 	int filmId;String filmName;String engName;String lengthOfFilm;
			String genre;String filmLevel;Date udate;Date ddate;
			int weight;String director;String actor;String trailer;
			String shortIntro;String longIntro;
			String posterMedium;String posterLarge;String upstatus;
	 -->
		

		
				<div class="form-group">
					<label class="control-label col-sm-3">中文名稱:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="filmName" id="filmName"
							placeholder="請輸入電影中文名稱" value="${filmBean.filmName}" required="required">
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-3">英文名稱:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="engName" id="engName"
							placeholder="請輸入電影英文名稱" value="${filmBean.engName}" required="required">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">片長(分鐘):<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="lengthOfFilm" id="lengthOfFilm"
							placeholder="請輸入片長(分鐘)" value="${filmBean.lengthOfFilm}" required="required">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">類型:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="genre" id="genre"
							placeholder="請輸入類型" value="${filmBean.genre}" required="required">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">分級:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="filmLevel" id="filmLevel"
							placeholder="請輸入分級" value="${filmBean.filmLevel}" required="required">
						</div>
					</div>
				</div>
				
				
				<div class="form-group">
					<label class="control-label col-sm-3">上映日期:<span class="text-danger">*</span></label>
						
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="date" class="form-control" name="udate" id="udate" value="${filmBean.udate}">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">下檔日期:<span class="text-danger">*</span></label>
						
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="date" class="form-control" name="ddate" id="ddate" value="${filmBean.ddate}">
						</div>
					</div>
				</div>
				

				
<!-- 					private String director; -->
<!-- 					private String actor; -->
<!-- 					private String trailer; -->
<!-- 					private String shortIntro; -->
<!-- 					private String longIntro; -->


				<div class="form-group">
					<label class="control-label col-sm-3">導演:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="director" id="director"
							placeholder="請輸入導演名稱" value="${filmBean.director}" required="required">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">演員:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="actor" id="actor"
							placeholder="請輸入演員名稱" value="${filmBean.actor}" required="required">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">預告片連結:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="trailer" id="trailer"
							placeholder="請輸入預告片連結" value="${filmBean.trailer}" required="required">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">電影簡介:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<textarea  class="form-control" name="shortIntro" id="shortIntro"
							placeholder="請輸入電影簡介" value="${filmBean.shortIntro}" required="required"></textarea>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">電影介紹:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<textarea  class="form-control" name="longIntro" id="longIntro"
							placeholder="請輸入電影介紹" value="${filmBean.longIntro}" required="longIntro"></textarea>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-3">電影海報:<br></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
<!-- 						<input type="file" name="posterMedium" id="posterMedium" class="form-control upload" -->
							<input type="file"  class="form-control upload" placeholder="" aria-describedby="file_upload">
						</div>
					</div>
				</div>




<!-- 					private String posterMedium; -->
<!-- 					private String posterLarge; -->
<!-- 					private String upstatus; -->


				<div class="form-group">
				<label class="control-label col-sm-3">上映狀態:<span class="text-danger">*</span></label>
				<div class="col-md-5 col-sm-8">
					<div class="radiospan">
					    <input class="form-check-input" type="radio" name="upst" id="AA" value="${filmBean.upstatus}" >AA
					</div>
					<div class="radiospan">
						<input class="form-check-input" type="radio" name="upst" id="BB" value="${filmBean.upstatus}" >BB
					</div>
					<div class="radiospan">
						<input class="form-check-input" type="radio" name="upst" id="CC" value="${filmBean.upstatus}" >CC
					</div>
				</div>
				</div>

				<input type="text" name="memberId" id="memberId" value="${filmBean.filmId}" style="display:none" />
				<input type="text" name="weight" id="weight" value="${filmBean.weight}" style="display:none" />
				<input type="text" name="posterMedium" id="posterMedium" value="${filmBean.posterMedium}" style="display:none" />
				<input type="text" name="posterLarge" id="posterLarge" value="${filmBean.posterLarge}" style="display:none" />
				<input type="text" name="upstatus" id="upstatus" value="${filmBean.upstatus}" style="display:none" />
<%-- ${filmBean.upstatus} --%>



				<div class="form-group">
					<div class="col-sm-12">
						<input name="Submit" type="submit" value="送出" class="btn btn-primary">
					</div>
				</div>
				
		</form>
	</div>
</div>

<script type="text/javascript">
$(document).ready(function(){

// 	alert("test");
	$('#longIntro').keyup(function(){
// 		alert($('#filmName').val())
		$('#weight').val('1');
		$('#posterMedium').val('/StarBusterCinima/images/film/'+$('#filmName').val()+'.jpg');
		$('#posterLarge').val('/StarBusterCinima/images/film/'+$('#filmName').val()+'.jpg');
	})
	
	$(':radio').click(function(){
// 		alert($(this).attr('id'));
		$('#upstatus').val($(this).attr('id'));
	})
	
});



</script>







<%-- ${param.username} --%>
<!-- '<c:url value="/filmMgmt/FilmMgmt.Controller" />' -->
</body>
</html>