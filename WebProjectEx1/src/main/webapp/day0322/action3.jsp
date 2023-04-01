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
	//form3의 데이타를 post 방식으로 읽는 경우
	String sname=request.getParameter("sname");
	String gender=request.getParameter("gender");

	//체크박스는 여러개 선택이 가능, 선택을 안했을 경우 null
	String []hobbys=request.getParameterValues("hobby");
	
	String email=request.getParameter("email");
	
	String email2=request.getParameter("email2");
	
%>
</head>
<body>
	<h4>
	사원명 : <%=sname%><br>
	성별 : 
	<%
	if(hobbys==null){%>
		취미 선택을 하지 않았습니다
	
	<%}else{%>
	
	<div><b>나의 취미는 
	
	<%for(String h:hobbys)
	{%>
		[<%=h%>]&nbsp;
	<%}%>
	
	 입니다</b></div>
	<%} 
	%>
	
	<br style="clear : both;">
	이메일 : <%=email%> @ <%=email2%>
	
	</h4>

</body>
</html>