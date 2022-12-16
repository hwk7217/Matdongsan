package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SearchCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[SearchLand]");
		// 0. post 방식 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 1. 파라미터 수집
		String input = request.getParameter("SearchInput");
		System.out.println(input);
		
		HttpSession session = request.getSession();
		session.setAttribute("SearchInput", input);
		
		String input2 =(String)session.getAttribute("SearchInput");
		
		System.out.println(input2);
		response.sendRedirect("APT_list.jsp");
		
//		RequestDispatcher rd = request.getRequestDispatcher("APT_list.jsp");
//		request.setAttribute("SearchInput", input);
//		rd.forward(request, response);		
//		
		
	}

}
