package com.ic.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ic.model.ApplyCheckDTO;
import com.ic.model.ErrandDAO;
import com.ic.model.ErrandDTO;
import com.ic.model.MemberDAO;
import com.ic.model.MemberDTO;

@WebServlet("/CompleteErrand")
public class CompleteErrand extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int errand_id = Integer.parseInt(request.getParameter("errand_id"));
		int apply_member_id = Integer.parseInt(request.getParameter("apply_member_id")); 
		int member_id = Integer.parseInt(request.getParameter("member_id"));
		
		MemberDAO memberdao = new MemberDAO();
		ErrandDAO erranddao = new ErrandDAO();
		
		// 요청자 번호, 지원자 번호, 심부름 보상금액 번호 불러오기
		MemberDTO requestMember = memberdao.getMemberDetails(member_id);
		MemberDTO applyMember = memberdao.getMemberDetails(apply_member_id);
		ErrandDTO errandList = erranddao.getErrandList(errand_id);
		
		int requestMembermoney = requestMember.getMoney(); // 요청자 보유금액 정상출력
		
		int applyMembermoney = applyMember.getMoney(); // 지원자 보유금액 정상출력
		
		int errandPrice = errandList.getPrice(); // 해당 심부름 보상금액 정상출력
		
		int completeErrandChk = erranddao.CompleteErrand(errand_id);
		
		if(completeErrandChk == 1) {
			if(requestMembermoney > errandPrice) { // 요청자 보유금액이 심부름 보상금액보다 클수 요청자 보유금액 차감
				int updatemoney = requestMembermoney - errandPrice;
				int result = memberdao.updateMoney(member_id, updatemoney);
			}
		}
		
		// 지원자 관련(apply_member_id, money)
		ApplyCheckDTO apply = new ApplyCheckDTO(errand_id, apply_member_id);
		
		int completeErrandAppChk = erranddao.CompleteErrandApply(apply);
		
		if(completeErrandAppChk == 1) { // 지원자 보유금액에 심부름 보상금액 증감과 수수료 반환
			int updatemoney = applyMembermoney + errandPrice + 2000;
			int result = memberdao.updateMoney(apply_member_id, updatemoney);
		} 
		
		response.sendRedirect("RequiredErrandService");
	}

}
