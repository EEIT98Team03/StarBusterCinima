<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="loginMessage" scope="request">
	<font color='#21BABA'><BR>管理員&nbsp;:${AdministratorInfo.name}&nbsp;，感謝您使用本系統。</font>
</c:set>
	<%
		HttpSession sessison = request.getSession();
		session.removeAttribute("AdministratorInfo");
		//session.invalidate();
	%>
	<jsp:forward page="/adminstrator/adminLogin.jsp"></jsp:forward>
</body>
</html>