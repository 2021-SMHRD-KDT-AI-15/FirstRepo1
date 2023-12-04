package com.ic.model;

import java.util.ArrayList;
import java.util.List;

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
		
		sqlSession.close();
		
		return nickname;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

	
//■■■■■■■■■■■■■■■■■■■■■■■■■■ 지원한 심부름에 또 지원못하게 체크 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public ApplyDTO checkApply(ApplyCheckDTO checkdto) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ApplyDTO result = sqlSession.selectOne("checkApply", checkdto);
		
		sqlSession.close();
		
		return result;
		
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

//■■■■■■■■■■■■■■■■■■■■■■■■■■ 심부름 목록서 본인이 요청한 심부름 목록 불러오게 하기 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

	public List<ErrandDTO> Loadlist(int member_id) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<ErrandDTO> errandList = sqlSession.selectList("Loadlist",member_id);		
		sqlSession.close();
		
		return errandList;
	}


	public ArrayList getNicknames(ArrayList member_id_list) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList nicknames = new ArrayList();
		
		for(Object member_id : member_id_list) {
			nicknames.add(sqlSession.selectOne("getNicknames", member_id));
		}
		
		sqlSession.close();
		
		return nicknames;
	}
	
}


