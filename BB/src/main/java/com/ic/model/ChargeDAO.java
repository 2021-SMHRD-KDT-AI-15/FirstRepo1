package com.ic.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ic.db.SqlSessionManager;

public class ChargeDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	
	
	public MemberDTO charge(MemberDTO dto) {
		// 1. SqlSession 생성! -> sqlSessionFactory를 사용하여 생성
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		// 2. 만들어진 SqlSession으로 수행하고자 하는 sql문장 실행 -> sql구문의 id 활용
		MemberDTO result = sqlSession.selectOne("charge" , dto);
		
		// 3. sqlSession 반납 -> 종료
		sqlSession.close();	
		
		// 4. 결과에 대한 처리!
		return result;
		
		
	}
}





