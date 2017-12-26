<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
    body {background-color:black;}

    .menuOuter {
        height: 203px;
        width: 1570px;
    }
    .menuOuter {color:white;
                 text-align:center;
    }
    .menuOuter a{color:white;
                 text-align:center;
                 text-decoration:none;
                font-weight:900;
    }

    .menuTr {width:auto}
    .auto-style4 {
        width: 168px;
    }
    .auto-style5 {
        width: 187px;
    }
    .auto-style6 {
        width: 202px;
    }
    .foot {color:white;
                 text-align:center;
                 text-decoration:none;
                font-weight:900;
                margin:0px auto;}
    .auto-style7 {
        height: 117px;
        width: 1565px;
    }
</style>
<table class='menuOuter'>
    <tr class="menuTr">
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5"><img src="../images/SB01.png" style="height: 207px" /></td>
        <td><a href="#">影城介紹</a></td>
        <td><a href="#">熱門搶檔</a></td>
        <td><a href="#">立即訂票</a></td>
       
        <td><a href="#">周邊商品</a></td>
        
        <td><a href="#">連署上映</a></td>
        <td><a href="#">活動公告</a></td>
        <td><a href="#">會員中心</a></td>
        
        <td class="auto-style6"><img src='http://localhost:8080/StarBusterCinima/image/member/${loginUserInfo.memberId}' style="height: 65px; width: 77px; margin-bottom: 0px;border:1px solid red; margin-left: 0px;"><br />
            Welcome,${loginUserInfo.name}</td>
    </tr>
    </table>