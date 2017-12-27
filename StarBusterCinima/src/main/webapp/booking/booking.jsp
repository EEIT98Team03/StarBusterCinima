<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js'></script>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/assets/owl.carousel.min.css"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/assets/owl.theme.default.min.css"></link>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/owl.carousel.min.js"></script>
<!--   <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script> -->
<!--   <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script> -->
<!--   <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
@import url(https://fonts.googleapis.com/earlyaccess/notosanstc.css);

*{
/*       border: 1px dotted red;              */
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
	width: 65.5%;
	left:17.2%;
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
    filter: blur(60px);
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
    bottom: 285px;
}

.filmGenreLength {
    float: left;
    width: 100%;
    height: 50px;
    margin-top: 10px;
    position: absolute;
    left: 30px;
    bottom: 210px;
}

.filmDirectorActor {
    width: auto;
    height: 50px;
    margin-top: 10px;
    position: absolute;
    left: 30px;
    bottom: 150px;
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

/* ----------訂票----------- */

.chooseDate{
	float: left;
	position: absolute;
	width: 46%;
	height: 115px;
	bottom: 0px;
	left: 30px;
/* 	border:1px solid yellow; */
}
.chooseTime{
	float: left;
	position: absolute;
	width: 46%;
	height: 115px;
	left:54%;
	bottom: 0px;
/* 	border:1px solid pink; */
}

.filmIntroContain{
	width: 64%;
	height: 450px;
	margin:0 auto;
	position: relative;
	top:-310px;
/*	border:1px solid blue;*/
	background-color:#4F4F4F;
	border-top:6px solid #20B7B7;
/* 	opacity: 0.4; */
	
}

/* -------輪播牆-------- */

.owl-controls{
	display: none;
}
.owl-item, .active{
	width:500px;
	
}
.owl-stage{
/* 	position:absolute; */
	height: 100%;
}

.item{
	height: 82px;
	width:82px;
	background-color: #5B5B5B;
	border-radius: 5px;
	margin-right:20px;
	text-align: center;
	
}

.eee{
color:#20B7B7;
/* 	border:1px solid pink; */
	clear:left;
/*  	position: absolute;  */
	font-size: 19px;
	padding-top:16px;
/* 	margin: 0 auto; */

}
.mmdd{
/* color:#20B7B7; */
	clear:left;
/* 	position: absolute;  */
	font-size: 13px;
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
<input type="text" class="filmBean" id="filmId" name='${sessionScope.filmBean.filmId}' style="display: none" >
<input type="text" class="filmBean" id="filmName" name='${sessionScope.filmBean.filmName}' style="display: none" >
<input type="text" class="filmBean" id="engName" name='${sessionScope.filmBean.engName}' style="display: none" >
<input type="text" class="filmBean" id="lengthOfFilm" name='${sessionScope.filmBean.lengthOfFilm}' style="display: none" >
<input type="text" class="filmBean" id="genre" name='${sessionScope.filmBean.genre}' style="display: none" >
<input type="text" class="filmBean" id="filmLevel" name='${sessionScope.filmBean.filmLevel}' style="display: none" >
<input type="text" class="filmBean" id="udate}" name='${sessionScope.filmBean.udate}' style="display: none" >
<input type="text" class="filmBean" id="ddate" name='${sessionScope.filmBean.ddate}' style="display: none" >
<input type="text" class="filmBean" id="weight" name='${sessionScope.filmBean.weight}' style="display: none" >
<input type="text" class="filmBean" id="director" name='${sessionScope.filmBean.director}' style="display: none" >
<input type="text" class="filmBean" id="actor" name='${sessionScope.filmBean.actor}' style="display: none" >
<input type="text" class="filmBean" id="trailer" name='${sessionScope.filmBean.trailer}' style="display: none" >
<input type="text" class="filmBean" id="shortIntro" name='${sessionScope.filmBean.shortIntro}' style="display: none" >
<input type="text" class="filmBean" id="longIntro" name='${sessionScope.filmBean.longIntro}' style="display: none" >
<input type="text" class="filmBean" id="posterLarge" name='${sessionScope.filmBean.posterLarge}' style="display: none" >
</div>

<!-- <div class="video-out" style="hight:200px"> -->
<!-- <div class="video-container"> -->
<!-- 	<iframe width="560" height="315" src="https://www.youtube.com/embed/o7U3EDp6wyw?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe> -->
<!-- <img src="https://img.youtube.com/vi/Ex9091HAqBE/0.jpg"> -->
<!-- </div> -->
<!-- </div> -->

<div class="toptrailer">
<!-- 	<img src="../images/film/1102.jpg"> -->
	<img src="../images/film/1107.jpg">
</div>





<div class="thisFilmInfo">
	<div class="filmPic">
<!-- 		<img src="../images/film/1102.jpg"> -->
		<img src="../images/film/1107.jpg">
	</div>
	
	<div class="filmText">
	
		<div class="filmNameEng">
			<div class="filmName">11testSTAR WARS：最後的絕地武士</div>
			<div class="filmEng">11testStar Wars: The Last Jedi</div>
		</div>
		
		<div class="filmGenreLength">
			<div class="filmGenre">11test動作 冒險 奇幻 科幻</div>
			<div class="filmLength">11test152</div>
		</div>
		
		<div class="filmDirectorActor">
			<div class="filmDirector">11test萊恩強森</div>
			<div class="filmActor">11test約翰波耶加 黛西蕾德莉 亞當崔佛  奧斯卡伊薩克露琵塔尼詠歐 多姆納爾格里森</div>
		</div>
		
		<div class="chooseDate">
			<p>請選擇日期</p>
			<div id="dateWall">
				<div class="item itemDate">
					<div class="eee">星期一</div>
					<div class="mmdd">12/25</div>
				</div>
				<div class="item itemDate">2</div>
				<div class="item itemDate">3</div>
				<div class="item itemDate">4</div>
				<div class="item itemDate">5</div>
				<div class="item itemDate">6</div>


			</div>
		</div>
		<div class="chooseTime">
			<p>請選擇時間</p>
			<div id="timeWall">
				<div class="item itemTime">1</div>
				<div class="item itemTime">2</div>
				<div class="item itemTime">3</div>
				<div class="item itemTime">4</div>
				<div class="item itemTime">5</div>
				<div class="item itemTime">6</div>
			</div>
		</div>
		
<!-- 		<div class="bookingButton"></div> -->
	</div>
</div>
<div class="filmIntroContain">
	
</div>

<script type="text/javascript">
$(document).ready(function(){
	
// 	alert($('#filmBean').attr('name'));
// 	var arr = $('.filmBean').attr('name');
// 	alert("test");
// 	alert($('#filmId').attr('name'));
// 	alert($('#filmName').attr('name'));
// 	var test = $('#filmBean').attr('name');
// 	var str= JSON.stringify(test);
// 	var arr = JSON.parse(str);
// 	alert(arr[2]);
	
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
// 		url: '/StarBusterCinima/films/controller/thisFilm.controller',
// 		type: "GET",
// 		dataType: 'json',

// 	    success: function(jdata){
// 	   		console.log("success"); 
// 	   		console.log("123"+jdata);
// 	    },error:function(){
// 	    	console.log("error");
// 	    },complete:function(){
// 	    	console.log("complate");
// 	    	console.log(jdata);
// 	    }
// 	});
$('#dateWall').owlCarousel({//FilmWall
		items : 4,
		loop : false,
		autoplay : false,
		autoplayTimeout : 0,
		autoplayHoverPause : true,
		autoHeight:true,
		margin:-5
// 	    navigation : true,
// 	    navigationText:["<",">"]
// 	    rewindNav : true,
// 	    scrollPerPage : false
});
$('#timeWall').owlCarousel({//FilmWall
		items : 4,
		loop : false,
		autoplay : false,
		autoplayTimeout : 0,
		autoplayHoverPause : true,
		autoHeight:true,
		margin:-5
// 	    navigation : true,
// 	    navigationText:["<",">"]
// 	    rewindNav : true,
// 	    scrollPerPage : false
});


});


</script>

<%-- <c:out value="${sessionScope.filmBean}"/> --%>
</body>
</html>