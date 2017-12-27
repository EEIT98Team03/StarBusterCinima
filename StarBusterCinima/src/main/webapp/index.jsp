<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link rel="stylesheet" type="text/css" href="css/test.css"> -->
<title>StarBusterCinima</title>
<link rel="stylesheet" type="text/css" href="/StarBusterCinima/css/home.css"></link>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="shortcut icon" type="image/png" href="/StarBusterCinima/images/logo.ico"/>



<style type="text/css">
.item image{
margin:0px;
padding:0px;
}
#FilmWall{width:100%;dispaly:block;margin:0px auto;padding-top:100px}
#FilmWall2{width:100%;dispaly:block;margin:0px auto;padding-top:100px}
.container{
background-color:#3C3C3C;
width:100%;
}
.row{
	text-align:center;
}
.col-sm-5{
text-align:center;
background-color:black;
margin:15px;
}
#row1{
	margin-top:50px;
}
#row2{
	margin-bottom:50px;
}
.container img{
	width:100%;
	height:100%;
	margin-top:15px;
	margin-bottom:15px
}
.container h3{
	color:white;
	text-align:left;
}
.naviLogo{
	
	height:50px;
}
.moreDiv{
font-size:25px;
color:white;
text-align:right;
}
.moreDiv{
padding-bottom:10px;	
}
.moreDiv a{
text-decoration:none;
color:white;
}

</style>
</head>
<body>
	<jsp:include page="${pageScope.request.contextPath}/fragement/top.jsp"></jsp:include>
	<div class="FilmWallBox">
	<!-- 輪播     -->
	<div id="FilmWall">
<!-- 		<div class="item"><img src="/StarBusterCinima/adImages/type=電影,position=首頁輪播,sequence=5" class="img-rounded" style=""/></div> -->
	</div>
	<!-- 輪播     -->
	</div>
	
	
	
	<div class="container" >
		<div id="row1" class="row">
			<div class="col-sm-1">
			</div>
			<div class="col-sm-2">
				<img style="width:230px;height:60px" class="naviLogo" src="/StarBusterCinima/images/新聞影評.png">
			</div>
			<div class="col-sm-9">
			</div>
		</div>
		
		
		<div id="row1" class="row">
	
		
			<div class="col-sm-1">
			</div>
			
			
			<div class="col-sm-5">
				<img class="naviLogo" src="/StarBusterCinima/adImages/imageId=1026">
				<h3>《聖鹿之死》妮可基嫚詮釋為母則強</h3>
				<div class="moreDiv"><a href="http://app2.atmovies.com.tw/news2/NF1712252948/" target="_blank">► more&nbsp;&nbsp;</a></div>
			</div>
			
			
			
			<div class="col-sm-5">
				<img class="naviLogo" src="/StarBusterCinima/adImages/imageId=1027">
				<h3>桂綸鎂與張孝全如《史密斯夫婦》相愛相殺</h3>
				<div class="moreDiv"><a href="http://app2.atmovies.com.tw/news2/NF1712252783/" target="_blank">► more&nbsp;&nbsp;</a></div>
			</div>
			
			
			
			<div class="col-sm-1">
			</div>
			
			
		</div>
		
		
		<div id="row2" class="row">
		
		
			<div class="col-sm-1">
			</div>
			
			
			<div class="col-sm-5">
				<img class="naviLogo" src="/StarBusterCinima/adImages/imageId=1028">
				<h3>法國聖誕電影《黎明的承諾》高中生評選最佳！</h3>
				<div class="moreDiv"><a href="http://app2.atmovies.com.tw/news2/NF1712257701/" target="_blank">► more&nbsp;&nbsp;</a></div>
			</div>
			
			
			
			<div class="col-sm-5">
				<img class="naviLogo" src="/StarBusterCinima/adImages/imageId=1029">
				<h3>《羅根》導演參與了《大娛樂家》的重拍執導</h3>
				<div class="moreDiv"><a href="http://app2.atmovies.com.tw/news2/NF1712229339/" target="_blank">► more&nbsp;&nbsp;</a></div>
			</div>
			
			
			
			<div class="col-sm-1">
			</div>
			
			
		</div>
		
		
	</div>










<div id="container">
	<div id="row1" class="row">
			<div class="col-sm-1">
			</div>
			<div class="col-sm-2">
				<img class="naviLogo" src="/StarBusterCinima/images/最新優惠.png" style="width:230px;height:60px">
			</div>
			<div class="col-sm-9">
				
			</div>
	</div>
</div>	
	<!-- 頁底促銷廣告 -->
	<div class="FilmWallBox2">
	<!-- 輪播     -->
	<div id="FilmWall2">
<!-- 		<div class="item"><img src="/StarBusterCinima/adImages/type=電影,position=首頁輪播,sequence=5" class="img-rounded" style=""/></div> -->
<!-- 		<div class="item"><img src="/StarBusterCinima/adImages/type=電影,position=首頁輪播,sequence=5" class="img-rounded" style=""/></div> -->
<!-- 		<div class="item"><img src="/StarBusterCinima/adImages/type=電影,position=首頁輪播,sequence=5" class="img-rounded" style=""/></div> -->
<!-- 		<div class="item"><img src="/StarBusterCinima/adImages/type=電影,position=首頁輪播,sequence=5" class="img-rounded" style=""/></div> -->
	</div>
	<!-- 輪播     -->
	</div>

	
	
	<jsp:include page="${pageScope.request.contextPath}/fragement/bot.jsp"></jsp:include>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- 輪播     -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/assets/owl.carousel.min.css"></link>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/assets/owl.theme.default.min.css"></link>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/owl.carousel.min.js"></script>
<!-- 輪播     -->
<script>
$(function(){
	
	//more  jquery
	$('.moreDiv').hover(function() {
		$(this).parent().css({'border-bottom':'6px solid #20B7B7'});
	// alert("blah");
	});
	$('.moreDiv').mouseleave(function() {
		$(this).parent().css({'border-bottom':'6px solid #3C3C3C'});
	// alert("blah");
	});
	
	
	
	
	var FilmWall = $('#FilmWall');
	
	//記錄點擊首頁輪播牆點擊次數
	FilmWall.on('click','a',function(){
		var urlClickId = $(this).attr('id');
		$.ajax({
			'type':'post',
			'url':'/StarBusterCinima/adManagements/ClickCount='+urlClickId
		})
	})
	
	//首頁輪播牆 begin
	$.ajax({
		'type':'get',
		'url':'/StarBusterCinima/adManagements/type=電影,position=首頁輪播'
	}).done(function(datas){
		var length;
		$.each(datas,function(index,value){
			var column=$('<div class="item"></div>').html('<a id='+value.id+' href='+value.url+' title='+value.title+' target="_blank"><img src="/StarBusterCinima/adImages/imageId='+value.id+'" class="img-rounded" style=""/></a>');
			FilmWall.append(column);
			length=index;
			
			//瀏覽次數
			$.ajax({
				'type':'post',
				'url':'/StarBusterCinima/adManagements/ViewCount='+value.id
			})
			
		})
		$('#FilmWall').owlCarousel({
			items :length+1,
			loop : true,
			margin :0,
			autoplay : true,
			autoplayTimeout : 1000,
			autoplayHoverPause : true,
			singleItem: true			
		});
	})
	//首頁輪播牆 end
	
	

	
	
	//首頁新聞牆 begin
// 	$.ajax({
// 		'type':'get',
// 		'url':'/StarBusterCinima/adManagements/type=電影,position=首頁輪播'
// 	}).done(function(datas){
// 		var length;
// 		$.each(datas,function(index,value){
// 			var column=$('<div class="item"></div>').html('<a id='+value.id+' href='+value.url+' title='+value.title+' target="_blank"><img src="/StarBusterCinima/adImages/imageId='+value.id+'" class="img-rounded" style=""/></a>');
// 			FilmWall.append(column);
// 			length=index;
			
// 			//瀏覽次數
// 			$.ajax({
// 				'type':'post',
// 				'url':'/StarBusterCinima/adManagements/ViewCount='+value.id
// 			})
			
// 		})
// 		$('#FilmWall').owlCarousel({
// 			items :length+1,
// 			loop : true,
// 			margin :0,
// 			autoplay : true,
// 			autoplayTimeout : 1000,
// 			autoplayHoverPause : true,
// 			singleItem: true			
// 		});
// 	})
	//首頁新聞牆 end
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	var FilmWall2 = $('#FilmWall2');
	
	//記錄點擊首頁廣告牆點擊次數
	FilmWall2.on('click','a',function(){
		var urlClickId = $(this).attr('id');
		$.ajax({
			'type':'post',
			'url':'/StarBusterCinima/adManagements/ClickCount='+urlClickId
		})
	})
	
	//首頁廣告牆 begin
	$.ajax({
		'type':'get',
		'url':'/StarBusterCinima/adManagements/type=商品,position=首頁廣告牆'
	}).done(function(datas){
		var length;
		$.each(datas,function(index,value){
			var column=$('<div class="item"></div>').html('<a id='+value.id+' href='+value.url+' title='+value.title+' target="_blank"><img src="/StarBusterCinima/adImages/imageId='+value.id+'" class="img-rounded" style=""/></a>');
			FilmWall2.append(column);
			length=index;
			
			//瀏覽次數
			$.ajax({
				'type':'post',
				'url':'/StarBusterCinima/adManagements/ViewCount='+value.id
			})
			
		})
		$('#FilmWall2').owlCarousel({
			items :1,
			loop : true,
			margin :0,
			autoplay : true,
			autoplayTimeout : 1000,
			autoplayHoverPause : true,
			singleItem: true			
		});
	})
	//首頁廣告牆 end

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

})
//  輪播   
</script>

</html>