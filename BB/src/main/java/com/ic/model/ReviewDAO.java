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
	
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 후기 작성시 대상자 닉네임 호출 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public String getNickname_r(int subject_id) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		String nickname = sqlSession.selectOne("GetNickname_r", subject_id);
		
		sqlSession.close();
		
		return nickname;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 상대에 대한 좋은 리뷰 작성 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public int WriteLikeReview_s(ReviewDTO reviewdto) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.insert("WriteLikeReview_s", reviewdto);
		
		sqlSession.close();
		
		return result;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 상대에 대한 좋지 않은 리뷰 작성 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public int WriteDislikeReview_s(ReviewDTO reviewdto) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.insert("WriteDislikeReview_s", reviewdto);
		
		sqlSession.close();
		
		return result;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 내가 작성한 좋은 리뷰 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public int WriteLikeReview_c(ReviewDTO reviewdto_c) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.insert("WriteLikeReview_c", reviewdto_c);
		
		sqlSession.close();
		
		return result;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 내가 작성한 좋지 않은 리뷰 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public int WriteDislikeReview_c(ReviewDTO reviewdto_c) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.insert("WriteDislikeReview_c", reviewdto_c);
		
		sqlSession.close();
		
		return result;
		
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
//■■■■■■■■■■■■■■■■■■■■■■■ 지원한 테이블에서 후기 작성시 매칭상태 4로■■■■■■■■■■■■■■■■■■■■■■■■■■
	public int DeleteApply(ApplyCheckDTO applycheck) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result =  sqlSession.update("DeleteApply", applycheck);
		
		sqlSession.close();
		
		return result;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
////////////////////////////////////////////■■■■■■■■■■■■■■■■■■■■■■■ 요청한 심부름 페이지에서 지원자에 대한 리뷰 작성 부분 ■■■■■■■■■■■■■■■■■■■■■■■■■■////////////////////////////////////////////////////////////
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 선택한 지원자 닉네임 호출 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public String GetApplyMemberNickname(int applyMemberId) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		String applyMemberNickname = sqlSession.selectOne("GetApplyMemberNickname", applyMemberId);
		
		sqlSession.close();
		
		return applyMemberNickname;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
//■■■■■■■■■■■■■■■■■■■■ 요청자가 리뷰작성하면 지원자의 매칭상태 5로 변경 ■■■■■■■■■■■■■■■■■■■■■■■■
	public int ChgAppMatchStatus(ApplyCheckDTO applycheck) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.update("ChgAppMatchStatus", applycheck);
		
		sqlSession.close();
		
		return result;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
}
