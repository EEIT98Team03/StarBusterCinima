<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action='<c:url value="/booking/booking.controller" />' method="get">
<table>
	<tr>
		<td>
			<input type="text" name="username" value="">
		</td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="test">
		</td>
	</tr>
</table>
</form>
<%-- ${param.username} --%>
<!-- '<c:url value="/filmMgmt/FilmMgmt.Controller" />' -->
</body>
</html>