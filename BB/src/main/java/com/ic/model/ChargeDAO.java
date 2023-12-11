package com.ic.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ic.db.SqlSessionManager;

public class ChargeDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	ArrayList<ChargeDTO> ChargeHistory = new ArrayList<>();

	// 충전을 위한 차지 메소드
	public int charge(ChargeDTO dto) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int result = sqlSession.insert("charge", dto);

		sqlSession.close();

		return result;
	}

	// 충전내역 조회를 위한 메소드
	public ArrayList<ChargeDTO> ChargeHistory(int member_id) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		ChargeHistory = (ArrayList) sqlSession.selectList("ChargeHistory", member_id);

		sqlSession.close();

		return ChargeHistory;

	}

	
	// 금액 충전 메소드
	public int UpdateMoney(MemberDTO user) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int result = sqlSession.update("UpdateMoney", user);
		
		sqlSession.close();
		
		return result;
	}
}
