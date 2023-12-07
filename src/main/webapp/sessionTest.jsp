<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 테스트</title>
</head>
<body>

	세션 유효시간 기본 값 : <br>
	<%
		int sessionTime = session.getMaxInactiveInterval(); // 세션 유효시간
		out.println("세션의 유효시간 : " + sessionTime + "<br>");
	
	%>
	세션 유효시간 변경 후 값 : <br>
	<%
	
		session.setMaxInactiveInterval(300);  // 300초 후에 세션 자동 삭제
		sessionTime = session.getMaxInactiveInterval(); // int 없어야 된다? 이유 모름
		out.println("세션의 유효시간 : " + sessionTime + "<br>");
	%>
	<hr>
	<%
		String session_id = session.getId(); // 세션의 고유 아이디
		long lastTime = session.getLastAccessedTime(); // 마지막 세션 사용했던 시점의 시간, long 붙이는 이유는 1970년 1월 1일 부터(gmt?) 0으로 시작해서 int 21억보다 크기 떄문에
		long firstTime = session.getCreationTime();   // 세션 생성된 시점의 시간
		long keepTime = (lastTime - firstTime) / 60; // 사이트에서 유지했던 시간을 분단위로 반환
		
		out.println("세션 고유 아이디 : " + session_id + "<br>");
		out.println("사이트 접속 시간 : " + keepTime + "분<br>");
		out.println("lasttime : " + lastTime + "<br>");
		out.println("firsttime : " + firstTime + "<br>");
			
	%>
		
</body>
</html>