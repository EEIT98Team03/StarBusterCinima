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
</head>
<body>
<form action='<c:url value="/booking/controller/quickBooking.controller" />' method="get">
<input type="text" value=""/>
	<input type="submit" id="sb">
</form>



<script type="text/javascript">
$(function(){
	var test =${requestScope.jsonFilmsData};
	var str = JSON.stringify(test);
	console.log(str);
	// alert(test);
	
	// var str = JSON.stringify(test);
	// console.log(str);
	
	// var newArr = JSON.parse(str);
	
	// while (newArr.length > 0) {
	// 	console.log(newArr.pop() + "<br/>");
	
});
</script>
</body>
</html>