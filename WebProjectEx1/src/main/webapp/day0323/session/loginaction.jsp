<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	//체크값
	
	String chksave=request.getParameter("chksave");
	String id=request.getParameter("id");
	String pass=request.getParameter("pass");

	//비밀번호가 맞으면 세션에 3가지 저장
	if(pass.equals("1234")){
		session.setMaxInactiveInterval(60*60);
		session.setAttribute("loginid", id);
		session.setAttribute("chksave", chksave==null?"no":"yes");//체크하면 yes
		session.setAttribute("loginstate", "yes");
		
		//successpage로 이동
		response.sendRedirect("successpage.jsp");
		
		
	}else{%>
		<script>
		 	alert("비밀번호가 맞지 않습니다");
		 	history.back();
		</script>
	<%}
	
%>