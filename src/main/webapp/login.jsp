<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인</title>
</head>
<body>
	<h3>회원 로그인</h3>
	<hr>
	<form action="loginOk.jsp"> <!-- action 어디로 보낼거냐 -->
		아이디 : <input type="text" name="memberid"><br><br>
		비밀번호 : <input type="password" name="memberpw"><br><br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>