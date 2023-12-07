<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String memberid = request.getParameter("memberid");
		String memberpw = request.getParameter("memberpw");
		
		if((memberid.equals("tiger")) && (memberpw.equals("12345"))){ // 로그인 확인,  == 숫자비교할떄만 쓰자
			session.setAttribute("sessionid", memberid);// 세션에 새 속성 추가(로그인 성공한 아이디)
			session.setAttribute("sessionpw", memberpw);
			
			out.println("로그인 성공");
		
	%>
		<a href = "loginCheck.jsp">로그인 성공 -> 로그인 체크 페이지로 이동</a>
		<br>
		<a href = "logOut.jsp">로그아웃</a>
		
	<%		
			
		}else{
			out.println("로그인 실패");
		
	%>
		
		<a href = "loginCheck.jsp">로그인 실패 -> 로그인 체크 페이지로 이동</a>
	<% 
		}
	
	%>
</body>
</html>