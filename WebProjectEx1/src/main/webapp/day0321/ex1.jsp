<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style type="text/css">
.hello{

color: orange;
font-size:20px
}

</style>
</head>
<body>
<h2>안녕하세요 오늘부터 JSP 공부합시다!<h2>
	<script type="text/javascript"> for(let i=1;i<=10;i++){
		//리터럴 사용시 변수값 가져오는 $앞에 \붙인다
		
		document.write(`<b class='hello'>\${i}</b>&nbsp;`)
	}</script>
	
	<%
	//이곳은 자바 영역이 된다 ...scriptlet이라고 부른다
	//이곳에서 선언하는 변수는 지역변수가 된다
	String name="홍길동";
	int year =2010;
	
	//브라우저로 출력시 out이라는 내장객체를 사용해도 
	out.print("<h2>내 이름은 "+name+"이고"+year+"년생입니다</h2>");
	%>
	<!-- 선언문의 변수나 메서드 호출은 위치가 상관없다 -->
	<%=getAddress()%>
	
	<h2>나는  <%=year%>년생 입니다 </h2>
	<!-- 클래스 멤버변수나 메서드를 선언하려면 선언문을 사용하여야 한다 -->
	<%!
	// 위치상관없이 어디서든 호출 가능하다 
	final static String MESSAGE ="Bitcamp 701";
	String address="강남구 역삼동";
	public String getAddress(){
		return "우리집은" +address;
	}
	%>

</body>
</html>