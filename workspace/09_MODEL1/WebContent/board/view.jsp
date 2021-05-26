<%@page import="dto.MemberDTO"%>
<%@page import="dao.BoardDAO"%>
<%@page import="dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		* {
			font-family: '돋움', sans-serif;
			font-size: 16px;
		}
		.container {
			width: 600px;
			margin: 100px auto;
		}
	</style>
</head>
<body>

	<%
		// 1. 파라미터 처리
		request.setCharacterEncoding("utf-8");
	
		long idx = Long.parseLong(request.getParameter("idx"));
		
		// 2. DAO의 updateHit() 메소드 호출
		// 자신이 작성한 게시글은 조회수가 늘지 않는다.
		// 로그인된 사용자 : loginDTO
		String author1 = ((MemberDTO)session.getAttribute("loginDTO")).getId();
		// 게시글의 작성자 : dto
		BoardDTO dto = BoardDAO.getInstance().selectByIdx(idx);
		String author2 = dto.getAuthor();
		if (!author1.equals(author2)) {
			BoardDAO.getInstance().updateHit(idx);  // DB에서만 1증가
			dto.setHit(dto.getHit() + 1);  // 따라서 JAVA에서도 1증가 처리 해야함
		}
		
		// 3. DAO의 selectByIdx() 메소드 호출
		pageContext.setAttribute("dto", dto);
	%>

	<div class="container">
		<h3>게시글 번호</h3>
		${dto.idx}<br><br>
		<h3>제목</h3>
		${dto.title}<br><br>
		<h3>작성자</h3>
		${dto.author}<br><br>
		<h3>조회수</h3>
		${dto.hit}<br><br>
		<h3>작성일</h3>
		${dto.postdate}<br><br>
		<h3>내용</h3>
		<pre>${dto.content}</pre><br><br>
	</div>

</body>
</html>