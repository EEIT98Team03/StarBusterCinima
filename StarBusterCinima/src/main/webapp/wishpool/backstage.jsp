<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js'></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="jumbotron" style="border-radius: 30px;">
		<div class="container">
			<div class="dropdown">
				<button type="button" class="btn dropdown-toggle" id="dropdownMenu1"
					data-toggle="dropdown">
					<span class="glyphicon glyphicon-user"></span> Admin ${adminname}<span
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
											class="input-group-addon" value="電影名稱" style="width: 800px;">
										</select>
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-addon">目標票數</span>
										 <input type="text" class="form-control" id="inserttext">
									</div>
									<br>
									<button type="button" class="btn btn-default" id="sentinsertvote">原始按钮</button>
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
								style="margin-bottom: 10px;">
								<span class="glyphicon glyphicon-trash"></span>  刪除許願池電影
							</button>
							<div id="demo1" class="collapse">
								<form class="bs-example bs-example-form" role="form">
									<div class="input-group">
										<span class="input-group-addon"></span>
										<select class="VoteSelection01" class="input-group-addon" value="電影名稱" style="width: 800px;">										
										</select>
									</div>							
									<button type="button" class="btn btn-default" id="sentdeletevote">刪除</button>
								</form>
							</div>
						</td>
					</tr>
					<tr>
						<td>

							<button type="button" class="btn btn-primary"
								data-toggle="collapse" data-target="#demo2"
								style="margin-bottom: 10px;">
							<span class="glyphicon glyphicon-pencil"></span>	修改達標票數 

							</button>

							<div id="demo2" class="collapse">
								<form class="bs-example bs-example-form" role="form">
									<div class="input-group">
										<span class="input-group-addon"></span><select class="VoteSelection01"
											class="input-group-addon" value="電影名稱" style="width: 1200px;">										
										</select>
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-addon">目標票數</span> <input type="text"
											class="form-control">
									</div>
									<br>
									<button type="button" class="btn btn-default">原始按钮</button>
								</form>
							</div>

						</td>

					</tr>
					<tr>
						<td>
							<button type="button" class="btn btn-primary"
								data-toggle="collapse" data-target="#demo3"
								style="margin-bottom: 10px;">
								新增許願池電影 <span class="glyphicon glyphicon-plus"></span>
							</button>

							<div id="demo3" class="collapse">
								<form class="bs-example bs-example-form" role="form">
									<div class="input-group">
										<span class="input-group-addon"></span><select class="VoteSelection01"
											class="input-group-addon" value="電影名稱" style="width: 800px;">									
										</select>
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-addon">目標票數</span> <input type="text"
											class="form-control">
									</div>
									<br>
									<button type="button" class="btn btn-default">原始按钮</button>
								</form>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>


	<script>
	
	$(function(){
		
		$('#insertvoteitem').click(function(){
			$.ajax({ //get film data				
				url: "../../vote/controller/votemgmt.controller/LoadData1",
				type: "GET", 
				dataType: "text", 
				success: function(data) { 
					//turn data into array
					r = jQuery.parseJSON(data);	
					
					for(var i=0 ; i< r.length ; i++){					
				   		$('.VoteSelection01:eq(0)').append($("<option></option>").attr("value",r[i][0]).text(r[i][1]));
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
			url: "../../vote/controller/votemgmt.controller/InsertFilmIntoWishPool",
			type: "GET", 
			dataType: "text", 
			data:{"FilmID" : $('select :selected').val(),"VoteGoal":"100"},
			success: function(data) { 
				//turn json data into array
			
				
				console.log("sentinsertvote success")
			},
			error: function() { 
		  	 	console.log("parse error"); 
			} 
		});//end ajax#
	});


	$('#sentdeletevote').click(function(){
		alert("asdf")
		$.ajax({ //get film data						
			url: "../../vote/controller/votemgmt.controller/DeleteFilmInWishPool",
			type: "GET", 
			dataType: "text", 
			data:{"FilmID" : /*$('select :selected').val()*/ "101"},
			success: function(Jdata) { 
				//turn json data into array
				var eachFilm = jQuery.makeArray(Jdata); 						
				for(var i=0 ; i<Object.keys(Jdata).length ; i++){
			   			
				}				
			},
			error: function() { 
		  	 	console.log("parse error"); 
			} 
		});//end ajax#
	});
	
	
	
	
	</script>
</body>
</html>