<%@page import="org.json.simple.JSONObject"%>
<%@page import="study.dao.SmartDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num=Integer.parseInt(request.getParameter("num"));
	//좋아요 증가
	SmartDao dao=new SmartDao();
	dao.updateLikes(num);
	
	//증가된 likes 얻기
	int likes=dao.getData(num).getLikes();
	
	//json 으로 반환
	JSONObject ob=new JSONObject();
	ob.put("likes",likes);
%>
<%=ob.toString() %>