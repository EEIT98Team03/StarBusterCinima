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
<script type="text/javascript" src="../js/booking/jquery.seat-charts.min.js"></script>

<!--   <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script> -->
<!--   <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script> -->
<!--   <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
@import url(https://fonts.googleapis.com/earlyaccess/notosanstc.css);

*{
/*        border: 1px dotted red;               */
	margin: 0;
    padding: 0;
	font-family: 'Noto Sans TC';
	font-weight: 300;
	color:white;
}

body{
	
	background-color: #191919;
}
.outdiv{
	width:100%;
	z-index:1500;
	border-top: 5px solid #9D9D9D;
	top:0px;
/* 	overflow: hidden; */
	position: fixed;
	height: 155px;
	background-color: #191919;
}
.navi{
/* 	border-top: 5px solid #9D9D9D; */
	background-color: #191919;
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
    object-fit:unset;
    filter: blur(35px);
}
/* 
.underTheToptrailer{ 
 	border:2px solid lime; 
 	background-color: #191919; 
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
/* 	background: #191919; */
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

.seatContain{
	padding:60px 0px;
	width: 64%;
	height: 450px;
	margin:0 auto;
	position: relative;
	top:-310px;
/*	border:1px solid blue;*/
	background-color:#272727;
	border-top:6px solid #20B7B7;
/* 	opacity: 0.4; */
	    height: auto;
	
}


.bookingDescription{

	padding:60px 0px;
	width: 64%;
	height: 450px;
	margin:0 auto;
	position: relative;
	top:-310px;
/*	border:1px solid blue;*/
	background-color:#272727;
	border-top:6px solid #20B7B7;
/* 	opacity: 0.4; */
	    height: auto;
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
/* 	background-color: #5B5B5B; */
	background-color: #3c3c3c;
	border-radius: 5px;
	margin-right:20px;
	text-align: center;
	cursor: pointer;
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

.eachtime{
	color:white;
	clear:left;
	font-size: 19px;
	padding-top:32%;

}

/* ----------座位表------------- */


.box {
    width: 50%;
    margin: 0 auto;
    /* text-align: center; */
}

/* ------------------------資料暫存----------------------------------------- */

div.seatCharts-legend {
	display:none;
	padding-left: 0px;
	position: absolute;
	bottom: 16px;
}

ul.seatCharts-legendList {
	padding-left: 0px;
}

.seatCharts-legendItem {
	width: 90px;
	margin-top: 10px;
	line-height: 2;
}

span.seatCharts-legendDescription {
	margin-left: 5px;
	line-height: 30px;
}
/* ------------------------座位----------------------------------------- */

div.seatCharts-container {
    /* border-right: 1px dotted #adadad; */
    width: 100%;
    /* padding: 20px; */
    /* float: left; */
    text-align: center;
    margin: 0 auto;
/*     margin-top:60px; */
}

.screen {
	width: 91%;
	background-color: #3c3c3c;
	color: #fff;
	text-align: center;
	padding: 3px;
	margin:0 auto;
	margin-bottom: 15px;
	margin-top: 10px;
 	border-radius: 1px; 
}

div.seatCharts-row {
    height: 40px;
    width: 100%;
    text-align: center;
    margin: 0 auto;
    /* float: left; */
}

.booking-details {
	float: right;
	position: relative;
	width: 200px;
	height: 450px;
}

 .booking-details h3 { 
 	margin: 5px 5px 0 0; 
 	font-size: 16px; 
 } 

.booking-details p { 
 	line-height: 26px; 
 	font-size: 16px; 
 	color: #20B7B7
 } 

.booking-details p span {
	color: #20B7B7
}

div.seatCharts-cell {
    /* color: #182C4E; */
    height: 20px;
    width: 22px;
    line-height: 25px;
    margin: 3px;
    float: left;
    text-align: center;
    outline: none;
    font-size: 13px;
    
}

div.seatCharts-seat {
	color: #fff;
	cursor: pointer;
	border-radius: 20px;
}


div.seatCharts-seat.available {
    background-color: #20B7B7;
    color: #20B7B7;
    border-radius: 9px 9px 2px 2px;
}

div.seatCharts-seat.focused {
	background-color: #a5e2e2;
	color: #a5e2e2;
	border-radius: 9px 9px 2px 2px;
}

div.seatCharts-seat.selected {
	background-color: #F49729;
	color: #F49729;
	border-radius: 9px 9px 2px 2px;
}

div.seatCharts-seat.unavailable {
	background-color: #707070;
	color: #707070;
	border-radius: 9px 9px 2px 2px;
	cursor:default;
}










/* ------------即時資訊------------------------------- */

.bookingInfo{
/* position:absolute; */
/* 	float:right; */
	width:50%;
	margin:0 auto;
/* 	margin-right:30px; */
}
#counter{
}

#selected-seats {
    /* max-height: 150px; */
    /* overflow-y: auto; */
/*     overflow-x: none; */
    width: auto;
    overflow: hidden;
     margin-top: 20px; 
}

#selected-seats div {
    float: left;
    width: 31%;
    height: 26px;
    line-height: 26px;
    /* border: 1px solid #d3d3d3; */
    background: #20B7B7;
    margin: 1% 1%;
    /* font-size: 14px; */
    /* font-weight: bold; */
    text-align: center;
}

.getBookingInfo{

text-align:center;
width: 100%;
margin:0 auto;
margin-top:35px;
}

.checkout-button {
/* 	display: block; */
/* 	width: 80px; */
/* 	height: 24px; */
/* 	line-height: 20px; */
/* 	margin: 10px auto; */
/* 	font-size: 14px; */
/* 	cursor: pointer */
/* 	color:pink; */
	
 	width:160px;
 	height:40px;
/*  	border:2px blue none;  */
 	border-radius: 1px;
 	border:2px solid #20B7B7;
 	color:#20B7B7;
 	font-weight: 500;
 	background:#272727;
}

/* ------選單---------- */
input, textarea, select, button {
/*
    text-rendering: auto;
    color: initial;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    margin: 0em;
    font: 400 13.3333px Arial;
    */
}
.dropdown-menu {
    min-width: 0px !important;
}

#counter, #total{
	display: none;
}

.displayInput{
 	display: none;  
color:black;
}

.sectionParam{
 	display: none;  
}

li{
list-style:disc inside;
}
.mynote{
 	display: none;  

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
		<a href="/StarBusterCinima/film/hotFilms.jsp">
			<div class="col-md-1 navicol" >
				<div class="ehdiv navidiv">熱門強檔</div>
			</div>
		</a>
		<div class="col-md-1 navicol">
			<div class="ehdiv navidiv">立即訂票</div>
		</div>
		<a href="/StarBusterCinima/index.jsp">
			<div class="col-md-3 navicolcenter" >
				<img class="naviLogo" src="/StarBusterCinima/images/SB01.png">
		</div>
		</a>
		<div class="col-md-1 navicol">
			<div class="ehdiv navidiv">周邊精品</div>
		</div>
		<div class="col-md-1 navicol">
			<div class="ehdiv navidiv">精彩活動</div>
		</div>
		<div class="col-md-1 navicol">
			<div class="ehdiv navidiv"></div>
		</div>
	
	</div>
	
	</div>
	</div>
	
<div style="display: none">

<%-- <input type="text" class="filmBean" id="filmId" name="${bookingFilmBean.filmId}" style="display: none" > --%>
<input type="text" class="filmBean" id="posterMedium" name="${bookingFilmBean.posterMedium}" style="display: none" >
<input type="text" class="filmBean" id="posterLarge" name="${bookingFilmBean.posterLarge}" style="display: none" >
<!-- <input type="text" class="sectionParam" value="" style="display: none" > -->

</div>

<!-- <div class="video-out" style="hight:200px"> -->
<!-- <div class="video-container"> -->
<!-- 	<iframe width="560" height="315" src="https://www.youtube.com/embed/o7U3EDp6wyw?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe> -->
<!-- <img src="https://img.youtube.com/vi/Ex9091HAqBE/0.jpg"> -->
<!-- </div> -->
<!-- </div> -->

<div class="toptrailer">
<!-- 	<img src="../images/film/1102.jpg"> -->
<!-- 	<img src="/StarBusterCinima/images/film/1107.jpg"> -->
</div>





<div class="thisFilmInfo">
	<div class="filmPic">
<!-- 		<img src="../images/film/1102.jpg"> -->
<!-- 		<img src="/StarBusterCinima/images/film/1107.jpg"> -->
	</div>
	
	<div class="filmText">
	
		<div class="filmNameEng">
			<div class="filmName">${bookingFilmBean.filmName}</div>
			<div class="filmEng">${bookingFilmBean.engName}</div>
		</div>
		
		<div class="filmGenreLength">
			<div class="filmGenre">${bookingFilmBean.genre}</div>
			<div class="filmLength">${bookingFilmBean.lengthOfFilm}分鐘</div>
		</div>
		
		<div class="filmDirectorActor">
			<div class="filmDirector">導演:${bookingFilmBean.director}</div>
			<div class="filmActor">卡司:${bookingFilmBean.actor}</div>
		</div>
		
		<div class="chooseDate">
			<p>請選擇日期</p>
			<div id="dateWall">
<!-- 				<div class="item itemDate"> -->
<!-- 					<div class="eee">星期一</div> -->
<!-- 					<div class="mmdd">12/25</div> -->
<!-- 				</div> -->
<!-- 				<div class="item itemDate">2</div> -->
<!-- 				<div class="item itemDate">3</div> -->
<!-- 				<div class="item itemDate">4</div> -->
<!-- 				<div class="item itemDate">5</div> -->
<!-- 				<div class="item itemDate">6</div> -->


			</div>
		</div>
		<div class="chooseTime">
			<p>請選擇時間</p>
			<div id="timeWall">
				<div class="item itemTime"><div class="eachtime"></div></div>
				<div class="item itemTime"><div class="eachtime"></div></div>
				<div class="item itemTime"><div class="eachtime"></div></div>
				<div class="item itemTime"><div class="eachtime"></div></div>
				<div class="item itemTime"><div class="eachtime"></div></div>
				<div class="item itemTime"><div class="eachtime"></div></div>
				<div class="item itemTime"><div class="eachtime"></div></div>
				<div class="item itemTime"><div class="eachtime"></div></div>
				<div class="item itemTime"><div class="eachtime"></div></div>
				<div class="item itemTime"><div class="eachtime"></div></div>
			</div>
		</div>
		
<!-- 		<div class="bookingButton"></div> -->
	</div>
</div>
<div class="seatContain">

	<div id="main">
		<div class="box">
			
			<div id="seat-map">
				<div class="screen">螢幕</div>
			</div>
			
			<div class="bookingInfo">
<!-- 				<div class="btn-group"> -->
<!-- 					<button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
<!-- 					    Small button -->
<!-- 					</button> -->
<!-- 					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton"> -->
<!-- 					    <a class="dropdown-item" href="#">Action</a> -->
<!-- 					    <a class="dropdown-item" href="#">Another action</a> -->
<!-- 					    <a class="dropdown-item" href="#">Something else here</a> -->
<!-- 					</div> -->
<!-- 				</div> -->
				<div id="counter"></div>
				<div id="total"></div>
				<div id="selected-seats"></div>
			</div>
		</div>
	</div>
	
	
	
	
				<div class="getBookingInfo">
					<form action="/StarBusterCinima/booking/controller/ticketorder.controller/productOrder"  method="POST" class="bookingForm">
						<input class="displayInput" type="text" name="filmId" id="filmId" value="">
						<input class="displayInput" type="text" name="ticketOrderDate" id="ticketOrderDate" value="">
						<input class="displayInput" type="text" name="filmSectionDate" id="filmSectionDate" value="">
						<input class="displayInput" type="text" name="filmSectionTime" id="filmSectionTime" value="">
						<input class="displayInput" type="text" name="ticketCount" id="ticketCount" value="">
						<input class="displayInput" type="text" name="seatNumber" id="seatNumber" value="">
		<!-- 				<input class="displayInput" type="text" name="ticketType" id="ticketType" value=""> -->
						<input class="displayInput" type="text" name="ticketOrderPrice" id="ticketOrderPrice" value="">
		<!-- 				<input class="displayInput" type="text" name="ticketState" id="ticketState" value=""> -->
		<!-- 				<input class="displayInput" type="text" name="memberId" id="memberId" value=""> -->
						<input type="submit" class="checkout-button" id="checkout-button" value="下一步">
					</form>
					<div id="legend"></div>
				</div>
</div>

<div class="bookingDescription">
	<h2 style="color:#20B7B7">訂票說明</h2>
	<div>
	<ol>
	<li>網路預訂以電影播放日期為準，而非以刷卡日計算，每卡每日購買張數限制依影片類型、單日購票張數相關規定限制。</li>
	<li>未滿２歲且不佔位之兒童無需購票可免費入場觀賞【普遍級】影片，每位兒童需由至少一位已購票之成人陪伴。</li>
	<li>需佔位或２歲以上未滿１２歲之兒童；需購買優待票。</li>
	<li>網路訂票每張票需加收 NT$20 手續費。</li>
	<li>150分鐘以上之電影需加價 NT$10 。</li>
	</ol>
	</div>
<input type="text" class="sectionParam" value="" >

</div>






<!-- /StarBusterCinima/booking/controller/makeSections.controller -->
<!-- /booking/controller/ticketorder.controller -->

<!-- style="display: none" -->
<div class="mynote" >
	<div class="datesResult"> ${datesResult} </div>
	<div class="roomSeats"></div>
	<div class="unavailableSeats"></div>
</div>
<!-- <div class="aa">123</div> -->
<script type="text/javascript">
$(document).ready(function(){
// 	var unavailableSeats  
// 		=[ '1_2', '1_3', '1_4' ];
	
// 		$('.seatCharts-container').animate({
// 			"opacity":"0",
// 			"heigh":"0"},0,function(){
// 		})
	var theSeats
		=[
		'oooo_oooooooooo_oooo',
		'oooo_oooooooooo_oooo',
		'oooo_oooooooooo_oooo',
		'oooo_oooooooooo_oooo',
		'oooo_oooooooooo_oooo',
		'_ooo_oooooooooo_ooo_',
		'__oo_oooooooooo_oo__'
		];

// 	alert(typeof(theSeats))
	//動態載入顯示該電影兩張圖
	var picurlMedium = $('#posterMedium').attr('name');
	var filmPicMedium = $('<img>').attr('src',picurlMedium);
	var picurlLarge = $('#posterLarge').attr('name');
	var filmPicLarge = $('<img>').attr('src',picurlLarge);
	$('.toptrailer').append(filmPicMedium);
	$('.filmPic').append(filmPicLarge);
	
	
	
	
	//動態顯示該電影場次
	var dates = '<c:out value="${datesResult}"/>';
	var datesResult = dates.replace("[","").replace("]","").split(")").join("").toString().split(",");
	var datesResultLength = datesResult.length;
	var themmdd ;
	var date = { mmdd:[] , eee:[] };
	
	for(var i=0; i<datesResultLength;i++){
		themmdd = datesResult[i].split("(");

		var divs = $('<div>').attr({'class':'item itemDate','id':datesResult[i]})
			.append($('<div>').attr({'class':'eee'}).text(themmdd[1]))
			.append($('<div>').attr({'class':'mmdd'}).text(themmdd[0]));
		$('#dateWall').append(divs);
	}//end of 動態顯示該電影場次
		
		
	//點擊日期將該id塞入變數
	$('.itemDate').on('click','div', function(){
		
// 		$('.seatCharts-row').remove();
		
// 		$('.seatCharts-container').slideUp(500)
		$('.seatCharts-container').animate({
			"opacity":"0",
			"heigh":"0"},200,function(){
		})


		
		
// 		$('.eachtime:eq(2)').text("123");
// 		$("#timeWall").find("div").remove()
		
		$('.item').css({'background-color':'#3c3c3c','color':'white'});
		$('.mmdd').css('color','white');
		$('.eee').css('color','#20B7B7');
		$(this).parent().css({'background-color':'#20B7B7','color':'white'}).children().css({'color':'white'})
		var selectedDate = $(this).parent().attr('id');
	
		//放進表單
		$('#filmSectionDate').val(selectedDate);		
// 		alert(selectedDate);
		//得到場次日期後 動態產生時間
		$.ajax({
			 url: '/StarBusterCinima/booking/controller/bookingSections.controller/'+selectedDate,
			 type: "GET",
			 dataType: "json",
			 success: function(Jdata) {
			    var eachtime = jQuery.makeArray(Jdata);

				for(var i=0; i<eachtime.length;i++){
					//塞進去
					$('.eachtime:eq('+i+')').text(eachtime[i]);
				}//end of 動態顯示該場次的時間

			 },error: function() {
// 			   alert("json parse error");
			 }
		});//End of 得到場次日期後 動態產生時間
	});
	
		
		//點擊時間
		$('.itemTime').on('click','div', function(){

			
			$('.item').css({'background-color':'#3c3c3c','color':'white'});
			$('.mmdd').css('color','white');
			$('.eee').css('color','#20B7B7');
			$(this).parent().css({'background-color':'#20B7B7','color':'white'}).children().css({'color':'white'})
// 			$('.seatCharts-container').slideDown(500)
			
			$('.seatCharts-container').animate({
				"opacity":"100",
				"heigh":"100%"},2000,function(){
			})
			
			
			var putfilmId = '<c:out value="${bookingFilmBean.filmId}"/>';
			$('#filmSectionTime').val($(this).parent().find('.eachtime').text());	
			$('#filmId').val(putfilmId);	
			var Today=new Date();
			$('#ticketOrderDate').val(Today.getFullYear()+ " 年 " + (Today.getMonth()+1) + " 月 " + Today.getDate() + " 日");	
			

			$('.sectionParam').val($('#filmSectionDate').val()+","+$('#filmSectionTime').val()+","+$('#filmId').val());
			
			
			$.ajax({
				 url: '/StarBusterCinima/booking/controller/processingseats.controller/'+$('.sectionParam').val(),
				 type: "GET",
				 dataType: "json",
				 success: function(Jdata) {
// 						$('.roomSeats').text(Jdata.roomSeats);
						$('.unavailableSeats').text(Jdata.unavailableSeats);
// 						alert(Jdata.unavailableSeats.split(","))
// 						var tackenSeats = Jdata.unavailableSeats.split(",");
						
// 						alert(Jdata.roomSeats)
// 						alert(Jdata.unavailableSeats)
						
						
						var $cart = $('#selected-seats'), //座位區
						$counter = $('#counter'), //票數
						$total = $('#total'); //總計金額
					
						
						var sc = $('#seat-map').seatCharts(
								{
											map:
// 												Jdata.roomSeats.split(",")
												theSeats
								
											,naming : {
												top : true,
												getLabel : function (character, row, column) {
													return column;
												}
											},
											legend : { 
												node : $('#legend'),
												items : [
													[ 'o', 'available',   '1' ],
													[ 'x', 'unavailable', '0'],
													[ 's', 'selected', '0']
												]					
											},
											click : function() { //點擊事件
												if (this.status() == 'available') { //可選座
													$('<div>'+ (this.settings.row + 1)+ '排'
																	+ this.settings.label
																	+ '號</div>')
															.attr('id','cart-item-'+ this.settings.id)
															.data('seatId',this.settings.id).appendTo($cart);
//			 										$('#seatNumber').val((this.settings.row + 1)+'排'+ this.settings.label+ '號');
													var cartItemInput = $('div[id^="cart-item-"]').text();
													$('#seatNumber').val(cartItemInput);
													$counter.text(sc.find('selected').length + 1);
													$total.text(recalculateTotal(sc)+ price);
					
													$('#ticketCount').val(sc.find('selected').length + 1);
													$('#ticketOrderPrice').val(recalculateTotal(sc)+ price);
//			 										alert(sc.find('selected').length + 1);
//			 										alert(recalculateTotal(sc)+ price);
					
													return 'selected';
												} else if (this.status() == 'selected') { //已選中
													//更新數量
													$counter.text(sc.find('selected').length - 1);
													$('#ticketCount').val(sc.find('selected').length - 1);
													//更新總計
													$total.text(recalculateTotal(sc)- price);
													$('#ticketOrderPrice').val(recalculateTotal(sc)- price);
													//刪除已預訂座位
													$('#cart-item-'+ this.settings.id).remove();
// 													$('#seatNumber').val().($('#cart-item-'+ this.settings.id).text(),"");
													$('#seatNumber').val().replace($('#selected-seats div:last').text(),"");
													//可選座
													return 'available';
												} else if (this.status() == 'unavailable') { //已售出
													return 'unavailable';
												} else {
													return this.style();
												}
											}
										});
						//已售出的座位
// 						alert(tackenSeats)
// 						sc.get($('.unavailableSeats').text().split(",")).status('unavailable');
						
// 	 					$.each(Jdata.unavailableSeats, function(index, booking) {
// 							sc.status(Jdata.unavailableSeats.booking, 'unavailable');
// 						});
// 							sc.status('', 'unavailable');
							var z = Jdata.unavailableSeats.split(",");
							var st = [];
						  $.each(z, function(i,val){      
						      st.push(val)
						  });  
// 						  alert(st)
// 						var st = ['1_1','1_2']
// 							alert(typeof(st[0]))
// 						console.log(st[0]);
						sc.find('unavailable').status('available');
						sc.status(st, 'unavailable');
// 						sc.get(st).status('unavailable');
						
						
						
// 						sc.get(unavailableSeats).status('unavailable');
				  },error: function() {
					  
				  },complete: function(){
				  }
			});//End of 得到時間後 動態產生座位表
			
			
// 			var a1 = $('.unavailableSeats').text().split(",")
// 			alert(a1)
// 			alert(typeof(a1))
			

			
			

		});
	

	
	
	// 	navi的滑鼠移上去會有藍色底條
	$('.navicol>div').hover(function() {
		$(this).parent().css({'border-bottom':'6px solid #20B7B7'});
	// alert("blah");
	});
	$('.navicol>div').mouseleave(function() {
		$(this).parent().css({'border-bottom':'6px solid #191919'});
	// alert("blah");
	});
	
	
	
	$('#dateWall').owlCarousel({
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
	$('#timeWall').owlCarousel({
		items : 4,
		loop : false,
		autoplay : false,
		autoplayTimeout : 0,
		autoplayHoverPause : true,
		autoHeight:true,
		margin:-5
	//	    navigation : true,
	//	    navigationText:["<",">"]
	//	    rewindNav : true,
	//	    scrollPerPage : false
	});

// -----------------------座位表-------------------------------

var price = 360; 

$(document).ready(
		
		
		
		function() {
// 			var theSeats;
// 			var unavailableSeats = [ '1_2', '1_3', '1_4' ];
			
			
// 			sc.get([ '1_2', '4_4' ]).status('unavailable');

		});//ready
		
// 		setInterval(function() {
// 			$.ajax({
// 				type     : 'get',
// 				url      : '/bookings/get/100',
// 				dataType : 'json',
// 				success  : function(response) {
// 					//iterate through all bookings for our event 
// 					$.each(response.bookings, function(index, booking) {
// 						//find seat by id and set its status to unavailable
// 						sc.status(booking.seat_id, 'unavailable');
// 					});
// 				}
// 			});
// 		}, 10000); //every 10 seconds
		
			//計算總金額
			function recalculateTotal(sc) {
				var total = 0;
				sc.find('selected').each(function() {
					total += price;
				});

				return total;
			}

});//Onload


</script>

<%-- <c:out value="${sessionScope.filmBean}"/> --%>
</body>
</html>