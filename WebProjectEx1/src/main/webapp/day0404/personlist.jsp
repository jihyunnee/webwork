<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Single+Day&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<style>
	body, body *{
		font-family: 'Jua'
	}
</style>
</head>
<body>
<table class="table table-bordered" style="width=600px;">
	<tr style="background-color : #ccc">
		<th width ="50">번호</th>
		<th width ="50">이름</th>
		<th width ="50">생알</th>
		<th width ="50">주소</th>
		<th width ="50">직업</th>
		<th width ="50">사진</th>
	</tr>

<c:forEach var="dto" items="${list}" varStatus="i">
	<tr>
		<td>${dto.personNum}</td>
		<td>${dto.personName}</td>
		<td>${dto.personYear}</td>
		<td>${dto.personAddress}</td>
		<td>${dto.personJob}</td>
		<td>${dto.personPhoto}</td>
	</tr>
</c:forEach>
</table>
<h5>shop 의 이미지중 1.jpg~12.jpg까지 출력,한줄에 3개씩만 출력(w:60,h:80)</h5>
<c:forEach var="n" begin="1" end="12" varStatus="i">
	<c:set var="photo" value="../image/shop/${n}.jpg"/>
	<img src="${photo}" width="60" height="80" border="1" hspace="5">
	<c:if test="${i.count%3==0 }">
		<br><br>
	</c:if>
</c:forEach>
</body>
</html>
