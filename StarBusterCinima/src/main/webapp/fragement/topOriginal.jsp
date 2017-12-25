<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
.outerBox{
	height:150px;
}

.navTable1{
	width:80%;
	height:100%;
}
.navTable1 td{
 }
.navTable1 a{ 
	color:white; 
	font-size:30px; 
} 
.navTable1 a:hover {height: 16px; color: #20B6B6}   

</style>
<link rel="stylesheet" type="text/css" href="/StarBusterCinima/css/home.css"></link>
<title>Insert title here</title>

 	<nav class="navbar navbar-inverse">
  	
    <div class="navbar-header" >
    <a href="/StarBusterCinima/index.jsp"><img src="/StarBusterCinima/images/SB01.png" style="height: 130px;margin-left:70px;margin-right:100px" /></a>
    </div>
    
    <div class="container-fluid">
    <div class="outerBox">
    <table class="navTable1">
    	<tr>
    	<td>
    	</td>
        <td>
        
        
        <a class="dropdown-toggle btn-lg" href="#">影城介紹</a>
        
        </td>
        <td>
        
        
        <a class="dropdown-toggle btn-lg" href="#">熱門搶檔</a>
        
        
        </td>
        <td>
        
        <a class="dropdown-toggle btn-lg" href="#">立即訂票</a>
        
        
        
        </td>
        <td>
        
        
        <a class="dropdown-toggle btn-lg" href="#">周邊商品</a>
        
        
        </td>
        <td>
        
        <a class="dropdown-toggle btn-lg" href="#">連署上映</a>
        
        
        </td>
        <td>
        <a class="dropdown-toggle btn-lg" href="#">活動公告</a>
        
        
        </td>
        <td>
		<a class="dropdown-toggle btn-lg" href="/StarBusterCinima/member/memberManagement/memberManagement.jsp">會員中心</a>	
	
		</div> 
        </td>
        <td>
        	<c:if test="${empty loginUserInfo}">
			<a class="dropdown-toggle btn-lg"  href='<c:url value="/member/login.jsp"/>'>登入</a>
        	</c:if>
 
        	 
        </td>
         <td>
         	<center>
    	    <c:if test="${not empty loginUserInfo}">
        	<img src='/StarBusterCinima/image/member/${loginUserInfo.memberId}' style="height: 65px; width: 77px; margin-bottom: 0px; margin-left: 0px;border-radius:50%;"><br />
          	<strong style="margin:0px auto;color:white">${loginUserInfo.name}</strong>
        	</c:if>
        	</center>
    	</td>
    	<td>
    		<c:if test="${not empty loginUserInfo}">
        	<a style="font-size:18px" class="dropdown-toggle btn-lg" href='<c:url value="/member/logout.jsp"/>'>登出</a>
        	</c:if>
    	</td>
    	</tr>
    </table>
    </div>
  	</div>
	</nav>