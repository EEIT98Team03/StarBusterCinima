<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberChangeInfo</title>
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
</head>
<body>
	<jsp:include page="${pageScope.request.contextPath}/fragement/top.jsp"></jsp:include>
	<input type="text" id="memberId" value="${loginUserInfo.memberId}" style="display:none" />
<%-- 	<input type="text" id="name" value="${loginUserInfo.name}" style="display:none" /> --%>


	<div class="box">
	
		<div id="boxTitle" style="color: white; font-size: 250%; text-align: center;">會員資料專區</div>

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
						<td><button type="button"  id="changeMemberInfoButton" class="btn btn-info btn-lg"  style="background-color:#21BABA;margin-top:50px">&nbsp;&nbsp;修改基本資料&nbsp;&nbsp;</button>
							<button type="button" id="memberRobot" class="btn btn-info btn-lg"  style="background-color:#21BABA;margin-top:50px">使用機器人幫手</button>
							
						<!-- Button trigger modal -->
							<button type="button" id="" class="btn btn-info btn-lg"  style="background-color:#21BABA;margin-top:10px" data-toggle="modal"
								data-target="#exampleModal">&nbsp;&nbsp;重新設置密碼&nbsp;&nbsp;</button> <!-- Modal -->


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
			<div class="col-sm-8">

				<h2 class="entry-title">
					<span>更新個人資料</span>
				</h2>
				<hr>

				<form class="form-horizontal" enctype="multipart/form-data"
					method="post" name="MemberBean" id="signup"
					action='<c:url value="/member/registerMemberChange.controller"/>'>
					<input type="text" name="memberId" id="memberId" value="${loginUserInfo.memberId}" style="display:none" />
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<div class="form-group">

						<label class="control-label col-sm-3">姓名:<span
							class="text-danger">*</span></label>
						<div class="col-md-5 col-sm-8">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-user"></i></span> <input type="text"
									class="form-control" name="name" id="name"
									placeholder="Enter your Name here" value="${loginUserInfo.name}" required>
							</div>
						</div>
					</div>
					<p>&nbsp;</p>
					
					<div class="form-group">
						<label class="control-label col-sm-3">性別:<span
							class="text-danger">*</span></label>
						<div class="col-md-8 col-sm-9">

							<label> <input name="gender" type="radio" value="Man" 
							
							<c:if test="${loginUserInfo.gender=='Man'}">
							checked='checked'
							</c:if>
							> Man
							
							
							</label> <label> <input name="gender" type="radio" value="Woman"
							<c:if test="${loginUserInfo.gender=='Woman'}">
							checked='checked'
							</c:if>
							
							>Woman
							</label>
						</div>
					</div>
					
					<p>&nbsp;</p>
					
					<div class="form-group">

						<label class="control-label col-sm-3">生日:<span
							class="text-danger">*</span></label>
						<div class="col-md-5 col-sm-8">
							<div class="input-group">

								<span class="input-group-addon"><i
									class="glyphicon glyphicon-calendar"></i></span> <input type="date"
									class="form-control" name="registration_date"
									id="registration-date" value="${loginUserInfo.registration_date}">
							</div>
						</div>
					</div>

					<p>&nbsp;</p>
					
					<div class="form-group">
						<label class="control-label col-sm-3">電話:<span
							class="text-danger">*</span></label>
						<div class="col-md-5 col-sm-8">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-phone"></i></span> <input type="text"
									class="form-control" name="phoneNumber" id="phoneNumber"
									placeholder="0987654321" value="${loginUserInfo.phoneNumber}" required>
							</div>
						</div>
					</div>

					<p>&nbsp;</p>
					
					<div class="form-group">
						<label class="control-label col-sm-3">Email:<span
							class="text-danger">*</span></label>
						<div class="col-md-5 col-sm-8">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-envelope"></i></span> <input type="email"
									class="form-control" name="email" id="email"
									value="${loginUserInfo.email}" readonly>
							</div>
						</div>
						<span id="emailError"></span>
					</div>
					
					<p>&nbsp;</p>
					
					<div class="form-group">
						<label class="control-label col-sm-3">住址:<span
							class="text-danger">*</span>
						</label>
						<div class="col-md-8 col-sm-9">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-home"></i></span> <input type="text"
									class="form-control" name="address" id="address"
									placeholder="Please enter the current place of residence"
									value="${loginUserInfo.address}" required>
							</div>
						</div>
					</div>

					<p>&nbsp;</p>

<!-- 					<div class="form-group"> -->
<!-- 						<label class="control-label col-sm-3">Set Password <span -->
<!-- 							class="text-danger">*</span></label> -->
<!-- 						<div class="col-md-5 col-sm-8"> -->
<!-- 							<div class="input-group"> -->
<!-- 								<span class="input-group-addon"><i -->
<!-- 									class="glyphicon glyphicon-lock"></i></span> <input type="password" -->
<!-- 									class="form-control" name="password" id="password" -->
<!-- 									placeholder="Choose password (5-15 chars)" value="" required> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->

<!-- 					<p>&nbsp;</p> -->

<!-- 					<div class="form-group"> -->
<!-- 						<label class="control-label col-sm-3">Confirm Password <span -->
<!-- 							class="text-danger">*</span></label> -->
<!-- 						<div class="col-md-5 col-sm-8"> -->
<!-- 							<div class="input-group"> -->
<!-- 								<span class="input-group-addon"><i -->
<!-- 									class="glyphicon glyphicon-lock"></i></span> <input type="password" -->
<!-- 									class="form-control" name="cpassword" id="cpassword" -->
<!-- 									placeholder="Confirm your password" value="" required> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->

<!-- 					<p>&nbsp;</p> -->

					<div class="form-group">
						<label class="control-label col-sm-3">大頭貼:<br>
<!-- 							<small>(optional)</small> -->
						</label>
						<div class="col-md-5 col-sm-8">
							<div class="input-group">
								<span class="input-group-addon" id="file_upload"><i
									class="glyphicon glyphicon-floppy-disk"></i></span> <input type="file"
									name="file_nm" id="file_nm" class="form-control upload"
									placeholder="" aria-describedby="file_upload">
							</div>
						</div>
					</div>
					<p>&nbsp;</p>						
					<div class="form-group">
						<div class="col-xs-offset-3 col-xs-10" style="margin-right:250px;">
							<input name="Submit" type="submit" value="確定更改"
								class="btn btn-primary">
						</div>
					</div>
				</form>



				<!--  -->








			</div>
		</div>



<!-- 		<div class="memberInfoBox"> -->

			<%-- 	<img src='/StarBusterCinima/image/member/${loginUserInfo.memberId}' style="height: 65px; width: 77px; margin-bottom: 0px; margin-left: 0px;"> --%>
			
<!-- 		</div> -->

<!-- 		<div style="border:1px solid red;width:300px;height:300px;display:block;flow:right;"> -->
			
<!-- 		</div> -->
	



	</div>



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
		//loadMemberInfo
		
		
		
		
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
		
		
		
		
		
		
		
		
		
		
		
	})
	
	

</script>


</html>