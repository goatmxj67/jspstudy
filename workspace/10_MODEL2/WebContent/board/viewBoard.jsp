<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:include page="../layout/header.jsp">
	<jsp:param value="게시글 작성" name="title" />
</jsp:include>

<link rel="stylesheet" href="../assets/css/layout.css">
<style>
	.board_view {
		width: 100%;
		display: flex;
		justify-content: space-between;
	}
	.board_content {
		width: 40%;
	}
	.board_img {
		width: 55%;
	}
	.board_img > img {
		width: 100%;
	}
</style>

<div class="board_view">
	<div class="board_content">
		<p class="title">작성자</p>
		${dto.author}<br><br>
		<p class="title">작성자IP</p>
		${dto.ip}<br><br>
		<p class="title">최종수정일</p>
		${dto.lastmodified}<br><br>
		<p class="title">조회수</p>
		${dto.hit}<br><br>
		<p class="title">제목</p>
		${dto.title}<br><br>
		<p class="title">내용</p>
		<pre>${dto.content}</pre><br><br>	
	</div>
	<div class="board_img">
		<img src="/10_MODEL2/archive/${dto.filename}" alt="첨부파일 이미지">
	</div>
</div>
<div>
	<input type="button" value="목록보기" onclick="location.href='${referer}'">
</div>

<%@ include file="../layout/footer.jsp" %>