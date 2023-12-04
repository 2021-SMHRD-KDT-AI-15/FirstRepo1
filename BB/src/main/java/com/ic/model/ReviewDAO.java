package com.ic.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ic.db.SqlSessionManager;

public class ReviewDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	// 좋아요와 싫어요 갯수를 가져오는 dao
	public ReviewDTO getReview(int member_id) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ReviewDTO getReview = (ReviewDTO)sqlSession.selectOne("getReview", member_id);
		
		sqlSession.close();
		
		return getReview;
		
	}

	
	
	
		
}
	
	


