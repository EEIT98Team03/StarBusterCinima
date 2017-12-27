<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
.box {
	background-color: #3C3C3C;
	margin: 0px auto;
	width: 95%;
	height: 900px;
/* 	border: 3px solid red; */
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
	width: 65%;
	height:100%;
/* 	margin: 50px 0px 0px 50px; */
/*  	border: 2px solid #21BABA; */
 	color: white;
}
</style>

<style>
.chat {
	list-style: none;
	margin: 0;
	padding: 0;
	background-color:#E0E0E0;
}
.chat li {
	margin-bottom: 10px;
	padding-bottom: 5px;
	border-bottom: 1px dotted #B3A9A9;
}

.chat li.left .chat-body {
	margin-left: 60px;
}

.chat li.right .chat-body {
	margin-right: 60px;
}

.chat li .chat-body p {
	margin: 0;
	color:black;
}

.panel .slidedown .glyphicon, .chat .glyphicon {
	margin-right: 5px;
}

.panel-body {
	overflow-y: auto;
	height:600px;
	
}

::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
	background-color: #F5F5F5;
}

::-webkit-scrollbar {
	width: 12px;
	background-color: #F5F5F5;
}

::-webkit-scrollbar-thumb {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, .3);
	background-color: #555;
}
.primary-font{
	color:black;
}
.box{
margin-top:50px
}
</style>
</head>
<body>
	<jsp:include page="${pageScope.request.contextPath}/fragement/top.jsp"></jsp:include>
	<input type="text" id="memberId" value="${loginUserInfo.memberId}" style="display:none" />
<%-- 	<input type="text" id="name" value="${loginUserInfo.name}" style="display:none" /> --%>

	<!-- box begin -->
	<div class="box">

		<div id="boxTitle"
			style="color: white; font-size: 250%; text-align: center;">會員專區</div>
		<!-- row -->
		<div class="row">
			<!-- col-sm-2 begin -->
			<div class="col-sm-2">
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
						<td><button type="button"  id="changeMemberInfoButton" class="btn btn-info btn-lg"  style="background-color:#21BABA;margin-top:50px">&nbsp;&nbsp;修改基本資料&nbsp;&nbsp;</button>
							<button type="button" id="memberRobot" class="btn btn-info btn-lg"  style="background-color:#21BABA;margin-top:50px">使用機器人幫手</button>
						</td>
					</tr>

				</table>
			</div>
			<!-- col-sm-2 end -->

			<!-- col-sm-8 begin -->
			<div class="col-sm-8">



				<div class="container">
					<c:if test="${not empty loginUserInfo}">
						<a type="button" data-toggle="collapse" href="#collapseOne"><img
							id="robot" src='/StarBusterCinima/images/robot.png'
							style="height: 65px; width: 77px; margin-bottom: 0px; margin-left: 0px;"></a>
					</c:if>
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary">
								<div class="panel-heading" id="accordion">
									<!-- 						<span class="glyphicon glyphicon-comment"></span> -->
									機器人問答
									<div class="btn-group pull-right">

										<!-- 							<a type="button" class="btn btn-default btn-xs" -->
										<!-- 								data-toggle="collapse" data-parent="#accordion" -->
										<!-- 								href="#collapseOne"> <span -->
										<!-- 								class="glyphicon glyphicon-chevron-down"></span> -->
										<!-- 							</a> -->
									</div>
								</div>
								<div class="panel-collapse collapse" id="collapseOne">
									<div class="panel-body">
										<ul class="chat">
											<li class="left clearfix">
												<!-- 									<span class="chat-img pull-left"></span> --> <!-- 										<div class="chat-body clearfix"> -->
												<div class="header">
													<strong class="primary-font">StarBusterCinima
														Robot</strong> <small class="pull-right text-muted"> <span
														class="glyphicon glyphicon-time"></span>1 mins ago
													</small>
													<!-- 										</div> -->
													<p style="color:black">歡迎使用StarBusterCinima機器人小助手，如有問題本機器人將替你解答</p>
												</div>
											</li>
											<!-- 								<li class="right clearfix"><span -->
											<!-- 									class="chat-img pull-right"> <img -->
											<!-- 										src="http://placehold.it/50/FA6F57/fff&text=ME" -->
											<!-- 										alt="User Avatar" class="img-circle" /> -->
											<!-- 								</span> -->
											<!-- 									<div class="chat-body clearfix"> -->
											<!-- 										<div class="header"> -->
											<!-- 											<small class=" text-muted"><span -->
											<!-- 												class="glyphicon glyphicon-time"></span>13 mins ago</small> <strong -->
											<!-- 												class="pull-right primary-font">Bhaumik Patel</strong> -->
											<!-- 										</div> -->
											<!-- 										<p>Lorem ipsum dolor sit amet, consectetur adipiscing -->
											<!-- 											elit. Curabitur bibendum ornare dolor, quis ullamcorper -->
											<!-- 											ligula sodales.</p> -->
											<!-- 									</div></li> -->



										</ul>
									</div>
									<div class="panel-footer">
										<div class="input-group">
											<input id="btn-input" type="text"
												class="form-control input-sm"
												placeholder="Type your message here..."></span> <span
												class="input-group-btn">
												<button class="btn btn-warning btn-sm" id="btn-chat">Send</button>
												<input type="text" id="memberId"
												value="${loginUserInfo.memberId}" style="display: none" />
												<input type="text" id="name" value="${loginUserInfo.name}"
												style="display: none" />
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>














			</div>
			<!-- col-sm-8 end -->

		</div>
		<!-- row -->





	</div>
	<!-- box end -->


	<jsp:include page="${pageScope.request.contextPath}/fragement/bot.jsp"></jsp:include>
</body>

<script>
	$(function(){
			$('#changeMemberInfoButton').click(function(){
				location.href="http://localhost:8080/StarBusterCinima/member/memberManagement/memberChangeInfo.jsp";
			})
			$('#memberRobot').click(function(){
				location.href="http://localhost:8080/StarBusterCinima/member/memberManagement/memberRobot.jsp";
			})
		
		var chatbtn = $('#btn-chat');
		var chatbox = $('ul');
		var chatSendValue= $('#btn-input');
		var userController;
		var robotController;

		function messageController(character,name,memberId,message){
			var d = new Date();
    		var time = d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds();
			if(character=='user'){
				
				userController ='<li class="right clearfix">'+
								'<span class="chat-img pull-right">' +

								'<img style="width:50px;height:50px;" src="'+

								'/StarBusterCinima/image/member/'+memberId+

								'" alt="User Avatar" class="img-circle" /></span><div class="chat-body clearfix">'+
								'<div class="header"><small class=" text-muted">'+
								'<span class="glyphicon glyphicon-time"></span>'+

								time+

								'</small><strong class="pull-right primary-font">'+

								name+

								'</strong></div><p>'+	

								message+

								'</p></div></li>';
			}else{
				
				robotController = '<li class="left clearfix"><span class="chat-img pull-left">'+

								  '<img style="width:50px;height:50px;" src="'+

								  '/StarBusterCinima/image/member/'+memberId+


								  '" alt="User Avatar" class="img-circle" /></span>'+
								  '<div class="chat-body clearfix"><div class="header"><strong class="primary-font">'+

								  name+

								  '</strong> <small class="pull-right text-muted">'+
								  '<span class="glyphicon glyphicon-time"></span>'+

								  time+

								  '</small></div><p>'+


								  message+


								  '</p></div></li>';
			}
		}
		
		
		
		
			//chat send button begin
			chatbtn.on('click',function(){

				messageController('user',$('#name').val(),$('#memberId').val(),chatSendValue.val());	
				chatbox.append(userController);
				

				
				
				

// 			$.get('http://localhost:8080/StarBusterCinima/smartRobot/'+chatSendValue.val(),function(datas){
// 				messageController('robot','robotAlice','	1',datas);
// 			})







			$.ajax({
				'type':'GET',
				'url':'/StarBusterCinima/smartRobot/'+$('#memberId').val()+'/'+$('#name').val()+'/'+chatSendValue.val()
				
				}).done(function(datas){
					console.log(datas);
				messageController('robot','Robot','0',datas);
				chatbox.append(robotController);
			})
			
			chatSendValue.val('');
			})
			

			//chat send button end


	<!-- 
// 				$.ajax({
// 					'type':'GET',
// 					'url':'travel.xml',
// 					'dataType':'xml'
// 				}).done(function(datas){
// 					var docFragment = $(document.createDocumentFragment());
// 					$(datas).find('Section').each(function(){
// 						var imgPath = $(this).find('img:first').text();
// 						var title = $(this).find('img:first').attr("description");
// 						var img = $("<img />").attr('src',imgPath).addClass('thumb img-responsive img-thumbnail');
// 						var a = $("<a></a>").attr({'href':imgPath,'data-lightbox':'park','data-title':title}).append(img);
// 						docFragment.append(a);
// 					})
// 					$('#show').html(docFragment);
// 				})
-->
	})
	</script>


</html>