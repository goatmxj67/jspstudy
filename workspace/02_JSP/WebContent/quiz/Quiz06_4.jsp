<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
	
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String isMarry = request.getParameter("isMarry");
		String job = request.getParameter("job");
		
		Cookie cookie1 = new Cookie("birthday", URLEncoder.encode(year + "년" + month + "월" + day + "일", "utf-8"));
		cookie1.setMaxAge(60 * 60);
		response.addCookie(cookie1);
		Cookie cookie2 = new Cookie("isMarry", URLEncoder.encode(isMarry, "utf-8"));
		cookie2.setMaxAge(60 * 60);
		response.addCookie(cookie2);
		Cookie cookie3 = new Cookie("job", URLEncoder.encode(job, "utf-8"));
		cookie3.setMaxAge(60 * 60);
		response.addCookie(cookie3);
		
		// 결과는 다음 페이지에서 확인
		// 방식은 리다이렉트이든 포워드이든 상관없다. 
		// 코드가 짧은 리다이렉트로 하겠다.
		response.sendRedirect("/02_JSP/quiz/Quiz06_5.jsp");
	%>

</body>
</html>