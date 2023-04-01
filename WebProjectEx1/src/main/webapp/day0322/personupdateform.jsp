<%@page import="study.dto.PersonDto"%>
<%@page import="study.dao.PersonDao"%>
<%@page import="java.util.Date"%>
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
	//목록에서 보내는 num읽기
	int num=Integer.parseInt(request.getParameter("num"));
	//dao선언
	PersonDao dao=new PersonDao();
	
	//dto선언
	PersonDto dto=dao.getData(num);
	
%>

<body>
<h4 class="alert alert-info">mysql person 데이타 수정</h4>
	<form action="personupdateaction.jsp" method="post">
		<!-- hidden -->
		<input type="hidden" name="num" value="<%=dto.getPersonNum() %>">
		
		<table class="table table-bordered" style="width : 400px">
			<tr>
			<th>이름</th>
			<td><input type="text" name="name" required="required"
			class="form-control" value="<%=dto.getPersonName() %>">
			</td>
			</tr>
			<tr>
			<th>태어난 년도</th>
			<td>
			<select class="form-select" name="personYear">
			<%
				Date date=new Date();
				int currYear=date.getYear()+1900;
				
				for(int i=currYear;i>=1950;i--){
					if(i==dto.getPersonYear()){%>
					<option value="<%=i%>" selected><%=i%>년생<option> 							
					<%}else{%>
						<option value="<%=i%>"><%=i%>년생<option> 					
					<%}
				}
			
			%>
			</select>
			</td>
			</tr>
			<tr>
			<th>주소</th>
				<td><input type="text" name="personAddress" required="required"
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
							 
							 <option value="<%=j %>" <%=j.equals(dto.getPersonJob())?"selected":""%>><%=j %></option>
							 
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
						for(int i=1;i<=20;i++){
						
						String s=i+".jpg";
						
						%>
							<option value="<%=i%>.jpg" <%=s.equals(dto.getPersonPhoto())?"selecteed":""%>><%=i%>번사진</option>
							
						<%}
						
						%>
					</select>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-success">데이타 수정</button>
				</td>	
			</tr>
			
				
		</table>
		
	
	</form>
	
<img src="../image/moviestar/<%=dto.getPersonPhoto() %>" id="photoview" width="200" 
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