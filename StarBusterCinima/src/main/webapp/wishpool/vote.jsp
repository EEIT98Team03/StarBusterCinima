<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="vote.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WishPool</title>

<script src="https://code.jquery.com/jquery-2.0.0.min.js"></script>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/assets/owl.carousel.min.css"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/assets/owl.theme.default.min.css"></link>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/owl.carousel.min.js"></script>


<script src="https://code.highcharts.com/highcharts.js"></script>
<!-- <link rel="stylesheet" href="../css/wishpool/vote.css"></link> -->
  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  

 <style >

/*====================Test====================*/
/* * { */
/* 	border: 1px solid red; */
/* 	font-family: Microsoft JhengHei; */
/* } */
/*====================FilmRate====================*/
#chart2 {
	width: 700px;
	margin-top: 20px;
	margin-left: 30px;
}

#chart1 {
	width: 850px;
	margin-right: 20px;
}

#chart3 {
	width: 700px;
	margin-top: 10px;
	margin-bottom: 20px;
	margin-left: 30px;
}

#frate {
	/* 	overflow:auto; */
	text-align: left;
	width: 850px;
	height: auto;
	font-family: Microsoft JhengHei;
	font-size: 8px;
	float: right;
	margin-right: 20px;
}

h2 {
	font-family: Microsoft JhengHei;
	font-weight: 300;
}

#no1 {
	float: left;
	margin: auto;
}

#fdata {
	background-color: #000;;
	width: 300px;
	height: 500px;
	display: none;
	font-size: 10px;
}
/* img { */
  
/* } */
/*====================FilmRate====================*/
/*====================Voteitem====================*/
#Vote1 {
	text-align: center;
	border-radius: 20px;
	padding: 10px;
	height: 800px;
	top: 160px;
	position: absolute;
	left: 5%;
	width: 90%;
}

#dovote {
	padding-left: 20px;
	bottom: 0px;
	width: 30%;
	/*     margin-right: 50px; */
	/*     margin-top: 30px; */
	margin: auto;
}

#bc {
	display: none;
	margin: 10px;
	width: :30%;
}

/*====================FilmWall====================*/
#FilmWall {
	width: 80%;
	padding: 20px;
	margin: auto;
	overflow: hidden;
}

.item {
	margin: 10px auto;
}
/*====================FilmWall====================*/
.balabala {
	text-align: left;
}
/*====================Voteitem====================*/
/*====================Else====================*/
li {
	list-style-type: none;
	color: #888888;
}

#analysis {
	overflow: hidden;
}
/*====================Else====================*/
</style>
 
</head>
<body >

<jsp:include page="${pageScope.request.contextPath}/fragement/top.jsp"></jsp:include>

	<div id="SBLogo">
		
	</div>
	<div id="Vote1" class="jumbotron" class="navbar-example">
		<!--------------------------------------	main menu	-------------------------------------->
		<ul id="myTab" class="nav nav-tabs">
			<li class="dropdown"><a href="#" id="myTabDrop1"
				class="dropdown-toggle" data-toggle="dropdown">
				 <span class="glyphicon glyphicon-user"></span>  ${loginUserInfo.name}<b class="caret"></b>
			</a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
					<li><a href="#tablist01" tabindex="0" data-toggle="tab"
						class="glyphicon glyphicon-heart"> 我的最愛</a></li>
					<li><a href="#tablist02" tabindex="-1" data-toggle="tab">123</a></li>
				</ul></li>
			<!--------------------------------------	↑tab1 end#  -------------------------------------->
			<li class="active"><a href="#analysis" data-toggle="tab"> 分析
			</a></li>
			<!--------------------------------------	↑tab2 end#  -------------------------------------->
			<li><a href="#votearea" data-toggle="tab">集氣 <span
					class="glyphicon glyphicon-hand-up"></span>
			</a></li>
			<!--------------------------------------	↑tab3 end#  -------------------------------------->
		</ul>
		<!--------------------------------------	↑main menu end#  -------------------------------------->

		<!--------------------------------------	item in  menu   -------------------------------------->
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade" id="tablist01">
				<p>tablist01</p>
			</div>
			<div class="tab-pane fade" id="tablist02">
				<p>tablist02</p>
			</div>
			<!--------------------------------------	menu01 end#   -------------------------------------->
			<div class="tab-pane fade in active" id="analysis">
				<div id="chart2" class="pull-left"></div>

				<div id="frate" class="page-header">
					<table class="table table-hover">
						<tbody id="frtable">
						<thead></thead>
						</tbody>
					</table>
				</div>
				<div id="chart3" class="pull-left"></div>
				<div id="chart1" class="pull-right"></div>
				<div id="no1"></div>

			</div>
			<!--------------------------------------	↑tab1 item end#  -------------------------------------->
			<div class="tab-pane fade" id="votearea">
				<div id="FilmWall">
				<div class = "item"></div>
				<div class = "item"></div>
				<div class = "item"></div>
				<div class = "item"></div>
				<div class = "item"></div>
				</div>
					<a id="Mname">${loginUserInfo.memberId}</a>
				<div id="dovote">
					<h2>投票</h2>
					<select name="FilmName" id="FID"></select>
					<p></p>
					<input type="button" id="vote" value="投票"
						class="btn btn-primary btn-lg" data-toggle="modal"
						data-target="#myModal">

					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true" style="top:200px;">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">×</button>
									<h4 class="modal-title" id="myModalLabel">投票成功</h4>
								</div>
								<div class="modal-body"></div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">關閉</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
				</div>
			</div>
			<!--------------------------------------	↑tab2 item end#  -------------------------------------->
			<!--------------------------------------	↑item in  menu end#  -------------------------------------->
		</div>
	</div>
	<script>
		function drawchart(Fi,bc,chartname,method,goal,hi,wi,ti) {//make ballot count chart
			var bs = 0;
			var chart1 
			var chart2 
			// ballotsum
			for (var i = 0; i < 5; i++)
				bs = bs + bc[i]
			
			if(method == "column"){
				chart1 = new Highcharts.chart(
						chartname,
						{
							chart : {plotBorderWidth : null,plotShadow : false,type : method,height: parseInt(hi)},
							credits : {enabled : false},
							title : {text : ti},
							tooltip : {pointFormat : '{series.name}:{point.y}'},
							plotOptions : {
								pie : {
									size: 400,allowPointSelect : true,cursor : 'pointer',dataLabels : {enabled : true,format : '{point.name}',
										style : {color : (Highcharts.theme && Highcharts.theme.contrastTextColor)|| 'black',fontSize:16},									
									}
								}						
							},
							 xAxis: {categories: Fname,labels: {style: {fontSize:'15px'}},tickInterval: 1},
							    yAxis: {allowDecimals: false,type: 'logarithmic',minorTickInterval: 0.1,title: {text: '票數'}},						
								series : [ {pointStart: 0,name : '目前票數統計',colorByPoint : true}, 				
							   		{name: '目前票數',data: bc}, {name: '達標票數',data: goal} 
							    ]						    
						});
			}
			else if( method == "pie"){
				
				chart2 = new Highcharts.chart(
						chartname,
						{
							chart : {plotBorderWidth : null,plotShadow : false,type : method,height: parseInt(hi)},
							credits : {enabled : false},
							title : {text : ti},
							tooltip : {pointFormat : '{series.name}:{point.percentage:.1f}'},
							plotOptions : {
								pie : {
									size: wi,allowPointSelect : true,cursor : 'pointer',dataLabels : {enabled : true,format : '{point.name}',
										style : {color : (Highcharts.theme && Highcharts.theme.contrastTextColor)|| 'black',fontSize:16},									
									}
								}						
							},
								xAxis: {categories: Fname,labels: {style: {fontSize:'15px'}},tickInterval: 1},							    				
								series : [ {colorByPoint : true,data : [{name:Fi[0]+" 票數: "+bc[0],y:bc[0]},{name:Fi[1]+" 票數: "+bc[1],y:bc[1]},{name:Fi[2]+" 票數: "+bc[0],y:bc[2]},{name:Fi[3],y:bc[3]},
									{name:Fi[4],y:bc[4]},{name:Fi[5],y:bc[5]},{name:Fi[6],y:bc[6]},{name:Fi[7],y:bc[7]},{name:Fi[8],y:bc[8]},
									]}]					    
						});			
			}
			else if( method == "line"){				
				chart2 = new Highcharts.chart(
						chartname,
						{
							chart : {plotBorderWidth : null,plotShadow : false,type : method,height: parseInt(hi)},
							credits : {enabled : false},
							title : {text : '投票年齡分布'},
							tooltip : {pointFormat : '{series.name}:{point.percentage:.1f}'},
							plotOptions : {
								pie : {
									size: wi,allowPointSelect : true,cursor : 'pointer',dataLabels : {enabled : true,format : '{point.name}',
										style : {color : (Highcharts.theme && Highcharts.theme.contrastTextColor)|| 'black',fontSize:16},									
									}
								}						
							},
							 legend: {
							        layout: 'vertical',
							        align: 'right',
							        verticalAlign: 'middle'
							    },

								xAxis: {categories: Fi,labels: {style: {fontSize:'15px'}},tickInterval: 1},							    				
								   series: [{
								        name: '年齡區間',
								        data: [10, 12, 22, 30, 5, 1]
								    }],

								    responsive: {
								        rules: [{
								            condition: {
								                maxWidth: 500
								            },
								            chartOptions: {
								                legend: {
								                    layout: 'horizontal',
								                    align: 'center',
								                    verticalAlign: 'bottom'
								                }
								            }
								        }]
								    }
						});			
			}
		};
	</script>
	
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/assets/owl.carousel.min.css"></link>	
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/assets/owl.theme.default.min.css"></link>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/owl.carousel.min.js"></script>
	
	
		<script>					
		var max = 0,bs=0;//define
		var Fid = [], bc = [], rate = [],Fname = [] ,Fimg = [] , goal=[],Sex=[],Age=[],Fl=[];
	//-----------------------------------------------------------------------------------------------------			
		//Load&Distribution		
		$(function() {		
			
					//prepare data
					$.get("vote.controller/selectall",function(data) //get vote data
						{
							var r = jQuery.parseJSON(data);
							$.each(r,function(i, item) {									
								// add option to the selection								
								$("#FID").append($("<option></option>").attr("value",item[0]).text(item[1]));								
								
								//change jsondata into array					
								Fid[i] = item[0];
								Fname[i] = item[1];
								bc[i] = item[2];
								goal[i] = item[3];
								bs = bs + item[2];
								Fl[i]= item[4];
								
							});//end each#
					   //-----------------------------------------------------------------------------------------------------		
							//draw chart
							drawchart(Fname, bc ,"chart2" ,"pie" ,goal ,650 ,400 ,"支持電影排行");
							drawchart(Fname, bc ,"chart1" , "column" ,goal,300,400 ,"目前票數/達標票數");
							console.log();
						//-----------------------------------------------------------------------------------------------------	
						
							$('#frtable').on('click', 'tr>td', function() {	
								alert(parseInt($(this).attr("id")))
								$('#chart2').animate({height:"300px"});	

								$.ajax({ //get film data						
									url: "vote.controller/SelectMemberDataSelected", 
									type: 'GET', 
									data:{"id" : parseInt($(this).attr("id"))} ,
									dataType: "text", 
									success: function(data) { 
										//turn json data into array							
										var a = jQuery.parseJSON(data);
										console.log(a[0]);
											
										Age[0]=a[0];
										Age[1]=a[1];
										Age[2]=a[2];
										Sex[0]=a[3];
										Sex[1]=a[4];										
										
										alert(Age[0]+","+Age[1]+","+Age[2]+","+Sex[0]+","+Sex[0]);	
									},
									error: function() { 
							  	 		console.log("json parse error");
									},
									complete: function(){	
										//drawchart(Fname, bc ,"chart1" , "column" ,goal,300,400 ,"目前票數/達標票數");
										console.log(Age);
										console.log(Sex);
										drawchart(["男","女"], [12,23], "chart2", "pie", Sex, 300 ,200,'');
										drawchart(["10 - 20","20 - 30","30 - 40","40 - 50","50 - 60","60 -"], [1,2,3], "chart3", "line",10, 300 ,200);
									}
								});	

							});						
						
							$('thead').click( function() {								
								$("#chart3").remove();
								$('#chart2').animate({height:"650px"});
								drawchart(Fname, bc ,"chart2" ,"pie" ,goal ,650 ,400);
								$('#analysis').append("<div id='chart3'></div>")
								
							});
							
							//put total BallotCount into #frate
							$("thead").append($("<h2></h2>").text(" 總投票人數 : "+bs).attr("class","glyphicon glyphicon-tower"));						
							//put Film Rate into #frate table
							for(var i =0 ;i<10;i++){
								if(i<5&&Fid[i]!=null){
									$('#frtable').append($("<tr></tr>").append("<td id=" + Fid[i] +"></td><td></td>"));
									
									$("tr:eq("+ i +")>td:eq(0)").append(  
											$($("<span></span>").text("第 "+ (i + 1)+ " 名: "+ Fname[i] )).append($("<span></span>")));
									$("tr:eq("+ i +")>td:eq(1)").append(  
											$($("<span></span>").text(" | 目前得票數: "+ bc[i])).append($("<span></span>")));
								}
								else{
									
									  $('#frtable>tr:eq('+ (i-5) +')').append("<td></td><td></td>");
									if(Fid[i]!=null){
										$('#frtable>tr:eq('+ (i-5) +')>td:eq(2)').append(
												$($("<span></span>").text("第 "+ (i + 1)+ " 名: "+ Fname[i] )).append($("<span></span>")));
										$('#frtable>tr:eq('+ (i-5) +')>td:eq(3)').append(
												$($("<span></span>").text(" | 目前得票數: "+ bc[i])).append($("<span></span>")));
									}									
								}								
							}
							for(var j = 0 ; j<3 ;j++){
								
								$("tr:eq("+ j +")>td:eq(0)>span>span").attr("class","glyphicon glyphicon-fire");
								$("tr:eq("+ j +")>td:eq(0)>span>").attr("style","color: rgb(250, 106, 64);font-size: 12px");
							}
							
						//-----------------------------------------------------------------------------------------------------	

			
						
							//feed FilmWall images
							for(var i = 0; i <5;i++){								
						 		$('.item:eq('+ i +')').append($("<img src="+ Fl[i] + "/>"));				
							}
						
							$('#FilmWall').owlCarousel({//FilmWall Controll				
								items : 5,
								loop : true,
								margin : 10,
								autoplay : true,
								autoplayTimeout : 1000,
								autoplayHoverPause : true,					
								});	
							
						//-----------------------------------------------------------------------------------------------------	
							
							//test
// 							console.log("Fid="+Fid);
// 							console.log("bc=" +bc );
// 							console.log("bs="+bs);
// 							console.log("Fimg="+Fimg);
// 							console.log("Fname="+window.Fname);					
					});//end get#
	
					$('#vote').click(//vote button click				
							function() {

								var r;
								$.ajax({ //get film data						
									url: "vote.controller/VoteAMovie", 
									type: 'POST', 
									data:{"FilmID" : $('select :selected').val()} ,
									dataType: "text", 
									success: function(data) { 
										//turn json data into array							
										r = jQuery.parseJSON(data);	 							
									},
									error: function() { 
							  	 		console.log("json parse error");
									},
									complete: function(){
											//put massage in status bar
											var status = ["尚未開始","進行中","集氣成功"]
											var i =0;
											
											if(r.VoteStatus == "during")
												i=1;
											else if(r.VoteStatus == "Elected")
												i=2;
											
											$('.modal-body').text("電影名稱: "+$('select :selected').text()+"   |   目前得票 : " +r.BallotCount + "   |   狀態 : " + status[i]);
											$('.alert alert-warning').removeAttr("display");								
											setInterval(function(){location.reload()}, 2000);								
									}
								});	
					});
					
					
					


		});//end onload# 	
//-------------------------------------------------------------------------------------------------------------------------------------------------------------	

</script>
</body>
</html>