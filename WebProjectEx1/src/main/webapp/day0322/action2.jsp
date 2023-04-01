<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Single+Day&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<style>
	body,body *{
		font-family: 'Jua'
	}
</style>
<%
	//post방식인 경우 데이터를 읽기 전에 엔코딩 코드를 넣어준다 
	request.setCharacterEncoding("utf-8");
	//form2의 데이타를 post 방식으로 읽는 경우
	String sang=request.getParameter("sang");
	String pass=request.getParameter("pass");
	
	
	//체크박스는 여러개 선택이 가능, 선택을 안했을 경우 null
	String []colors=request.getParameterValues("color");
	
	String photo=request.getParameter("photo");
	
	String message=request.getParameter("message");
	
%>
</head>
<body>
	<h4>
	상품명 : <%=sang%><br>
	비밀번호 : <%=pass%><br>
	선택색상 : 
	<%if(colors==null){%>
	<b>원하는 색상 없음!</b>
	<% }else{
	for(String s: colors){
	
	%><div class="box" style="background-color : <%=s%>"></div>
	<%}
	
	}%>
	<br style="clear : both;">
	선택한 사진 <br>
	<img src="../image/shop/<%=photo%>" width="100" border="1">
	
	</h4>

</body>
</html>