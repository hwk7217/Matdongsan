package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.domain.BMDTO;
import com.smhrd.domain.LandDTO;
import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;

public class BookmarkCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		System.out.println("[BookmarkCon]");
		
		request.setCharacterEncoding("UTF-8");		
		
		// 1. 파라미터 수집	
		
		String apt_name = request.getParameter("apt_name");		
	
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		LandDTO selectLand = (LandDTO)session.getAttribute("selectLand");
		
		int user_no = loginMember.getUser_no();
		int apt_no = selectLand.getApt_no();
		String apt_area = selectLand.getApt_area();		
		String apt_price = selectLand.getApt_price();
		
						
		BMDTO dto = new BMDTO(user_no,apt_no,apt_name,apt_area,apt_price);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.insertBM(dto);
		
		// 6. 명령 후 처리
		if(cnt>0) {
			response.sendRedirect("kakaomap.jsp");
			
//			RequestDispatcher rd = request.getRequestDispatcher("joinSuccess.jsp");
//			rd.forward(request, response);
			
		}else {
			response.sendRedirect("kakomap.jsp");
		}		
		
	
		
	}

}
