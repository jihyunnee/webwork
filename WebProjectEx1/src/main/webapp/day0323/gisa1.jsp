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
<%
 if(b){
	 

%>

	<pre>
	검찰이 어제(22일) 대장동 비리 의혹과 성남FC 후원금 사건과 관련해 배임과 뇌물 등의 혐의로 
	이재명 더불어민주당 대표를 재판에 넘긴 가운데, 민주당은 ‘엉터리 기소’였다는 입장입니다.
	
	민주당은 대선 이후 이재명 대표를 향한 검찰의 압수수색이 300번이 넘는다고 주장합니다.

	지난달 24일 박찬대 최고위원은 “대선 이후 이 대표 관련 압수수색은 무려 332건이다”며 
	“독재국가에서도 이처럼 집요한 탄압은 사례를 찾아보기 힘들다”라고 말하기도 했습니다.
	</pre>
 <%}else{%>
 	<script type="text/javascript">
 		alert("먼저 로그인 후 기사를 확인하세요");
 		history.back();
 	</script>
 	
 <%} %>
</body>
</html>