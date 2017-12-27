<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>熱門電影海報::StarBuster購物商城</title>
<script src="../js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.4.css" />
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
				<div style="display: block;">找到 10 項商品，共 2 頁</div>
				<div class="card-group">
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">東方快車謀殺案海報</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/hibao009.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$310</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=hibao009" />' id="buttonAddToCartIdHarry1-1" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3" style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">犯罪心理海報</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/hibao008.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$310</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=hibao008" />' id="buttonAddToCartIdHarry1-2" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3" style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">逃出亞馬遜海報</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/hibao007.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$310</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=hibao007" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
				</div>
			</div>
			<div class="product_gallery">
				<div class="card-group">
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">解憂雜貨店海報</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/hibao006.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$310</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=hibao006" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">氣象戰海報</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/hibao005.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$310</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=hibao005" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">老師你會不會回來海報</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/hibao004.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$310</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=hibao004" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
				</div>
			</div>

		<div class="product_gallery">
				<div class="card-group">
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">功夫瑜伽海報</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/hibao003.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$310</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=hibao003" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">軍艦島海報</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/hibao002.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$310</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=hibao002" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>
					<div class="card text-white bg-dark mb-3"
						style="margin: 10px;">
						<div class="card-header p-3 mb-2 bg-success text-white font-weight-bold">拆彈專家海報</div>
						<div class="card-body">
							<a href=''>
								<img src="../images/hibao001.png"
								style="height: 300px; width: 297px;" />
							</a>
							<div style="margin-top: 6px; float: right;">特價：$310</div>
						</div>
						<div class="card-footer bg-transparent border-success" style="text-align: right;">
							<img src="../images/cart.png" style="vertical-align: middle">
							<a href='<c:url value="/cart.controller?itemNameHidden=hibao001" />' id="buttonAddToCartIdHarry1-3" class="btn btn-outline-success">加入購物車</a>
						</div>
					</div>				
				</div>
			</div>
		<div class="container" style="margin-left: 300px;"><button id="buttonNextPage" class="btn btn-primary" style="width: 120px;">下一頁</button></div>
		</article>
	</div>
</body>
</html>