<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="study.dto.myCarDto"%>
<%@page import="study.dao.myCarDao"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	myCarDao dao=new myCarDao();
	List<myCarDto> list=dao.getAllCars();
	//System.out.println("size:"+list.size());
	JSONArray arr=new JSONArray();
	
	for(myCarDto dto:list)
	{
		JSONObject ob=new JSONObject();
		ob.put("num",dto.getNum());
		ob.put("carname",dto.getCarName());
		ob.put("carprice",dto.getCarPrice());
		ob.put("carphoto",dto.getCarPhoto());
		ob.put("guipday",dto.getGuipday());
		//array 에 object 를 추가한다
		arr.add(ob);		
	}
%>
<%=arr.toString()%>