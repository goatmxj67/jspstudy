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
	
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		Cookie cookie1 = new Cookie("address", URLEncoder.encode(address, "utf-8"));
		cookie1.setMaxAge(60 * 60);
		response.addCookie(cookie1);
		Cookie cookie2 = new Cookie("phone", URLEncoder.encode(phone, "utf-8"));
		cookie2.setMaxAge(60 * 60);
		response.addCookie(cookie2);
		Cookie cookie3 = new Cookie("email", URLEncoder.encode(email, "utf-8"));
		cookie3.setMaxAge(60 * 60);
		response.addCookie(cookie3);
	%>
		
	<h3>추가정보를 입력하세요.</h3>
	<form action="/02_JSP/quiz/Quiz06_4.jsp" method="post">
		생년월일 
		<input type="text" size="5" name="year">년
		<input type="text" size="3" name="month">월
		<input type="text" size="3" name="day">일<br>
		결혼여부&nbsp;
		<input type="radio" name="isMarry" value="no">미혼
		<input type="radio" name="isMarry" value="yes">기혼<br>
		직업&nbsp;&nbsp;
		<select name="job">
			<option value="developer">개발자</option>
			<option value="student">학생</option>
			<option value="noJob">백수</option>
		</select>
		<br>
		<input type="submit" value="확인">
	</form>

</body>
</html>