package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MemMem;
import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;

/**
 * Servlet implementation class doJoinCon
 */
public class doPWCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		System.out.println("[doPWCon]");

		request.setCharacterEncoding("UTF-8");

		// 1. 파라미터 수집
		String user_id = request.getParameter("id");
//		String user_pw = request.getParameter("user_pw");
		String user_email = request.getParameter("email");
		System.out.println(user_email);
		System.out.println("아이디 : " + user_id);
//		System.out.println(user_id);
		

		// 2. 수집된 데이터를 Member객체에 담기
		MemMem member = new MemMem(user_id, user_email);

		MemberDAO dao = new MemberDAO();

		// 6. 명령 후 처리
		MemMem doPW = dao.doPW(member);
		System.out.println(doPW.getUser_pw());

		// 6. 명령 후 처리
		if (doPW != null) {
			RequestDispatcher rd = request.getRequestDispatcher("member2.jsp");
			request.setAttribute("doPW", doPW);
			rd.forward(request, response);
			// main.jsp로 이동
		} else {
			response.sendRedirect("PW_search.jsp");
			// main.jsp로 이동
		}
	}

}
