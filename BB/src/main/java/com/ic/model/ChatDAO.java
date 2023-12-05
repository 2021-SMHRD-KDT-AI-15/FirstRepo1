package com.ic.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.jasper.tagplugins.jstl.core.Out;

import com.ic.db.SqlSessionManager;

public class ChatDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 요청한 심부름의 심부름 번호 호출 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public ArrayList<ErrandDTO> GetReqErrand(int member_id) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList <ErrandDTO> list = new ArrayList<>();
		list = (ArrayList) sqlSession.selectList("getReqErrand", member_id);
		
		sqlSession.close();
		
		return list;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 지원한 심부름의 심부름 번호 호출 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public ArrayList<ErrandDTO> GetApplyErrand(int member_id) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
			
		ArrayList <ErrandDTO> list = (ArrayList) sqlSession.selectList("getApplyErrand", member_id);
		
		sqlSession.close();
		
		return list;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 요청한 심부름에 지원한 지원자들 member_id 추출 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public ArrayList <Integer> reqErrand_to_memberId(ArrayList<ErrandDTO> list) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList <Integer> member_id_list = new ArrayList();
		
		for(ErrandDTO n : list) {
			member_id_list.add((Integer) sqlSession.selectOne("reqErrand_to_memberId", n.getErrand_id()));
		}
		
		sqlSession.close();
		
		return member_id_list;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 추출한 member_id로 지원자 닉네임 추출 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■	
	public ArrayList <MemberDTO> memberId_to_nickname(ArrayList<Integer> applyErrand_id) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList <MemberDTO> nickname_list = new ArrayList();
		
		for(int n : applyErrand_id) {
			nickname_list.add((MemberDTO) sqlSession.selectOne("memberId_to_nickname", n));
		}
		// 리스트에 추가
		sqlSession.close();
		
		return nickname_list;
		
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ errand_id로 요청자의 member_id 추출 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public ArrayList <Integer> getReqErrandId(ArrayList<ErrandDTO> list2) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList <Integer> nickname_lst = new ArrayList();
		
		for(ErrandDTO n : list2) {
			nickname_lst.add((Integer) sqlSession.selectOne("errandId_to_memberId", n.getErrand_id()));
		}
		
		sqlSession.close();
		
		return nickname_lst;
			
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ member_id로 요청자의 닉네임 추출 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

	public ArrayList<MemberDTO> getReqNickname(ArrayList<Integer> reqErrand_memberId) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList <MemberDTO> nickname_lst = new ArrayList();
		
		for(int n : reqErrand_memberId) {
			nickname_lst.add((MemberDTO) sqlSession.selectOne("getReqNickname", n));
		}
		
		sqlSession.close();
		
		return nickname_lst;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 채팅 저장 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public int SaveChat(ChatDTO chatdto) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.insert("SaveChat", chatdto);
		
		sqlSession.close();
		
		return result;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
	
}
