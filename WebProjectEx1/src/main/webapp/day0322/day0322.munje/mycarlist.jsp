<%@page import="study.dto.myCarDto"%>
<%@page import="study.dao.myCarDao"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
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
	body, body *{
		font-family: 'Jua'
	}
</style>
</head>
<%
	myCarDao dao=new myCarDao();
	List<myCarDto> list=dao.getAllCars();
	
%>
<body>
	<a href="mycarform.jsp">차 추가</a>
	<hr>
	<h3 class="alert alert-danger">
		<b>총 <%=list.size()%>개의 차가 있습니다</b>
	</h3>
	<table class="table table-bordered" style="width: 800px;">
		<tr bgcolor="lightgray">
			<th width="50">번호</th>
			<th width="200">차사진</th>
			<th width="100">차이름</th>
			<th width="100">차가격</th>
			<th width="200">구입날짜</th>	
			<th width="180">수정/삭제</th>			
		</tr>
		<%
			int n=1;
			for(myCarDto dto:list){
		
		%>
			<tr>
				<td align="center"><%=n++%></td>
				<td>
					<img src="../image/mycarimage/car<%=dto.getCarPhoto()%>"
					width="50" border="1" hspace="10" class="carphoto">
				</td>
				<td>	
					<b><%=dto.getCarName() %></b>
				</td>
				<td>
					<%=dto.getCarPrice() %>만원
				</td>
				<td><%=dto.getGuipday() %></td>
				<td>
					<button type="button" class="btn btn-success btn-sm"
					onclick="">수정</button>
					
					<button type="button" class="btn btn-danger btn-sm"
					onclick="location.href='deletecar.jsp?num=<%=dto.getNum()%>'">삭제</button>
					
				</td>
			</tr>
		<%}
		%>
	</table>
</body>
</html>
