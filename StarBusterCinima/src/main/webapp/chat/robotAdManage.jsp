<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Backstage AdManagement</title>
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
	<script src="../js/lightbox-plus-jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

.navbar-header span {
	color: white;
}
#dataTable{
background-color:white;
}
#dataTable th{
      text-align:center;
}
#dataTable td{
      vertical-align: middle;
      padding:0px;
      margin:0px;
      font-size:16px;
      height:100px;
}
#dataTable tr{
	text-align:center;
	vertical-align:middle;
	height:40px;	
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
		<div class="navbar navbar-inverse navbar-fixed-top" 
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
						<li><a href="/StarBusterCinima/chat/robotKnowledge.jsp">智識庫管理</a></li>
						<li><a href="/StarBusterCinima/chat/robotChart.jsp">查看統計報表</a></li>
						<li><a href="#">廣告管理</a></li>
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
	
	<!-- Begin 範本 -->
	<!-- 	<table> -->
	<!-- 		<tr> -->
	<!-- 			<td> -->
	<!-- 				<form id="myform" name="myform" enctype="multipart/form-data"> -->
	<!-- 					<input id="file" type="file" name="file" /> <input id="text" -->
	<!-- 						type="text" name="text" value="123" /> <input id="text2" -->
	<!-- 						type="text" name="text2" value="321" /> -->
	<!-- 					<button id="upload" type="button">upload</button> -->
	<!-- 				</form> -->
	<!-- 			</td> -->
	<!-- 		</tr> -->
	<!-- 	</table> -->
	<div id="box" style="width: 90%; margin: 50px auto">
		<table id="dataTable" class="table table-bordered">
			<thead>
				<tr style="background-color: black; color: white">
					<th scope="col">#</th>
					<th scope="col">廣告種類</th>
					<th scope="col">廣告標題</th>
					<th scope="col">圖片</th>
					<th scope="col">連結網址</th>
					<th scope="col">順序</th>
					<th scope="col">廣告架設位置</th>
					<th scope="col">廣告狀態</th>
					<th scope="col">上架日期</th>
					<th scope="col">觀看次數</th>
					<th scope="col">點擊次數</th>
					<th>編輯區</th>
				</tr>
			</thead>
			<tbody>
				<!--標本-->
<!-- 				<tr > -->
<!-- 					<td>#</td> -->
<!-- 					<td>type</td> -->
<!-- 					<td>title</td> -->
<!-- 					<td><img style="width:100px" src="/StarBusterCinima/adManagements/imageId=2" alt=""></td> -->
<!-- 					<td><a href="http://yahoo.com.tw" target="_blank">http://yahoo.com.tw</a></td> -->
<!-- 					<td>sequence</td> -->
<!-- 					<td>position</td> -->
<!-- 					<td>status</td> -->
<!-- 					<td>uploadTime</td> -->
<!-- 					<td>viewCount</td> -->
<!-- 					<td>clickCount</td> -->
<!-- 					<td> -->
<!-- 					<button class="btn btn-warning btn-lg" data-toggle="modal"data-target="#updateAd">編輯</button> -->
<!-- 					<button class="btn btn-danger btn-lg" data-toggle="modal" data-target="#deleteAd">刪除</button> -->
<!-- 					</td> -->
<!-- 				</tr> -->
			</tbody>
		</table>
	</div>
	<!-- 	修改表單設計	 -->
	<div class="modal fade" id="updateAd" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
						<span>ESC退出</span>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">廣告修改</h4>
				</div>
				
				
				

				<form id="updateForm" name="updateForm" enctype="multipart/form-data">
				<div>
				<input id="pid" name="id" type="text" value="" style="display:none;">
				<label>廣告種類</label>
					<input id="ptype" name="type" type="text" class="form-control"
						placeholder="ex:電影or商品or外部" value="">
				</div>
				<div>
				<label>標題</label>
					<input id="ptitle" name="title" type="text" class="form-control"
						placeholder="ex:變形金剛電影or變形金剛玩具" value="">
				</div>
				<div>
				<label>圖片</label>
					<input id="pfile" type="file" name="file" class="form-control"/>
				</div>
				<div>
				<label>點擊網址</label>
					<input id="purl" name="url" type="text" class="form-control"
						placeholder="http://yahoo.com.tw" value="">
				</div>
				<div>
				<label>位置</label>
					<select id="pposition" name="position" >
						<option value="">請選擇</option>
						<option value="首頁輪播">首頁輪播</option>
						<option value="首頁廣告牆">首頁廣告牆</option>
						<option value="會員輪播牆">會員輪播牆</option>
						<option value="首頁外部新聞">首頁外部新聞</option>
					</select>
					<label>順序</label>
					<select id="psequence" name="sequence" >
						<option value="">請選擇</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
					<label>設定狀態</label>
					<select id="pstatus" name="status" >
						<option value="">請選擇</option>
						<option value="關閉">關閉</option>
						<option value="開啟">開啟</option>
					</select>
				</div>
				<div class="modal-footer">
					<button id="updateSubmit" type="button" class="btn btn-primary">修改廣告</button>
					<button id="updateClose"  type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				</div>
				</form>
				
				
				
				
			</div>
		</div>
	</div>
	
	
		<!-- 	新增 表單設計	 -->
		<div class="modal fade" id="insertAd" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
						<span>ESC退出</span>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">廣告架設</h4>
				</div>
				<form id="insertForm" name="insertForm" enctype="multipart/form-data">
				<div>
				<label>廣告種類</label>
					<input id="type" name="type" type="text" class="form-control"
						placeholder="ex:電影or商品or外部" value="">
				</div>
				<div>
				<label>標題</label>
					<input id="title" name="title" type="text" class="form-control"
						placeholder="ex:變形金剛電影or變形金剛玩具" value="">
				</div>
				<div>
				<label>圖片</label>
					<input id="file" type="file" name="file" class="form-control"/>
				</div>
				<div>
				<label>點擊網址</label>
					<input id="url" name="url" type="text" class="form-control"
						placeholder="ex:http://yahoo.com.tw" value="">
				</div>
				<div>
				<label>位置</label>
					<select id="position" name="position" >
						<option value="">請選擇</option>
						<option value="首頁輪播">首頁輪播</option>
						<option value="首頁廣告牆">首頁廣告牆</option>
						<option value="會員輪播牆">會員輪播牆</option>
						<option value="首頁外部新聞">首頁外部新聞</option>
					</select>
					<label>順序</label>
					<select id="sequence" name="sequence" >
						<option value="">請選擇</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
					<label>設定狀態</label>
					<select id="status" name="status" >
						<option value="">請選擇</option>
						<option value="關閉">關閉</option>
						<option value="開啟">開啟</option>
					</select>
				</div>
				<div class="modal-footer">
					<button id="insertSubmit" type="button" class="btn btn-primary">新增廣告</button>
					<button id="insertClose"  type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				</div>
				</form>
				
				
			</div>
		</div>
	</div>
	<div style="width:90%;text-align:right;margin:0px auto">
	<button class="btn btn-info btn-lg" data-toggle="modal" data-target="#insertAd">新增廣告</button>
	</div>
</body>
<script>
	// $(function () { $('#myModal').modal({
	// 	keyboard: true
	// })});
	$(function() {
		var tbody = $('#dataTable>tbody');
		
// 		var HomeCarousel=[];
// 		var HomeAd=[];
// 		var LoginAd=[];
			
		loadData();
		
		//get Data begin
		function loadData(){
			console.log("loadData");
			$.ajax({
				'type':'get',
				'url':'/StarBusterCinima/adManagements',
				}).done(function(datas){
				
				var box = $(document.createDocumentFragment());
				
				$.each(datas,function(index,value){
				
					
					
					
					
				//jason data
				var id = value.id;
				var type = value.type;
				var title = value.title;
				var url = value.url;
				var sequence = value.sequence;
				var position = value.position;
				
// 				if(position=="首頁輪播")
// 					HomeCarousel.push(sequence);
// 				if(position=="首頁廣告")
// 					HomeAd.push(sequence);
// 				if(position=="登入廣告牆")
// 					LoginAd.push(sequence);
				
				var status = value.status;
					if(status=='關閉'){
						sequence=5;
					}
				var uploadTime = value.uploadTime;
				var myDate = new Date(uploadTime);
				var convertDate = myDate.getFullYear()+"-" + (myDate.getMonth() + 1) + "-" + myDate.getDate()+"_" + myDate.getHours() + "h:" + myDate.getMinutes()+"M" ;
				
				var viewCount = value.viewCount;
				var clickCount = value.clickCount;
				//一列 製造一次					
					var columnIndex=$('<td></td>').text(index+1);
					var column1=$('<td style="display:none"></td>').text(id);
					var column2=$('<td></td>').text(type);
					var column3=$('<td></td>').text(title);
// 					var column4=$('<td></td>').html('<img style="width:100px" src="/StarBusterCinima/adManagements/imageId='+id+'">');
					var column4=$('<td></td>').html('<a class="example-image-link" href="/StarBusterCinima/adImages/imageId='+id+'" data-lightbox="example-set" data-title="'+type+'類  :'+title+'"><img style="width:100px" src="/StarBusterCinima/adImages/imageId='+id+'"></a>');
					var column5=$('<td></td>').html('<a href="'+url+'" target="_blank">'+url+'</a>');
					var column6=$('<td></td>').text(sequence);
					var column7=$('<td></td>').text(position);
					var column8=$('<td></td>').text(status);
					var column9=$('<td></td>').text(convertDate);
					var column10=$('<td></td>').text(viewCount);
					var column11=$('<td></td>').text(clickCount);
					var column12=$('<td></td>').html('<button class="btn btn-warning btn-lg" data-toggle="modal"data-target="#updateAd">編輯</button><button class="btn btn-danger btn-lg" data-toggle="modal" data-target="#deleteAd">刪除</button>');
					var row=$('<tr></tr>').append([column1],[columnIndex],[column2],[column3],[column4],[column5],[column6],[column7],[column8],[column9],[column10],[column11],[column12])
					box.append(row);
				})
				tbody.html(box);
			})
		}
		//get Data end
		
		//delete Data begin
		tbody.on('click','tr>td>:button:nth-child(2)',function(){
			var confirm = window.confirm("確定要刪除嗎?");
			if(confirm==true){
				
			var id = $(this).parents('tr').find('td:nth-child(1)').text();
			console.log(id);
			$.ajax({
			'type':'delete',
			'url':'/StarBusterCinima/adManagements/'+id
			}).done(function(result){
				loadData();
			})
			}
			
		})
		//delete Data end
		
		
		
		//update Data begin
		tbody.on('click','tr>td>:button:nth-child(1)',function(){
			var id = $(this).parents('tr').find('td:nth-child(1)').text();
			var type = $(this).parents('tr').find('td:nth-child(3)').text();
			var title = $(this).parents('tr').find('td:nth-child(4)').text();
// 			var image = $(this).parents('tr').find('td:nth-child(5)').val(); //不能:()
			var url = $(this).parents('tr').find('td:nth-child(6)>a').text();
			var sequence = $(this).parents('tr').find('td:nth-child(7)').text();
			var position = $(this).parents('tr').find('td:nth-child(8)').text();
			var status = $(this).parents('tr').find('td:nth-child(9)').text();

// 			var HomeCarousel=[];
// 			var HomeAd=[];
// 			var LoginAd=[];
				
			
			$('#pid').val(id);
// 			$('#pfile').val(image);
			$('#ptype').val(type);
			$('#ptitle').val(title);
			$('#purl').val(url);
			$("#psequence>option").each(function(index,value) {
   				if($(value).val()== sequence){
   					$(value).attr('selected',true);
   					return false;}
   				return;
			});
			$("#pposition>option").each(function(index,value) {
   				if($(value).val()== position){
   					$(value).attr('selected',true);
   					return false;}
   				return;
			});
			$("#pstatus>option").each(function(index,value) {
   				if($(value).val()== status){
   					$(value).attr('selected',true);
   				return false;}
   				return;
			});
			//update Data end
			
			
			
			//update begin
			$('#updateSubmit').on('click', function(even) {
				even.preventDefault();
				even.stopImmediatePropagation();
				var type =$('#ptype').val();
				var title=$('#ptitle').val();
				var file=$('#pfile').val();
				var url=$('#purl').val();
				var position=$('#pposition').val();
				var sequence=$('#psequence').val();
				var status=$('#pstatus').val();
// 				console.log(type);
// 				console.log(title);
// 				console.log(url);
// 				console.log(position);
// 				console.log(sequence);
// 				console.log(status);
				//if begin
				if(type=="" || title=="" || url=="" || position==""|| sequence=="" || status==""){
					alert('請輸入完整資訊');	
					
				}else{
				//新增至資料庫	
							
// 				console.log("首頁輪播"+HomeCarousel);
// 				console.log("首頁廣告"+HomeAd);
// 				console.log("登入廣告"+LoginAd);
// 				if(position=="首頁輪播"){
// 					$.each(HomeCarousel,function(index,value){
// 						if(sequence==value){
// 							alert('已有相同順序，請重新選取');
// 						}
// 					})
// 				}else if(position=="首頁廣告"){
// 					$.each(HomeAd,function(index,value){
// 						if(sequence==value){
// 							alert('已有相同順序，請重新選取');
// 						}
// 					})
// 				}else if(position=="登入廣告"){
// 					$.each(LoginAd,function(index,value){
// 						if(sequence==value){
// 							alert('已有相同順序，請重新選取');
// 						}
// 					})
// 				}else{
				if(file==""){//判斷有沒有要改圖片
					var form = $('#updateForm');
					var formdata = false;
					if (window.FormData) {
						formdata = new FormData(form[0]);
					}
					var formAction = form.attr('action');
					$.ajax({
						url : '/StarBusterCinima/adManagements/PUTNOCHANGEIMAGE',
						data : formdata ? formdata : form.serialize(),
						cache : false,
						contentType : false,
						processData : false,
						type : 'POST',
						success : function(data, textStatus, jqXHR) {
							// Callback code
						}
					}).done(function(){
							
						form.find(':input').val('');
						$('#updateClose').trigger('click');
// 						loadData();
						location.reload();
					});
				}else{
					
					
					var form = $('#updateForm');
					var formdata = false;
					if (window.FormData) {
						formdata = new FormData(form[0]);
					}
					var formAction = form.attr('action');
				
//                 $.ajax({
//                     url: '/profile',
//                     type: 'patch',
//                     data: form,
//                     cache: false,
//                     dataType: 'json',
//                     processData: false,
//                     contentType: false,
//                     success: function(response) {
//                         console.log(response);
//                     }
				
// 				$.ajax({
// 					url : '/StarBusterCinima/adManagements',
// 					data : formdata ? formdata : form.serialize(),
// 					cache : false,
// 					contentType : false,
// 					processData : false,
// 					type : 'POST',
// 					success : function(data, textStatus, jqXHR) {
// 								// Callback code
// 					}
// 				}).done(function(){
// 					form.find(':input').val('');
// 	 				});
					$.ajax({
						url : '/StarBusterCinima/adManagements/PUT',//假裝一下
						data : formdata ? formdata : form.serialize(),
						cache : false,
						contentType : false,
						processData : false,
						type : 'POST',//幹不能用PUT-.-，查了很久沒支援的樣子
						success : function(data, textStatus, jqXHR) {
								// Callback code
						}
					}).done(function(){
						
						form.find(':input').val('');
						$('#updateClose').trigger('click');
// 						loadData();
						location.reload();//有but 只好使用 大絕招= =
					});
	
				}
				
				
				
				
				
				}
				//if end
				
// 				$('#form').on('submit',function(e){
// 				    e.preventDefault();
// 				    var $form = $(this),
// 				        $files = $form.find('input[type=file][name]'),
// 				        data = new FormData();
// 				    $files.each(function() {
// 				        if ('files' in this && this.files.length > 0) {
// 				            data.append(this.name, this.files[0]);
// 				        }
// 				    });
// 				    // 省略了把非文件数据加入到data中
				    
// 				    $.ajax({
// 				        url: 'your url',
// 				        type: 'PUT',
// 				        data: data,
// 				        contentType: false,
// 				        processData: false,
// 				        success: function(result){}
// 				    });
// 				});
				
// 				}
				
			});
			//update end
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		})
// 					<input id="pfile" type="file" name="file" class="form-control"/>
		
		
		// 		$('#upload').click(function() {
		// 			var files = $('#uploadForm').prop('files');
		// 			var formData = new FormData();

		// 			formData.append("username", "Groucho");
		// 			formData.append("accountnum", 123456); // number 123456 is immediately converted to a string "123456"

		// 			// HTML file input, chosen by user
		// 			formData.append("file",$('#uploadForm')[0]);
		// 			$.ajax({
		// 				url : '/StarBusterCinima/adManagements',
		// 				type : 'POST',
		// 				cache : false,
		// 				data : formData,
		// 				processData : false,
		// 				contentType : false
		// 			}).done(function(res) {
		// 			}).fail(function(res) {
		// 			});
		// 		})
		//範本
// 		$('#upload').on('click', function() {
// 			console.log('123');
// 			var form = $('#updateAd');
// 			var formdata = false;
// 			if (window.FormData) {
// 				formdata = new FormData(form[0]);
// 			}

// 			var formAction = form.attr('action');
// 			$.ajax({
// 				url : '/StarBusterCinima/adManagements',
// 				data : formdata ? formdata : form.serialize(),
// 				cache : false,
// 				contentType : false,
// 				processData : false,
// 				type : 'POST',
// 				success : function(data, textStatus, jqXHR) {
// 					// Callback code
// 				}
// 			});
// 		});
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		//insert begin
		$('#insertSubmit').on('click', function() {
			var type =$('#type').val();
			var title=$('#title').val();
			var file=$('#file').val();
			var url=$('#url').val();
			var position=$('#position').val();
			var sequence=$('#sequence').val();
			var status=$('#status').val();
			//if begin
			if(type=="" || title=="" || file=="" || url==""|| position==""|| sequence=="" || status==""){
				alert('請輸入完整資訊');	
			}else{
			//新增至資料庫	
			
			var form = $('#insertForm');
			var formdata = false;
			if (window.FormData) {
				formdata = new FormData(form[0]);
			}
			var formAction = form.attr('action');
			//insert ajax begin
			$.ajax({
				url : '/StarBusterCinima/adManagements',
				data : formdata ? formdata : form.serialize(),
				cache : false,
				contentType : false,
				processData : false,
				type : 'POST',
				success : function(data, textStatus, jqXHR) {
					// Callback code
				}
			}).done(function(){
				form.find(':input').val('');
				loadData();
				$('#insertClose').trigger('click');
			});
			//insert ajax end
			}
			//if end
		});
		//insert end
		
		
		
		
	})
</script>

</html>