package com.ic.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ic.db.SqlSessionManager;

public class ErrandDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	
///////////////////////////////////////////// 심부름 요청 /////////////////////////////////////////////
	public int requireErrand(ErrandDTO dto) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.insert("requireErrand", dto);
		
		sqlSession.close();
		
		return result;
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
///////////////////////////////////////////// 심부름 목록 /////////////////////////////////////////////
	public void errandList() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		sqlSession.selectList("errandList");
		
	}
	
}
