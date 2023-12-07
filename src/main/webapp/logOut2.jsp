<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃2</title>
</head>
<body>
	<%
		session.removeAttribute("memberpw"); // 세션 내의 속성 중 특정값만 삭제
	
	%>
</body>
</html>