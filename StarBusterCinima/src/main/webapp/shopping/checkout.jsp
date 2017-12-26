<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>結帳</title>
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.4.css" />
<link rel="stylesheet" type="text/css"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="../css/my.css" />
<link rel="stylesheet" type="text/css" href="../css/hmenu.css" />
<link rel="stylesheet" type="text/css" href="../css/pure-min.css" />
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
		<div class="admonster">
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
	<div class="container" style="font-size: 1.3em; margin-top: 16px;">
		★訂購時間：${beanBrief.purchasedTime}<br />
		★訂單金額：$${beanBrief.totalAmountFinal}<br />
		★收件人資訊（${beanBrief.payMethod}）<br />
		★★姓名：${beanBrief.receiverName}<br />
		★★手機：${beanBrief.receiverPhone}<br />
		★★地址：${beanBrief.receiverAddressArea}${beanBrief.receiverAddressMainPart}
		<hr />
		訂單明細（${listBeanDetail.size()}）<br />
		<c:forEach var="order" items="${listBeanDetail}" varStatus="idx">
			${idx.index + 1}>>${order.itemName}<br />
			<div style="margin-left: 40px;">數量：${order.itemQquantity}<br /></div>
			<div style="margin-left: 40px;">售價：$${order.unitPrice}<br /></div>
			<div style="margin-left: 40px;">小計：$${order.sumTotal}<br /></div>
		</c:forEach>
	</div>
	<div class="container" style="width: 900px; margin: 16px auto;">
		<button id="loadAllOrders" class="btn btn-primary" style="width: 160px;">看所有訂單</button>
	</div>
<script>
$(function(){
	$('#loadAllOrders').click(function(){
		var loginEmail=$('#loginEmail').text();
		$.post('http://localhost:8080/StarBusterCinima/ReadOrderHistory', {"loginEmail":loginEmail}, function(dataFromServlet){
			location.href="http://localhost:8080/StarBusterCinima/shopping/membero.jsp";
		});
	});
});
</script>
</body>
</html>