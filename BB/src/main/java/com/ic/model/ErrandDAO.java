package com.ic.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ic.db.SqlSessionManager;

public class ErrandDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	ArrayList <ErrandDTO> errandList = new ArrayList<>();
	
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 심부름 요청 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public int requireErrand(ErrandDTO dto) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.insert("requireErrand", dto);
		
		sqlSession.close();
		
		return result;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
	
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 심부름 목록 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public ArrayList<ErrandDTO> errandList() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		errandList = (ArrayList)sqlSession.selectList("errandList");
		
		sqlSession.close();
		
		return errandList;
		
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 심부름 상세정보 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public ErrandDTO errandInfo(int errand_id) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ErrandDTO dto = sqlSession.selectOne("errandInfo", errand_id);
		
		sqlSession.close();
		
		return dto;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 닉네임 호출 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public String getNickname(int member_id) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		String nickname = sqlSession.selectOne("getNickname", member_id);
		
		return nickname;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
}


