<%@page import="java.util.Date"%>
<%@page import="study.dto.PersonDto"%>
<%@page import="java.util.List"%>
<%@page import="study.dao.PersonDao"%>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
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
<!-- The Modal -->
<div class="modal" id="photoModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title" id="modalname">Modal Heading</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
      	<img src="" id="modalphoto" style="width:100px; height:400px;">
  
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>


<a href="personform.jsp">멤버 추가</a>
<hr>
<h3 class="alert alert-danger">
<b>총 <%=list.size()%>명의 멤버가 있습니다</b>
</h3>
	<table class="table table-bordered" style="width:800px;">
		<tr>
			<th width="50">번호</th>
			<th width="100">이름</th>
			<th width="80">나이</th>
			<th width="100">주소</th>
			<th width="80">직업</th>		
			<th width="80">수정</th>		
		</tr>
		<%
		int n=1;
		Date date=new Date();
		int currYear=date.getYear()+1900;
		for(PersonDto dto:list){
			int age=currYear-dto.getPersonYear();
	

		%>
			<tr>
				<td align="center"><%=n++ %></td>
				<td>
					<img src="../image/moviestar/<%=dto.getPersonPhoto() %>"
					width="30" border="1" hspace="10" class="photo" data-bs-toggle="modal" data-bs-target="#photoModal">
					<b><%=dto.getPersonName() %></b>
				</td>
				<td>
					<%=age %>세(<%=dto.getPersonYear()%>년생)
				</td>
				<td><%=dto.getPersonAddress()%></td>
				<td><%=dto.getPersonJob() %>
				<td>
					<button type="button" class="btn btn-danger" onclick="location.href='personupdateform.jsp?num=<%=dto.getPersonNum()%>'">수정</button>
					<!--onclick="location.href='deleteperson.jsp?num=<%=dto.getPersonNum()%>'" 바로 삭제하는 방법  -->
					
					<button type="button" class="btn btn-danger" onclick="del(<%=dto.getPersonNum()%>)">삭제</button>
				</td>
			</tr>
			
			
			<%}
		%>	
	</table>

	<script type="text/javascript">
		function del(num){
			
			let b=confirm("삭제하려면 [확인]을 눌러주세요")
			if(b){
				location.href="deleteperson.jsp?num="+num;//파일이동
			}+num
		}
		
	//작은 사진 클릭 시 모달에 사진 나오게 하기
	$(".photo").click(function(){
		//클릭한 곳의 src
		let selectSrc=$(this).attr("src");
		
		$("modalphoto").attr("src",selectSrc);
		//사진클릭한 곳 다음 태그가 b태그이다 그 태그의 text를 얻는다
		let name=$(this).next().text();
		
		//모달 header에 출력
		$("#modalname").text(name);
		
	});
	</script>
</body>
</html>