<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(){
			const pw_btn = $('#pw_btn');
			pw_btn.on('click', function(){
				alert('비밀번호 변경 페이지로 이동합니다.');
				location.href = 'pwPage.jsp';
			})
		})
	</script>
	<style>
		.container {
			width: 500px;
			margin: 100px auto;
			text-align: center;
		}
		table {
			width: 100%;
		}
	</style>
</head>
<body>
	<div class="container">
		<form method="post">
			<table border="1">
				<thead>
					<tr>
						<td colspan="2">${loginDTO.name}님 정보</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>회원번호</td>
						<td>${loginDTO.no}</td>
					</tr>
					<tr>
						<td>아이디</td>
						<td>${loginDTO.id}</td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="button" value="비밀번호 변경" id="pw_btn"></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name" value="${loginDTO.name}"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="text" name="email" value="${loginDTO.email}"></td>
					</tr>
					<tr>
						<td>가입일</td>
						<td>${loginDTO.regdate}</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<input type="button" value="개인정보 수정하기" id="change_btn">
							<input type="button" value="되돌아가기" id="return_btn">
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>