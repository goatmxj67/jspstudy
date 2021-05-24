package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.ModelAndView;

public class InquiryCommand implements CalculateCommand {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		
		int kor = 0;
		int eng = 0;
		int mat = 0;
		try {
			kor = Integer.parseInt(request.getParameter("kor"));
			eng = Integer.parseInt(request.getParameter("eng"));
			mat = Integer.parseInt(request.getParameter("mat"));
		} catch (Exception e) {
			
		}
		
		int average = (kor + eng + mat) / 3;
		char grade;
		switch (average / 10) {
		case 9:
			grade = 'A';
			break;
		case 8:
			grade = 'B';
			break;
		case 7:
			grade = 'C';
			break;
		case 6:
			grade = 'D';
			break;
		default: 
			grade = 'F';
			break;
		}
		// 결과값을 request에 저장
		request.setAttribute("average", average);
		request.setAttribute("grade", grade);
		
		return new ModelAndView("views/output.jsp", false);
		
	}

}
