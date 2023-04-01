<%@page import="java.util.Date"%>
<%@page import="oracle.sql.DATE"%>
<%@page import="javax.xml.crypto.Data"%>
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
<h4 class="alert alert-info">mysql person 데이타 추가</h4>
	<form action="addaction.jsp" method="post">

		<table class="table table-bordered" style="width : 400px">
			<tr>
			<th>이름</th>
			<td><input type="text" name="name" required="required"
			class="form-control">
			</td>
			</tr>
			<tr>
			<th>태어난 년도</th>
			<td>
			<select class="form-select" name="birthyear">
			<%
				Date date=new Date();
				int currYear=date.getYear()+1900;
				
				for(int i=currYear;i>=1950;i--){
				%>
				<option value="<%=i%>"><%=i%>년생<option> 
					
				<%}
			
			%>
			</select>
			</td>
			</tr>
			<tr>
			<th>주소</th>
				<td><input type="text" name="address" required="required"
				class="form-control">
				</td>
			</tr>
			<tr>
			<th>직업</th>
				<td>
					<select class="form-select" name="job">
						<%
						 String []jobs ={"공무원","개발자","배우","가수","회사원"};
						 for(String j:jobs){%>
							 
							 <option value="<%=j %>"><%=j %></option>
							 
						 <%}
						%>		
					</select>
				</td>
			</tr>
			<tr>
			<th>사진</th>
				<td>
					<div class="input-group">
					<select class="form-select" name="photo" id="photo">
						<%
						for(int i=1;i<=20;i++){%>
							<option value="<%=i%>.jpg"><%=i%>번사진</option>
							
						<%}
						
						%>
					</select>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-success">서버에 전송</button>
				</td>	
			</tr>
			
				
		</table>
		
	
	</form>
	
<img src="../image/moviestar/1.jpg" id="photoview" width="200" 
border="1" style="position : absolute; left : 405px ; top :100px">
<script type="text/javascript">

	//사진을 선택하면 해당사진으로 바뀌도록 해보자
	
	$("#photo").change(function(){
		
		let Src=$(this).val();
		
		$("#photoview").attr("src",`../image/moviestar/\${Src}`);
		
		
		
	});
		
</script>





	

</body>
</html>