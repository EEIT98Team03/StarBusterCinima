<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.chat {
	list-style: none;
	margin: 0;
	padding: 0;
	background-color:	#E0E0E0;
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
	color: #777777;
}

.panel .slidedown .glyphicon, .chat .glyphicon {
	margin-right: 5px;
}

.panel-body {
	overflow-y: auto;
	height: 450px;
	
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


</style>
<link rel="stylesheet" type="text/css" href="/StarBusterCinima/css/home.css"></link>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" -->
<!-- 	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" -->
<!-- 	crossorigin="anonymous"> -->
<!-- 	<link rel="stylesheet" type="text/css" href="../css/robotMenu.css"> -->
</head>
<body>
<jsp:include page="${pageScope.request.contextPath}/fragement/top.jsp"></jsp:include>
	<div class="container">
		<c:if test="${not empty loginUserInfo}">
		<a  type="button" data-toggle="collapse"  href="#collapseOne"><img id="robot" src='../images/robot.png' style="height: 65px; width: 77px; margin-bottom: 0px;margin-left: 0px;background:black"></a>
		</c:if>
		<div class="row">
			<div class="col-md-5">
				<div class="panel panel-primary">
					<div class="panel-heading" id="accordion">
<!-- 						<span class="glyphicon glyphicon-comment"></span> -->
						機器人問答<div class="btn-group pull-right">
						
<!-- 							<a type="button" class="btn btn-default btn-xs" -->
<!-- 								data-toggle="collapse" data-parent="#accordion" -->
<!-- 								href="#collapseOne"> <span -->
<!-- 								class="glyphicon glyphicon-chevron-down"></span> -->
<!-- 							</a> -->
						</div>
					</div>
					<div class="panel-collapse collapse" id="collapseOne">
						<div class="panel-body">
							<ul  class="chat">
									<li class="left clearfix">
<!-- 									<span class="chat-img pull-left"></span> -->
<!-- 										<div class="chat-body clearfix"> -->
											<div class="header">
												<strong class="primary-font">StarBusterCinima Robot</strong> 
												<small
												class="pull-right text-muted"> <span
												class="glyphicon glyphicon-time"></span>1 mins ago
											</small>
<!-- 										</div> -->
										<p>歡迎使用StarBusterCinima機器人小助手，如有問題本機器人將替你解答</p>
									</div></li>
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
								<input id="btn-input" type="text" class="form-control input-sm"
									placeholder="Type your message here..."></span>
								<span class="input-group-btn">
									<button class="btn btn-warning btn-sm" id="btn-chat">Send</button>
								<input type="text" id="memberId" value="${loginUserInfo.memberId}" style="display:none" />
								<input type="text" id="name" value="${loginUserInfo.name}" style="display:none" />		
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
<!-- </div> -->
<!-- 	<script -->
<!-- 	 	 src="../js/jquery-3.2.1.min.js"></script> -->
<!-- 	<script -->
<!-- 		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" -->
<!-- 		integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" -->
<!-- 		crossorigin="anonymous"></script> -->
<!-- 	<script -->
<!-- 		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" -->
<!-- 		integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" -->
<!-- 		crossorigin="anonymous"></script> -->
<!-- 	<script> -->
<!-- </script> -->


	<script>
	$(function(){
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
	<jsp:include page="${pageScope.request.contextPath}/fragement/bot.jsp"></jsp:include>
</body>
</html>