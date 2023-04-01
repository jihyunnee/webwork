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
	지역에 따라 전기요금에 차등을 두는 ‘지역별 차등 전기요금제’(이하 차등요금제)를 담은 법안(부산일보 3월 20일 자 1면 등 보도)이 
	국회 산업통상자원중소벤처기업위원회(산자중기위)를 통과했다. 원자력발전소 등 발전소를 낀 전력 생산 지역과 전력 대부분을 끌어와 집중 소비하는 
	서울이 같은 요금을 내는 모순된 구조를 해결하는 데 청신호가 켜진 셈이다.

	</pre>

</body>
</html>