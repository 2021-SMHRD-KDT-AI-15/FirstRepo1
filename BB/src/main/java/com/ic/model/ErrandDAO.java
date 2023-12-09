
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

//■■■■■■■■■■■■■■■■■■■■■■■■■■ 심부름 목록서 본인이 요청한 심부름 제목 불러오게 하기 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

	public List<ErrandDTO> Loadlist(int member_id) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<ErrandDTO> errandList = sqlSession.selectList("Loadlist",member_id);
		
		sqlSession.close();
		
		return errandList;
	}

//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public ArrayList getNicknames(ArrayList member_id_list) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList nicknames = new ArrayList();
		
		for(Object member_id : member_id_list) {
			nicknames.add(sqlSession.selectOne("getNicknames", member_id));
		}
		
		sqlSession.close();
		
		return nicknames;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

//■■■■■■■■■■■■■■■■■■■■■■  RequiredErrandService에서 client_id로 요청된 심부름 리스트화 ■■■■■■■■■■■■■■■■■■■
	public ArrayList <ErrandDTO> getErrandInfo(int member_id) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList <ErrandDTO> erranddto = (ArrayList)sqlSession.selectList("GetErrandInfo", member_id);
		
		sqlSession.close();
		
		return erranddto;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

//■■■■■ 위에서 얻어온 errand데이터 중 errand_id로 Apply테이블에 해당 심부름번호로 지원한 지원자들 리스트화 ■■■■■■■■■■■
	public ArrayList<ArrayList<ApplyDTO>> GetApplyMember(ArrayList<ErrandDTO> clientErrandAll) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList <ArrayList<ApplyDTO>> applyMemberList = new ArrayList <ArrayList<ApplyDTO>>();
		
		for(ErrandDTO n : clientErrandAll) {
			ArrayList <ApplyDTO> applydto_list = (ArrayList)sqlSession.selectList("GetApplyMember", n);
			
			applyMemberList.add(applydto_list);
		}
		
		sqlSession.close();
		
		return applyMemberList;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 위에서 얻어온 지원자들 닉네임 리스트화 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public ArrayList<ArrayList<String>> GetApplyMembersNickname(ArrayList<ArrayList<ApplyDTO>> applyMembers) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList <ArrayList<String>> applyMembersNickname = new ArrayList<ArrayList<String>>(); // 여기에
		
		for(ArrayList <ApplyDTO> n : applyMembers) {
			
			ArrayList <String> list = new ArrayList<>();
			
			for(ApplyDTO m : n) {
				int appMemberId = m.getMember_id();
				String appMemberNickname = sqlSession.selectOne("GetApplyMembersNickname", appMemberId);
				list.add(appMemberNickname);
			}
			
			applyMembersNickname.add(list); // 이거 담을거임 (저거랑 이거를 안쪽 for문에 넣어버리면 빈 배열을 못 가져옴)
		}
		
		System.out.println("ErrandDAO.java : " + applyMembersNickname);
		
		sqlSession.close();
		
		return applyMembersNickname;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 지원자 선택시 심부름 상태 1로 변경 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public int ChangeErrStatus(int errand_id) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.update("ChangeErrStatus", errand_id);
		
		sqlSession.close();
		
		return result;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■	

//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 지원자 선택시 지원테이블 매칭 상태 1로 변경 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public int ChangeAppStatus(ApplyCheckDTO apply) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.update("ChangeAppStatus", apply);
		
		sqlSession.close();
		
		return result;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■	

//■■■■■■■■■■■■■■■■■■■■■■■■■ 지원자 선택시 다른 지원자들 지원테이블 매칭 상태 2로 변경 ■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public int DeleteOtherApply(ApplyCheckDTO apply) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.update("DeleteOtherApply", apply);
		
		sqlSession.close();
		
		return result;
		
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

//■■■■■■■■■■■■■■■■■■■■■■■ 선택한 지원자 옆 완료버튼을 누르면 심부름테이블 상태 2로 변경  ■■■■■■■■■■■■■■■■■■■■■■■■■
	public int CompleteErrand(int errand_id) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.update("CompleteErrand", errand_id);
		
		sqlSession.close();
		
		return result;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
//■■■■■■■■■■■■■■■■■■■■■ 요청자가 지원자 옆 완료버튼을 누르면 해당 지원자 매칭상태 4로 변경  ■■■■■■■■■■■■■■■■■■■■■■■
	public int CompleteErrandApply(ApplyCheckDTO apply) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.update("CompleteErrandApply", apply);
		
		sqlSession.close();
		
		return result;
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 요청자가 후기 작성 시 심부름 상태 3으로 변경 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public int ChgErrStatus(int errand_id) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = sqlSession.update("ChgErrStatus", errand_id);
		
		sqlSession.close();
		
		return result;
		
	}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 요청한 심부름 요청 취소 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
		public int RequireCancelService(int errand_id) {
			
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			
			int result = sqlSession.delete("RequireCancelService", errand_id);
			
			sqlSession.close();
			
			return result;
		}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

//■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 요청한 심부름 요청 취소 ==> 지원자 모두 삭제 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■	
		public int ApplyCancelService(int errand_id) {
			
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			
			int result = sqlSession.delete("ApplyCancelService", errand_id);
			
			sqlSession.close();
			
			return result;
		}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 요청한 심부름번호로 등록된 채팅 모두 삭제 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
		public int DeleteChat(int errand_id) {

			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			
			int result = sqlSession.delete("DeleteChat", errand_id);
			
			sqlSession.close();
			
			return result;
			
		}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
		
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 심부름 확정 버튼 클릭 시 요청자 보유금액 차감  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
		public int deduceRequireMoney(int money) {
			
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			
			int result = sqlSession.update("deduceRequireMoney",money);
			
			sqlSession.close();
			
			return result;
			
		}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
		
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 심부름 확정 버튼 클릭 시 지원자 보유금액 증가 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
		public int reduceApplyMoney(int money) {
			
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			
			int result = sqlSession.update("reduceApplyMoney",money);
			
			sqlSession.close();
			
			return result;
		}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
		
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 심부름 지원자 미선택시 지원자 보유금액서 지원수수료 증가 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
		public int originalApplyAmount(int money) {
			
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			
			int result = sqlSession.update("originalApplyAmount",money);
			
			sqlSession.close();
			
			return result;
		}
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
		
//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 심부름 지원자 미선택시 지원자 보유금액서 지원수수료 증가 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
		public int getApplyMemberIdByErrandId(int errand_id) {
			
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			
			int result = sqlSession.update("getApplyMemberIdByErrandId",errand_id);
			
			sqlSession.close();
			
			return result;
			
		}

}


