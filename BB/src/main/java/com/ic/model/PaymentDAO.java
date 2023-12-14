package com.ic.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ic.db.SqlSessionManager;

public class PaymentDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	ArrayList<PaymentDTO> getPaymentNO = new ArrayList<>();
	ArrayList<PaymentDTO> getPaymentId = new ArrayList<>();
	ArrayList<PaymentDTO> getPaymentMoney = new ArrayList<>();
	ArrayList<PaymentDTO> paymentHistory = new ArrayList<>();

//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 결제 내역 가져오는 메소드  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public ArrayList<PaymentDTO> getPaymentMoney(int payment_money) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		getPaymentMoney = (ArrayList) sqlSession.selectList("getPaymentMoney", payment_money);

		sqlSession.close();

		return getPaymentMoney;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 가져온 결제 내역을 회원별로 출력  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public ArrayList<PaymentDTO> PaymentHistory(int member_id) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		paymentHistory = (ArrayList)sqlSession.selectList("PaymentHistory", member_id);
		
		sqlSession.close();
		
		return paymentHistory;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
}
