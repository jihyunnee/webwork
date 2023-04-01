<%@page import="java.io.File"%>
<%@page import="study.dto.SimpleBoardDto"%>
<%@page import="study.dao.SimpleBoardDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	//num읽기
	int num=Integer.parseInt(request.getParameter("num"));
	//dao
	SimpleBoardDao dao=new SimpleBoardDao();
	//만약 글삭제 시 업로드 했던 사진도 save폴더에서 지우고자 할경우
	//업로드 했던 파일명얻기
	String photo=dao.getData(num).getPhoto();
	//업로드 된 경로 구하기
	String realPath=getServletContext().getRealPath("/save");
	//파일객체 생성
	File file=new File(realPath+"/"+photo);
	file.delete();
	
	//delete
	dao.deleteBoard(num);
	//목록으로 이동
	response.sendRedirect("boardlist.jsp");
%>