package com.ic.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ic.db.SqlSessionManager;

public class ApplyDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 심부름 지원 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public int ApplyErrand(ArrayList list) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.insert("ApplyErrand", list);
		
		sqlSession.close();
		
		return result;
		
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
	
}
