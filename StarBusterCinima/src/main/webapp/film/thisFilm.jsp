<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="films.model.FilmBean"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js'></script>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<!--   <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script> -->
<!--   <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script> -->
<!--   <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
@import url(https://fonts.googleapis.com/earlyaccess/notosanstc.css);

*{
/*      border: 1px dotted red;           */
	margin: 0;
    padding: 0;
	font-family: 'Noto Sans TC';
	font-weight: 300;
	color:white;
}

body{
	
	background-color: #3C3C3C;
}
.outdiv{
	width:100%;
	z-index:1500;
	border-top: 5px solid #9D9D9D;
	top:0px;
/* 	overflow: hidden; */
	position: fixed;
	height: 155px;
	background-color: #3C3C3C;
}
.navi{
/* 	border-top: 5px solid #9D9D9D; */
	background-color: #3C3C3C;
/* 	opacity:0.6; */
	top:5px;
	width: 64%;
	left:18%;
	height: 150px;
 	position: fixed; 
	z-index: 999;
  	display: initial;  
  	text-align: center;
  	
}
.naviLogo{
	height: 138px;
	z-index: 1000;
	background-color: inherit;
}

/* <div class="col-md-1" style="width: 12.499999995%"></div> */
.navicol{
	width: 12.499999995% ; 
	height: 140px;
/* 	border-left: 1px solid #5B5B5B; */
/* 	border-right: 1px solid #5B5B5B; */
}
.navicolcenter{
	height: 140px;
}
.navidiv{
	color:white;
	font-size: 18px;
	padding-top: 95px;
}

.container-fluid{
margin-top: 10px;
}

/* --------------yt----------------- */
.video-container {
position: relative;
padding-bottom: 56.25%;
padding-top: 30px;
height: 0;
overflow: hidden;
}

.video-container iframe, .video-container object, .video-container embed {
position: absolute;
top: 0;left: 0;
width: 100%;
height: 100%;
}
/*
.video-container {
position: relative;
padding-bottom: 56.25%;
padding-top: 30px;
height: 0;
overflow: hidden;
}

.video-container iframe, .video-container object, .video-container embed {
position: absolute;
top: 0;left: 0;
width: 100%;
height: 100%;
}
*/
/* --------------內容--------------- */

.toptrailer{
	width: 100%;
	height: 580px;
/* 	border:2px solid yellow; */
	position: relative;
	background-color: black;
	opacity:0.8;
}
.toptrailer img{
	width: 100%;
    height: 100%;
    object-fit:cover;
    filter: blur(30px);
    -webkit-filter: blur(30px);
}
/* 
.underTheToptrailer{ 
 	border:2px solid lime; 
 	background-color: #3C3C3C; 
 	height: 500px; 
 	z-index: 1; 
 } 
*/


/* --------整個資訊區塊-------- */

.thisFilmInfo{
	width: 64%;
	height: 480px;
	margin:0 auto;
	position: relative;
	top:-350px;
/* 	background: #3C3C3C; */
/* 	opacity:0.6; */
	text-shadow:0px 0px 10px black;
}

/* --------海報-------- */

.filmPic{
	height: 100%;
	width:330px;
	float: left;
	overflow: hidden;
}
.filmPic img{
  	width: 100%;
    height: 100%;
}


/* --------文字資訊-------- */

.filmText{
/* 	border: 1px dotted green; */
	overflow: hidden;
	height: 480px;
	position: relative;
}

/*
.filmNameEng{
	width: 100%;
	height: 50px;
	position: absolute;
	top:200px;
}
*/

.filmNameEng {
    width: 100%;
    height: 50px;
    position: absolute;
    left: 30px;
    bottom: 155px;
}

.filmGenreLength {
    float: left;
    width: 100%;
    height: 50px;
    margin-top: 10px;
    position: absolute;
    left: 30px;
    bottom: 60px;
}

.filmDirectorActor {
    width: auto;
    height: 50px;
    margin-top: 10px;
    position: absolute;
    bottom: 0px;
    left: 30px;
}

.filmName{
/* 	float: left; */
	font-size: 22px;
}

.filmEng{
/* 	float: left; */
/* 	margin-top:10px; */
/* 	margin-left:10px; */
	 
}

.filmGenre, .filmLength{
/* 	float: left; */
/* 	background-color: pink;  */
}

.filmDirector, .filmActor{
}

.bookingButton{
	float: right;
	width: 150px;
	height: 100px;
	background-color: #20B7B7;
	position: absolute;
	bottom:0px;
	right: 0px;
	border-radius: 2px;
}


.filmIntroContain{
	width: 64%;
	height: 450px;
	margin:0 auto;
	position: relative;
	top:-310px;
	background-color:#4F4F4F;
	border-top:6px solid #20B7B7;
/* 	opacity: 0.4; */
	
}



</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>



<body>
<div class="outdiv">
	<div id="" class="navi">
	<div class="container-fluid">
	
	
		<div class="col-md-1 navicol">
			<div class="ehdiv navidiv">影城介紹</div>
		</div>
		<div class="col-md-1 navicol" >
			<div class="ehdiv navidiv">熱門強檔</div>
		</div>
		<div class="col-md-1 navicol">
			<div class="ehdiv navidiv">立即訂票</div>
		</div>
		<div class="col-md-3 navicolcenter" >
				<img class="naviLogo" src="/StarBusterCinima/images/SB01.png">
		</div>
		<div class="col-md-1 navicol">
			<div class="ehdiv navidiv">周邊精品</div>
		</div>
		<div class="col-md-1 navicol">
			<div class="ehdiv navidiv">精彩活動</div>
		</div>
		<div class="col-md-1 navicol">
			<div class="ehdiv navidiv">用戶登入</div>
		</div>
	
	</div>
	
	</div>
	</div>
	
<div style="display: none">
<input type="text" class="filmBean" id="filmId" name="${filmBean.filmId}" style="display: none" >
<input type="text" class="filmBean" id="posterMedium" name="${filmBean.posterMedium}" style="display: none" >
<input type="text" class="filmBean" id="posterLarge" name="${filmBean.posterLarge}" style="display: none" >
</div>









<div class="toptrailer">
<!-- 	<img src="/StarBusterCinima/images/film/1107.jpg" /> -->

</div>





<div class="thisFilmInfo">
	<div class="filmPic"></div>
	
	<div class="filmText">
		<div class="filmNameEng">
			<div class="filmName"> ${filmBean.filmName} </div>
			<div class="filmEng"> ${filmBean.engName} </div>
		</div>
		<div class="filmGenreLength">
			<div class="filmGenre"> ${filmBean.genre} </div>
			<div class="filmLength"> ${filmBean.lengthOfFilm} 分鐘</div>
		</div>
		<div class="filmDirectorActor">
			<div class="filmDirector">導演: ${filmBean.director} </div>
			<div class="filmActor">卡司: ${filmBean.actor} </div>
		</div>
		
		
<!-- 		<a href="/StarBusterCinima/booking/controller/ScelectSession.controller" > -->
<!-- 		<a href="/StarBusterCinima/booking/booking.jsp" > -->
<!-- 		<a href="" > -->
			<div class="bookingButton">
				<form action="/StarBusterCinima/booking/controller/makeSections.controller">
					<input type="text" name="paramFilmId" value="333">
					<input type="submit">
				</form>
			</div>
<!-- 		</a> -->
		
	</div>
</div>



<div class="filmIntroContain">
<!-- 	<input type="button" class="classtest" value="11111111" style="color:white"/> -->
	
</div>

<%-- 	<c:out value="test"/> --%>
<%-- 	<jsp:useBean id="filmBean" class="films.model.FilmBean" scope="session" /> --%>
<!-- 	<h3 style="border:1px solid pink;color:white">123</h3> -->
<%-- 	<h3 style="border:1px solid pink;color:white"><jsp:getProperty name='filmBean' property='filmName' /></h3> --%>






<script type="text/javascript">
$(document).ready(function(){
// 		var picurl = $('#filmBean').attr('name');
	
// 	$('.classtest').click(function(){
// 		alert("111111");
// 		var filmPic = $('<img>').attr('src',"/StarBusterCinima/images/SB01.png");
// 		console.log(picurl+"111");
// 		console.log(filmPic);
		
		
		
// 	})
	
	
	
	var picurlMedium = $('#posterMedium').attr('name');
	var filmPicMedium = $('<img>').attr('src',picurlMedium);
	var picurlLarge = $('#posterLarge').attr('name');
	var filmPicLarge = $('<img>').attr('src',picurlLarge);
	
	
	$('.toptrailer').append(filmPicMedium);
	$('.filmPic').append(filmPicLarge);
	
	
	 
// 	alert("get data-> "+$('#filmBean').attr('name'));
// 	console.log($('#filmBean').attr('name'));
	
	
	
	
	
	// 	navi的滑鼠移上去會有藍色底條
	$('.navicol>div').hover(function() {
		$(this).parent().css({'border-bottom':'6px solid #20B7B7'});
	// alert("blah");
	});
	$('.navicol>div').mouseleave(function() {
		$(this).parent().css({'border-bottom':'6px solid #3C3C3C'});
	// alert("blah");
	});
	
	
	
	
	
// 	$.ajax({
// 		type: "GET",
// 		url: '/StarBusterCinima/films/controller/thisFilm.controller',
// 		dataType: 'json',
	
// 	    success: function(jdata){
// 	   		console.log("success"); 
// 	   		console.log("123"+jdata);
// 	    },error:function(jdata){
// 	    	console.log("error");
// 	    },complete:function(jdata){
// 	    	alert("complate");
// 	    	alert("123"+jdata);
// 	    	var a = JSON.stringify(jdata);
// 	    	alert("a= "+a);
// 	    	console.log("111"+a);
// 	    	var b = JSON.parse(a);
// 	    	console.log("222"+b);
// 	    	alert("b= "+b.readyState);
// 	    	location.reload();
// 	    }
// 	}).done(function(datas){
// //     	alert("123"+jdata);
//     	var a = JSON.stringify(datas);
//     	alert("a= "+a);
//     	var b = JSON.parse(a);
// //     	alert("b= "+b.filmName);
		
// 	});

$('.filmText').on('click','div', function(event){
// 		alert("click")	;
	
		$.ajax({
			type: "GET",
// 			url: '/StarBusterCinima/booking/controller/ScelectSession.controller',
			url: '/StarBusterCinima/booking/controller/makeSections.controller/produceDate',
			dataType: 'json',
			data: { 
				paramFilmId : $('#filmId').attr('name')
				 
            },success: function(jdata){
		    	
		    },error:function(jdata){
		    	
		    },complete:function(jdata){
// 		    	alert("click2")	;
		    	window.location.replace("/StarBusterCinima/booking/booking.jsp");
		    }
		})
	})


});//onload


</script>

<%-- <c:out value="${sessionScope.filmBean}"/> --%>
</body>
</html>