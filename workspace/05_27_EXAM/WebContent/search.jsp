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
		String DIR = (String)request.getAttribute("DIR");
		String filename = (String)request.getAttribute("filename");
	%>
	<h1>검색</h1>
	<form action="/05_27_EXAM/Result" method="post">
		<input type="button" value="다시" id="again_btn"><br>
		<input type="text" name="user_search" placeholder="검색하세요">
		<button>확인</button>
	</form>
	<script>
		document.getElementById('again_btn').addEventListener('click', function(){
			location.href = '/05_27_EXAM/Search';
		})
	</script>
</body>
</html>