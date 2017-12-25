<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link rel="stylesheet" type="text/css" href="css/test.css"> -->
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/StarBusterCinima/css/home.css"></link>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">




<style type="text/css">
.item image{
margin:0px;
padding:0px;
}
#FilmWall{width:80%;dispaly:block;margin:0px auto;padding-top:100px}
#FilmWall2{width:80%;dispaly:block;margin:0px auto;padding-top:100px}
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
<!-- 	<div><img class="naviLogo" src="/StarBusterCinima/images/SB03.png"></div> -->
	<div class="container" >
		<div id="row1" class="row">
			<div class="col-sm-1">
			</div>
			<div class="col-sm-5">
				<img class="naviLogo" src="/StarBusterCinima/images/與神同行.jpg">
				<h3>123</h3>
				<h3>123</h3>
			<div class="col-md-1 navicol">
				<div class="ehdiv navidiv" style="text-align:right">more</div>
			</div>
				
			</div>
			<div class="col-sm-5">
				<img class="naviLogo" src="/StarBusterCinima/images/與神同行.jpg">
			</div>
			<div class="col-sm-1">
			</div>
		</div>
		<div id="row2" class="row">
			<div class="col-sm-1">
			</div>
			<div class="col-sm-5">
				<img class="naviLogo" src="/StarBusterCinima/images/與神同行.jpg">
			</div>
			<div class="col-sm-5">
				<img class="naviLogo" src="/StarBusterCinima/images/與神同行.jpg">
			</div>
			<div class="col-sm-1">

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