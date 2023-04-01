<%@page import="study.dto.PersonDto"%>
<%@page import="java.util.List"%>
<%@page import="study.dao.PersonDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<%
 	//엔코딩
 	request.setCharacterEncoding("utf-8");
	//데이타 각각 읽기
	String name=request.getParameter("name");
	int birthyear=Integer.parseInt(request.getParameter("birthyear").trim());
	String address=request.getParameter("address");
	String job=request.getParameter("job");
	String photo=request.getParameter("photo");
	
	//dto 선언
	PersonDto dto=new PersonDto();
	//데이타 dto에 넣기
	dto.setPersonName(name);
	dto.setPersonAddress(address);
	dto.setPersonYear(birthyear);
	dto.setPersonPhoto(photo);
	dto.setPersonJob(job);
	
	//dao선언
	PersonDao dao=new PersonDao();
	
	//insert 메서드 호출
	dao.insertPerson(dto);
	//페이지 이동
	response.sendRedirect("personlist.jsp");
	
%>

