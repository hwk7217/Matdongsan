package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {
	// SqlSessionFactory 사용하기 위해 메소드 호출하기!
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	// 회원가입 기능 메소드 만들기
	public int insertMember(Member member) {
		int cnt = 0;
		// Mapper.xml 작성될 SQL문의 ID 지정해주기
		try {
			cnt = sqlSession.insert("insertMember", member);
			if (cnt > 0) {
				System.out.println("회원가입 성공!");
				sqlSession.commit();
			} else {
				System.out.println("회원가입 실패!");
				sqlSession.rollback();
			} // cnt 판단 끝
		} finally {
			sqlSession.close();
		}
		return cnt;
	} // 회원가입 기능 끝

	// 로그인 기능 구현
	public Member selectMember(Member member) {
		Member loginMember = null;
		try {
			System.out.println(sqlSession.selectOne("loginnew", member));
			loginMember = sqlSession.selectOne("loginnew", member);
			if (loginMember != null) {
				System.out.println("로그인 성공!");
				sqlSession.commit();
			} else {
				System.out.println("로그인 실패!");
				sqlSession.rollback();
			}
		} finally {
//			sqlSession.close();
		} // finally 끝
		return loginMember;
	}// 로그인 끝

	// 회원수정 기능 구현
	public int updateMember(Member member) {
		int cnt = 0;
		try {
			cnt = sqlSession.update("updateMember", member);
			if (cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} finally {
//			sqlSession.close();
		} // finally 끝
		return cnt;
	}// 회원수정 끝
	
	public Member doJoin(Member member) {
		Member doJoin = null;
		try {
			doJoin = sqlSession.selectOne("doJoin", member);
			if (doJoin != null) {
				System.out.println("회원찾기 성공!");
				sqlSession.commit();
			} else {
				System.out.println("회원찾기 실패!");
				sqlSession.rollback();
			} // cnt 판단 끝
		} finally {
			sqlSession.close();
		}
		return doJoin;
	}
	
	public MemMem doPW(MemMem member) {
		MemMem doPW = null;
		try {
			doPW = sqlSession.selectOne("doPW", member);
			if (doPW != null) {
				System.out.println("회원찾기 성공!");
				sqlSession.commit();
			} else {
				System.out.println("회원찾기 실패!");
				sqlSession.rollback();
			} // cnt 판단 끝
		} finally {
			sqlSession.close();
		}
		return doPW;
	}
	// 건의사항 기능 메소드 만들기
	public int insertSG(SGDTO dto) {
		int cnt = 0;
		// Mapper.xml 작성될 SQL문의 ID 지정해주기
		try {
			cnt = sqlSession.insert("insertSG", dto);
			if (cnt > 0) {
				System.out.println("커밋 성공!");
				sqlSession.commit();
			} else {
				System.out.println("커밋 실패!");
				sqlSession.rollback();
			} // cnt 판단 끝
		} finally {
			sqlSession.close();
		}
		return cnt;
	} // 건의사항 기능 끝
		
	//건의사항 전체 조회, Member에 e,p,t,a
	public List<SGDTO> selectSG(int user_no){
		List<SGDTO> SGlist = null;
		try {
			SGlist = sqlSession.selectList("selectSG",user_no);
			if(SGlist != null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		}finally {
			
		}		
		return SGlist;
	}// 건의사항 조회
	
	//건의사항 삭제
	public int deleteSG(int sg_no) {
		int cnt = 0;
		try {
							// (Mapper-delete 태그의 ID, 매개변수)
			cnt = sqlSession.delete("deleteSG",sg_no);
			if(cnt>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}			
		}finally {
			sqlSession.close();
		}// finally 끝
		return cnt;
		
	}	

	// 북마크 기능 메소드 만들기
	public int insertBM(BMDTO dto) {
		int cnt = 0;
		// Mapper.xml 작성될 SQL문의 ID 지정해주기
		try {
			cnt = sqlSession.insert("insertBM", dto);
			if (cnt > 0) {
				System.out.println("커밋 성공!");
				sqlSession.commit();
			} else {
				System.out.println("커밋 실패!");
				sqlSession.rollback();
			} // cnt 판단 끝
		} finally {
			sqlSession.close();
		}
		return cnt;
	} // 북마크 기능 끝
	
	//북마크 전체 조회, Member에 e,p,t,a
	public List<BMDTO> selectBM(int user_no){
		List<BMDTO> BMlist = null;
		try {
			BMlist = sqlSession.selectList("selectBM",user_no);
			for(BMDTO bm: BMlist) {
				System.out.println(bm.bm_no);
				System.out.println(bm.apt_name);
				System.out.println(bm.apt_area);
				System.out.println(bm.apt_price);
			}
			
			
			if(BMlist != null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		}finally {
			sqlSession.close();
		}		
		return BMlist;
	}// 북마크 조회	

	//북마크 삭제
	public int deleteBM(int bm_no) {
		int cnt = 0;
		try {
							// (Mapper-delete 태그의 ID, 매개변수)
			cnt = sqlSession.delete("deleteBM",bm_no);
			if(cnt>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}			
		}finally {
			sqlSession.close();
		}// finally 끝
		return cnt;
		
	}	
}
