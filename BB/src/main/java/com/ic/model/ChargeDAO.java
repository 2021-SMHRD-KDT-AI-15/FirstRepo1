package com.ic.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ic.db.SqlSessionManager;

public class ChargeDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	
	// 충전을 위한 차지 메소드
	public int charge(ChargeDTO dto) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.insert("charge" , dto);
		
		sqlSession.close();	
		
		return result;
	}
}





