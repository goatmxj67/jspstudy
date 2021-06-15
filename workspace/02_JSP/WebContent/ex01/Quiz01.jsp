<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 테이블을 생성한다. -->
	<%
		String[] names = {"브레드", "초코", "윌크"};
		int[] ages = {50, 30, 20};
	%>
	<table border="1">
		<thead>
			<tr>
				<td>순번</td>
				<td>이름</td>
				<td>나이</td>
			</tr>
		</thead>
		<tbody>
			<%-- <tr>
				<td>1</td>
				<td><%=names[0]%></td>
				<td><%=ages[0]%></td>
			</tr>
			<tr>
				<td>2</td>
				<td><%=names[1]%></td>
				<td><%=ages[1]%></td>
			</tr>
			<tr>
				<td>3</td>
				<td><%=names[2]%></td>
				<td><%=ages[2]%></td>
			</tr> --%>
			<% for (int i = 0; i < names.length; i++) { %>
				<tr>
					<td><%=i + 1%></td>
					<td><%=names[i]%></td>
					<td><%=ages[i]%></td>
				</tr>
			<% } %>
		</tbody>
	</table>
</body>
</html>