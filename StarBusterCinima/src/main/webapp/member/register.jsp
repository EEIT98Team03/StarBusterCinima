<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<section>
				<h1 class="entry-title">
					<span>Sign Up</span>
				</h1>
				<hr>

				<form class="form-horizontal" method="post" name="MemberBean"
					id="signup" action='<c:url value="/member/register.controller"/>'>

					<div class="form-group">
						<label class="control-label col-sm-3">Email ID <span
							class="text-danger">*</span></label>
						<div class="col-md-5 col-sm-8">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-envelope"></i></span> <input type="email"
									class="form-control" name="email" id="email"
									placeholder="Enter your Email ID" value="" required>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3">Set Password <span
							class="text-danger">*</span></label>
						<div class="col-md-5 col-sm-8">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input type="password"
									class="form-control" name="password" id="password"
									placeholder="Choose password (5-15 chars)" value="" required>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3">Confirm Password <span
							class="text-danger">*</span></label>
						<div class="col-md-5 col-sm-8">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input type="password"
									class="form-control" name="cpassword" id="cpassword"
									placeholder="Confirm your password" value="" required>
							</div>
						</div>
					</div>

					<div class="form-group">

						<label class="control-label col-sm-3">Full Name <span
							class="text-danger">*</span></label>
						<div class="col-md-5 col-sm-8">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-phone"></i></span> <input type="text"
									class="form-control" name="name" id="name"
									placeholder="Enter your Name here" value="" required>
							</div>
						</div>
					</div>

					<div class="form-group">

						<label class="control-label col-sm-3">Birthday<span
							class="text-danger">*</span></label>
						<div class="col-md-5 col-sm-8">
							<div class="input-group">
								<span class="input-group-addon" id="basic-addon1"></span> <span
									class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
								<input type="date" class="form-control" name="registration_date"
									id="registration-date">
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3">Gender <span
							class="text-danger">*</span></label>
						<div class="col-md-8 col-sm-9">
							<label> <input name="gender" type="radio" value="Male"
								checked> Male
							</label> <label> <input name="gender" type="radio" value="Female">
								Female
							</label>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3">PhoneNumber <span
							class="text-danger">*</span></label>
						<div class="col-md-5 col-sm-8">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-phone"></i></span> <input type="text"
									class="form-control" name="phoneNumber" id="phoneNumber"
									placeholder="0987654321" value="" required>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3"> Address <span
							class="text-danger">*</span>
						</label>
						<div class="col-md-8 col-sm-9">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-phone"></i></span> <input type="text"
									class="form-control" name="address" id="address"
									placeholder="Please enter the current place of residence"
									value="" required>
							</div>
						</div>
					</div>

					<!--<div class="form-group">
                            <label class="control-label col-sm-3">
                                Profile Photo <br>
                                <small>(optional)</small>
                            </label>
                            <div class="col-md-5 col-sm-8">
                                <div class="input-group">
                                    <span class="input-group-addon" id="file_upload"><i class="glyphicon glyphicon-upload"></i></span>
                                    <input type="file" name="file_nm" id="file_nm" class="form-control upload" placeholder="" aria-describedby="file_upload">
                                </div>
                            </div>
                        </div>-->
					<!--<div class="form-group">
                            <label class="control-label col-sm-3">Security Code </label>
                            <div class="col-md-5 col-sm-8">
                                <div>

                                    <input type="text" name="captcha" id="captcha" class="form-control label-warning" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-offset-3 col-md-8 col-sm-9"><span class="text-muted"><span class="label label-danger">Note:-</span> By clicking Sign Up, you agree to our <a href="#">Terms</a> and that you have read our <a href="#">Policy</a>, including our <a href="#">Cookie Use</a>.</span> </div>
                        </div>-->
					<div class="form-group">
						<div class="col-xs-offset-3 col-xs-10">
							<input name="Submit" type="submit" value="Sign Up"
								class="btn btn-primary">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
		integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
		integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
		crossorigin="anonymous"></script>
	<script>
		$(function(){
			$('#cpassword').blur(function(){
				if($('#password').val()!=$('#cpassword').val()){
					alert('Please confirm your password again');
				}
			})
			
		})
	</script>
</body>
</html>
