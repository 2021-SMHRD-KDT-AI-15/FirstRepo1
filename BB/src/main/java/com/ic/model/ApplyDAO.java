package com.ic.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ic.db.SqlSessionManager;

public class ApplyDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	ArrayList <ApplyDTO> applyErrandList = new ArrayList<>();
	
	ArrayList<ErrandDTO> ErrandTitleList = new ArrayList<>();
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 심부름 지원 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public int ApplyErrand(ArrayList list) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.insert("ApplyErrand", list);
		
		sqlSession.close();
		
		return result;
		
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 지원한 심부름 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public ArrayList<ApplyDTO> ShowApplyErrand(int member_id) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		applyErrandList = (ArrayList)sqlSession.selectList("ShowApplyErrand", member_id);
		
		sqlSession.close();
		
		return applyErrandList;
		
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

//■■■■■■■■■■■■■■■■■■■■■■■■■■ 지원한 심부름 중에서 심부름 제목 주출 ■■■■■■■■■■■■■■■■■■■■■■■■■■
	public ArrayList<ErrandDTO> getErrandTitle(ArrayList errand_id_list) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ErrandTitleList = (ArrayList)sqlSession.selectList("GetErrandTitle", errand_id_list);
		
		sqlSession.close();
		
		return ErrandTitleList;
		
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 심부름 취소 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public int ApplyCancel(ApplyCheckDTO checkdto) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.delete("ApplyCancel", checkdto);
		
		sqlSession.close();
		
		return result;
		
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■ 요청한 심부름의 지원내역 출력 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
	public void ErrandAppliancedMember() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		// ApplyErrandMember = sqlSession.selectList("",)
	}
	
}
