<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>報表中心</title>
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/report.sales.chart.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../css/pure-min.css" />
<link rel="stylesheet" type="text/css" href="../css/my.css" />
</head>
<body>
<%-- 	<% String email = (String) session.getAttribute("email");
	   if (email == null) {%>
			<jsp:forward page="/shopping/gloginadmin.jsp"/>
	<% }%> --%>
	<div class="container">
		<div class="logo">
			<img src="../images/logosmall.png">
		</div>
	</div>
<%-- 	<div class="alert alert-primary" role="alert">
		<img src='${picture}' style='width: 48px; margin-left: 20px; margin-right: 20px; float: left;'>
		<div><h5>Welcome, ${userName}<br />${email}</h5></div>
	</div> --%>
	<div class="jumbotron">
		<div style="dislay: block; float: left;">
		    <div class="btn-group-vertical mr-2" role="group" aria-label="First group">
			    <button id="buttonSales" type="submit" class="btn btn-success btn-lg">營運狀況</button>
			    <button id="buttonGoldMembers" type="submit" class="btn btn-success btn-lg">黃金會員</button>
		    </div>
	    </div>
	    <div style="margin-left: 168px; width: 1080px; height: 1000px; border: 2px solid black;">
    		<div id="chartTitle" style="width: 90%; margin:10px; color: black; font-size: 1.8em; font-weight: bold;">Bestsellers of Harry Potter Campaign, Dec. 2017</div>
    		<div id="chartContainer" style="height: 40%; width: 75%; margin:0 auto;"></div>
    		<div id="detailinfo1" style="margin: 10px auto; color: black; font-size: 1.8em; font-weight: bold;">
			</div>
    		<div id="detailinfo2" style="margin: 10px auto; color: black; font-size: 1.8em; font-weight: bold;">
			</div>			
    	</div>
    </div>

<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
<script>
	$(function(){
		$.get('/StarBusterCinima/ViewGraph', function(chartData){
			addData(chartData);
			$('#detailinfo1').text("");
			$('#detailinfo2').text("");
		});

					var dataPoints = [];
					var chart = new CanvasJS.Chart("chartContainer", {
						animationEnabled: true,
						theme: "light2",
						title: {
							text: ""
						},
						axisY: {
							title: "TWD",
							titleFontSize: 24
						},
						data: [{
							type: "column",
							dataPoints: dataPoints
						}]
					});

					function addData(data) {
						var myJSON = JSON.parse(data);
						for (var i = 0; i < myJSON.length; i++) {
							dataPoints.push({
								label: myJSON[i].date,
								y: myJSON[i].units
							});
						}
						chart.render();
					};
			});

</script>

<script>
	$(function(){
		
		$('#buttonSales').click(function(){
			
			$.get('/StarBusterCinima/ViewGraph', function(chartData){
				addData(chartData);
				$('#detailinfo1').text("");
				$('#detailinfo2').text("");
			});

						var dataPoints = [];
						var chart = new CanvasJS.Chart("chartContainer", {
							animationEnabled: true,
							theme: "light2",
							title: {
								text: ""
							},
							axisY: {
								title: "TWD",
								titleFontSize: 24
							},
							data: [{
								type: "column",
								dataPoints: dataPoints
							}]
						});

						function addData(data) {
							var myJSON = JSON.parse(data);
							for (var i = 0; i < myJSON.length; i++) {
								dataPoints.push({
									label: myJSON[i].date,
									y: myJSON[i].units
								});
							}
							chart.render();
						};
			
		});
		

	});

</script>

<script>
	$(function(){
		$('#buttonGoldMembers').click(function(){
			$.post('/StarBusterCinima/ViewGoldMembers', function(chartData){
				$('#chartTitle').text("Gold Members of Dec. 2017");
				$('#chartContainer').text("");
				
				var myJSON = JSON.parse(chartData);
				var dataPoints = [];
				var sum10Member = 0;
				var sumAllMembers = 0;
				var percentData = 0;
				for (var i = 0; i < myJSON.length; i++) {
					if (i<myJSON.length - 1){
						sum10Member = sum10Member + myJSON[i].TotalItemsPurchased;
					} else {
						sumAllMembers = myJSON[i].TotalItemsPurchased;
					}
					percentData = (sum10Member / sumAllMembers) * 100;
					
					dataPoints.push({
						label: myJSON[i].MemberEmail + '  $' + myJSON[i].TotalItemsPurchased,
						y: myJSON[i].TotalItemsPurchased
					});
				}
				
				var chart = new CanvasJS.Chart("chartContainer", {
					animationEnabled: true,
					title: {
						text: ""
					},
					radius: 80,
					indexLabel: "{y}%",
					data: [{
						type: "pie",
						dataPoints: dataPoints
					}]
				});
				chart.render();
				percentData = percentData.toString();
				percentData = percentData.substring(0, 5) + "%";
				$('#detailinfo1').text("當月消費總金額最多的前10位會員合計貢獻當月營收的" + percentData);
				$('#detailinfo2').text("");
			});
		});
	});
</script>
</body>
</html>