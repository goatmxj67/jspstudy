package quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Quiz03
 */
@WebServlet("/Quiz03")
public class Quiz03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Quiz03() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 요청 처리
		
				// 1) 인코딩
				request.setCharacterEncoding("utf-8");
				
				// 2) 파라미터 저장
				String title = request.getParameter("title");
				String writer = request.getParameter("writer");
				String contents = request.getParameter("contents");
				
				// IP주소
				// 1. 기본은 request.getRemoteAddr()로 알 수 있다.
				// 2. 거쳐서 온 IP는 X-Forwarded-For 요청 헤더(request header)에 있다.
				String ip = request.getHeader("X-Forwarded-For");
				if(ip == null) {  // 거치지 않고 직접 왔다면
					ip = request.getRemoteAddr();
				}
				
				// 작성일자
				String date = new SimpleDateFormat("yyyy-MM-dd H:mm:ss").format(new Date()); // MM인 이유: mm -> minute
				// H: 15시 hh: 03시
				
				// 2. 응답 처리
				
				// 1) content-type
				response.setHeader("Content-Type", "text/html; charset=utf-8");
				// response.setContentType("text/html; charset=utf-8");
				
				// 2) 출력 스트림 생성
				PrintWriter out = response.getWriter();
				
				// 3) 응답 생성
				out.println("<!DOCTYPE html>");
				out.println("<html>");
				out.println("<head>");
				out.println("<meta charset=\"utf-8\">");
				out.println("<title>제목</title>");
				out.println("</head>");
				out.println("<body>");
				out.println("<ul>");
				out.println("<li>제목: " + title + "</li>");
				out.println("<li>작성자: " + writer + "</li>");
				out.println("<li>내용: " + contents + "</li>");
				out.println("<li>IP주소: " + ip + "</li>");
				out.println("<li>작성일자: " + date + "</li>");
				out.println("</ul>");
				out.println("</body>");
				out.println("</html>");
				out.flush();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
