<%@page import="study.dto.SawonDto"%>
<%@page import="study.dao.SawonDao"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	SawonDao dao=new SawonDao();
	List<SawonDto> list=dao.getAlldata();
	//System.out.println("size:"+list.size());
	JSONArray arr=new JSONArray();
	
	for(SawonDto dto:list)
	{
		JSONObject ob=new JSONObject();
		ob.put("num",dto.getNum());
		ob.put("name",dto.getName());
		ob.put("score",dto.getScore());
		ob.put("gender",dto.getGender());
		ob.put("buseo",dto.getBuseo());
		//array 에 object 를 추가한다
		arr.add(ob);		
	}
%>
<%=arr.toString()%>