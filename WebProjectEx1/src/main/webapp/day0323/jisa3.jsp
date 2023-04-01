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
	boolean b=false;//amho 쿠키가 존재하면 true 변경
	// 브라우저에 저장된 모든 쿠키값들을 얻는다
	
	Cookie []cookies=request.getCookies();
	if(cookies!=null){
		for(int i=0;i<cookies.length;i++){
			String cname=cookies[i].getName();
			String cvalue=cookies[i].getValue();
			if(cname.equals("amho")&& cvalue.equals("1234")){
				//amho 쿠키가 존재하므로 b를 true로 변경한다
				b=true;
			}
		}
	}
%>
<body>
	<pre>
	코로나19 백신도 독감처럼 매년 한 번만 맞도록 일상화됩니다.
	올해는 코로나 감염병 등급이 하향 되더라도 10월, 11월 전국민을 대상으로 무료로 접종할 수 있게 됐는데요.
	내년부터는 유료로 전환될 수 있습니다.
	전남주 기자의 보도입니다.
	
	</pre>

</body>
</html>