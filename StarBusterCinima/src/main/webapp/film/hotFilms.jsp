<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
/*     border: 1px dotted red;          */
	margin: 0;
    padding: 0;
	font-family: 'Noto Sans TC';
	font-weight: 300;
}
body{
	
	background-color: #3C3C3C;
}

a:link {



}

a:visited {


color: white;

text-decoration: none;

}

a:hover {


color: #20B7B7;

text-decoration: none;

}

a:active{

}

/*
a {
    text-decoration:none;
    color:#20B7B7;
}
*/
.outdiv{
	width:100%;
	z-index:1500;
	border-top: 5px solid #9D9D9D;
	top:0px;
/* 	overflow: hidden; */
	position: fixed;
	
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




/* ________________________________________________________ */




/*

.box{
	margin-top:300px; 
	border: 5px dotted yellow; 
	overflow: hidden;
	height: auto;
	width: 64%;
	left:300px;
 	left:18%; 
}
*/


#box{
	
/*  	border: 1px dotted green;   */
	position:absolute;
/*  	margin-top:200px;  */
 	width: 64%; 
 	left:18%; 
	height:auto;
 	overflow: hidden; 
 	text-align: center; 
}

.hotFilmsTitle{
	color:white;
	margin-top:250px; 
/*  	border-top: 1px solid #20B7B7;   */
 	border-bottom: 1px solid #20B7B7;  
	margin-left:15px; 
	margin-right:15px; 
	margin-bottom: 30px;
	
	/*
	width: 50%;
 	position: relative; 
	left: 24%;
	*/
	
}

.btn-default {
	font-size:17px;
	letter-spacing: 3px;
	font-weight: 400;
	
    color: #f5f5f5;
    background-color: #3c3c3c;
    border-color: rgba(255, 255, 255, 0); 
    border-radius: 0;
/*     border-bottom: 5px solid #20B7B7; */
/*     border-top: 1px solid #20B7B7; */
/*     border-left: 1px solid #20B7B7; */
/*     border-right: 1px solid #20B7B7; */
}
.btn-default:hover, .btn-default:focus, .btn-default:active:hover{
	color: #fff;
	background-color: #20B7B7;
	border-color: #20B7B7;
}

.itemcol{
	color:white;
	padding-bottom: 30px;
}

.item{
	overflow: hidden;
}

.filmPoster{
	height: 400px;
}
.filmPoster img{
    width: 100%;
    height: 100%;
}



.filmInfo{
/* margin-top:0px; */
/*  height: 130px; */
	padding:10px;
 	background: #4F4F4F;
 	text-align: left;
}

.infoNameCh{
font-size: 18px;
}
/* infoNameEn */
/* infoUdate */
/* infoGenre */


.container{
border:1px solid yellow;
margin:0px;
padding: 0px;
width: auto;
}


</style>
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
				<img class="naviLogo" src="../images/SB01.png">
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
	
	<div id="box">
		<div class="hotFilmsTitle">
			<div class="btn-group btn-group-justified" role="group">
		        <div class="btn-group">
		            <button type="button" value="" class="btn btn-default">現正熱映</button>
		        </div>
		        <div class="btn-group">
		            <button type="button" value="" class="btn btn-default">即將上映</button>
		        </div>
			</div>
		</div>
		
		<div class="hotFilms" id="hotFilms">
		
			<div class="col-md-3 itemcol">
<!-- 				<a href="http://localhost:8080/StarBusterCinima/film/thisFilm.jsp"> -->
<!-- 				<a href="../film/thisFilm.jsp"> -->
				<a href="/StarBusterCinima/film/thisFilm.jsp" >
				
				<div class="item" id="1107">
					<div class="filmPoster">
<!-- 				<a href="/StarBusterCinima/film/thisFilm.jsp"> -->
<!-- 						<a href="http://tw.yahoo.com" >123</a> -->
							<img src="../images/film/1107.jpg" id="1107" class="classfilmId">
<!-- 				</a> -->
						
					</div>
					<div class="filmInfo">
						<div class="infoNameCh">天劫：救贖之戰</div>
						<div class="infoNameEn">Beyond Skyline</div>
						<p style="margin-bottom: 30px;"></p>
						<div class="infoUdate">2017-12-08</div>
					</div>
				</div>
				</a>
			</div>
		
		
		</div>	

	</div>		
			





<script>
$(document).ready(function(){
	

	

	
// 	.attr({'class':'filmPoster'}).append($('img').attr({'src':'../images/film/A Bad Moms Christmas.jpg'}))
	//一開始載入所有電影資料
	$.ajax({
		 url: '<c:url value="/booking/controller/quickBooking.controller" />',
		 type: "GET",
		 dataType: "json",
		 success: function(Jdata) {
		    eachFilm = jQuery.makeArray(Jdata);
			for(var i=0 ; i<Object.keys(Jdata).length ; i++){

				var filmPosterTag = $('<div>').attr('class','filmPoster');
					var imgTag =    $('<img>').attr('src','../images/film/'+eachFilm[i].filmId+'.jpg');
				var newFilmPosterTag = filmPosterTag.append(imgTag);
					
					
				var filmInfoTag = $('<div>').attr('class','filmInfo');
					var nameChTag = $('<div>').attr('class','infoNameCh').text(eachFilm[i].filmName);
					var nameEnTag = $('<div>').attr('class','infoNameEn').text(eachFilm[i].engName);
					var pTag =      $('<p></p>').css('margin-bottom','30px');
					var uDateTag =  $('<div>').attr('class','infoUdate').text(eachFilm[i].udate);
				var newFilmInfoTag = filmInfoTag.append(nameChTag).append(nameEnTag).append(pTag).append(uDateTag)
	
				var aurl = $('<a>').attr('href','/StarBusterCinima/film/thisFilm.jsp');
				
				var itemTag = $('<div>').attr({'class':'item','id':eachFilm[i].filmId}).append(newFilmPosterTag).append(newFilmInfoTag);
				var aurldone = aurl.append(itemTag);
				var itemcolTag = $('<div>').attr('class','col-md-3 itemcol').append(aurldone);
				
				var newItemcolTag = itemcolTag.append(itemcolTag);
				
				$('#hotFilms').append(newItemcolTag);
			
			}
		 },
		 
		 error: function() {
		   console.log("json parse error");
		 }
	});//End of ajax 一開始載入所有電影資料	
	

// 		$(this).parents('div[class="item"]').css('border','1px solid blue');
// 		alert($(this).parents('div[class="item"]').attr('id'));
// 		alert($(this).parents().find('div[class="item"]').attr('id'));
// 		alert($(this).closest('div[class="item"]').css('border','1px solid blue'));
// 		$(this).parent('div[class="item"]').css('border','1px solid blue');
// 		classfilmId
	
	
	$('#hotFilms').on('click','a', function(event){
// 		event.stopPropagation();
// 		event.preventDefault();
// 		event.stopImmediatePropagation();
// 		alert($(this).closest('div[class="item"]').attr('id'));
// 		alert($(this).parent('.item').attr('id')+"kerker");
// 		alert($(this).find('.item').attr('id')+"kerker");
// 		alert($(this).children('.item').attr('id'));
		
		//把選中的電影ID傳至後端並跳轉畫面
		$.ajax({
			 url: '/StarBusterCinima/films/controller/thisFilm.controller',
// 			 url: '/StarBusterCinima/films/controller/thisFilm.controller'+$(this).parent('.item').attr('id'),
// 			 url: '/StarBusterCinima/film/thisFilm.jsp',
			 type: "GET",
			 dataType: 'json',
			 data: { 
// 				 paramFilmId : $(this).find('.item').attr('id'),                            
				 paramFilmId : $(this).children('.item').attr('id'),                            
             },
             complete: function(){
            	console.log("complete") 
             }
		});

		
// 		window.location.href='/StarBusterCinima/film/thisFilm.jsp'


// 		$.ajax({
// 			 url: '/StarBusterCinima/booking/controller/quickBookingSections.controller/'+$('#selectAllFilms').attr('name'),
// 			 type: "GET",
// 			 success: function(Jdata) {
// 			 	console.log("ajax process success.")
// 			 },
			 
// 			 error: function() {
// 			 	console.log("ajax process fail.");
// 			 }
// 		});//end of 將選中的電影名稱給後端




	});
	
// 	navi的滑鼠移上去會有藍色底條
	$('.navicol>div').hover(function() {
		$(this).parent().css({'border-bottom':'6px solid #20B7B7'});
	// alert("blah");
	});
	$('.navicol>div').mouseleave(function() {
		$(this).parent().css({'border-bottom':'6px solid #3C3C3C'});
	// alert("blah");
	});

	
	

	
	
});




</script>
</body>
<!-- 
	<div class="col-md-3 itemcol">
		<a href="http://localhost:8080/StarBusterCinima/film/thisFilm.jsp">
			<div class="item" id="1107">
				<div class="filmPoster">
					<img src="../images/film/1107.jpg" id="1107" class="classfilmId">
				</div>
				<div class="filmInfo">
					<div class="infoNameCh">天劫：救贖之戰</div>
					<div class="infoNameEn">Beyond Skyline</div>
					<p style="margin-bottom: 30px;"></p>
					<div class="infoUdate">2017-12-08</div>
				</div>
			</div>
		</a>
	</div>
 -->
</html>