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
		
		// 보유금액(MEMBER 테이블의 MONEY 값) - 심부름 가격(ERRAND 테이블의 PRICE 값)
		MemberDTO requestMember = memberdao.getMemberDetails(member_id);
		MemberDTO applyMember = memberdao.getMemberDetails(apply_member_id);
		ErrandDTO errandList = erranddao.getErrandList(errand_id);
		
		int requestMembermoney = requestMember.getMoney();
		
		int applyMembermoney = applyMember.getMoney();
		
		int errandPrice = errandList.getPrice();
		
		int completeErrandChk = erranddao.CompleteErrand(errand_id);
		
		MemberDTO requestmember = new MemberDTO(member_id,requestMembermoney);
		
		if(completeErrandChk == 1) {
			if(requestMembermoney > errandPrice) {
				int result = memberdao.updateDeduceMoney(requestmember);
				System.out.println(result);
				System.out.println(" 요청자 보유금액 차감 성공");
				System.out.println("심부름 상태 2로 변경");
			}
		} else {  
			System.out.println("심부름 상태 2로 변경 실패");
		}
		
		// 지원자 관련(apply_member_id, money)
		ApplyCheckDTO apply = new ApplyCheckDTO(errand_id, apply_member_id);
		
		MemberDTO applymember = new MemberDTO(apply_member_id,applyMembermoney);
		
		int completeErrandAppChk = erranddao.CompleteErrandApply(apply);
		
		if(completeErrandAppChk == 1) {
			int result = memberdao.updateReduceMoney(applymember);
			System.out.println(result);
			System.out.println("지원자한테 보상금액과 수수료 입금 성공");
			System.out.println("지원자 매칭 상태 4로 변경");
		} else {
			System.out.println("지원자한테 보상금액과 수수료 입금 실패");
			System.out.println("지원자 매칭 상태 4로"
					+ "l 변경 실패");
		}
		
		response.sendRedirect("RequiredErrandService");
	}

}
