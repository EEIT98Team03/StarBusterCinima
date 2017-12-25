<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>購物車::StarBuster購物商城</title>
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/jquery.tabletojson.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../css/my.css" />
<link rel="stylesheet" type="text/css" href="../css/hmenu.css" />
<link rel="stylesheet" type="text/css" href="../css/pure-min.css" />
<script>
$(function(){
	CalculateQtyAndSum();
	$('.form-control').change(function(){
		var cboId = $(this).attr("id");
		var num = cboId.substring(8);
		var q = $('#productUnitPrice' + num).text().substring(1);
		$('#sumAmount' + num).text(q * this.value);
		$('#itemQtyHiddenValue' + num).text(this.value);
		CalculateQtyAndSum();
	});
	
	function CalculateQtyAndSum(){
		var child = $('#tbodyOrder').find('tr').length;
		var sum = 0;
		var sumQty = 0;
		for (i = 1; i <= child; i++) { 
			var ccc = $('#sumAmount' + i).text();
			ccc = parseInt(ccc);
			sum = sum + ccc;
			var ddd = $('#comboBox' + i).val();
			ddd = parseInt(ddd);
			sumQty = sumQty + ddd;
		}
		$('#totalQty').text(sumQty);
		$('#totalSum').text(sum);
	};
});
</script>
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
				<li style="float: right"><a href="listorder.jsp"> <img
						src="../images/cart.png"> 購物車 <span
						style="font-size: 1em;"> <c:choose>
								<c:when test="${cartSetSize == null || cartSetSize == 0}">
								(0)
								</c:when>
								<c:otherwise>
								(<span id="spanShowCartSizeMain">${cartSetSize}</span>)
								</c:otherwise>
							</c:choose>
					</span>
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
					<div style="font-size: 1.5em;">${userName}，電子信箱：${email}
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<article>

			<div id="itemListTableSection" style="margin: 16px;">
				<div style="margin: 16px;"><h5>購物車>>購物明細 ( <span id="spanShowCartSize">${cartSetSize}</span> )</h5></div>
<%-- 				<div style="height: 300px;">
					<c:forEach var="shoppingList" items="${cartSet}">
						${shoppingList.itemName}<br />
					</c:forEach>
				</div> --%>
				<div id="itemListTableBegin">
					<table id="tableOrderSheet" class="pure-table pure-table-bordered" style="margin: 0 auto;">
						<thead>
							<tr>
								<th>No.</th>
								<th style="min-width: 400px;">商品名稱</th>
								<th style="min-width: 160px;">價格</th>
								<th style="min-width: 120px;">數量</th>
								<th style="min-width: 160px;">小計</th>
								<th style="display: none">數量</th>
							</tr>
						</thead>
						<tbody id="tbodyOrder" style="background-color: white; color: black;">
							<c:forEach var="product" items="${cartSet}" varStatus="idx">
								<tr id = "trHere">
									<td style="text-align: center;">${idx.index + 1}</td>
									<td>${product.itemName}</td>
									<td id="productUnitPrice${idx.index + 1}" style="text-align: right;">$${product.unitPrice}</td>
									<td id="itemQty${idx.index + 1}" height="55">
										<select id="comboBox${idx.index + 1}" class="form-control" style="height:42px;">
											<c:forEach begin="0" end="10" varStatus="loop">
	  											<c:choose>
	  												<c:when test="${loop.index == 1}">
	  													<option value="${loop.index}" selected>${loop.index}</option>
	  												</c:when>
	  												<c:otherwise>
	  													<option value="${loop.index}">${loop.index}</option>
	  												</c:otherwise>
	  											</c:choose>
	  										</c:forEach>
										</select>
									</td>
									<td id="sumAmount${idx.index + 1}">${product.unitPrice}</td>
									<td id="itemQtyHiddenValue${idx.index + 1}" style="display: none">1</td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot style="background-color: #BFE1E5; color: black;">
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td id="totalQty">0</td>
								<td id="totalSum">$0</td>
								<td style="display: none"></td>
							</tr>
						</tfoot>
					</table>
				</div>
				<div style="margin-left: 32px; width: 999px; padding: 6px;"><button id="buttonNextStep" class="btn btn-primary" style="margin-right: 50px; float: right;">下一步：運送方式</button></div>
			</div>
			
		</article>
	</div>

<script>
$(function(){
	
	$('#buttonNextStep').click(function(){
		var sum = 0;
		$('.form-control').each(function(index){
			var rrr = $(this).val();
			rrr = parseInt(rrr);
			sum = sum + rrr;
		});
		
		$('#spanShowCartSize').text(sum);
		$('#spanShowCartSizeMain').text(sum);
		if(sum == 0){
			alert('購物車內沒有商品！');
			return 0;
		};
		
		var totalAmount = document.getElementById('totalSum').innerText;
		var userConfirm = confirm("請核對您的訂購資料：\n總數量：" + sum + "\n總金額：$" + totalAmount);
		if (userConfirm) {
			
			var child = $('#tbodyOrder').find('tr').length;
			for (i = 1; i <= child; i++) { 
				var txt = $('#productUnitPrice' + i).text();
				txt = txt.substring(1);
				$('#productUnitPrice' + i).text(txt);
			}
			
			var tdata = $('#tableOrderSheet').tableToJSON({
		        ignoreColumns: [0],
		        ignoreHiddenRows: false
			  });
			tdata = JSON.stringify(tdata);
	
 			$.post('http://localhost:8080/StarBusterCinima/OrderDelivery', {s:tdata}, function(dataFromServlet){
 				location.href='delivery.jsp';
			});
		}
	});
	
});
</script>
</body>
</html>