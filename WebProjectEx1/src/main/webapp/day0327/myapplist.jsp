<%@page import="study.dto.myAppDto"%>
<%@page import="java.util.List"%>
<%@page import="study.dao.myAppDao"%>
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

	myAppDao dao= new myAppDao();

	//

	List<myAppDto> list= dao.getAllData();


%>

<body>

<div class="table-responsive" style="margin: 30px 50px">
  <table class="table align-middle">
    <thead>
   		<th width="50">번호</th>
		<th width="300">제 목</th>
		<th width="100">작 성 자</th>
		<th width="150">작 성 일</th>
		<th width="150">조 회</th>
      
    </thead>
    <tbody>
      <tr>
        ...
      </tr>
      <tr class="align-bottom">
        ...
      </tr>
      <tr>
        <td>...</td>
        <td>...</td>
        <td class="align-top">This cell is aligned to the top.</td>
        <td>
        	  <button type="button" class="btn btn-secondary" style="width:120px;"
			onclick="location.href='boardform.jsp'">
			<i class='bi bi-pencil-fill'></i> &nbsp;
			글쓰기</button>
        
        </td>
      </tr>
    </tbody>
  </table>
</div>








</body>
</html>