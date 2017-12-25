<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>哈利波特主題館::StarBuster購物商城</title>
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
				<div style="display: block;">找到 9 項商品，共 1 頁</div>
				<div class="card-group">
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">哈利波特套書 1~7(完)</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/harry_potter_books.jpg"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$2850</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=harry1-1" />' id="buttonAddToCartIdHarry1-1" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3" style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">哈利波特貓頭鷹馬克杯</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/harry_potter_bird.jpg"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$350</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=harry1-2" />' id="buttonAddToCartIdHarry1-2" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3" style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">哈利波特霍格華茲積木</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/harry_potter_contest.jpg"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$1250</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=harry1-3" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
				</div>
			</div>
			<div class="product_gallery">
				<div class="card-group">
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">哈利波特佛地魔面具</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/harry_potter_voldemort_mask.jpg"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$300</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=harry2-1" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">哈利波特光輪兩千模型</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/harry_potter_light_wheel.jpg"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$700</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=harry2-2" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">哈利波特吟遊詩人皮陀故事集</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/harry_potter_poet.jpg"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$250</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=harry2-3" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
				</div>
			</div>

		<div class="product_gallery">
				<div class="card-group">
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">哈利波特葛萊芬多圍巾</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/harry_potter_scarf.jpg"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$700</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=harry3-1" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">哈利波特霍格華茲立體拼圖</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/harry_potter_puzzle.jpg"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$800</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=harry3-2" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">哈利波特葛萊芬多馬克杯</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/harry_potter_mug.jpg"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$400</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=harry3-3" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>					
				</div>
			</div>
		</article>
	</div>
</body>
</html>