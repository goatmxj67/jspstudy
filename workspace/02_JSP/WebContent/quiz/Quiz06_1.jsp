<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>

	<h3>개인정보를 입력하세요</h3>
	<form action="/02_JSP/quiz/Quiz06_2.jsp" method="post">
		아이디 <input type="text" name="id"><br>
		비밀번호 <input type="password" name="pw"><br>
		이름 <input type="text" name="name"><br>
		<input type="submit" value="확인">
	</form> 

</body>
</html>