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
<script src="../js/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.4.css" />
<link type="text/css" rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"/>
<link rel="stylesheet" type="text/css" href="../css/my.css" />
<link rel="stylesheet" type="text/css" href="../css/hmenu.css" />
<link rel="stylesheet" type="text/css" href="../css/pure-min.css" />
<style>
         .ui-widget-header,.ui-state-default, ui-button{
            background:#b9cd6d;
            border: 1px solid #b9cd6d;
            color: #FFFFFF;
            font-weight: bold;
         }
</style>
</head>
<body>
	<div class="container">
		<div class="logo">
			<img src="../images/logo.png">
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
					<div style="font-size: 1.5em;"><span id="currentUserName">${userName}</span>，電子信箱：<span id="currentUserEmail">${email}</span>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<div id="itemListTableBegin">
			<div style="margin: 16px;">
				<h5>購物車>>購物明細 >>選擇運送方式</h5>
			</div>
			<div style="margin-left: 60px; color: black">
				<hr />
				<div class="card">
					<div class="card-body" style="width: 360px; float: left;">
						<p class="card-text" style="color: blue;">取貨時間：即日起 至
							${getItemDeadline} 止<br />取貨代碼：${goodsCode}</p>
						<label class="btn btn-primary active">
							<input id="radioDIY" type="radio" name="options" id="option1"
							autocomplete="off" checked>現場付款取貨
						</label>
					</div>
					<div class="card-body" style="width: 360px; float: right;">
						<p class="card-text" style="color: green;">24小時內送達，免運費<br />最晚到貨時間：${deliveryDeadline}</p>
						<label class="btn btn-success"> <input
							id="radioHomeDelivery" type="radio" name="options" id="option2"
							autocomplete="off">貨到付款
						</label>
						<details id="addressDetails" style="margin: 10px; display: none;">
							<summary id="summaryButton">收件人資訊</summary>
							<button id="opener-address" class="btn btn-info" style="margin: 16px;">從地址資料庫選擇</button><br />
							<input id="receiverName" type="text" placeholder="收件人姓名" size="20" value="${userName}"/><br />
							<input id="receierPhone" type="text" placeholder="收件人電話" size="20" />
							<div id="dialog-address" title="地址資料庫">
								<input type="radio" id="contactAddress1" name="contactAddress" value="大安區復興南路一段390號3樓" checked/><span class="badge badge-dark" style="margin-left: 6px;">諸葛亮</span> 台北市大安區復興南路一段390號3樓 02-7533967<br />
								<input type="radio" id="contactAddress2" name="contactAddress" value="內湖區新湖三路23號" /><span class="badge badge-dark" style="margin-left: 6px;">曹阿蠻</span> 台北市內湖區新湖三路23號 0938-538538<br />
								<input type="radio" id="contactAddress3" name="contactAddress" value="鶯歌區建國里18鄰育英街2號" /><span class="badge badge-dark" style="margin-left: 6px;">司馬懿</span> 新北市鶯歌區建國里18鄰育英街2號 0922-859982
							</div>
							<form>
								<select id="selectAddressArea">
									<option>基隆市</option>
									<option id="cityTaipeiMain" selected>台北市</option>
									<option id="cityNewTaipei">新北市</option>
									<option value="桃園市" >桃園市</option>
									<option value="新竹市" >新竹市</option>
									<option value="新竹縣" >新竹縣</option>
									<option value="苗栗縣" >苗栗縣</option>
									<option value="臺中市" >臺中市</option>
									<option value="彰化縣" >彰化縣</option>
									<option value="南投縣" >南投縣</option>
									<option value="雲林縣" >雲林縣</option>
									<option value="嘉義市" >嘉義市</option>
									<option value="嘉義縣" >嘉義縣</option>
									<option value="臺南市" >臺南市</option>
									<option value="高雄市" >高雄市</option>
									<option value="屏東縣" >屏東縣</option>
									<option value="臺東縣" >臺東縣</option>
									<option value="花蓮縣" >花蓮縣</option>
									<option value="宜蘭縣" >宜蘭縣</option>
									<option value="澎湖縣" >澎湖縣</option>
									<option value="金門縣" >金門縣</option>
									<option value="連江縣" >連江縣</option>
								</select>
								<input id="receiver_address" type="text" placeholder="輸入地址" size="40" />
							</form>
						</details>
					</div>
				</div>
				<div style="background-color: white ; color: black; margin-top: 30px; padding: 36px;">
					<p class="card-text" style=" ">折扣碼：<input type="text" size="16"/></p>
				</div>
			</div>
			<table id="tableOrderSheet" class="pure-table pure-table-bordered"
				style="margin: 30px auto;">
				<thead>
					<tr>
						<th>No.</th>
						<th style="min-width: 400px;">商品名稱</th>
						<th style="min-width: 160px;">價格</th>
						<th style="min-width: 120px;">數量</th>
						<th style="min-width: 160px;">小計</th>
						<th class="tableItemLabel" style="min-width: 160px; display: none;">標籤</th>
					</tr>
				</thead>
				<tbody id="tbodyOrder"
					style="background-color: white; color: black;">
					<c:forEach var="product" items="${oJson}" varStatus="idx">
						<tr id="trHere">
							<td style="text-align: center;">${idx.index + 1}</td>
							<td>${product.商品名稱}</td>
							<td id="productUnitPrice${idx.index + 1}"
								style="text-align: right;">$${product.價格}</td>
							<td id="itemQty${idx.index + 1}">${product.數量}</td>
							<td id="sumAmount${idx.index + 1}">${product.小計}</td>
							<td id="itemQtyHiddenValue${idx.index + 1}" class="tableItemLabel" style="display: none">${itemNameHiddenList.get(idx.index)}</td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot style="background-color: #BFE1E5; color: black;">
					<tr id="tableFooter">
						<td></td>
						<td></td>
						<td></td>
						<td id="totalQty">${intTotalItemCount}</td>
						<td id="totalSum" style="color: #FF5096;">$${intTotalAmount}</td>
					</tr>
				</tfoot>
			</table>
			<div style="margin-left: 500px;">
				<button id="buttonFinal" class="btn btn-danger" style="width: 160px;">完成</button>
			</div>
		</div>
	</div>
	<script>
		$('#radioHomeDelivery').click(function() {
			if ($('#radioHomeDelivery').prop("checked")) {
				$('#addressDetails').show(500);
				$('#addressDetails').prop("open", true);
			} else {
				$('#addressDetails').prop("open", false);
				$('#addressDetails').hide();
			}
		});
	</script>
	<script>
		$('#radioDIY').click(function() {
			if ($('#radioDIY').prop("checked")) {
				$('#addressDetails').prop("open", false);
				$('#addressDetails').hide();
			}
		});
	</script>
    <script>
         $(function() {
            $("#dialog-address").dialog({
               autoOpen: false, 
               modal: true,
               closeText: "",
               minWidth: 800,
               buttons: {
            	   確定: function() {
            		   var addr = "";
            		   var addrRegion = 1;
            		   var tel = "";
            		   var rname = "";
            		   if($('#contactAddress1').prop("checked")){
            			   addr = $('#contactAddress1').attr("value");
            			   addrRegion = 1;
            			   tel ="02-7533967";
            			   rname = "諸葛亮";
            		   } else if($('#contactAddress2').prop("checked")){
            			   addr = $('#contactAddress2').attr("value");
            			   addrRegion = 1;
            			   tel ="0938-538538";
            			   rname = "曹阿蠻";
            		   } else {
            			   addr = $('#contactAddress3').attr("value");
            			   addrRegion = 2;
            			   tel ="0922-859982";
            			   rname = "司馬懿";
            		   }
            		   $(this).dialog("close");
            		   $('#receiver_address').prop("value", addr);
            		   if(addrRegion == 2){
            		   		$('#cityNewTaipei').prop("selected", true);
            		   } else {
            			    $('#cityTaipeiMain').prop("selected", true);
            		   }
            		   $('#receiverName').prop("value", rname);
            		   $('#receierPhone').prop("value", tel);
            	   }
               },
            });
            $("#opener-address").click(function() {
               $("#dialog-address").dialog("open");
            });
         });
      </script>
 
<script>
	$(function(){
		$('#buttonFinal').click(function(){
			if ($('#radioHomeDelivery').prop("checked")) {
				
				var currentUserName=$('#currentUserName').text();
				var currentUserEmail=$('#currentUserEmail').text();
				
				if (currentUserEmail == null || currentUserEmail.length == 0) {
					alert('請先登入');
					location.href='glogin.jsp';
					return 0;
				}
				
				var totalSumForThisOrder = $('#totalSum').text();
				totalSumForThisOrder = totalSumForThisOrder.substring(1);
				
				var receiverName = $('#receiverName').prop("value");
				var receierPhone = $('#receierPhone').prop("value");
				var receiverAdress = $('#receiver_address').prop("value");
				var receiverRegion = $('#selectAddressArea :selected').text();

				if(receiverName.length == 0 || receierPhone.length == 0 || receiverAdress.length == 0){
					alert('收件人資料不完整：姓名、電話、地址都是必須填寫的欄位！！');
					return 0;
				}

				var jsonReceiverData = {"totalSumForThisOrder":totalSumForThisOrder,"currentUserName":currentUserName,"currentUserEmail":currentUserEmail,"receiverName":receiverName,"receierPhone":receierPhone,"receiverRegion":receiverRegion,"receiverAdress":receiverAdress};
				
				$('#tableFooter').css("display", "none");
				$('.tableItemLabel').css("display", "block");
				var tdata = $('#tableOrderSheet').tableToJSON({
			        ignoreColumns: [0],
			        ignoreHiddenRows: true
				  });
				
				$.extend(true, jsonReceiverData,tdata);
				
				jsonReceiverData = JSON.stringify(jsonReceiverData);
				//alert(jsonReceiverData);
				
	 			$.post('http://localhost:8080/StarBusterCinima/OrderFinalCollector', {orderContentFull:jsonReceiverData, secretCode:'quporestatuory'}, function(dataFromServlet){
	 				location.href='checkout.jsp';
				});
			}

		});
	});
</script>
</body>
</html>
