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
</head>
<body>
<%
String []colors={"red","green","pink","orange","yellow","gray","magenta"};
%>
<table class="table table-bordered">
<tr>
<thead>
<td>번호</td>
<td>색상</td>
</thead>
</tr>
<tbody>
<%
for(int i=0;i<colors.length;i++){%>
	<tr>
	<td align ="center">
	<%=i+1%></td>
	<td style="background-color:<%=colors[i]%>">
	<%=colors[i]%>
	</td>
	</tr>
<%}

%>
</tbody>
</table>
<table class="table table-bordered" style="width: 480px">
<tr>
<%
for(String s:colors)
{%>
	<td style="background-color: <%=s%>"><%=s%></td>
<%}
%>

</body>
</html>