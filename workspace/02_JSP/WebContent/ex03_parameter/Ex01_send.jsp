<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="http://localhost:9090/02_JSP/ex03/Ex01_receive.jsp?name=브레드">Ex01_receive.jsp로보내기</a>
	<a href="/02_JSP/ex03/Ex01_receive.jsp?age=50">Ex01_receive.jsp로보내기</a>
	<!-- <a href="/ex03/Ex01_receive.jsp?age=50">Ex01_receive.jsp로보내기</a> --> <!-- "/"로 시작하면 ContextPath로 인식 -->
	<!-- <a href="ex03/Ex01_receive.jsp?age=50">Ex01_receive.jsp로보내기</a> --> <!-- /ex03/ex03 -->
	<a href="Ex01_receive.jsp?name=브레드&age=50">Ex01_receive.jsp로보내기</a>

</body>
</html>