package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.MemberDAO;


public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[DeleteCon]");
		// 0. 한글 인코딩
		request.setCharacterEncoding("UTF-8");
		// 1. 데이터 가져오기(파라미터 수집)

		String sg_no_str = request.getParameter("sg_no");
		int sg_no = Integer.parseInt(sg_no_str);
		
		// 2. MemberMapper.xml 에서 SQL문 만들기
		//		parameterType = "String"
		
		// 3. MemberDAO에서 회원삭제 메소드 만들기 - sqlSession.delete()
		
		// 4. 메소드 호출(email값 매개변수로 넣어주기)
		MemberDAO dao = new MemberDAO();
		int cnt = dao.deleteSG(sg_no);
		
		// 5. 성공 여부에 따른 명령 후 처리
		if(cnt>0) {
			System.out.println("건의사항 삭제 성공!!");
//			HttpSession session = request.getSession(); 여기서는 세션 안해줘도 됨			
//			session.setAttribute("loginMember", email);	관리자 정보 지울거 아니라서		
		}else {
			System.out.println("건의사항 삭제 실패!!");
		}		
		// 6. select.jsp로 이동 
		response.sendRedirect("MyPage.jsp");
		
	
	}

}
