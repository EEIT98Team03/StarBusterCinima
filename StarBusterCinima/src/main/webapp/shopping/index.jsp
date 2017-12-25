<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首頁::StarBuster購物商城</title>
<script src="../js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
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
				<li style="float: right">
					<a href='<c:url value="/listorder.controller" />'>
						<img src="../images/cart.png" > 購物車
						<span>
							<c:choose>
								<c:when test="${cartSetSize == null || cartSetSize == 0}">
								(0)
								</c:when>
								<c:otherwise>
								(${cartSetSize})
								</c:otherwise>
							</c:choose>
						</span>
					</a>
				</li>
			</ul>
		</div>
		<div class="admonster">
			<c:choose>
				<c:when test="${email == null}">
					<a href="glogin.jsp" style="color: white;">尚未登入</a>  ${errors.login_error}
				</c:when>
				<c:otherwise>
					<div style="float: left;"><img src='${picture}' style="height: 36px; margin-right: 16px;"></div>
					<div style="font-size: 1.5em;">${userName}，電子信箱：${email}</div>
				</c:otherwise>
			</c:choose>
		</div>

		<article style="background-color: white; color: black; padding: 10px; margin-top: 30px;">
			<div class="product_gallery">
				<div style="display: block;">找到 27 項商品，共 3 頁</div>
				<div class="card-group">
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">正義聯盟背包</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/Justice_League_backpack.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$750</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=jl-bag2-1" />' id="buttonAddToCartIdHarry1-1" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3" style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">蜘蛛人背包</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/Justice_League_backpack2.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$750</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=spiderman-bag2-1" />' id="buttonAddToCartIdHarry1-2" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3" style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">蝙蝠俠背包</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/Justice_League_backpack3.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$750</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=batman-bag2-2" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
				</div>
			</div>
			<div class="product_gallery">
				<div class="card-group">
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">正義聯盟馬克杯</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/Justice_League_mug.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$300</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=jl-mug2-1" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">正義聯盟卡通版白T</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/Justice_League_tshirt.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$250</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=jl-white-t" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">蝙蝠俠羅賓鑰匙圈</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/robin_keychain.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$150</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=robinkey" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
				</div>
			</div>

		<div class="product_gallery">
				<div class="card-group">
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">超人馬克杯</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/superman_mug.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$300</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=superman3-1" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">Q版綠巨人浩克公仔</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/qhulk.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$390</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=hulk3-2" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">變形金剛大黃蜂</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/bigbee.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$2100</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=bigbee3-3" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>				
				</div>
			</div>
		<div class="container" style="margin-left: 300px;"><button id="buttonNextPage" class="btn btn-primary" style="width: 120px;">下一頁</button></div>
		</article>
	</div>
</body>
</html>