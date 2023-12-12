package com.ic.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ic.db.SqlSessionManager;

public class MemberDAO {

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
		MemberDTO result = sqlSession.selectOne("login", dto);

		// 3. sqlSession 반납 -> 종료
		sqlSession.close();

		// 4. 결과에 대한 처리!
		return result;
	}

	// 비밀번호 체크
	public MemberDTO check(MemberDTO dto) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		MemberDTO result = sqlSession.selectOne("check", dto);

		sqlSession.close();

		return result;
	}

	// 회원정보 변경을 위한 메소드
	public int change(MemberDTO dto) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int result = sqlSession.update("change", dto);

		sqlSession.close();

		return result;
	}

	// 회원정보를 담아오는 메소드
	public MemberDTO MyInfo(int member_id) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		MemberDTO MyInfo = sqlSession.selectOne("MyInfo", member_id);

		sqlSession.close();

		return MyInfo;

	}
	
	
	// 아이디 중복 체크 메소드
	public int check_id(String id) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt1 = sqlSession.selectOne("check_id", id);
		sqlSession.close();
		return cnt1;
	}
	// 닉네임 중복 체크 메소드
	public int check_name(String nickname) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt2 = sqlSession.selectOne("check_name", nickname);
		sqlSession.close();
		return cnt2;
	} 
	// 이메일 중복 체크 메소드
	public int check_mail(String email) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt3 = sqlSession.selectOne("check_mail", email);
		sqlSession.close();
		return cnt3;
	}

	// 지원자 회원번호 불러오기
	public MemberDTO getMemberDetails(int member_id) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		MemberDTO result = sqlSession.selectOne("getMemberDetails", member_id);
		
		sqlSession.close();
		
		return result;
	}
	
	// 요청자 보유금액 심부름액수만큼 차감
	public int updateDeduceMoney(MemberDTO applymember) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.update("updateDeduceMoney",applymember);
		
		sqlSession.close();
		
		return result;

	}
	// 지원자 보유금액 심부름액수와 수수료만큼 증가
	public int updateReduceMoney(MemberDTO applymember) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.update("updateReduceMoney",applymember);
		
		sqlSession.close();
		
		return result;

	}

}
