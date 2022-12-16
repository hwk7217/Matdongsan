package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class LandDAO {
	
	// SqlSessionFactory 사용하기 위해 메소드 호출하기!
	 SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	 SqlSession sqlSession = sqlSessionFactory.openSession();
	 
		// 매물 검색기능 구현
		public List<LandDTO> selectAllLand(String str){
			List<LandDTO> Landlist = null;
			try {
				Landlist = sqlSession.selectList("selectAllLand", str);
				
				for(LandDTO L:Landlist) {
					System.out.println(L.getApt_name());
					System.out.println(L.getApt_addr());
					System.out.println(L.getApt_addr2());
					System.out.println(L.getApt_price());
					System.out.println(L.getApt_info());
					System.out.println(L.getApt_area2());
				}
				
				if(Landlist != null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}finally {
				sqlSession.close();
			}		
			return Landlist;
			
		}// 회원 전체 검색 끝
		
		// 특정 매물 선택
		public LandDTO selectLand(LandDTO dto) {
			LandDTO Landinfo = null;
			try {
				Landinfo = sqlSession.selectOne("SelectLand", dto);
				if(Landinfo != null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}			
			}finally {
				
			}//finally 끝
			return Landinfo;
		}//매물 선택 끝	
		
		// 실거래가 매칭 매물 선택
		public TPDTO selectTP(TPDTO dto) {
			TPDTO TPinfo = null;
			try {
				TPinfo = sqlSession.selectOne("SelectTP", dto);
				if(TPinfo != null) {
					sqlSession.commit();
					System.out.println("실거래가 성공!");

				}else {
					sqlSession.rollback();
					System.out.println("실거래가 실패!");
				}			
			}finally {
				sqlSession.close();
			}//finally 끝
			return TPinfo;
		}//매물 선택 끝			
}
