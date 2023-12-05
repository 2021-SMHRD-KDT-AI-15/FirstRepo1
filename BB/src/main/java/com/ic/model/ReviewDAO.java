package com.ic.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ic.db.SqlSessionManager;

public class ReviewDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	ArrayList<ReviewDTO> getLike = new ArrayList<>();
	ArrayList<ReviewDTO> getDisLike = new ArrayList<>();
	ArrayList<ReviewDTO> getReview1 = new ArrayList<>();
	ArrayList<ReviewDTO> getReview0 = new ArrayList<>();

	// 좋아요 갯수를 가져오는 메소드
	public ArrayList<ReviewDTO> getLike(int member_id) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		getLike = (ArrayList) sqlSession.selectList("getLike", member_id);
		
		sqlSession.close();

		return getLike;
	}
	// 싫어요 갯수를 가져오는 메소드
	public ArrayList<ReviewDTO> getDisLike(int member_id) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		getDisLike = (ArrayList) sqlSession.selectList("getDisLike", member_id);
		
		sqlSession.close();
		
		return getDisLike;
	}
	// 나에게 작성한 후기를 가져오는 메소드
	public ArrayList<ReviewDTO> getReview1(int member_id) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		getReview1 = (ArrayList) sqlSession.selectList("getReview1", member_id);
		
		sqlSession.close();

		return getReview1;
	}
	// 내가 작성한 후기를 가져오는 메소드
	public ArrayList<ReviewDTO> getReview0(int member_id) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		getReview0 = (ArrayList) sqlSession.selectList("getReview0", member_id);

		sqlSession.close();

		return getReview0;
	}
	
}
