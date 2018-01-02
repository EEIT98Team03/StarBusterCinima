<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js'></script>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<!--   <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script> -->
<!--   <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script> -->
<!--   <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
@import url(https://fonts.googleapis.com/earlyaccess/notosanstc.css);
*{
/*      border: 1px dotted red;           */
	margin: 0;
    padding: 0;
	font-family: 'Noto Sans TC';
	font-weight: 300;
	color:white;
}
.filmIntroContain{
/* 	position:relative; */
	width: 64%;
	height: 450px;
	margin:0 auto;
	position: relative;
	top:200px;
	background-color:#4F4F4F;
	border-top:6px solid #20B7B7;
/* 	opacity: 0.4; */
	height: 100000px;
	padding: 4% 9.5%;
}
.orderTitle{

	margin-bottom: 30px;
	font-size: 2em;
}
.orderTable{

	 border:1px dotted #BEBEBE; 
	padding:20px;

}

.ordercol{
padding:10px;
overflow: hidden;

}

.col-md-4{
text-align: right;
}


.col-md-8 div{
 border-left:1px dotted #BEBEBE; 
padding-left: 20px;
}

p{
/* 	line-height: 10px; */
}


</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="${pageScope.request.contextPath}/fragement/top.jsp"></jsp:include>



<div></div>

<div class="filmIntroContain">
<!-- 	<input type="button" class="classtest" value="11111111" style="color:white"/> -->
	<div class="orderTitle">確認訂票資訊</div>
	
	<div class="container-fluid orderTable">
		<div class="col-md-4 ordercol">
			<div class="ehdiv orderdiv"><p>訂票場次</p></div>
		</div>
		<div class="col-md-8 ordercol">
			<div class="ehdiv orderdiv"><p>123</p></div>
		</div>


		<div class="col-md-4 ordercol">
			<div class="ehdiv orderdiv"><p>張數</p></div>
		</div>
		<div class="col-md-8 ordercol">
			<div class="ehdiv orderdiv"><p>123</p></div>
		</div>


		<div class="col-md-4 ordercol">
			<div class="ehdiv orderdiv"><p>座位編號</p></div>
		</div>
		<div class="col-md-8 ordercol">
			<div class="ehdiv orderdiv"><p>123</p></div>
		</div>


		<div class="col-md-4 ordercol">
			<div class="ehdiv orderdiv"><p>金額</p></div>
		</div>
		<div class="col-md-8 ordercol">
			<div class="ehdiv orderdiv"><p>123</p></div>
		</div>





	</div>
	
	
	
	
	
	
	
	
</div>
</body>
</html>