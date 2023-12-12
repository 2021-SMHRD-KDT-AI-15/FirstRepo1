package com.ic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ic.model.ApplyDAO;
import com.ic.model.ErrandDAO;
import com.ic.model.MemberDAO;
import com.ic.model.MemberDTO;

@WebServlet("/RequireCancelService")
public class RequireCancelService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int errand_id = Integer.parseInt(request.getParameter("errand_id"));
		int apply_member_id = Integer.parseInt(request.getParameter("apply_member_id"));
		
		ErrandDAO erranddao = new ErrandDAO();
		ApplyDAO applydao = new ApplyDAO();
		
		MemberDAO memberdao = new MemberDAO();
		MemberDTO applyMember = memberdao.getMemberDetails(apply_member_id);
		
		int applyMembermoney = applyMember.getMoney();
		
		int deleteApply = erranddao.ApplyCancelService(errand_id);
		
		int deleteResult = erranddao.RequireCancelService(errand_id);
		
		int deleteChat = erranddao.DeleteChat(errand_id);
		
		if(deleteApply == 1) {
			System.out.println("지원자 삭제 성공");
		} else {
			System.out.println("지원자 삭제 실패");
		}
		
		if(deleteResult == 1) {
			int count = applydao.reduceMoney(applyMembermoney);
			System.out.println(count);
			System.out.println("지원자 수수료 반환 완료");
			System.out.println("지원자 삭제 성공");
			System.out.println("요청취소 성공");
		} else {
			System.out.println("요청취소 실패");
			System.out.println("지원자 수수료 반환 실패");
		}
		
		if(deleteChat == 1) {
			System.out.println("채팅 삭제 성공");
		} else {
			System.out.println("채팅 삭제 실패");
		}
		
		
		response.sendRedirect("RequiredErrandService");
		
	}

}
