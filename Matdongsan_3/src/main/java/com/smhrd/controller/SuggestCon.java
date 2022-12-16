package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;
import com.smhrd.domain.SGDTO;


public class SuggestCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[SuggestCon]");
		
		request.setCharacterEncoding("UTF-8");		
		
		// 1. 파라미터 수집	
		
		HttpSession session = request.getSession();
		Member user = (Member)session.getAttribute("loginMember");
		
		System.out.println(user.getUser_no());
		
		int user_no = user.getUser_no();
		String sg_content = request.getParameter("sg_content");
		String sg_title = request.getParameter("sg_title");
		String sg_email = request.getParameter("sg_email");		
		
		// 2. 수집된 데이터를 Member객체에 담기		
		SGDTO dto = new SGDTO(user_no, sg_content, sg_title, sg_email);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.insertSG(dto);
		
		// 6. 명령 후 처리
		if(cnt>0) {
			response.sendRedirect("event.jsp");
			
//			request.setAttribute("JoinInfo", member);
//			RequestDispatcher rd = request.getRequestDispatcher("joinSuccess.jsp");
//			rd.forward(request, response);
			
		}else {
			response.sendRedirect("Suggestion.jsp");
		}		
		
				
	}

}
