package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;

/**
 * Servlet implementation class doJoinCon
 */
public class doJoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		System.out.println("[doJoinCon]");

		request.setCharacterEncoding("UTF-8");

		// 1. 파라미터 수집
//		String user_id = request.getParameter("user_pw");
//		String user_pw = request.getParameter("user_pw");
		String user_email = request.getParameter("email");
		System.out.println(user_email);
//		System.out.println(user_id);
		

		// 2. 수집된 데이터를 Member객체에 담기
		Member member = new Member(user_email);

		MemberDAO dao = new MemberDAO();

		// 6. 명령 후 처리
		Member doJoin = dao.doJoin(member);
		System.out.println(doJoin.getUser_pw());

		// 6. 명령 후 처리
		if (doJoin != null) {
			RequestDispatcher rd = request.getRequestDispatcher("member.jsp");
			request.setAttribute("doJoin", doJoin);
			rd.forward(request, response);
			// main.jsp로 이동
		} else {
			response.sendRedirect("ID_search.jsp");
			// main.jsp로 이동
		}
	}

}
