package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;


public class UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[UpdateCon]");
		
		// 0. post 방식 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 1. 파라미터 수집
		// form 태그에는 pw, tel, address 담아서 보냄
		// email...? --> session에서 가져오기
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		int user_no = loginMember.getUser_no();
		String user_id = loginMember.getUser_id();		
		String user_pw = request.getParameter("UpdatePw");
		String user_email = request.getParameter("UpdateEmail");
		
		// 2. 수집된 데이터를 Member 객체에 담기
		Member updateMember = new Member(user_no,user_id,user_pw,user_email);
		
		// 3. MemberMapper.xml 에서 SQL문 만들고 오기 ㅇ
		
		// 4. MemberDAO ㅇ
		
		// 5. 메소드 호출
		MemberDAO dao = new MemberDAO();
		int cnt = dao.updateMember(updateMember);
		
		// 6. 명령 후 처리
		if(cnt>0) {
			// 회원정보수정이 됐으면!!
			System.out.println("회원정보수정 성공!!");
			// 회원정보를 다시 세션에 저장해야
			// 메인에서 새로운 정보를 출력할 수 있다!!
			// 같은 이름의 세션에 덮어쓰기 하기
			session.setAttribute("loginMember", updateMember);
			response.sendRedirect("eventalert.jsp");
		}else {
			System.out.println("회원정보수정 실패!!");
			response.sendRedirect("eventalert.jsp");
		}		
		
		
		
	}

}
