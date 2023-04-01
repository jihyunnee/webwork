<%@page import="java.util.List"%>
<%@page import="study.day0321.PersonDao"%>
<%@page import="study.day0321.PersonDto"%>
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
<%
PersonDao dao=new PersonDao();
List<PersonDto> list=dao.getAllPersons();

%>

<body>
<h3>Mysql 직원들</h3>
<table>

	<%
for(PersonDto dto:list){

	//띠
	int m=dto.getPersonYear()%12;
	String ddi=m==0?"원숭이":m==1?"닭":m==2?"개":m==3?"돼지"
			:m==4?"쥐":m==5?"소":m==6?"호랑이":m==7?"토끼":m==8?"용"
			:m==9?"뱀":m==10?"말":"양";		
	%>
	<tr>
	<td><img src="../image/moviestar/<%=dto.getPersonPhoto()%>" width="100"></td>
	<td>
	<b>번호 : <%=dto.getPersonNum()%></b><br>
	<b>이름 : <%=dto.getPersonName()%></b><br>
	
	<b>생년 : <%=dto.getPersonYear()%> / 띠 :<%=ddi%>
	 
	</b><br> 	
	
	<b>주소 : <%=dto.getPersonAddress()%></b><br>
	<b>직업 : <%=dto.getPersonJob()%></b>
	</td>
	</tr>
	
	
	
<%}%>

</table>

</body>
</html>