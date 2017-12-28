<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://libs.useso.com/js/jquery/1.7.2/jquery.min.js"></script>
<title>Insert title here</title>
<style>
#sliderOutside
{
top: 500px;
right:-360px;
buttom:200px;
width:360px;
position:fixed;
z-index:9999;
}

#sliderContain{
background-color:#20b7b7;
text-align:center;
padding-top:20px;
}

#sliderTab {
position:absolute;
top:20px;
left:-24px;
width:24px;
background-color:#20b7b7;
color:#ffffff;
font-family:Arial, Helvetica, sans-serif;
text-align:center;
padding:9px 0;

-moz-border-radius-topleft:10px;
-moz-border-radius-bottomleft:10px;
-webkit-border-top-left-radius:6px;
-webkit-border-bottom-left-radius:6px;
}
#sliderTab span {
display:block;
height:12px;
padding:1px 0;
line-height:12px;
text-transform:uppercase;
font-size:12px;
}
select{
width:200px;
}
table{
text-align: center;
}
</style>


</head>
<body>
<form action='<c:url value="/booking/controller/quickBooking.controller" />' method="get">
<input id="getFilms" type="text" value="${requestScope.jsonFilmsData}" style="display: none;"/>
<input type="text" value=""/>
	<input type="button" id="sb" value="test">
</form>


<div id="sliderOutside">
	<div id="sliderTab">
		<span>快</span>
		<span>速</span>
		<span>訂</span>
		<span>票</span>
	</div>
	
	<div id="sliderContain">
		<form action="">
		<table>
			<tr><td>
				<select id="selectAllFilms" name="">
					<option label="請選擇電影"></option>
				</select>
			</td></tr>
			<tr><td>
				<select id="selectDate" name="">
					<option label="請選擇日期"></option>
				</select>
			</td></tr>
			<tr><td>
				<select id="selectTimes" name="">
					<option label="請選擇場次"></option>
				</select>
			</td></tr>
			<tr><td>
				<input type="submit"></input>
			</td></tr>
		</table>
		</form>
	</div>
	
</div>

<script type="text/javascript">
$(function(){
	var eachFilm ;


	//第一個select塞入電影名稱資料
	$.ajax({
		 url: '<c:url value="/booking/controller/quickBooking.controller" />',
		 type: "GET",
		 dataType: "json",
		 success: function(Jdata) {
		    eachFilm = jQuery.makeArray(Jdata);
			for(var i=0 ; i<Object.keys(Jdata).length ; i++){
// 				alert(eachFilm[i].filmName);
			    $('#selectAllFilms').append(' <option> '+ eachFilm[i].filmName +' </option> ');
			}
		 },
		 
		 error: function() {
		   console.log("json parse error");
		 }
	});//End of 第一個select塞入電影名稱資料
	

	//選中電影 把select的name換成選中的option的value
	$('#selectAllFilms').change(function(){
// 		alert("選中: "+ $('#selectAllFilms').val() ); //測試被選中的電影
// 		alert($('#selectAllFilms').attr('name'));    //測試該select的name屬性值預設為空
		
		var changeName = $('#selectAllFilms');//選擇select
		changeName.attr('name',$("#selectAllFilms").val());//把select的name換成選中的option的value
		console.log($('#selectAllFilms').attr('name'));//測試是否更換成功
		$("#selectDate").find("option").not(":first").remove();//清空
		$("#selectTimes").find("option").not(":first").remove();//清空
		//將選中的電影名稱給後端 並傳回日期
		$.ajax({
			 url: '/StarBusterCinima/booking/controller/quickBookingSections.controller/'+$('#selectAllFilms').attr('name'),
			 type: "GET",
			 dataType: "json",
			 success: function(Jdata) {
				 eachSection = jQuery.makeArray(Jdata);
				 for(var i=0 ; i<eachSection.length ; i++){
//	 	 				alert(eachSection[i]);
						$('#selectDate').append(' <option> '+ eachSection[i] +' </option> ');
					}
			 },
			 error: function() {
			 	console.log("ajax process fail.");
			 }
		});//end of 將選中的電影名稱給後端
		
		
// 		//得到場次日期塞進去第二個select
// 		$.ajax({
// 			 url: '/StarBusterCinima/booking/controller/quickBookingSections.controller/filmname',
// 			 type: "GET",
// 			 dataType: "json",
// 			 success: function(Jdata) {
// 				console.log(Jdata);
// 			    eachSection = jQuery.makeArray(Jdata);
// // 				alert(eachSection);
// // 				alert(eachSection.length);
// 				for(var i=0 ; i<eachSection.length ; i++){
// // 	 				alert(eachSection[i]);
// 	 				$('#selectDate').append(' <option> '+ eachSection[i] +' </option> ');
// 				}
// 			 },
// 			 error: function() {
// 			   console.log("json parse error");
// 			 }
// 		});//End of 得到場次日期
	});//End of選中第一個select
	
	
	
	
	//得到場次時間&塞進去第二個select
	$('#selectDate').change(function(){
// 		alert('haha');
// 		alert("選中: "+ $('#selectDate').val() ); //測試被選中的日期
// 		alert($('#selectDate').attr('name'));    //測試該select的name屬性值預設為空
		
		var changeName = $('#selectDate');//選擇select
		changeName.attr('name',$("#selectDate").val());//把select的name換成選中的option的value
		console.log($('#selectDate').attr('name'));//測試是否更換成功
		
		$("#selectTimes").find("option").not(":first").remove();//清空
		
		//將選中的日期給後端
		$.ajax({
			 url: '/StarBusterCinima/booking/controller/quickBookingSections.controller/'+$('#selectDate').attr('name'),
			 type: "GET",
			 dataType: "json",
			 success: function(Jdata) {
// 			 	console.log("times process success.")
				eachTime = jQuery.makeArray(Jdata);
// 				alert(eachTime);
// 				alert(eachTime.length);
// 				alert(eachTime[0])
					for(var i=0 ; i<eachTime.length ; i++){
//	 	 				alert(eachSection[i]);
		 				$('#selectTimes').append(' <option class="class_times"> '+ eachTime[i] +' </option> ');
					}
				
			 },
			 
			 error: function() {
			 	console.log("ajax process fail.");
			 }
		});//end of 將選中的電影名稱給後端
		
		
	});
	
	
	
	
	//側邊選單
	var w = $("#sliderContain").width();
	$('#sliderContain').css('height', ($(window).height()) + 'px' ); 
	
	
	
	$("#sliderTab").mouseover(function(){
		if ($("#sliderOutside").css('right') == '-'+w+'px'){
			$("#sliderOutside").animate({ right:'0px' }, 600 ,'swing');
		}
	});
	
	
	$("#sliderContain").mouseleave(function(){
		$("#sliderOutside").animate( { right:'-'+w+'px' }, 600 ,'swing');
	});

	$('#sb').click(function(){
		window.location.replace('<c:url value="/quickBooking/quickBooking.jsp" />');
	});
	
});//End of JQroot
</script>
</body>
</html>