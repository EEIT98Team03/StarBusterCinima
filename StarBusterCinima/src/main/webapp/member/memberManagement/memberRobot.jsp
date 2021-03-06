<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberRobot</title>
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
.box {
	background-color: #3C3C3C;
	margin: 0px auto;
	width: 95%;
	height: 1300px;
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
	font-size:140%;
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
	margin:-55px 120px 10px 85px;
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
margin-top:150px
}
.modal-content {
    margin-top: 180px;
    position: relative;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #999;
    border: 1px solid rgba(0,0,0,.2);
    border-radius: 6px;
    outline: 0;
    -webkit-box-shadow: 0 3px 9px rgba(0,0,0,.5);
    box-shadow: 0 3px 9px rgba(0,0,0,.5);
}
</style>
</head>
<body>
	<jsp:include page="${pageScope.request.contextPath}/fragement/top.jsp"></jsp:include>
	<input type="text" id="memberId" value="${loginUserInfo.memberId}" style="display:none" />
<%-- 	<input type="text" id="name" value="${loginUserInfo.name}" style="display:none" /> --%>

	<!-- box begin -->
	<div class="box">
<%-- 	<a id="logOut" href='<c:url value="/member/logout.jsp"/>'>用戶登出</a> --%>
		<div id="boxTitle"
			style="color: white; font-size: 250%; text-align: center;">會員專區</div>
		<!-- row -->
		<div class="row">
			<!-- col-sm-2 begin -->
			<div class="col-sm-2">
				<img src='/StarBusterCinima/image/member/${loginUserInfo.memberId}'>
				<hr style="border:0.5px solid white">
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
								
							<button type="button" id="memberOrder" class="btn btn-info btn-lg"  style="background-color:#21BABA;margin-top:10px;width: 40%"> 查詢訂票記錄 </button>

							<div class="modal fade" id="exampleModal" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog" role="document">
<!-- 									<p>&nbsp;</p> -->
<!-- 									<p>&nbsp;</p> -->
<!-- 									<p>&nbsp;</p> -->
<!-- 									<p>&nbsp;</p> -->
<!-- 									<p>&nbsp;</p> -->
<!-- 									<p>&nbsp;</p> -->
<!-- 									<p>&nbsp;</p> -->
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

				</table>
			</div>
			<!-- col-sm-2 end -->

			<!-- col-sm-8 begin -->
			<div id="rightBox" class="col-sm-8">



				<div class="container">
					<c:if test="${not empty loginUserInfo}">
						<a id="robotImageAelement" type="button" data-toggle="collapse" href="#collapseOne"><img
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
										<ul id="chatContext" class="chat">
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
									<div id="caht-footer" class="panel-footer">
										<div class="input-group">
											<input id="btn-input" type="text"
												class="form-control input-sm"
												placeholder="Type your message here..."></span> <span
												class="input-group-btn">
												<button class="btn btn-warning btn-sm" id="btn-chat">Send</button>
												<button class="btn btn-danger btn-sm" id="btn-clear">Clear</button>
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

				<div id="talkBox" style="display:none">
				<fieldset >
					<legend style="color:white">Choose your tickets</legend>
					<p style="color:white;font-size:18px">張數&nbsp;&nbsp;&nbsp;場次&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;廳次&nbsp;&nbsp;座位&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;付款方式</p>
					<div>
						<form name="ticketsForm">
							<select name="count" style="color:black">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
							<select name="time" style="color:black">
								<option value="10:00-12:00">10:00-12:00</option>
								<option value="12:00-14:00">12:00-14:00</option>
								<option value="14:00-16:00">14:00-16:00</option>
								<option value="16:00-18:00">16:00-18:00</option>
								<option value="16:00-18:00">16:00-18:00</option>
								<option value="18:00-20:00">18:00-20:00</option>
								<option value="20:00-22:00">20:00-22:00</option>
								<option value="22:00-24:00">22:00-24:00</option>
							</select>
							<select name="room" style="color:black">
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="C">C</option>
								<option value="D">D</option>
							</select>
							<select name="seatX" style="color:black">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
							<select name="seatY" style="color:black">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
							<select name="pay" style="color:black">
								<option value="現場付款">現場付款</option>
								<option value="信用卡付款">信用卡付款</option>
							</select>
							<input style="color:black" type="button" value="確定" id="ticketSubmit">
							<input style="color:black" type="button" value="取消" id="ticketCancel">
						</form>	
					</div>
					
				</fieldset>
				</div>
				
				<div id="talkCheckBox" style="display: none">
					<fieldset>
						<legend style="color: white">Choose your tickets</legend>
						<div>
								<input style="color: black" type="button" value="確定" id="ticketCheckSubmit"> 
								<input style="color: black" type="button" value="取消" id="ticketCloseSubmit">
						</div>
					</fieldset>
				</div>





				<div id="flagBox">
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
			$('#memberOrder').click(function(){
				location.href="http://localhost:8080/StarBusterCinima/member/memberManagement/memberBookingOrderHistory.jsp";
			})
			$('#robot').trigger('click');	
			var chatbtn = $('#btn-chat');
			var chatClear = $('#btn-clear');
			var chatbox = $('ul');
			var flagBox = $('#flagBox');
			var talkBox = $('#talkBox');
			var chatSendValue= $('#btn-input');
			var userController;
			var robotController;
			
			// 幫 a.abgne_gotoheader 加上 click 事件
			$('a.abgne_gotoheader').click(function(){
				// 讓捲軸移動到 0 的位置
// 				$('html, body').scrollTop(0);
				
			});
			
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
			
			$("input").keydown(function (event) {
			    if (event.which == 13) {
			    	chatbtn.trigger('click');
			    }
			});

			
			//chat message clear 
			chatClear.on('click',function(){
				chatbox.html('');
			})
			
//chat send button begin!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
chatbtn.on('click',function(){
			//auto 滑到最底
			$(".panel-body").animate({ scrollTop: $("#chatContext").height() }, 1200);
						
			 
			//if有內容輸入begin--------------------------------------------------------------------------------------	
			if(chatSendValue.val()==""){
				alert('請輸入內容');
			}else{
	
			var ticketsValue;//*****************************
			//按下確定後 隱藏表單並將資訊給機器人begin----------------------------------------
			$( "#ticketSubmit" ).click(function( event ) {
				$(".panel-body").animate({ scrollTop: $("#chatContext").height() }, 1200);
				event.preventDefault();
				event.stopImmediatePropagation();
				var time = $("select[name='time']").val();
				var room = $("select[name='room']").val();
				var seatX = $("select[name='seatX']").val();
				var seatY = $("select[name='seatY']").val();
				var pay = $("select[name='pay']").val();
// 				var temp={"time":time,"room":room,"seatX":seatX,"seatY":seatY,"pay":pay}
// 				ticketsValue = JSON.stringify(temp);
				$('#talkBox').css('display','none');
				//改變flag1
				flagBox.find(':input:nth-child(1)').val('true');
				ticketsValue = "時間:"+time+"廳次:"+room+"座位:"+seatX+"-"+seatY+"付款方式:"+pay;
				//機器人問使用者是否確定
				messageController('robot','Robot','0',"你想要購買的資訊如下:時間:"+time+"廳次:"+room+"座位:"+seatX+"-"+seatY+"付款方式:"+pay+"　　　您可點選確定或者取消，按下確定後系統將寄送明細資訊到您的*Email*","#D2E9FF");//robot
				chatbox.append(robotController);
				
				messageController('robot','Robot','0',"請在下方點選確定或者取消","#D2E9FF");//robot
				chatbox.append(robotController);
				$('#talkCheckBox').css('display','');
			});
			//按下確定後 隱藏表單並將資訊給機器人end-------------------------------------------
			
			//按下取消後 隱藏表單並回覆=>取消訂票，感謝你的諮詢begin---------------------------------------
			$('#ticketCancel').click(function(event){//步驟一取消
				$(".panel-body").animate({ scrollTop: $("#chatContext").height() }, 1200);
				event.preventDefault();
				event.stopImmediatePropagation();
				messageController('robot','Robot','0',"取消訂票，感謝您的諮詢","#D2E9FF");//robot
				chatbox.append(robotController);
				$('#talkCheckBox').css('display','none');
				$('#talkBox').css('display','none');
			})
			
			$('#ticketCloseSubmit').click(function(event){//步驟二取消
				$(".panel-body").animate({ scrollTop: $("#chatContext").height() }, 1200);
				event.preventDefault();
				event.stopImmediatePropagation();
				messageController('robot','Robot','0',"取消訂票，感謝您的諮詢","#D2E9FF");//robot
				chatbox.append(robotController);
				$('#talkCheckBox').css('display','none');
				$('#talkBox').css('display','none');
			})
			//按下取消後 隱藏表單並回覆=>取消訂票，感謝你的諮詢end------------------------------------------
			
			//按下確定後 隱藏表單並回覆=>感謝您預訂電影票，詳細訂購資訊將會寄送*Email*至您的信箱，即可現場取票付款begin-------
			$('#ticketCheckSubmit').click(function(event){
				$(".panel-body").animate({ scrollTop: $("#chatContext").height() }, 1200);
				event.preventDefault();
				event.stopImmediatePropagation();
				messageController('robot','Robot','0',"感謝您預訂電影票，詳細訂購資訊將會寄送*Email*至您的信箱，即可現場取票付款","#D2E9FF");//robot
				chatbox.append(robotController);
				$('#talkCheckBox').css('display','none');
				$('#talkBox').css('display','none');
				console.log($('#memberId').val());
				console.log(ticketsValue);
				
				//寄送email
				$.ajax({
					'type':'get',
					'url':'/StarBusterCinima/members/sendTicktiesInfo/memberId='+$('#memberId').val()+",info="+ticketsValue
				}).done(function(result){
					console.log(result);
				})
			})
			//按下確定後 隱藏表單並回覆=>感謝您預訂電影票，詳細訂購資訊將會寄送*Email*至您的信箱，即可現場取票付款end----------
			

			
			
			
			$('#changeMemberInfoButton').click(function(){
				location.href="http://localhost:8080/StarBusterCinima/member/memberManagement/memberChangeInfo.jsp";
			})
			$('#memberRobot').click(function(){
				location.href="http://localhost:8080/StarBusterCinima/member/memberManagement/memberRobot.jsp";
			})
			$('#memberOrder').click(function(){
				location.href="http://localhost:8080/StarBusterCinima/member/memberManagement/memberBookingOrderHistory.jsp";
			})

			
			
			//製造flag 五隻--------------------判斷對談式問答用
// 			var box=$(document.createDocumentFragment());
// 			for(var i=1;i<6;i++){//6為變數
// 			var flag=$('<input type="text" id="flag'+i+'" value="false" style="display:none">');
// 				box.append(flag);
// 			}
// 			flagBox.html(box);	
			//關鍵字  明天 訂購  電影 變形金剛
			//1.收尋明天變形金剛的電影有哪些 時間 場次 有哪些座位 或者無座位無場次無電影上映則取消 flag1
			//2.確定要訂購的話請輸入確定，過程中可輸入取消停止訂購 flag2
			//3.確定的話就問要什麼:時間 場次 座位 格式規定 時間=場次=座位= flag3
			//4.印出使用者輸入的資訊然後再問一次是否確定預購，給予圖片(機器繪圖)or寄送Email flag4
			//5.然後詢問付款方式，則可選擇要現場付款還是信用卡付款 flag5

			var userMessage = chatSendValue.val(); //使用者輸入訊息
			var memberId = $('#memberId').val();
			var name= $('#name').val();
			var messageColor="";
			//把匹配到的文字刪除	
			var temp1=userMessage.replace('明天','');
			var temp2=temp1.replace('訂購','');
			var temp3=temp2.replace('電影','');
				
			//收尋資料庫有什麼電影 ajax--------------db
			var array = ['變形金剛','玩命關頭','神力女超人'];
			//收尋資料庫有什麼電影 ajax--------------db
			
			
			if(userMessage.includes('明天') && userMessage.includes('訂購') && userMessage.includes('電影')){//if是對談式問答
				
			messageController('user',name,memberId,userMessage,"#D2E9FF");//user
			chatbox.append(userController);
				

				
					for(var i=0;i<array.length;i++){
						if(temp3.includes(array[i])){
// 						console.log(array[i]);//匹配到的電影名稱
						
						//匹配到的該 條件"電影" 開始收尋有沒有 條件"明天"的，撈出 哪段時間的場 有哪些座位ajax--------------db
// 						var time=['10:00-12:00','12:00-14:00','14:00-16:00','16:00-18:00','18:00-20:00','20:00-22:00','22:00-24:00'];
// 						var seat=[{}];
						//匹配到的該 條件"電影" 開始收尋有沒有 條件"明天"的，撈出 哪段時間的場 有哪些座位ajax--------------db
						messageController('robot','Robot','0',"搜尋到訂票電影資訊如下: 您可在聊天視窗下方 進行*購買*或者*取消* ","#D2E9FF");//robot
						chatbox.append(robotController);//robot 回覆
						$('#talkBox').css('display','');
						}
					}
			
			}else{//不是對談式問答
					messageController('user',name,memberId,userMessage,"");//user
					chatbox.append(userController);
					
					//到restfulController進行處理
					$.ajax({
						'type':'GET',
						'url':'/StarBusterCinima/smartRobot/'+memberId+'/'+name+'/'+userMessage
						}).done(function(datas){
						//機器人回覆內容印出
						messageController('robot','Robot','0',datas,messageColor);//robot
						chatbox.append(robotController);//robot 回覆
					})
			}
			
			chatSendValue.val('');//輸入框清除
			
			
			}
			//if有內容輸入end--------------------------------------------------------------------------------------
			
})
//chat send button end  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		
		
		
		
		//message css function begin --------------------------------------------------------------------------
		function messageController(character,name,memberId,message,messageColor){
		var d = new Date();
		var time = d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds();
		if(character=='user'){
			
			userController ='<li id="li" style="background-color:'+messageColor+'" class="right clearfix">'+
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
			
			robotController = '<li style="background-color:'+messageColor+'" class="left clearfix"><span class="chat-img pull-left">'+

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
		//message css function end ----------------------------------------------------------------------------	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	})
	</script>


</html>