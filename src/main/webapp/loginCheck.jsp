<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 체크</title>
</head>
<body>
	<%
		String sessionId = (String)session.getAttribute("sessionid");
		String name="";
	
		if(sessionId == null){ // 참이면 비로그인 상태, 거짓이면 로그인을 한 상태
			
			out.println("로그인 페이지로 이동하세요");
	%>
		<br><a href="login.jsp">로그인 페이지로 이동</a>
	
	<% 
		}else{
			out.println(sessionId + "님 로그인 중<br>"); // out.print br만 먹음
			Enumeration ssion =  session.getAttributeNames();// 열거
			
			while(ssion.hasMoreElements()){   // hasmore~ 다음께 있으면 참 업으면 거짓
				name = ssion.nextElement().toString(); // 세션안에 들어있는 속성들의 이름을 가져옴
				out.println("세션 내 속성 이름 : " + name + "<br>");
				
				String sessionValue = (String)session.getAttribute(name);
				out.println("세션 내 속성 값 : " + sessionValue + "<br>");
			}
			
		}
		
	%>
	<br>
	<a href="sessionTest.jsp">세션테스트로 가기</a>
</body>
</html>