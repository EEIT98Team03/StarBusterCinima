<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>vote</title>

<style>
div {
	color: white;
	border-style: solid;
	border-width: 1px;
	margin: 10px auto;
	padding: 10px;
	width: 70%
}
</style>
<!-- http://localhost:8080/jQuerySite/FirstServlet?name=Jack&age=20 -->
<!-- http://localhost:8080/StarBusterCinima/wishpool/VoteController?FilmID=F -->
</head>
<body style="background-color: black">


	<div id="FilmWall">
		<ul class="list">
			<li><a  href="#"><img src=""></a></li>
			<li><a  href="#"><img src=""></a></li>
			<li><a  href="#"><img src=""></a></li>
			<li><a  href="#"><img src=""></a></li>
			<li><a  href="#"><img src=""></a></li>
		</ul>
	</div>

	<div id="FilmRate">
		<div>
			<a> 電影名稱 ${film.name}</a>,<a> 電影名稱 ${film.name} </a>,<a> 電影名稱
				${film.name} </a>
		</div>
		<div>
			<a> 票數 ${film.BallotCount} </a>,<a> 票數 ${film.BallotCount} </a>,<a>
				票數 ${film.BallotCount} </a>
		</div>

	</div>
	<div id="Vote">
		<h2></h2>
		<select name="FileName">
			<option>${film.name}</option>
			<option>${film.name}</option>
			<option>${film.name}</option>
		</select>> 
		
		<span id="#show"></span>
		<input type="submit" value="投票" id="vote">
	</div>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(function(){

		$('#vote').click(function(){
			alert("asdf");
			$.get("VoteController",{"FilmID":"F0001"},function(data){
				alert(data);
			})
		  })
		  
		

	});
</script>
</body>
</html>