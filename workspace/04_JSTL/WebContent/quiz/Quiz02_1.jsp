<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>

	<form action="Quiz02_2.jsp">
		최소 크기 <input type="number" name="min" min="1" max="7"><br>
		최대 크기 <input type="number" name="max" min="1" max="7"><br>
		<input type="checkbox" name="foods" value="불고기">&nbsp;불고기&nbsp;&nbsp;
		<input type="checkbox" name="foods" value="닭갈비">&nbsp;닭갈비&nbsp;&nbsp;
		<input type="checkbox" name="foods" value="순대국">&nbsp;순대국&nbsp;&nbsp;
		<input type="checkbox" name="foods" value="자장면">&nbsp;자장면&nbsp;&nbsp;
		<input type="checkbox" name="foods" value="해장국">&nbsp;해장국&nbsp;&nbsp;<br>
		<button>전송</button>
		<input type="reset">
	</form>
	
</body>
</html>