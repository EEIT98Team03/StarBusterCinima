<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js'></script>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
@import url(https://fonts.googleapis.com/earlyaccess/notosanstc.css);
*{
/*      border: 1px dotted red;           */
	margin: 0;
    padding: 0;
	font-family: 'Noto Sans TC';
	font-weight: 300;
	color:white;
}
.filmIntroContain{
/* 	position:relative; */
	width: 64%;
	height: 450px;
	margin:0 auto;
	position: relative;
	top:200px;
	background-color:#4F4F4F;
	border-top:6px solid #20B7B7;
/* 	opacity: 0.4; */
	height: 100000px;
	padding: 4% 9.5%;
}
.orderTitle{

	margin-bottom: 30px; 
	font-size: 2em;
}



.orderTable{

	border:1px dotted #BEBEBE; 
	padding:20px;
	margin:30px 0px;
}

.ordercol{
padding:10px;
overflow: hidden;

}

.col-md-4{
text-align: right;
}


.col-md-8 div{
border-left:1px dotted #BEBEBE; 
padding-left: 20px;
}

p{
/* 	line-height: 10px; */
}

.checkout-button {
	
 	width:160px;
 	height:40px;
/*  	border:2px blue none;  */
 	border-radius: 1px;
 	border:2px solid #20B7B7;
 	color:#20B7B7;
 	font-weight: 500;
 	background:#4F4F4F;
}

.divorderForm{
	text-align: center;
}
.divorderForm input[type="text"] , .divorderForm span{
/*   	display: none;   */
color:black;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="${pageScope.request.contextPath}/fragement/top.jsp"></jsp:include>



<div></div>

<div class="filmIntroContain">
<!-- 	<input type="button" class="classtest" value="11111111" style="color:white"/> -->
	<div class="orderTitle">確認訂票資訊</div>
	
	<div class="container-fluid orderTable">
		<div class="col-md-4 ordercol">
			<div class="ehdiv orderdiv"><p>電影名稱</p></div>
		</div>
		<div class="col-md-8 ordercol">
			<div class="ehdiv orderdiv"><p> ${TicketOrderControllerFilmName} </p></div>
		</div>


		<div class="col-md-4 ordercol">
			<div class="ehdiv orderdiv"><p>訂票場次</p></div>
		</div>
		<div class="col-md-8 ordercol">
			<div class="ehdiv orderdiv"><p>${ticketOrderBean.filmsectiontime}</p></div>
		</div>


		<div class="col-md-4 ordercol">
			<div class="ehdiv orderdiv"><p>張數</p></div>
		</div>
		<div class="col-md-8 ordercol">
			<div class="ehdiv orderdiv"><p>${ticketOrderBean.ticketCount}張</p></div>
		</div>


		<div class="col-md-4 ordercol">
			<div class="ehdiv orderdiv"><p>座位編號</p></div>
		</div>
		<div class="col-md-8 ordercol">
			<div class="ehdiv orderdiv"><p>${ticketOrderBean.seatNum}</p></div>
		</div>


		<div class="col-md-4 ordercol">
			<div class="ehdiv orderdiv"><p>金額</p></div>
		</div>
		<div class="col-md-8 ordercol">
			<div class="ehdiv orderdiv"><p>${ticketOrderBean.ticketOrderPrice}元</p></div>
		</div>
	</div>
	
<!-- 	<div class="orderForm"> -->
<!-- 		<input type="text" class="orderFormInput" value=""> -->
<!-- 		<input type="text" class="orderFormInput" value=""> -->
	
	
<!-- 	</div> -->
<div class="divorderForm">
	<form class="orderForm" action="/StarBusterCinima/booking/controller/ticketorder.controller/orderCheckOk" method="POST">

		<span id="elticketOrderDate">${ticketOrderBean.ticketOrderDate}</span>
		<span id="elfilmsectiontime">${ticketOrderBean.filmsectiontime}</span>
		<span id="elticketCount">${ticketOrderBean.ticketCount}</span>
		<span id="elseatNum">${ticketOrderBean.seatNum}</span>
		<span id="elticketOrderPrice">${ticketOrderBean.ticketOrderPrice}</span>
		<span id="elticketState">${ticketOrderBean.ticketState}</span>
		<span id="elfilmId">${ticketOrderBean.filmId}</span>
		<span id="elmemberId">${ticketOrderBean.memberId}</span>
		<span id="elticketCode">${ticketOrderBean.ticketCode}</span>
		<input type="text" id="ticketOrderDate" name="ticketOrderDate" value="" >
		<input type="text" id="filmsectiontime" name="filmsectiontime" value="" >
		<input type="text" id="ticketCount" name="ticketCount" value="" >
		<input type="text" id="seatNum" name="seatNum" value="" >
		<input type="text" id="ticketOrderPrice" name="ticketOrderPrice" value="" >
		<input type="text" id="ticketState" name="ticketState" value="" >
		<input type="text" id="filmId" name="filmId" value="" >
		<input type="text" id="memberId" name="memberId" value="" >
		<input type="text" id="ticketCode" name="ticketCode" value="" >
		
<!-- 		<input type="submit" class="checkout-button" id="checkout-button" value="確認送出" > -->
		<input type="submit" class="checkout-button" id="checkout-button" value="確認送出" >
	</form>
</div>
	
	
	
	
</div>

<!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"> -->
<!--   Launch demo modal -->
<!-- </button> -->

<!-- Modal -->
<!--
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
-->






<script type="text/javascript">


	$(document).ready(function(){
// 		var dates = '<c:out value="${ticketOrderBean}"/>'
		
		$('#ticketOrderDate').val($('#elticketOrderDate').text());
		$('#filmsectiontime').val($('#elfilmsectiontime').text());
		$('#ticketCount').val($('#elticketCount').text());
		$('#seatNum').val($('#elseatNum').text());
		$('#ticketOrderPrice').val($('#elticketOrderPrice').text());
		$('#ticketState').val($('#elticketState').text());
		$('#filmId').val($('#elfilmId').text());
		$('#memberId').val($('#elmemberId').text());
		$('#ticketCode').val($('#elticketCode').text());
		
		$('.orderForm').submit(function(){
			alert("訂票成功!\n\n您的取票編號為「"+$('#elticketCode').text()+"」\n\n若遺失可至「會員中心-購票紀錄」中查看\n\n畫面將跳轉至購票紀錄\n\n\n星霸影城祝您觀影愉快");


			
			
			
			
			
			
			
			
			
			
			
		})
		
		
		
	})//ready
	


</script>


</body>
</html>