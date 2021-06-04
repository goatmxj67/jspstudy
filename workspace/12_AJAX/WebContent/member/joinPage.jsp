<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		* {
			padding: 0;
			margin: 0;
			box-sizing: border-box;
		}
		label {
			display: block;
			font-weight: 700;
		}
		input {
			padding: 5px 10px;
			width: 250px;
			height: 50px;
			border: 1px solid gray;
			outline: none;
		}
	</style>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		// 페이지 로드
		$(document).ready(function(){
			idCheck();
		})
		// 함수
		function idCheck() {
			// 아이디 정규식 : 4 ~ 32자, 소문자, 숫자, 특수문자(_, -), 시작은 소문자
			const regID = /^[a-z][a-z0-9_-]{3,31}$/;
			const id = $('#id');
			const id_msg = $('#id_msg');
			id.blur(function(){
				if ( regID.test(id.val()) ) { // id.val() = id.value * 입력된 ID의 정규식 검사
					id_msg.text('검사 통과');
				} else {
					id_msg.text('검사 실패');
				}
			}) 
		}
	</script>
</head>
<body>

	<form id="join_form" method="post">
		
		<h1>회원가입</h1>
		
		<label for="id">아이디</label>
		<input type="text" id="id" name="id">
		<div id="id_msg"></div>
		
	</form>

</body>
</html>