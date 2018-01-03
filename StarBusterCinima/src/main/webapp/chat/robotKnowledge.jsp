<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8" />
<title>Backstage Knowledge</title>
<link rel="shortcut icon" type="image/png" href="/StarBusterCinima/images/logo.ico"/>
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
#table{border-style:outset;}
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

.title {
	color: white;
	font-weight: 900;
	font-size: x-large;
	font-family: 'Fredoka One', cursive;
	font-family: 'Abril Fatface', cursive;
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
					<a class="navbar-brand" href="#"><img style="width: 132px"
						class="img-responsive logo"
						src="/StarBusterCinima/images/SB01.png" alt=""></a>
				</div>
				<div id="navbar" class="collapse navbar-collapse">
					<ul class="menu">
						<li class="active"><a href="/StarBusterCinima/chat/robotManage.jsp">攔截問答管理</a></li>
						<li><a href="#">智識庫管理</a></li>
						<li><a href="/StarBusterCinima/chat/robotChart.jsp">查看統計報表</a></li>
						<li><a href="/StarBusterCinima/chat/robotAdManage.jsp">廣告管理</a></li>
						<li><a href="/StarBusterCinima/chat/filmsection.jsp">電影場次管理</a></li>
						<li><a href="/StarBusterCinima/chat/votebackstage.jsp">活動管理</a></li>
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
	<table id="table" class="display" cellspacing="0" width="100%">
		<thead>
			<tr>
				<th>編號</th>
				<th>類型</th>
				<th>關鍵字</th>
				<th>回覆內容</th>
			</tr>
		</thead>
		<tfoot>
<!-- 				<form name="tfootForm" id="fff" > -->
			<tr>
				<th></th>	
				<th><input id="aaa" name="aaa" value="" type="text"  /></th>
				<th><input id="bbb" name="bbb" value="" type="text"  /></th>
				<th><input id="ccc" name="ccc" value="" type="text" style="width:550px"/><button id="insert" type="button" class="btn btn-success">新增</button><button id="update" type="button" class="btn btn-warning">修改</button><button id="delete" type="button" class="btn btn-danger">刪除</button><button id="clear" type="button" class="btn btn-light">清除</button></th>
			</tr>
<!-- 				</form> -->
<!-- 			<form> -->
<!-- 				<tr> -->
<!-- 				<th><input type="text"/></th> -->
<!-- 				<th><input type="text"/></th> -->
<!-- 				<th><input type="text"/></th> -->
<!-- 				<th><input type="text"/></th> -->
<!-- 				<th><input type="submit"></th> -->
<!-- 				</tr> -->
<!-- 			</form> -->
		</tfoot>

	</table>
	</div>


	<script src="../js/jquery-3.2.1.min.js"></script>
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script
	src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script>
	$(document).ready(function() {
		var table=$('#table');
		var tfoot=$('#table>tfoot');
		var questionId=tfoot.find('tr>:first-child');
		var type=$('#aaa');
		var keywords=$('#bbb');
		var answer=$('#ccc');
		
		$('#lookupUserAnswer').click(function(){
			window.location.href = "/StarBusterCinima/chat/robotManage.jsp";
		})
		//讀取原始資料
		table.DataTable({
			"ajax" : {
				'url' : '/StarBusterCinima/questions/',
				'type' : 'get'
			},
			"columns" : [ {
				"data" : "questionId"
			}, {
				"data" : "type"
			}, {
				"data" : "keywords"
			}, {
				"data" : "answer"
			} ]
		});
		//編輯區  初始資料
		//編輯區  點選編號改變資料
		table.on('click','>tbody>tr>td:nth-child(1)',function(){
			console.log($(this).text());
			tfoot.find('th:nth-child(1)').text($(this).text());
			tfoot.find('th:nth-child(2)>:input').val($(this).next('td').text());
			tfoot.find('th:nth-child(3)>:input').val($(this).next('td').next('td').text());
			tfoot.find('th:nth-child(4)>:input').val($(this).next('td').next('td').next('td').text());
		})
		
		$('#insert').click(function(){
			
// 			var datas=$('form[name="tfootForm"]').serialize();
// 			var data = $('#tfootForm').serialize();
			data1=type.val();
			data2=keywords.val();
			data3=answer.val();
			if(data1!=''&&data2!=''&&data3!=''){
		
			var jsonValue={'type':data1,'keywords':data2,'answer':data3};
			$.ajax({
				'type':'post',
				'url':'/StarBusterCinima/questions/',
				'contentType':'application/json',
				'data':JSON.stringify(jsonValue)
			}).done(function(result){
				console.log("insert="+result);
				table.DataTable().ajax.reload();
				clear();
			})
			
			}else{
				alert('請輸入完整資料');
			}
		})
		
		$('#update').click(function(){
			data =  questionId.text();
			data1=type.val();
			data2=keywords.val();
			data3=answer.val();
			var jsonValue={'questionId':data,'type':data1,'keywords':data2,'answer':data3};
			$.ajax({	
				'method':'put',
				'url':'/StarBusterCinima/questions/',
				'contentType':'application/json',
				'data':JSON.stringify(jsonValue)
			}).done(function(result){
				console.log("update="+result);
				table.DataTable().ajax.reload();
				clear();
			})
			
			
			
		})
		$('#delete').click(function(){
			var id=tfoot.find('tr>:first-child').text();
			console.log(id);
			$.ajax({
				'method':'delete',
				'url':'/StarBusterCinima/questions/'+id,
			}).done(function(result){
				table.DataTable().ajax.reload();
				clear();
			})
		})
		
		
		$('#clear').click(function(){
			clear();
		})
		function clear(){
			tfoot.find('tr>:first-child').text('');
			tfoot.find(':input').val('');
		}
	});
</script>
	

</body>
</html>