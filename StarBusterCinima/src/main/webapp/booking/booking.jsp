<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
 		  overflow-x:hidden; 
	}
	.inblack{
		background-color: black;
		height: 100px;
		border-bottom: 1px solid white;
		margin: 20px;
		color:white;
	}
</style>
</head>

<body>
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