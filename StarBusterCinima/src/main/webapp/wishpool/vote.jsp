<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="vote.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WishPool</title>


<script
	src='https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js'></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/assets/owl.carousel.min.css"></link>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/assets/owl.theme.default.min.css"></link>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/owl.carousel.min.js"></script>
<script src="http://malsup.github.io/jquery.blockUI.js"></script>
<script src="http://code.highcharts.com/highcharts.js"></script>

<style>
#SBLogo {
	height: 200px;
	position: fixed;
	top: 0px;
	right: 0px;
	left: 0px;
}

div {
	
}

.small {
	border-bottom: groove;
	border-bottom-color: #00DDDD;
	border-width: 1px;
	margin: auto;
	padding: 10px;
	width: 80%;
	border-width: 1px;
}

.outside {
	position: relative;
	top: 200px;
	margin: 10px auto;
	padding: 10px;
	border-width: 1px;
}

#vote {
	border-style: 2px groove;
	width: 70px;
	height: 40px;
	border-radius: 10px;
	margin: 10px auto;
}

.mini {
	margin: 10px auto;
}

#BallotCount {
	color: gray;
}

#chart1 {
	width: 350px;
	height: 300px;
	margin: auto;
}

#FilmWall {
	height: auto;
}

#veryoutside {
	margin: 10px auto;
}

#Vote1 {
	margin: auto;
	position: relative;
	left: 30%;
	width: 80%;
}

.title {
	margin: 100px;
}

#t {
	top: 250px;
}

#FID {
	margin: auto;
}

ul {
	list-style-type: none;
}
</style>

</head>
<body>


	<div id="veryoutside">
		<div id="SBLogo"></div>

		<div class="outside">

			<div id="FilmWall" class="small">
				<div class="item">
					<img src="../wishpool/img/aaa.jpg">
				</div>
				<div class="item">
					<img src="../wishpool/img/aaa.jpg">
				</div>
				<div class="item">
					<img src="../wishpool/img/aaa.jpg">
				</div>
				<div class="item">
					<img src="../wishpool/img/aaa.jpg">
				</div>
				<div class="item">
					<img src="../wishpool/img/aaa.jpg">
				</div>
			</div>


			<div id="FilmRate">

				<%-- 				<p>sessionscope :${sessionScope}</p> --%>
				<%-- 				<p>sessionscope :${sessionScope.all}</p> --%>
				<%-- 				<p>RequestScope :${requestScope}</p> --%>

				<div class="small">
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
					<div id="chart1"></div>
				</div>
				<p id="aaa"></p>

			</div>

			<div id="Vote1">
				<div class="mini">
					<h2></h2>

					<select name="FilmName" id="FID">
					</select>

				</div>
				<div>
					<input type="button" id="vote" value="投票"> <a
						id="BallotCount"></a>
				</div>
			</div>
		</div>
	</div>



	<script>
		function drawchart(Fid, bc) {

			chart = new Highcharts.chart(
					'chart1',
					{

						chart : {
							plotBackgroundColor : null,
							plotBorderWidth : null,
							plotShadow : false,
							type : 'pie'
						},
						credits : {
							enabled : false
						},
						title : {
							text : ''
						},
						tooltip : {
							pointFormat : '{series.name}: <b>{point.percentage:.1f}%</b>'
						},
						plotOptions : {
							pie : {
								allowPointSelect : true,
								cursor : 'pointer',
								dataLabels : {
									enabled : true,
									format : '<b>{point.name}</b>: {point.percentage:.1f} %',
									style : {
										color : (Highcharts.theme && Highcharts.theme.contrastTextColor)
												|| 'black'
									}
								}
							}
						},
						series : [ {
							name : 'Ballot',
							colorByPoint : true,
							data : [
									{name : Fid[0],y : parseInt(bc[0])},
									{name : Fid[1],y : parseInt(bc[1])},
									{name : Fid[2],y : parseInt(bc[2])},
									{name : Fid[3],y : parseInt(bc[3])},
									{name : Fid[4],y : parseInt(bc[4])},
							]
						} ]
					});

		};
	</script>
	<script>
		//Load&Distribution
		$(function() {
			var array = [], array2 = [];
			var Fid = [], bc = [];

			//=========================================LoadData=========================================
			$.get("vote.controller", function(data) {
				var r = jQuery.parseJSON(data);

				$.each(r, function(i, item) {
					// add option to the selection
					if (item.VoteStatus != "Elected")
						$("#FID").append(
								$("<option></option>").attr("value",
										item.FilmID).text(item.FilmID));

					//make chart data
					// Fid[i] = "{name:\'"+item.FilmID +"\',y:" + item.BallotCount +"}";
					Fid[i] = item.FilmID;
					bc[i] = item.BallotCount;
				});

				drawchart(Fid, bc);

			});

			//=========================================LoadData=========================================

		});
	</script>



	<script>
		//=========================================FilmWall=========================================	

		$('#FilmWall').owlCarousel({
			items : 5,
			loop : true,
			margin : 10,
			autoplay : true,
			autoplayTimeout : 1000,
			autoplayHoverPause : true
		})

		//=========================================FilmWall=========================================			

		//=========================================Click&Vote=========================================	
		$('#vote').click(
				function() {
					
					 $.blockUI({ message: "幫我撐十秒" }); 
					 setTimeout($.unblockUI, 2000); 
				       
					
					$.post("vote.controller", {
						"FilmID" : $('select :selected').text()
					}, function(data) {
						
						

						$('#BallotCount').html(
								data.FilmID + " 目前得票 " + data.BallotCount
										+ data.VoteStatus);
					})
				})
		//=========================================Click&Vote=========================================
	</script>




</body>
</html>