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
</head>
<body>
<h2>구구단</h2>
<table style ="width : 100%;" class=tab1">
<tr bgcolor="orange">
<% 
for(int i=1;i<=9;i++){
	%>
	<tr>
	<% for(int dan=2;dan<=9;dan++){
	%>	<td align ="center">
		<%=dan%>x<%=i%>=<%=dan*i%>
		</td>
		<%}%>
	</tr>	
<% }%>
</table>


</body>
</html>