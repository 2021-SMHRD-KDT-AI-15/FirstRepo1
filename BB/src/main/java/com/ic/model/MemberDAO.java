package com.ic.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ic.db.SqlSessionManager;

public class MemberDAO {

	// Web_Member 테이블을 실제로 접근하여
	// sql을 수행할 수 있는 클래스! -> DB 접근해서 사용하겠다!
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	// 회원가입 메소드 생성!
	public int join(MemberDTO dto) {
		// 1. sqlSession 객체 빌려오기! -> DB 접속할 수 있는 기능을 가지고 있다.
		// openSession(true) : true는 작업에 대한 commit을 자동으로 지정하는 기능
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		// 2. sql 문장 실행하기! -> 결과값 받아서 처리
		int cnt = sqlSession.insert("join", dto);
		
		// 3. sqlSession 반납 -> 종료
		sqlSession.close();
		
		return cnt;
		
	}
	
	// 로그인 메소드 생성
	public MemberDTO login(MemberDTO dto) {
		// 1. SqlSession 생성! -> sqlSessionFactory를 사용하여 생성
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		// 2. 만들어진 SqlSession으로 수행하고자 하는 sql문장 실행 -> sql구문의 id 활용
		MemberDTO result = sqlSession.selectOne("login" , dto);
		
		// 3. sqlSession 반납 -> 종료
		sqlSession.close();	
		
		// 4. 결과에 대한 처리!
		return result;
	}

	// 회원정보 변경을 위한 비밀번호 체크 메소드
	public MemberDTO check(MemberDTO dto) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		MemberDTO result = sqlSession.selectOne("check" , dto);
		
		sqlSession.close();	
		
		return result;
	}
	
	// 회원정보 변경을 위한 메소드
	public int change(MemberDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.update("change" , dto);
		
		sqlSession.close();
		
		return result;
	}



}
