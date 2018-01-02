<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form id="formWebATM" method="post" accept-charset="UTF-8"
 action="https://payment-stage.allpay.com.tw/Cashier/AioCheckOut/V4">

MerchantID 商店代號: 
<input type="text" name="MerchantID" value="2000132" /><br />
MerchantTradeNo 商店交易編號: 
<input type="text" name="MerchantTradeNo" value="DX20171229172926P0va" /><br />
MerchantTradeDate 商店交易時間: 
<input type="text" name="MerchantTradeDate" value="2017/12/29 17:29:26" /><br />
PaymentType 交易類型: 
<input type="text" name="PaymentType" value="aio" /><br />
TotalAmount 交易金額: 
<input type="text" name="TotalAmount" value="9" /><br />
TradeDesc 交易描述: 
<input type="text" name="TradeDesc" value="建立全金流測試訂單" /><br />
ItemName 商品名稱: 
<input type="text" name="ItemName" value="MacBook 30元X2#iPhone6s 40元X1" /><br />
ReturnURL 付款完成通知回傳網址: 
<input type="text" name="ReturnURL" value="https://developers.allpay.com.tw/AioMock/MerchantReturnUrl" /><br />
ChoosePayment 預設付款方式: 
<input type="text" name="ChoosePayment" value="ALL" /><br />
會員商店代碼: 
<input type="text" name="StoreID" value="" /><br />
ChooseSubPayment 預設子付款方式: 
<input type="text" name="ChooseSubPayment" value="" /><br />
ClientBackURL Client端返回廠商網址: 
<input type="text" name="ClientBackURL" value="https://developers.allpay.com.tw/AioMock/MerchantClientBackUrl" /><br />
CheckMacValue 簽章類型: 
<input type="text" name="EncryptType" value="1" /><br />
CheckMacValue 檢查碼: 
<input type="text" name="CheckMacValue" value="A41A9C57B9C4EE96BC6865A5AA01DF843C8FE1D23111F45799B07BABFE2781A8" /><br />
<input type="submit" value="送出訂單" />

</form>
                                                                        
</body>
</html>