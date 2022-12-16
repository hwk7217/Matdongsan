package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;


public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[JoinCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		// 1. 파라미터 수집	
		
		String user_id = request.getParameter("JoinId");
		String user_pw = request.getParameter("JoinPw");
		String user_pw2 = request.getParameter("JoinPw2");
		String user_email = request.getParameter("JoinEmail");
			
		// 2. 수집된 데이터를 Member객체에 담기		
		Member member = new Member(user_id, user_pw, user_email);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.insertMember(member);
		
		
		// 6. 명령 후 처리
		if(cnt>0) {
			RequestDispatcher rd = request.getRequestDispatcher("Confirm.jsp");
			request.setAttribute("JoinInfo", member);
			rd.forward(request, response);
//			response.sendRedirect("Confirm.jsp");
			
//			RequestDispatcher rd = request.getRequestDispatcher("joinSuccess.jsp");
//			rd.forward(request, response);
			
		}else {
			response.sendRedirect("login.jsp");
		}
	
	}

}
