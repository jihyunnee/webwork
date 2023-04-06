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
<c:forEach var="a" begin="1" end="10">
	${a}&nbsp;
</c:forEach>
<h3 class="alert alert-info"> Shop list</h3>

<br>
<h3> 총 ${count}개의 상품이 있습니다</h3>

<table class="table table-bordered" style="width=600px;">
	<tr style="background-color : #ccc">
		<th width ="50">번호</th>
		<th width ="50">상품</th>
		<th width ="50">이미지</th>
		<th width ="50">색깔</th>
		<th width ="50">개수</th>
		<th width ="50">단가</th>
	</tr>
	<c:forEach var="dto" items="${list}" varStatus="i">
		<tr>
			<td align="center">${i.count}</td>
			<td>
				<img src="../image/shop/${dto.photo }" width="100">
				<b>${dto.sangpum }</b>
			</td>	
				<div style="width :40px;height:40px;border:10px solid ${dto.color};"></div>
			</td>
			<td>${dto.su }개</td>
			<td>
				<fmt:formatNumber value="${ dto.dan}" type="currency"
				maxFractionDigits="0">
				</fmt:formatNumber>
			</td>
			<td>
				${dto.ipgoday}
			</td>		
		</tr>		
	</c:forEach>
</table>

</body>
</html>