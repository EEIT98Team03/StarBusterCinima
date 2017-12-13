<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>餵我吃電影資料</title>
</head>
<body>
<form action='<c:url value="/film/filmMgmt.controller" />' method="get">
<table>
	<h3>請餵我吃很麻煩的資料</h3>
	<tr>
	<td>FilmID</td>
	<td><input type="text" name="FilmID" value="${param.filmid}"></td>
	<td>ex:</td>
	</tr>
	<tr>
	<td>FilmName中文名稱</td>
	<td><input type="text" name="FilmName" value="${param.filmname}"></td>
	<td>ex:可可夜總會</td>
	</tr>
	<tr>
	<td>EngName英文名稱</td>
	<td><input type="text" name="EngName" value="${param.engname}"></td>
	<td>ex:Coco</td>
	</tr>
	<tr>
	<td>LengthOfFilm片長</td>
	<td><input type="text" name="LengthOfFilm" value="${param.lengthoffilm}"></td>
	<td>ex:128(單位:分)</td>
	</tr>
	<tr>
	<td>Genre類型</td>
	<td><input type="text" name="Genre" value="${param.genre}"></td>
	<td>ex:動作-冒險-喜劇-劇情-記錄片-科幻-驚悚-懸疑-動畫-浪漫-音樂劇-奇幻</td>
	</tr>
	<tr>
	<td>FilmLevel分級</td>
	<td><input type="text" name="FilmLevel" value="${param.filmlevel}"></td>
	<td>ex:普遍級-保護級-輔12級-輔15級-限制級</td>
	</tr>
	<tr>
	<td>Udate上映日期</td>
	<td><input type="text" name="Udate" value="${param.udate}"></td>
	<td>ex:yyyy-MM-dd</td>
	</tr>
	<tr>
	<td>Ddate下檔日期</td>
	<td><input type="text" name="Ddate" value="${param.ddate}"></td>
	<td>eex:yyyy-MM-dd</td>
	</tr>
	<tr>
	<td>Director導演</td>
	<td><input type="text" name="Director" value="${param.director}"></td>
	<td>ex:李安克里奇-阿德里安莫里納</td>
	</tr>
	<tr>
	<td>Actor演員</td>
	<td><input type="text" name="Actor" value="${param.actor}"></td>
	<td>ex:安東尼岡薩雷斯-班傑明布萊特-愛德華詹姆斯歐蒙-蓋爾賈西亞貝納-區奇‧馬林</td>
	</tr>
	
	
	<tr>
	<td>Language語言</td>
	<td><input type="text" name="Language" value="${param.language}"></td>
	<td>ex:英文-中文</td>
	</tr>
	
	
	<tr>
	<td>Trailer預告片連結</td>
	<td><input type="text" name="Trailer" value="${param.trailer}"></td>
	<td>ex:https://www.youtube.com/watch?v=G0tFvaN368I</td>
	</tr>
	
	
	<tr>
	<td>ShortIntro短介紹</td>
	<td><textarea cols="50" rows="5" name="ShortIntro" value="" style="width:200px;height:50px;"></textarea></td>
	<td>200字</td>
	</tr>
	
	
	<tr>
	<td>LongIntro長介紹</td>
	<td><textarea cols="50" rows="5" name="LongIntro" value="" style="width:200px;height:50px;"></textarea></td>
	<td>1000字</td>
	</tr>
	
	<tr>
		<td><input type="submit" value="test"></td>
	</tr>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<!-- 	<tr> -->
<!-- 	<td>PosterLarge大海報</td> -->
<!-- 	<td><input type="text" name="username" value="" disabled></td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 	<td>PosterMedium小海報</td> -->
<!-- 	<td><input type="text" name="username" value="" disabled></td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 	<td>ScoreImdb</td> -->
<!-- 	<td><input type="text" name="username" value="" disabled></td> -->
<!-- 	</tr> -->
<!-- 	<td>ScoreRt</td> -->
<!-- 	<td><input type="text" name="username" value="" disabled></td> -->
<!-- 	</tr> -->
<!-- 	<td>ScoreMember</td> -->
<!-- 	<td><input type="text" name="username" value="" disabled></td> -->
<!-- 	</tr> -->


</table>
</form>
<%-- ${param.username} --%>
<!-- '<c:url value="/filmMgmt/FilmMgmt.Controller" />' -->
</body>
</html>