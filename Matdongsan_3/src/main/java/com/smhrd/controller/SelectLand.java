package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.LandDAO;
import com.smhrd.domain.LandDTO;
import com.smhrd.domain.TPDTO;


public class SelectLand extends HttpServlet {
   private static final long serialVersionUID = 1L;


   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      // 0. 한글 인코딩
      request.setCharacterEncoding("UTF-8");      
      
      String str_aptno = request.getParameter("aptNo");
      int aptno = Integer.parseInt(str_aptno);
      
      LandDTO dto = new LandDTO(aptno);
      
      LandDAO dao = new LandDAO();
      LandDTO SelectLand = dao.selectLand(dto);
      
      // 6. 명령 후 처리
      if(SelectLand != null) {
         System.out.println("매물 선택 성공!");
         // 세션에 로그인 정보 저장
         // 1. 세션 객체 생성
         HttpSession session = request.getSession();
         session.setAttribute("selectLand", SelectLand);
                  
         String tp_addr = SelectLand.getApt_addr();
         String tp_addr2 = SelectLand.getApt_addr2();
         int tp_area = SelectLand.getApt_area2();   
         
         TPDTO tpdto = new TPDTO(tp_addr,tp_addr2,tp_area);
         TPDTO SelectTP = dao.selectTP(tpdto);
         
         if(SelectTP != null) {
            System.out.println("실거래가 불러오기 성공!");
            session.setAttribute("selectTP", SelectTP);            
         }else {
            System.out.println("실거래가 데이터가 없습니다!");
            
            int tp_no = 0;
            String tp_name = "사례 없음";
            tp_addr = "사례 없음" ;
            tp_addr2 = "사례 없음";
            tp_area = 0;
            int tp_price_2019 = 0;
            int tp_count_2019 = 0;
            int tp_price_2020 = 0;
            int tp_count_2020 = 0;      
            int tp_price_2021 = 0;
            int tp_count_2021 = 0;
            
            TPDTO TPnull = new TPDTO(tp_no, tp_name, tp_addr, tp_addr2, tp_area, tp_price_2019,tp_count_2019,tp_price_2020,tp_count_2020,tp_price_2021,tp_count_2021);
            session.setAttribute("selectTP", TPnull);
         }
      
      }else {
         System.out.println("로그인 실패!");      
      }
      // 페이지 이동 - 성공, 실패 둘 다 메인.jsp로 감
      response.sendRedirect("kakaomap.jsp");      
            
   }

}