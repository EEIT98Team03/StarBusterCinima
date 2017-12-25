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
	<td><input type="text" name="filmId" value="${param.filmId}"></td>
	</tr>
	<tr>
	<td>FilmName中文名稱</td>
	<td><input type="text" name="filmName" value="${param.filmName}"></td>
	</tr>
	<tr>
	<td>EngName英文名稱</td>
	<td><input type="text" name="engName" value="${param.engName}"></td>
	</tr>
	<tr>
	<td>LengthOfFilm片長</td>
	<td><input type="text" name="lengthOfFilm" value="${param.lengthOfFilm}"></td>
	</tr>
	<tr>
	<td>Genre類型</td>
	<td><input type="text" name="genre" value="${param.genre}"></td>
	</tr>
	<tr>
	<td>FilmLevel分級</td>
	<td><input type="text" name="filmLevel" value="${param.filmLevel}"></td>
	</tr>
	<tr>
	<td>Udate上映日期</td>
	<td><input type="text" name="udate" value="${param.udate}"></td>
	<c:out value='${param.udate}' ></c:out>
	</tr>
	<tr>
	<td>Ddate下檔日期</td>
	<td><input type="text" name="ddate" value="${param.ddate}"></td>
	</tr>
	<tr>
	<td>Director導演</td>
	<td><input type="text" name="director" value="${param.director}"></td>
	</tr>
	<tr>
	<td>Actor演員</td>
	<td><input type="text" name="actor" value="${param.actor}"></td>
	</tr>
	
	
	<tr>
	<td>Language語言</td>
	<td><input type="text" name="language" value="${param.language}"></td>
	</tr>
	
	
	<tr>
	<td>Trailer預告片連結</td>
	<td><input type="text" name="trailer" value="${param.trailer}"></td>
	</tr>
	
	
	<tr>
	<td>ShortIntro短介紹</td>
	<td><textarea cols="50" rows="5" name="ShortIntro" value="" ></textarea></td>
	</tr>
	
	
	<tr>
	<td>LongIntro長介紹</td>
	<td><textarea cols="50" rows="5" name="LongIntro" value="" ></textarea></td>
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