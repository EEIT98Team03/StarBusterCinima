<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
@import url(https://fonts.googleapis.com/earlyaccess/notosanstc.css);

*{
/*          border: 1px dotted red;          */
	margin: 0;
    padding: 0;
	font-family: 'Noto Sans TC';
	font-weight: 300;
}
body{
	
	background-color: #191919;
}
.outdiv{
	width:100%;
	z-index:1500;
	border-top: 5px solid #9D9D9D;
	top:0px;
/* 	overflow: hidden; */
	position: fixed;
	height: 155px;
	background-color: #191919;
	
}
.navi{
/* 	border-top: 5px solid #9D9D9D; */
	background-color: #191919;
/* 	opacity:0.6; */
	top:5px;
	width: 65.5%;
	left:17.2%;
	height: 150px;
 	position: fixed; 
	z-index: 999;
  	display: initial;  
  	text-align: center;
  	
}
.naviLogo{
	height: 138px;
	z-index: 1000;
	background-color: inherit;
}

/* <div class="col-md-1" style="width: 12.499999995%"></div> */
.navicol{
	width: 12.499999995% ; 
	height: 140px;
/* 	border-left: 1px solid #5B5B5B; */
/* 	border-right: 1px solid #5B5B5B; */
}
.navicolcenter{
	height: 140px;
}
.navidiv{
	color:white;
	font-size: 18px;
	padding-top: 95px;
}

.container-fluid{
margin-top: 10px;
}


/* 下拉選單 */
.dropdown {
  position: relative;
  display: inline-block;
}
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #191919;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  padding: 12px 16px;
}
.dropdown:hover .dropdown-content {
  display: block;
}
/* 下拉選單 */


.loginButton{
text-decoration:none;
color:white;
}

 a.loginButton:hover{
text-decoration:none;
color:white;
}

.aa{padding-top:20px;}

div{
cursor: pointer;
}
</style>

<c:if test="${empty sessionScope.lan}">
  <c:set var="lan" value="controller.language_en_US"/>
</c:if>

<fmt:bundle basename="${lan}">
</head>
	<body>
	<div class="outdiv">
	<div id="" class="navi">
	<div class="container-fluid">
	
	
		<div class="col-md-1 navicol">
			<div class="ehdiv navidiv"><fmt:message key="navcolumn1" /></div>
		</div>
		
		<a href="/StarBusterCinima/film/hotFilms.jsp">
			<div class="col-md-1 navicol" >
				<div class="ehdiv navidiv"><fmt:message key="navcolumn2" /></div>
			</div>
		</a>
		
		<div class="col-md-1 navicol">
			<div class="ehdiv navidiv"><fmt:message key="navcolumn3" /></div>
		</div>
		<div class="col-md-3 navicolcenter" >
				<a href="/StarBusterCinima/index.jsp"><img class="naviLogo" src="/StarBusterCinima/images/SB01.png"></a>
		</div>
		
		<a href="/StarBusterCinima/shopping/index.jsp">
			<div class="col-md-1 navicol">
				<div class="ehdiv navidiv"><fmt:message key="navcolumn4" /></div>
			</div>
		</a>
		
		<a href="/StarBusterCinima/wishpool/vote.jsp">
					<div class="col-md-1 navicol">
				<div class="ehdiv navidiv"><fmt:message key="navcolumn5" /></div>
			</div>
		</a>
		
		        <c:if test="${empty loginUserInfo}">
					<div class="col-md-1 navicol">
						<div class="ehdiv navidiv"><a class="loginButton" href='<c:url value="/member/login.jsp"/>'><fmt:message key="navcolumn6" /></a></div>
					</div>
		        </c:if>



				<c:if test="${not empty loginUserInfo}">				
				
					<div class="col-md-1 navicol">					
						<div class="ehdiv navidiv  aa" style="">						
						
					<img src='/StarBusterCinima/image/member/${loginUserInfo.memberId}' style="height:75px; width:90px;margin-bottom: 0px; margin-left: 0px; border-radius: 50%;">
					<br />
						</div>
						<div class="dropdown" style="display:block;padding-top:10px;padding-bottom:3px">
							<span style="color: white"><strong id="userName" style="margin: 0px auto; color: white">${loginUserInfo.name}</strong></span>
							<div class="dropdown-content" style="margin-left: -12px;">
								<a style="text-decoration:none;color:white;" class="dropdown-toggle btn-lg" href="/StarBusterCinima/member/memberManagement/memberManagement.jsp"><fmt:message key="navcolumn7" /></a>
								<a style="text-decoration:none;color:white;" class="dropdown-toggle btn-lg" href='<c:url value="/member/logout.jsp"/>'><fmt:message key="navcolumn8" /></a>
							</div>
						</div>
					</div>
				</c:if>
			</div>	
	</div>
	</div>
<!-- 	<div style="height:200px ;"></div> -->
</fmt:bundle>	
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>			
<script>
$(document).ready(function(){// 	navi的滑鼠移上去會有藍色底條

	$('.navicol>div').hover(function() {

		// alert("blah");
	$(this).parent().css({'border-bottom':'6px solid #20B7B7'});
		}	

	);
	// alert("blah");
	$('.navicol>div').mouseleave(function() {
		$(this).parent().css({'border-bottom':'6px solid #191919'});
	// alert("blah");
	});

});
</script>

