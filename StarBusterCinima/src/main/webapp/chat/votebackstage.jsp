<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vote Backstage</title>

<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js'></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.VoteSelection01 {
	width: 1200px;
}
#do{
	margin-left:5%;
	margin-top:10% ;
	width:90%;
}
.menu {
	width: 100%;
	overflow: auto;
	list-style-type: none;
	margin-top: 30px;
	color: white;
}

.menu li {
	float: left;
	width: 7em;
	font-size: 20px;
	text-align: center;
}

.menu a {
	color: white;
}
.navbar-header span{
color: white;
}
body {
	margin: 0;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
	background-image: url("/StarBusterCinima/images/adminBackground.jpg");
	height:auto;
	padding-top: 70px;

}

.affix {
	padding: 0px;
	-webkit-transition: padding 0.2s linear;
	-moz-transition: padding 0.2s linear;
	-o-transition: padding 0.2s linear;
	transition: padding 0.2s linear;
}

.affix-top {
	padding-top: 15px;
	padding-bottom: 15px;
	-webkit-transition: padding 0.5s linear;
	-moz-transition: padding 0.5s linear;
	-o-transition: padding 0.5s linear;
	transition: padding 0.5s linear;
}
</style>
</head>
<body>


	<!-- Begin Navbar -->
	<div id="nav">
		<div class="navbar navbar-inverse navbar-fixed-top" data-spy="affix"
			data-offset-top="100">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/StarBusterCinima/adminstrator/adminLogout.jsp"><img style="width: 132px"
						class="img-responsive logo" src="/StarBusterCinima/images/SB01.png" alt=""></a>
				</div>

				<div id="navbar" class="collapse navbar-collapse">
					<ul class="menu">
						<li class="active"><a href="#">攔截問答管理</a></li>
						<li><a href="/StarBusterCinima/chat/robotKnowledge.jsp">智識庫管理</a></li>
						<li><a href="/StarBusterCinima/chat/robotChart.jsp">查看統計報表</a></li>
						<li><a href="/StarBusterCinima/chat/robotAdManage.jsp">廣告管理</a></li>
						<li><a href="/StarBusterCinima/chat/filmsection.jsp">電影場次管理</a></li>
						<li><a href="/StarBusterCinima/chat/votebackstage.jsp">活動管理</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.contatiner -->
		</div>
	</div>
	<!-- Begin Navbar -->
	
	
	
	
	<div class="jumbotron" style="border-radius: 30px;" id="do">
	
		<div class="container">
			<div class="dropdown">
				<button type="button" class="btn dropdown-toggle" id="dropdownMenu1"
					data-toggle="dropdown">
					<span class="glyphicon glyphicon-user"></span> ${AdministratorInfo.name}<span
						class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu"
					aria-labelledby="dropdownMenu1">
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">ㄎㄎ</a></li>
					<li role="presentation" class="divider">ㄎㄎ</li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">登出</a></li>
				</ul>
			</div>
			<table class="table">
				<caption>你要的都在這裡</caption>
				<thead>
					<tr>
						<th>
							<button type="button" class="btn btn-primary"
								data-toggle="collapse" data-target="#demo"
								style="margin-bottom: 10px;" id="insertvoteitem">
							<span class="glyphicon glyphicon-plus"></span>	新增許願池電影 
							</button>

							<div id="demo" class="collapse">
								<form class="bs-example bs-example-form" role="form">
									<div class="input-group">
										<span class="input-group-addon"></span><select class="VoteSelection01"
											class="input-group-addon" value="電影名稱" ">
										</select>
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-addon">目標票數</span>
										 <input type="text" class="form-control" id="inserttext">
									</div>
									<br>
									<button type="button" class="btn btn-default" id="sentinsertvote">新增</button>
								</form>
							</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<button type="button" class="btn btn-primary"
								data-toggle="collapse" data-target="#demo1"
								style="margin-bottom: 10px;" id="deletefilm">
								<span class="glyphicon glyphicon-trash"></span>  刪除許願池電影
							</button>
							<div id="demo1" class="collapse">
								<form class="bs-example bs-example-form" role="form">
									<div class="input-group">
										<span class="input-group-addon"></span>
										<select class="VoteSelection01" class="input-group-addon" value="電影名稱" ">										
										</select>
									</div>		
									<br>			
									<button type="button" class="btn btn-default" id="sentdeletevote">刪除</button>
								</form>
							</div>
						</td>
					</tr>
					<tr>
						<td>

							<button type="button" class="btn btn-primary"
								data-toggle="collapse" data-target="#demo2"
								style="margin-bottom: 10px;" id="updateGoal">
							<span class="glyphicon glyphicon-pencil"></span>	修改達標票數 

							</button>

							<div id="demo2" class="collapse">
								<form class="bs-example bs-example-form" role="form">
									<div class="input-group">
										<span class="input-group-addon"></span><select class="VoteSelection01"
											class="input-group-addon" value="電影名稱" >										
										</select>
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-addon">目標票數</span> <input type="text"
											class="form-control">
									</div>
									<br>
									<button type="button" class="btn btn-default" id="doupdateGoal">送出</button>
								</form>
							</div>

						</td>

					</tr>
					<tr>
						<td>
							<button type="button" class="btn btn-primary"
								data-toggle="collapse" data-target="#demo3"
								style="margin-bottom: 10px;" id="VoteALot">
							<span class="glyphicon glyphicon-open"></span>	許願池批量投票 
							</button>

							<div id="demo3" class="collapse">
								<form class="bs-example bs-example-form" role="form">
									<div class="input-group">
										<span class="input-group-addon"></span>
										<select class="VoteSelection01"
											class="input-group-addon" value="電影名稱" ">									
										</select>
									</div>
									<br>
									<div id="MemberData">
										
										
									</div>
									<br>
									<button type="button" class="btn btn-default" id="doVoteALot">Go</button>
								</form>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>


	<script>
	//-------------------------------------------------新增電影到許願池-------------------------------------------------//
	$(function(){		
		$('#insertvoteitem').click(function(){
			console.log("aaaa")
			$.ajax({ //get film data				
				url: "votemgmt.controller/LoadData1",
				type: "GET", 
				dataType: "text", 
				success: function(data) { 
					//turn data into array
					r = jQuery.parseJSON(data);	
					console.log($('.VoteSelection01:eq(0)').length)
					console.log(r.length)
					if(r.length>$('.VoteSelection01:eq(0)>option').length){
						for(var i=0 ; i< r.length ; i++){		
//	 						console.log(r[i][0])
					   		$('.VoteSelection01:eq(0)').append($("<option></option>").attr("value",r[i][0]).text(r[i][1]));
						}	
					}
							
				},
				error: function() { 
			  	 	console.log("json parse error"); 
				} 
			});//end ajax#
		});			
	});	
	$('#sentinsertvote').click(function(){	
		console.log("sentinsertvote start")	
		$.ajax({ //get film data						
			url: "votemgmt.controller/InsertFilmIntoWishPool",
			type: "GET", 
			dataType: "text", 
			data:{"FilmID" : $('select :selected').val(),"VoteGoal":"100"},
			success: function(data) { 
				//turn json data into array				
				$('select :selected').remove();
				console.log($('select :selected').val())
			},
			error: function() { 
		  	 	console.log("parse error"); 
			} 
		});//end ajax#
	});
	//-------------------------------------------------刪除許願池電影-------------------------------------------------//
	
	$('#deletefilm').click(function(){
		console.log("deletefilmfromwishpool start")
		$.ajax({ //get film data						
			url: "vote.controller/selectall",
			type: "GET", 
			dataType: "text",			
			success: function(data) { 
				//turn json data into array				 
				r = jQuery.parseJSON(data);
				console.log($('.VoteSelection01:eq(1)').length)
				console.log(r.length)
				
				if(r.length>$('.VoteSelection01:eq(1)>option').length){
					for(var i=0 ; i< r.length ; i++){
				   		$('.VoteSelection01:eq(1)').append($("<option></option>").attr("value",r[i][0]).text(r[i][1]));
					}
				}						
			},
			error: function() { 
		  	 	console.log("parse error"); 
			} 
		});//end ajax#
	});
	$('#sentdeletevote').click(function(){
		console.log("delete start")
		$.ajax({ //get film data						
			url: "votemgmt.controller/DeleteFilmInWishPool",
			type: "GET", 
			dataType: "text", 
			data:{"FilmID" : $('select :selected').val()},
			success: function(data) { 
				console.log("delete success"); 
				$('select :selected').remove();
				console.log($('select :selected').val())
			},
			error: function() { 
		  	 	console.log("parse error"); 
			} 
		});//end ajax#
	});
	//-------------------------------------------------修改電影目標票數-------------------------------------------------//
	
	$('#updateGoal').click(function(){
		console.log("updateGoal start")
		$.ajax({ //get film data						
			url: "vote.controller/selectall",
			type: "GET", 
			dataType: "text",			
			success: function(data) { 
				//turn json data into array		
				console.log(data); 
				r = jQuery.parseJSON(data);	
				
				for(var i=0 ; i< r.length ; i++){		

			   		$('.VoteSelection01:eq(2)').append($("<option></option>").attr("value",r[i][0]).text(r[i][1]));
				}				
			},
			error: function() { 
		  	 	console.log("parse error"); 
			} 
		});//end ajax#
	});
	
	$('#doupdateGoal').click(function(){
		console.log("doupdateGoal start")
		$.ajax({ 					
			url: "votemgmt.controller/UpdateVoteGoal",
			type: "GET", 
			data:{"FilmID" : $('select :selected').val(),"VoteGoal":200},
			dataType: "text",			
			success: function() { 				
				
			},
			error: function() { 
		  	 	console.log("parse error"); 
			} 
		});//end ajax#
	});
	
	
	//-------------------------------------------------批量投票-------------------------------------------------//
	
	$('#VoteALot').click(function(){		
		$.ajax({ //get member data						
			url: "votemgmt.controller/VoteALot",
			type: "GET", 
			dataType: "text", 			
			success: function(data) { 
				//turn json data into array				
				r = jQuery.parseJSON(data);
				for(var i = 0; i<r.length;i++){
					console.log(r[i].memberId)
					console.log(r[i].name)
					var temp = $('#MemberData');
		
					$('#MemberData').append($('<input type="checkbox"/>').val(r[i].memberId));
					
					$('#MemberData').append($("<label></lebel>").text(r[i].name));
				}
			},
			error: function() { 
		  	 	console.log("parse error"); 
			} 
		});//end ajax#
		$.ajax({ //get film data						
			url: "vote.controller/selectall",
			type: "GET", 
			dataType: "text", 			
			success: function(data) { 
				//turn json data into array				
				r = jQuery.parseJSON(data);
				for(var i = 0; i<r.length;i++){
					console.log(r[i])
					$('.VoteSelection01:eq(3)').append($("<option></option>").attr("value",r[i][0]).text(r[i][1]));
				}
			},
			error: function() { 
		  	 	console.log("parse error"); 
			} 
		});//end ajax#	
	});		

	$('#doVoteALot').on("click",function(){
		console.log("doVoteALot start");
		var memberId=new Array();
		$( "input:checked" ).each(function () {
			memberId.push(parseInt($(this).val()));		    
		});
		console.log(memberId);
		console.log(memberId.length);
		console.log();
		
		console.log($( "input:checked" ).val());	
		$.ajax({ 				
			url: "votemgmt.controller/DoVoteALot",
			type: "GET", 
			data:{"FilmID" : 100,"memberId":memberId} ,
			dataType: "text", 			
			success: function(data) { 
				console.log("doVoteALot success");		

			},
			error: function() { 
		  	 	console.log("parse error"); 
			} 
		});//end ajax#			
	});
	
	
	
	
	
	
	
	</script>
</body>
</html>