package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;


public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[LoginCon]");
		// 0. post 방식 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 1. 파라미터 수집
		String user_id = request.getParameter("LoginId");
		String user_pw = request.getParameter("LoginPw");
		
		
		// 2. 수집된 데이터를 Member 객체에 담기
		Member member = new Member(user_id, user_pw);
		// 3. MemberMapper.xml에서 SQL문 만들고 오기
		
		// 4. MemberDAO에 가서 메소드 만들고 오기
		
		// 5. MemberDAO 객체 생성, 메소드 호출
		MemberDAO dao = new MemberDAO();
		Member loginMember = dao.selectMember(member);
		
		// 6. 명령 후 처리
		if(loginMember != null) {
			// 세션에 로그인 정보 저장
			// 1. 세션 객체 생성
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			response.sendRedirect("APT_search.jsp");
			// main.jsp로 이동
		}else {
			response.sendRedirect("Error.jsp");
			// main.jsp로 이동
		}
		// 페이지 이동 - 성공, 실패 둘 다 메인.jsp로 감
				
	}		
			
}	
