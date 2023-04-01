<%@page import="java.text.SimpleDateFormat"%>
<%@page import="study.dto.SimpleBoardDto"%>
<%@page import="study.dao.SimpleBoardDao"%>
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
</head>
<%
	//num읽기
	int num=Integer.parseInt(request.getParameter("num"));
	//dao선언
	SimpleBoardDao dao=new SimpleBoardDao();

	//dto선언
	SimpleBoardDto dto=dao.getData(num);
	
%>

<body>
	<div style="margin:30px 50px">
	<h4 class="alert alert-info">simpleboard 데이타 수정</h4>
	<!-- 이미지 출력 -->
	<img src="../save/<%=dto.getPhoto() %>" style="max-width:400px;position:absolute;left:900px;top:200px;"
	id="showimg">
		
	<form action="updateboardaction.jsp" method="post" enctype="multipart/form-data">
	<input type="hidden" name="num" value="<%=num%>">
	
	<table class="table" style="width:800px">
			<tr>
			<th>제목</th>
			<td>
				<input type="text" name="subject" required="required"
				class="form-control" value="<%=dto.getSubject() %>">
			</td>
		</tr>
		<tr>
			<th>작성자/ 작성날짜</th>
			<td>
				<input type="text" name="writer" required="required"
				class="form-control" value="<%=dto.getWriter() %>">
			</td>
		</tr>
		<tr>
			<th>글내용</th>
			<td>
				<textarea style="width:100%;height:150px;" name="content" required="required">
				<%=dto.getContent() %></textarea>
			</td>
		</tr>
		<tr>
			<th>사진</th>
			<td>
			<input type="file" name="upload" class="form-control" id="myfile">	
				
			</td>
		</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-success">게시글 수정</button>
					<button type="button" class="btn btn-success" onclick="history.back()">이전으로</button>
				</td>	
			</tr>
				
		</table>
	</form>
	</div>
<script type="text/javascript">
	$("#myfile").change(function(){
		 console.log("1:"+$(this)[0].files.length);	
		  console.log("2:"+$(this)[0].files[0]);	
		  //정규표현식	
		var reg = /(.*?)\/(jpg|jpeg|png|bmp)$/;	
		var f=$(this)[0].files[0];//현재 선택한 파일	
		if(!f.type.match(reg)){	
		   alert("확장자가 이미지파일이 아닙니다");	
		   return;	
		}
		
	  	if($(this)[0].files[0]){	
		   var reader=new FileReader();	
		   reader.onload=function(e){	
		    $("#showimg").attr("src",e.target.result);	
		   }	
		   reader.readAsDataURL($(this)[0].files[0]);
	    }
	});
	

</script>
</body>
</html>