<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Abril+Fatface|Fredoka+One"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" />
<link rel="stylesheet" href="/StarBusterCinima/css/bootstrap.min.css">
<link rel="stylesheet" href="/StarBusterCinima/css/lightbox.css">
<style>
/* CSS used here will be applied after bootstrap.css 
Ref: http://www.bootply.com/d8RMa03wW7
*/
html, body {
	height: 100%;
	padding-top: 70px;
	font-family: 'Fredoka One', cursive;
	font-family: 'Abril Fatface', cursive;
}

section {
	height: calc(90% - 50px);
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
body{
	background-image: url("/StarBusterCinima/images/adminBackground.jpg");
	height:auto;
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
					<a class="navbar-brand" href="#"><img style="width: 132px"
						class="img-responsive logo"
						src="/StarBusterCinima/images/SB01.png" alt=""></a>
				</div>
				<div id="navbar" class="collapse navbar-collapse">
					<ul class="menu">
						<li class="active"><a href="/StarBusterCinima/chat/robotKnowledge.jsp">攔截問答管理</a></li>
						<li><a href="/StarBusterCinima/chat/robotKnowledge.jsp">智識庫管理</a></li>
						<li><a href="#">查看統計報表</a></li>
						<li><a href="/StarBusterCinima/chat/robotAdManage.jsp">廣告管理</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.contatiner -->
			<div style="width:100%;height:100%;color:#21BABA;font-size:18px">
				管理員:&nbsp;&nbsp;&nbsp;${AdministratorInfo.name}&nbsp;&nbsp;
			</div>	
		</div>
	</div>
	<!-- Begin Navbar -->
	
	


	<div style="width:80%;margin:0px auto;">
		<div id="chartContainer1" style="height: 500px; width:40%;margin-right:300px;float:left"></div>
		<div id="chartContainer2" style="height: 500px; width:40%;float:none"></div>
	</div>
		<div id="chartContainer3" style="height: 500px; width:80%;margin:50px auto;">	</div>
</body>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
// $(function(){
// 	var jsonValue;
// 	$.ajax({
// 		'type':'get',
// 		'url':'/StarBusterCinima/charts/BoyGirlCount'
// 	}).done(function(datas){
// 		jsonValue=JSON.stringify(datas);
// 		console.log(jsonValue);
// 	})
// })
$(function(){
	//BoyGirlCount
	$.ajax({
		'type':'get',
		'url':'/StarBusterCinima/charts/BoyGirlCount'
	}).done(function(datas){
		//JSON.stringify 將物件轉成Json字串
		var jsonValue = JSON.stringify(datas);
		//JSON.parse  將Json字串 轉換成物件
		var objJsonArray =JSON.parse(jsonValue)
		var chart1 = new CanvasJS.Chart("chartContainer1",
				{
					theme: "theme2",
					title:{
					fontFamily:"微軟正黑體",
					text: "男女分布"
					},		
					data: [
					{       
						type: "pie",
						showInLegend: true,
						toolTipContent: "{y} - #percent %",
						yValueFormatString: "#,##0.##",
						legendText: "{indexLabel}",
						dataPoints:objJsonArray
					}
					]
				});
				chart1.render();
	})
	//AgeLevelCount
	$.ajax({
		'type':'get',
		'url':'/StarBusterCinima/charts/AgeLevelCount'
	}).done(function(datas){
		var jasonValue=JSON.stringify(datas);
		var jasonArray=JSON.parse(jasonValue);
	
 	var chart2 = new CanvasJS.Chart("chartContainer2",
    	{
      		title:{
      		fontFamily:"微軟正黑體",
       		 text: "年齡分佈"
     		 },
      		data: [
     		 {
     		  type: "doughnut",
      		 dataPoints: jasonArray
    		 }
    		 ]
   		});

    chart2.render();
	})
	//TypeKeyCount
	$.getJSON('/StarBusterCinima/charts/TypeKeyCount',function(json){
		var dataPoints = [];
		$.each(json,function(index,value){
			dataPoints.push({'x':index+1,'y':value[1],'label':value[0]});
// 			console.log(index+1);
// 			console.log(value[0]);
// 			console.log(value[1]);
		})
		 var chart3 = new CanvasJS.Chart("chartContainer3",
				    {
				      title:{
				    	fontFamily:"微軟正黑體",
				        text: "使用者問答排行榜"
				      },
				      data: [

				      {
				        dataPoints: dataPoints
				      }
				      ]
				    });

				    chart3.render()	;
		
		
	})
	
})
</script>
</html>