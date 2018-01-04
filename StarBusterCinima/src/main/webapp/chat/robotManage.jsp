<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8" />
<title>Backstage InterceptUser</title>
<link rel="shortcut icon" type="image/png" href="/StarBusterCinima/images/logo.ico"/>
<link rel="stylesheet" href="../css/lightbox.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Abril+Fatface|Fredoka+One"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" />
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/lightbox.css">
</head>
<style>
<!--
table {
	font-family: 'Calibri';
	font-size: 15px;
	background-color: #fff;
	color: #333;
}
#table{border-style:outset;
background-color:white;
}



.modal-header {
	background-color: #333;
	color: #fff;
}

.tableTitle th {
	width: 150px;
}

#questionContext {
	width: 300px
}

.row {
	width: 1500px;
}

.tableOuter {
	width: 2500px;
}
-->
.menu-bar {
	width: 22px;
	height: 2px;
	background-color: white;
	margin: 6px;
	border-radius: 1px;
}

#number-list.dropdown-menu {
	width: 270px;
}

a.dropdwon-toggle {
	padding-left: 10px;
}

ul.lefties:after {
	clear: both;
	display: block;
	content: "";
}

.lefties-item {
	float: left;
}

.auto-style1 {
	width: 144px;
	height: 101px;
}

.normal-size{width:120px}
.normal-size-time{width:180px}
.tableBox{width:85%;height:70%;margin:50px auto;}

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
						<li><a href="/StarBusterCinima/chat/insertFilm.jsp">電影新增</a></li>
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
	
<div class="tableBox">
	<table id="table" class="table">
		<thead >
			<tr>
				<th class="normal-size">會員編號</th>
				<th class="normal-size" >會員名稱</th>
				<th class="normal-size-time">訊息時間</th>
				<th class="normal-size" >處理狀態</th>
				<th>問答內容</th>
				<th class="normal-size" >管理</th>
			</tr>
		</thead>
		<tbody>	
		
		</tbody>
	</table>
	</div>
	<div id="edit" class="modal fade" role="dialog">
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
			<div class="modal-dialog">
				<div class="modal-content">
					
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h4 class="modal-title">會員問答管理</h4>
					</div>
					
					<div class="modal-body">
						<h3></h3>
						<h5></h5>
						<br/>
						<h4></h4>
						
						
                        <div>
                            <input id="type" type="text" class="form-control" placeholder="問答歸類ex:訂票or位置or....">
                        </div>
                        <div>
                            <input id="keywords" type="text" class="form-control" placeholder="關鍵字ex:key1,key2" >
                        </div>
                        <div>
                            <textarea id="answer" class="form-control" rows="10" placeholder="設定回答訊息" ></textarea>
                        </div>
					</div>
					
					<div class="modal-footer">
						<button type="button" id="update" class="btn btn-warning"
							data-dismiss="modal">新增至知識庫</button>
						<button id="updataClose" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
					
				</div>
			</div>
		</div>
		<div id="delete" class="modal fade" role="dialog">

				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
			<div class="modal-dialog">
			
				<div class="modal-content">
				
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h4 class="modal-title">刪 除 資 料</h4>
					</div>
					
					<div class="modal-body">
						<strong>你確定要刪除此筆問答嗎?</strong>
					</div>
					
					<div class="modal-footer">
						<button type="button" id="del" class="btn btn-danger"
							data-dismiss="modal">刪除</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
					</div>
					
				</div>
			</div>
		</div>
		<a class="example-image-link" href="/StarBusterCinima/images/loading.gif" data-lightbox="example-set" data-title="新增至知識庫，並將郵件寄送至會員信箱    - - - - - - ">
		<img id="ajaxLoading" class="example-image" src="" alt="" /></a>
<!-- 	<button id="test">1323</button> -->
	<script src="../js/lightbox-plus-jquery.min.js"></script>
	<script
	 	 src="../js/jquery-3.2.1.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
		integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
		integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
		crossorigin="anonymous"></script>
	<script>
//ajax Get 網路資料 end -------------------------------------
	$(function(){
		//if處理完成按鈕則取消事件
		$('.table>tbody').on('click','>tr>td:nth-child(4)',function(){
			console.log('123');
			$(this).siblings('td>:button').attr('disabled',true);
		})
		
		$('#lookupRobotKnowledge').click(function(){
			window.location.href = "http://localhost:8080/StarBusterCinima/chat/robotKnowledge.jsp";
		})
		
// 		$('#lookupUserAnswer').click(loadDatas);
		loadDatas();
		function loadDatas(){
		//一進去就讀取使用者資料
		$.ajax({
			'type':'GET',
			"url":"/StarBusterCinima/questionsRecords",
			"dataType":"json"
		}).done(function(datas){
				var box = $(document.createDocumentFragment());
				var tbody = $('.table  > tbody');
				$.each(datas,function(index,object){
					var myDate = new Date(object.questionTime);
					var convertDate = myDate.getFullYear()+"-" + (myDate.getMonth() + 1) + "-" + myDate.getDate()+"_" + myDate.getHours() + "h:" + myDate.getMinutes()+"M" ;
					
					var column1 = $('<td></th>').text(object.memberId).addClass('normal-size');
					var column2 = $('<td></td>').text(object.name).addClass('normal-size');
					var column3 = $('<td></td>').text(convertDate).addClass('normal-size-time');
					var column4 = $('<td></td>').text(object.questsionStatus).addClass('normal-size');
					var temp = object.questsionStatus;
					var column5 = $('<td></td>').text(object.questionContext);
// 					var column6 = $('<td ></td>').html(' <button class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span></button><button class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></button>');
					if(temp==('處理完成')){
						var column6 = $('<td ></td>').html('<button disabled type="button" data-toggle="modal" data-target="#edit" data-uid="1" class="update btn btn-warning btn-sm"><span class="glyphicon glyphicon-pencil"></span></button><button type="button" data-toggle="modal" data-target="#delete" data-uid="1" class="delete btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></button>');
					}else{
						var column6 = $('<td ></td>').html('<button type="button" data-toggle="modal" data-target="#edit" data-uid="1" class="update btn btn-warning btn-sm"><span class="glyphicon glyphicon-pencil"></span></button><button type="button" data-toggle="modal" data-target="#delete" data-uid="1" class="delete btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></button>');
					}
					var temp = $('<td id="questionRecordId" style="display:none"></td>').text(object.questionRecordId);
					var row=$('<tr></tr>').append([column1],[column2],[column3],[column4],[column5],[column6],[temp])
					box.append(row);
				})
				tbody.html(box);
			})
		}
//ajax Get 網路資料 end -------------------------------------
// 		馬老師
// 		$('#test').click(function(){
// 			var jsonValue={questionRecordId:$('#questionRecordId').text(),memberId:$('#memberId').text(),name:$('#name').text(),questsionStatus:'已處理',questionContext:$('#questionContext').text()};
// 			console.log("hehehe");
// 			$.ajax({
// 				'method':'put',
// 				'url':'/StarBusterCinima/questionsRecords',
// 			 	'contentType':'application/json',
// 				'data':JSON.stringify(jsonValue)
// 				}).done(function(data){
// 				alert(data);
// 				})
// 		})
		//刪除
		$('.table>tbody').on('click','>tr>td>button:nth-child(2)',function(){
			var questionRecordId=$(this).parents('tr').find('td:nth-child(7)').text();
			$('#del').click(function(){
				$.ajax({
					'method':'delete',
					'url':'/StarBusterCinima/questionsRecords/'+questionRecordId
					}).done(function(result){
						loadDatas();
					})
			})
		})
		var jsonValue;
		$('.table>tbody').on('click','>tr>td>button:nth-child(1)',function(){
		//按下處理按鈕
    	var memberId=$(this).parents('tr').find('td:nth-child(1)').text();
    	var name=$(this).parents('tr').find('td:nth-child(2)').text();
    	var convertDate=$(this).parents('tr').find('td:nth-child(3)').text();
    	var questionContext=$(this).parents('tr').find('td:nth-child(5)').text();
    	var questionRecordId=$(this).parents('tr').find('td:nth-child(7)').text();
		jsonValue={questionRecordId:questionRecordId,memberId:memberId,name:name,questsionStatus:'處理完成',questionContext:questionContext};
// 		console.log(jsonValue);
		
		$('.modal-body>h3').text('會員:'+name);
		$('.modal-body>h5').text('時間:'+convertDate);
		$('.modal-body>h4').text('問題:'+questionContext);

			$('#update').click(function(even){
				even.stopImmediatePropagation();
				var type=$('#type');
				var keywords=$('#keywords');
				var answer=$('#answer');
				if(type.val()=="" || keywords.val()=="" || answer.val()=="" ){
					alert('請輸出完整資訊');
				}else{
				even.preventDefault();
				even.stopImmediatePropagation();
// 				//更改處理狀態
	 			$.ajax({
				'method':'put',
				'url':'/StarBusterCinima/questionsRecords',
				'contentType': "application/json",
				'data':JSON.stringify(jsonValue)
				}).done(function(data){
				})
				
				
				var type = $('#type').val();				
				var keywords = $('#keywords').val();				
				var answer = $('#answer').val();				
				var jsonValue2={'type':type,'keywords':keywords,'answer':answer};
				//新增至知識庫
				$.ajax({
					'type':'post',
					'url':'/StarBusterCinima/questions/',
				   	'contentType': "application/json; charset=utf-8",
				    'dataType': "json",
					'data':JSON.stringify(jsonValue2)
				}).done(function(datas){
					$('#type').val('');				
					$('#keywords').val('');				
					$('#answer').val('');
					$('#updataClose').trigger("click",function(even){
					});
				})
				//寄送信件
				$.ajax({
					'type':'get',
					'url':'/StarBusterCinima/questions/'+memberId+'/'+convertDate+'/'+questionContext+'/'+answer+'/'+questionRecordId,
					'beforeSend':function(){
						$( "#ajaxLoading" ).trigger('click');
					}
				}).done(function(result){
					if(result){
						$("#lightbox" ).trigger('click');
						alert('send success');
					}else{
						$( "#lightbox"  ).trigger('click');
						alert('send fail');
					}
					loadDatas();
				})
				
				}
			})
		})
	})
	</script>
</body>
</html>