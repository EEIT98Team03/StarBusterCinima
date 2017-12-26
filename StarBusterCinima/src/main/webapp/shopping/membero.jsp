<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查訂單</title>
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.4.css" />
<link rel="stylesheet" type="text/css"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="../css/my.css" />
<link rel="stylesheet" type="text/css" href="../css/hmenu.css" />
</head>
<body>
	<div class="container">
		<div class="logo">
			<img src="../images/logo.png">
		</div>
		<div class="hmenu">
			<ul>
				<li><a href="index.jsp">首頁</a></li>
				<li><a href="glogin.jsp">快速登入</a></li>
				<li><a href="membero.jsp">查訂單</a></li>
				<li><a href="hibao.jsp">熱門電影海報</a></li>
				<li><a href="potter.jsp">哈利波特主題館</a></li>
				<li style="float: right"><a
					href='<c:url value="/listorder.controller" />'> <img
						src="../images/cart.png"> 購物車 <span>(0)</span>
				</a></li>
			</ul>
		</div>
		<div id="everythinBegins" class="admonster">
			<c:choose>
				<c:when test="${email == null}">
					<a href="glogin.jsp" style="color: white;">尚未登入</a>  ${errors.login_error}
				</c:when>
				<c:otherwise>
					<div style="float: left;">
						<img src='${picture}' style="height: 36px; margin-right: 16px;">
					</div>
					<div style="font-size: 1.5em;">
						<span id="loginUserName">${userName}</span>，電子信箱：<span
							id="loginEmail">${email}</span>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<div class="container" style="margin-top: 16px; margin-left: 0 auto;">
		<button id="buttonRecentOrderList" class="btn btn-success" style="width: 360px; margin-left: 16px;">列出最近三個月訂單</button>
	</div>
	<div id="divOrderHistory" style="width: 480px; font-size: 1.3em; margin-left: 210px; float: left;">
		<c:choose>
			<c:when test="${beanBrief != null && beanBrief.size() != 0}">
				<c:forEach var="beanBrief" items="${beanBrief}" varStatus="idx">
				★訂購時間：<button id="${beanBrief.orderId}" name="buttonSeeOrderDetail" class="btn btn-info">${beanBrief.purchasedTime}</button><br />
				★訂單金額：$${beanBrief.totalAmountFinal}<br />
				★收件人資訊（${beanBrief.payMethod}）<br /> ★★姓名：${beanBrief.receiverName}<br />
				★★手機：${beanBrief.receiverPhone}<br />
				★★地址：${beanBrief.receiverAddressArea}${beanBrief.receiverAddressMainPart}
				<hr />
				</c:forEach>
			</c:when>
			<c:otherwise>
				<c:choose>
					<c:when test="${beanBrief.size() == 0}">
					查無訂購記錄
					</c:when>
				</c:choose>
			</c:otherwise>
		</c:choose>
	</div>
	<div id="divOrderHistoryDetail" style="width: 500px; font-size: 1.2em; margin-left: 66px; float: left;">
		<div id="dialog-message" title="訂單詳情">
			<c:choose>
				<c:when test="${beanDetailList != null}">
					<div id="divOrderDetail" style="width: 360px; margin-left: 2px; padding: 2px;">
						訂購時間：${purchasedTime}<br />
						此訂單共有 ${beanDetailList.size()} 項商品<br />
						<c:forEach var="order" items="${beanDetailList}" varStatus="idx">
							${idx.index + 1}. 商品名稱：${order.itemName}<br />
							價格：$${order.unitPrice}<br />
							數量：${order.itemQquantity}<br />
							小計：$${order.sumTotal}<br />
						</c:forEach>
					</div>
				</c:when>
			</c:choose>
		</div>
	</div>
	<script>
		$(function() {
			$('#buttonRecentOrderList').click(function(){
				var loginUserName = $('#loginUserName').text();
				var loginEmail = $('#loginEmail').text();
				if (loginUserName.length == 0 || loginEmail.length == 0) {
					location.href = "glogin.jsp";
					return 0;
				}
				$.post('http://localhost:8080/StarBusterCinima/ReadOrderHistory', {"loginUserName":loginUserName,"loginEmail":loginEmail}, function(dataFromServlet){
					location.reload();
				});
			});
		});
	</script>
	<script>
	$(function() {
		$('button[name|="buttonSeeOrderDetail"]').click(function(){
			
				var loginEmail = $('#loginEmail').text();
				var itemId = $(this).prop("id");
				var purchasedTime = $(this).text();
				
				$.post('http://localhost:8080/StarBusterCinima/MemberSeeOrderDetail',
						{"itemId" : itemId, "loginEmail" : loginEmail, "purchasedTime" : purchasedTime}, function(dataFromServlet) {
							location.reload();
							location.href="#everythinBegins";
						});
			
		});
	});
	</script>
</body>
</html>