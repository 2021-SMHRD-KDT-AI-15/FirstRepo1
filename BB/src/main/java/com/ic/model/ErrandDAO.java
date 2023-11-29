package com.ic.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ic.db.SqlSessionManager;

public class ErrandDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	public int requireErrand(ErrandDTO dto) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.insert("requireErrand", dto);
		
		sqlSession.close();
		
		return result;
	}
	
}
