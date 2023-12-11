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

	// 충전하고 내 보유금액 업데이트
	public int update(int money) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int count = sqlSession.update("update", money);

		sqlSession.close();

		return count;
	}



	// 충전내역 조회를 위한 메소드
	public ArrayList<ChargeDTO> ChargeHistory(int member_id) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		ChargeHistory = (ArrayList) sqlSession.selectList("ChargeHistory", member_id);

		sqlSession.close();

		return ChargeHistory;

	}
}
