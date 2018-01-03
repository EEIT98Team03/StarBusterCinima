<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	
<link href='../js/calendar/fullcalendar.min.css' rel='stylesheet' />
<link href='../js/calendar/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<link href='../js/calendar/scheduler.min.css' rel='stylesheet' />
<script src='../js/calendar/moment.min.js'></script>
<script src='../js/calendar/jquery.min.js'></script>
<script src='../js/calendar/fullcalendar.min.js'></script>
<script src='../js/calendar/scheduler.min.js'></script>
<title>FilmSection Backstage</title>
<style >

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


#out {
	text-align: center;
	width:90%;
	border-radius: 30px;
	margin: 10px auto;
	margin-top:140px;
	font-family: Microsoft JhengHei;
	height: auto;
}

body {
	margin: 0;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
	background-image: url("/StarBusterCinima/images/adminBackground.jpg");
	height:auto;

}

#calendar {
	max-width: 50%;
	margin: 50px;
}

.SectionData {
	text-align: center;
	margin: 10px;
	float: right;
}
#aaa {
	text-align: center;	
	position: absolute;
	bottom: 50%;	
	width:20%;
	left:65%; 
}
#d{
	position: absolute;
	bottom: 10%;
	right: 200px;
	width:30%;
	text-align: left;
}
</style>
</head>
<body>
	<script>
	

		$(function() { // document ready
			
			var today = new Date();
			var temp;
			var SectionDataList = new Array();			
			var SectionData = {
				id : '',
				start : '',
				end : '',
				resourceId : '',
				title : '',
				lengthoffilm :''
			}
			var start1,end1;
			var resourceId;
			
			
			$.ajax({
				url : "../film/filmMgmt.controller/SelectAllSectionAndFilm",
				type : "GET",
				dataType : "text",
				success : function(data2) {
	
					var r = jQuery.parseJSON(data2);
					for (var i = 0; i < r.length; i++) {
						SectionData.id = r[i][0].toString() +" - "+ r[i][5];
						temp = r[i][1].split("-");
						SectionData.start = temp[0] + '-' + temp[1] + '-'
								+ temp[2] + 'T' + temp[3];
						
						temp2 = temp[3].split(":")
						ltemp = parseInt(r[i][4]);						
						
						
						temp2[0] = parseInt(temp2[0]) + Math.round(ltemp/60);					
						
						SectionData.end = temp[0] + '-' + temp[1] + '-'
								+ temp[2] + 'T' + temp2[0] + ':' + temp2[1]
								+ ':' + temp2[2];
						SectionData.resourceId = r[i][2].split(" ")[0].toLowerCase();
						SectionData.title = r[i][3];
						SectionDataList[i] = {id:SectionData.id,start:SectionData.start,end:SectionData.end,resourceId:SectionData.resourceId,title:SectionData.title};	
//  						console.log(SectionData)
					}
					console.log(SectionDataList)
					$('#calendar').fullCalendar(
							{
								defaultView : 'agendaDay',
								defaultDate : '2018-01-09',
								firstDay : 4,
								minTime: '10:00:00',
							    maxTime: '24:00:00',
							    allDaySlot:false,
								editable : true,
								selectable : true,
								eventLimit : true, // allow "more" link when too many events
								header : {
									left : 'prev,next today',
									center : 'title',
									right : 'agendaDay,listDay,listWeek,month'
								},
								views : {
									agendaTwoDay : {
										type : 'agenda',
										duration : {
											days : 7
										},										
										listDay: { buttonText: 'week' },
										groupByResource : true
									}								
								},
								resources : [ {id : 'a',title : ' A 廳 ',eventColor : '#B088FF'}, {id : 'b',title : ' B 廳 ',eventColor : '#20B7B7'}, {
									id : 'c',title : ' C 廳 ',eventColor : '#33CCFF'}, {id : 'd',title : ' D 廳 ',eventColor : '#FFAA33'} ],
								events :SectionDataList,
								select : function(start, end, jsEvent, view, resource) {
									start1=start.format();
									end1=end.format();
									console.log(start1,end1)
									resourceId = resource.id;
									console.log('select', start.format(), end.format(),	resource ? resource.id : '(no resource)');	
									
									if(start1.split("T")[1]!=null){
										SectionData.title = $('select :selected').text();
										SectionData.id=$('select :selected').val();
										SectionData.start = start1.split("T")[0] +" "+ start1.split("T")[1];									
										temp2=start1.split("T")[1].split(":");
										
										temp2[0] = parseInt(temp2[0]) + Math.round(ltemp/60);	
//	 									temp2[1] = parseInt(temp2[1]) + ((SectionData.lengthoffilm%60)/30)*30;
										
																	
										SectionData.end = start1.split("T")[0] + " " + temp2[0] + ":" + temp2[1] + ":" + temp2[2];
										SectionData.resourceId = resourceId;
										console.log(SectionData); 
										$('#calendar').fullCalendar( 'renderEvent', SectionData, true);
										
										$.ajax({ 				
											url: "../film/filmMgmt.controller/InsertSection",
											type: "GET", 		
											dataType: "text", 		
											data:{
												"filmId": parseInt(SectionData.id),						
												"filmsectiontime":SectionData.start,
												"roomSeats":"0",
												"sectionroom": SectionData.resourceId						
											},					
											error: function() { 
										  	 	console.log("parse error"); 
											} 
										});//end ajax#										
									}
									else
										alert(start.format(),resourceId);
									
								
									

								},
								dayClick : function(date, jsEvent, view, resource) {
									console.log('dayClick', date.format(),
											resource ? resource.id : '(no resource)');
								}, editable: true,
							    eventDrop: function(event, delta, revertFunc) {
							    	var myResource = $('#calendar').fullCalendar('getResourceById', event.resourceId);    
								
							        if (confirm(" 確定將  "+event.title + event.id + "   移至   " + myResource.id+" 廳 "+ event.start.format().split('T')[0] + " " + event.start.format().split('T')[1])+" 嗎?") {
							        	
							        	
										$.ajax({ 				
											url: "../film/filmMgmt.controller/UpdateSection",
											type: "GET", 		
											dataType: "text", 		
											data:{
												"filmsectionId":parseInt(event.id.split("-")[1]),			
												"filmsectiontime":event.start.format().split('T')[0] + " " + event.start.format().split('T')[1]
											},					
											error: function() { 
										  	 	console.log("parse error"); 
											} 
										});//end ajax#	
							        	
							        	
// 							            revertFunc();
							        }

							    },
							    eventClick: function(calEvent, jsEvent, view) {						        
							        
							        if (confirm("確定刪除  "+ calEvent.id + " " + calEvent.title +" 嗎?")) {
							        	
							        	$('#calendar').fullCalendar('removeEvents',calEvent.id);//DeleteSection						        
							        
							        	 							        	 
							 			$.ajax({ 				
											url: "../film/filmMgmt.controller/DeleteSection",
											type: "GET", 											
											dataType: "text",
											data:{
												"filmsectionId": parseInt(calEvent.id.split("-")[1])																
											},				
											success: function(data) {	
												console.log("Delete success"); 
											},
											error: function() { 
										  	 	console.log("parse error"); 
											} 
										});//end ajax#
							        	console.log('Event:  deleted' );							        	 
							        }
							    }
							});
				},
				error : function() {
					console.log("parse error");
				},
				complete:function(){
					$('#calendar').fullCalendar( 'renderEvent',         {
			            start: '2017-12-29T10:00:00',
			            end: '2017-12-29T16:00:00',
			            rendering: 'background'
			        }, true);
				}
				
			});//end ajax#

			$.ajax({ 				
				url: "../film/filmMgmt.controller/SelectAllSectionAndFilm",
				type: "GET", 		
				dataType: "text", 			
				success: function(data) {				
					re = jQuery.parseJSON(data);			
				},
				error: function() { 
			  	 	console.log("parse error"); 
				} 
			});//end ajax#
			//-----------------------------------------------------------------------------------------------//
			$('#NewSection').on('click',function(){
				
				location.reload();
				$('#istar').animate({left:'250px'});
				
			})
			
			$.ajax({ 				
					url: "../booking/controller/quickBooking.controller",
					type: "GET", 		
					dataType: "text", 			
					success: function(data) {				
						re = jQuery.parseJSON(data);						
						for(var i = 0; i<re.length;i++){
							
							$('#SelectFilmName').append($("<option></option>").attr("value",re[i].filmId).text(re[i].filmName));
						
							

						}	
					},
					error: function() { 
				  	 	console.log("parse error"); 
					} 
				});//end ajax#
				
				$.ajax({ 				
					url: "../film/filmMgmt.controller/SelectSectionCount",
					type: "GET", 		
					dataType: "text", 			
					success: function(data) {				
						re = jQuery.parseJSON(data);						
						for(var i = 0; i<re.length;i++){
							console.log(re[i]);
							$('#d').append($("<tr class='dd'></tr>").append($("<td></td>").text(re[i][0].split("-")[0])).append($("<td></td>").text(re[i][0].split("-")[1] + "分鐘")).append($("<td></td>").text("-")));
							$('.dd:eq('+(i)+')>td:eq(2)').text(re[i][1])
						}	
// 						console.log(re); 
					},
					error: function() { 
				  	 	console.log("parse error"); 
					} 
				});//end ajax#
				
				
				
				
				
				
				
// 			console.log(lengthoffilm);
		});
	</script>
	
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
	<div class="jumbotron" id="out">		
		<div id='calendar' ></div>
		
		<div id = "aaa" >
		<img src = "/StarBusterCinima/images/logo2.png" style="width:60% margin-bottom:100px;" id="istar"/>
		<select id="SelectFilmName" class="label label-default"
				class="SectionData"></select>
				<button type="button" class="SectionData btn btn-default"
				id="NewSection" style="margin: 0px;">提交</button>
		</div>
			<table class="table" id="d">
				<caption>場次統計</caption>
				<thead>
					<tr>
						<th>電影名稱</th>
						<th>電影長度</th>
						<th>場次數量</th>
					</tr>
				</thead>
				<tbody>

				</tbody>
			</table>
	</div>
</body>
</html>
