<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Area</title>
<link rel="shortcut icon" type="image/png" href="/StarBusterCinima/images/logo.ico"/>
<!-- <link rel="stylesheet" type="text/css" href="/StarBusterCinima/css/bootstrap.min.css"></link> -->
<link rel="stylesheet" type="text/css" href="/StarBusterCinima/css/home.css"></link>
<!-- <script src="/StarBusterCinima/js/jquery-3.2.1.min.js"></script> -->


<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous"> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- #E2EEE5  #1E839F-->
<style type="text/css">
*{
/* 	border: 1px dotted pink; */
}
html{
height: 100%;
}
.box {
	background-color: #3C3C3C;
	margin: 0px auto;
	width: 95%;
	height: 900px;
	
/* 	border: 3px solid red; */
}
.row{
	position: relative;
}
.myarea {
	position: absolute;
	height: 30%;
	overflow-x:auto; 
}
.orerbox{
	position: relative;
}

.item{
	position: absolute;
	height: 100px;;
}
.col-sm-2 {
	width: 25%;
	height:100%;
	margin: 50px 0px 0px 50px;
 	border-right: 2px solid #21BABA; 
}
.memberInfoInnerTable{
	color:white;
	font-size:180%;
}
.memberInfoInnerTable td{
	padding-top:10px;
/* 	border: 2px solid red; */
	width:100%;
/* 	text-align:center; */
	padding-left:50px;
}
.col-sm-2 img {
	height: 250px;
	width: 250px;
	margin:35px 120px 10px 85px;
	border-radius:50%;
}
.col-sm-8{
/* 	margin-left:55px; */
/* 	padding-top:130px; */
	width: 65%;
	height:80%;
	top:12%;
	right: 4%;
/* 	margin: 50px 0px 0px 50px; */
/*   	border: 2px solid yellow;  */
 	color: white;
}
.box{
margin-top:50px
}


.ordercol{
    position: relative;
    border: 1px dotted black;
    height: 480px;
    padding: 0;
    width: 500px;
    margin-right: 50px;
    margin-bottom: 50px;
    overflow: hidden;
}
.imgBox{
    padding: 0;
    border: 1px dotted black;
}
.infoBox{
    position: absolute;
    height: 100%;
    right: 0;
    padding: 0px;
    /* display: table-cell; */
    /* text-align: center; */
    /* vertical-align: middle; */


/* display:table-cell;  */
/* text-align:center;  */
/* vertical-align:middle; */
}
.orderInfo{
/*   position:absolute;   */
/* height: 14.2%; */
height: 20.1%;
/* height: auto; */
/*       width:200px; */
/*       height:200px; */
/*       border:1px solid #000; */
	top:-2px;
/* 	bottom:-2px; */
      position: relative;
/*       width:200px; */
/*       height:150px; */
/*       border:1px solid #000; */
border-top:1px dotted black; 
}
.infoBox span{
    line-height: 35px;
/* display:inline-block; */
      position: absolute;
      width:80%;
      height:40%;
      top:0;
      right:0;
      bottom:0;
      left:0;
      margin:auto;
/*       background:#f60; */
      
/*       position: relative; */
/*       width:100px; */
/*       height:50px; */
/*       top:50%; */
/*       transform:translateY(-50%); */
/*       background:#095; */
}
#FilmWall{width:100%;}

</style>
</head>
<body>
	<jsp:include page="${pageScope.request.contextPath}/fragement/top.jsp"></jsp:include>
	<input type="text" id="memberId" value="${loginUserInfo.memberId}" style="display:none" />
<%-- 	<input type="text" id="name" value="${loginUserInfo.name}" style="display:none" /> --%>


	<div class="box">
	
		<div id="boxTitle" style="color: white; font-size: 250%; text-align: center;">會員專區</div>

		<div class="row">
			<div  class="col-sm-2">
				<img src='/StarBusterCinima/image/member/${loginUserInfo.memberId}'>
				<hr>
				<table class="memberInfoInnerTable">
					<tr>
						<td><span>姓名:</span><span>${loginUserInfo.name}</span></td>
					</tr>
					<tr>
						<td><span>性別:</span><span>${loginUserInfo.gender}</span></td>
					</tr>
					<tr>
						<td><span>生日:</span><span>${loginUserInfo.registration_date}</span></td>
					</tr>
					<tr>
						<td><span>電話:</span><span>${loginUserInfo.phoneNumber}</span></td>
					</tr>
					<tr>
						<td><span>郵件:</span><span>${loginUserInfo.email}</span></td>
					</tr>
					<tr>
						<td><span>地址:</span><span>${loginUserInfo.address}</span></td>
					</tr>
					<tr>
						<td><button type="button"  id="changeMemberInfoButton" class="btn btn-info btn-lg"  style="background-color:#21BABA;margin-top:50px;width: 40%">修改基本資料</button>
							<button type="button" id="memberRobot" class="btn btn-info btn-lg"  style="background-color:#21BABA;margin-top:50px;width: 40%;text-align: center;">使用機器人幫手</button>
<!-- 							<button type="button" id="memberRobot" class="btn btn-info btn-lg"  style="background-color:#21BABA;margin-top:10px">&nbsp;&nbsp;重新設置密碼&nbsp;&nbsp;</button> -->
						
						
						<!-- Button trigger modal -->
							<button type="button" id="" class="btn btn-info btn-lg"  style="background-color:#21BABA;width: 40%;margin-top:10px" data-toggle="modal"
								data-target="#exampleModal">重新設置密碼</button> <!-- Modal -->
								
							<button type="button" id="memberRobot" class="btn btn-info btn-lg"  style="background-color:#21BABA;margin-top:10px;width: 40%"> 查詢訂票記錄 </button>

							<div class="modal fade" id="exampleModal" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog" role="document">
									<p>&nbsp;</p>
									<p>&nbsp;</p>
									<p>&nbsp;</p>
									<p>&nbsp;</p>
									<p>&nbsp;</p>
									<p>&nbsp;</p>
									<p>&nbsp;</p>
									<div class="modal-content">
										<div class="modal-header">
											<h2 class="modal-title" id="exampleModalLabel"
												style="color: black">確定要更改您密碼?</h2>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<h3 style="color: black">系統將寄送Email給您，進行驗證</h3>
										</div>

										<div class="modal-footer">

											<button id="memberChanPassword" type="button" class="btn btn-primary"
												style="color: black">確定更改</button>
											<button id="memberChanClose" type="button" class="btn btn-secondary"
												data-dismiss="modal" style="color: black">關閉</button>
										</div>
									</div>
								</div>
							</div> 
							<!-- Button trigger modal -->
							
							</td>
					</tr>
<!-- #21BABA -->

































				</table>
			</div>
			
			
			<div class="col-sm-8 myarea" >
				<div class="container-fluid orderTable">
					<div class="col-md-6 ordercol">
						<div class="col-md-8 imgBox">
							<img src="/StarBusterCinima/images/film/102.jpg">
						</div>
						<div class="col-md-4 infoBox">
<!-- 							<div class="orderInfo"><span>購票日期</span></div> -->
<!-- 							<div class="orderInfo"><span>電影名稱</span></div> -->
							<div class="orderInfo"><span>場次日期</span></div>
							<div class="orderInfo"><span>張數</span></div>
							<div class="orderInfo"><span>座位</span></div>
							<div class="orderInfo"><span>金額</span></div>
							<div class="orderInfo"><span>狀態</span></div>
						
						</div>
					</div>
					<div class="col-md-6 ordercol">
						<div class="col-md-8 imgBox">
							<img src="/StarBusterCinima/images/film/102.jpg">
						</div>
						<div class="col-md-4 infoBox">
<!-- 							<div class="orderInfo"><span>購票日期</span></div> -->
							<div class="orderInfo"><span>電影名稱</span></div>
							<div class="orderInfo"><span>場次日期</span></div>
							<div class="orderInfo"><span>張數</span></div>
							<div class="orderInfo"><span>座位</span></div>
							<div class="orderInfo"><span>金額</span></div>
							<div class="orderInfo"><span>狀態</span></div>
						
						</div>
					</div>
					<div class="col-md-6 ordercol">
						<div class="col-md-8 imgBox">
							<img src="/StarBusterCinima/images/film/102.jpg">
						</div>
						<div class="col-md-4 infoBox">
<!-- 							<div class="orderInfo"><span>購票日期</span></div> -->
							<div class="orderInfo"><span>電影名稱</span></div>
							<div class="orderInfo"><span>場次日期</span></div>
							<div class="orderInfo"><span>張數</span></div>
							<div class="orderInfo"><span>座位</span></div>
							<div class="orderInfo"><span>金額</span></div>
							<div class="orderInfo"><span>狀態</span></div>
						
						</div>
					</div>
					<div class="col-md-6 ordercol">
						<div class="col-md-8 imgBox">
							<img src="/StarBusterCinima/images/film/102.jpg">
						</div>
						<div class="col-md-4 infoBox">
<!-- 							<div class="orderInfo"><span>購票日期</span></div> -->
							<div class="orderInfo"><span>電影名稱</span></div>
							<div class="orderInfo"><span>場次日期</span></div>
							<div class="orderInfo"><span>張數</span></div>
							<div class="orderInfo"><span>座位</span></div>
							<div class="orderInfo"><span>金額</span></div>
							<div class="orderInfo"><span>狀態</span></div>
						
						</div>
					</div>
					
					
					
			
			
				</div>
			</div>
			
			
			
		</div>


	



	</div>


	<jsp:include page="${pageScope.request.contextPath}/fragement/bot.jsp"></jsp:include>
</body>



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
			$('#changeMemberInfoButton').click(function(){
				location.href="http://localhost:8080/StarBusterCinima/member/memberManagement/memberChangeInfo.jsp";
			})
			$('#memberRobot').click(function(){
				location.href="http://localhost:8080/StarBusterCinima/member/memberManagement/memberRobot.jsp";
			})
		
		
	var FilmWall = $('#FilmWall');
	
	//記錄點擊首頁輪播牆點擊次數
// 	FilmWall.on('click','a',function(){
// 		var urlClickId = $(this).attr('id');
// 		$.ajax({
// 			'type':'post',
// 			'url':'/StarBusterCinima/adManagements/ClickCount='+urlClickId
// 		})
// 	})
	
	//會員區輪播牆 begin
// 	$.ajax({
// 		'type':'get',
// 		'url':'/StarBusterCinima/adManagements/type=電影,position=會員輪播牆'
// 	}).done(function(datas){
// 		var length;
// 		$.each(datas,function(index,value){
// // 			var column=$('<div class="item"></div>').html('<a id='+value.id+' href='+value.url+' title='+value.title+' target="_blank"><img src="/StarBusterCinima/adImages/imageId='+value.id+'" class="img-rounded" style=""/></a>');
// 			FilmWall.append(column);
// 			length=index;
			
// 			//瀏覽次數
// 			$.ajax({
// 				'type':'post',
// 				'url':'/StarBusterCinima/adManagements/ViewCount='+value.id
// 			})
			
// 		})
		$('#FilmWall').owlCarousel({
			items :3,
			loop : true,
			margin :30,
			autoplay : true,
			autoplayTimeout : 1000,
			autoplayHoverPause : true,
// 			singleItem: true			
		});
	})
	//會員區輪播牆 end
		
		
		
	//memberChanPassword	
	$('#memberChanPassword').click(function(){
		$.ajax({
			'type':'get',
			'url':'/StarBusterCinima/members/resendEmailToChangePassword='+$('#memberId').val()
		}).done(function(result){
			alert("寄送成功，請到您的郵件收信");
		})
		$('#memberChanClose').trigger('click');
	})
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		//loadMemberInfo
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
// 	})
	
	

</script>


</html>