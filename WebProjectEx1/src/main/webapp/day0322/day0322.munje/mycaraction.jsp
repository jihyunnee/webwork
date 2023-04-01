
<%@page import="study.dao.myCarDao"%>
<%@page import="study.dto.myCarDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	//엔코딩
	request.setCharacterEncoding("utf-8");
	//데이타 각각 읽기
	String carname=request.getParameter("carname");
	int carprice=Integer.parseInt(request.getParameter("carprice").trim());
	String carphoto=request.getParameter("carphoto");
	String guipday=request.getParameter("guipday");
	
	//dto선언
	myCarDto dto=new myCarDto();
	//데이타 dto에 넣기
	dto.setCarName(carname);
	dto.setCarPrice(carprice);
	dto.setCarPhoto(carphoto);
	dto.setGuipday(guipday);

	
	//dao선언
	myCarDao dao=new myCarDao();
	
	//insert 메서드 호출
	dao.insertCar(dto);
	//페이지 이동
	response.sendRedirect("mycarlist.jsp");
	
%>