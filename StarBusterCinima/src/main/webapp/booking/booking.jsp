<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://libs.useso.com/js/jquery/1.7.2/jquery.min.js"></script>
<style>
html,body{height: 100%;margin:0 auto;}
	#divPink{
		background-color:pink;
		position: absolute;
		width: 300px;
		height: 100%;
		z-index:1;
	}
	#divblack{
		border-right:8px solid #20B7B7;
	margin-left:50px;
		background-color:black;
		 position: absolute;
/* 		  top: 10px; */
          left: 0px; 
		  width: 300px;
		  height: 100%;
		  z-index: 2;
	}
	#between{
		  height: 100%;
		  overflow: auto;
/*  		  overflow-y:hidden;  */
	}
	.inblack{
		background-color: black;
		height: 100px;
		border-bottom: 1px solid #20B7B7;
		margin: 20px;
		color:white;
	}
	#between::-webkit-scrollbar {display:none}
</style>
</head>

<body>
<form method="get" action='<c:url value="/booking/booking.controller" />' >
	<tr>
		<td><input type="text" name="ticketOrderID" value="${param.filmId}"/></td>
	</tr>
	<tr>
		<td><input type="text" name="ticketOrderID" value="${param.ticketOrderID}"/></td>
	</tr>
	<tr>
		<td><input type="text" name="ticketOrderDate" value="${param.ticketOrderDate}"/></td>
	</tr>
	<tr>
		<td><input type="text" name="ticketOrderAmount" value="${param.ticketOrderAmount}"/></td>
	</tr>
	<tr>
		<td><input type="text" name="memberId" value="${param.memberId}"/></td>
	</tr>
	<tr>
		<td><input type="text" name="filmId" value="${param.filmId}"/></td>
	</tr>
	<tr>
		<td><input type="text" name="ticketState" value="${param.ticketState}"/></td>
	</tr>
	<tr>
		<td><input type="text" name="ticketCount" value="${param.ticketCount}"/></td>
	</tr>
	<tr>
		<td><input type="text" name="seatNumber" value="${param.seatNumber}"/></td>
	</tr>

	<tr>
		<td><input type="submit" value="" ></td>
	</tr>
</form>
123
	<div id="divblack">
		<div id="between">
			<div class="inblack" >123</div>
			<div class="inblack" ></div>
			<div class="inblack" ></div>
			<div class="inblack" ></div>
			<div class="inblack" ></div>
			<div class="inblack" ></div>
			<div class="inblack" ></div>
			<div class="inblack" ></div>
			<div class="inblack" ></div>
			<div class="inblack" ></div>
			<div class="inblack" ></div>
			<div class="inblack" ></div>
			<div class="inblack" ></div>
			<div class="inblack" ></div>
			<div class="inblack" ></div>
			<div class="inblack" ></div>
		</div>
	</div>
	
<!-- 	<div id="divPink"> -->
		
<!-- 	</div> -->
	
	
	
	<script type="text/javascript">
// 	$(document).ready(function() {
// // 		alert("test");

		

// 	});

	$(document).ready(function(){
		$('#divblack').click(function(){
			$('#divPink').animate({
				"left":"300px"
			},400,function(){
				
			});
		});
		
	});

	</script>
</body>
</html>