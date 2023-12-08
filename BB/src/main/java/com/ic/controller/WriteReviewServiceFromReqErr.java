package com.ic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ic.model.MemberDTO;
import com.ic.model.ReviewDAO;

@WebServlet("/WriteReviewServiceFromReqErr")
public class WriteReviewServiceFromReqErr extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ReviewDAO reviewdao = new ReviewDAO();
		
		int applyMemberId = Integer.parseInt(request.getParameter("apply_member_id")); // 지원자 member_id (subject)
		
		HttpSession session = request.getSession();
		
		MemberDTO reqMember = (MemberDTO)session.getAttribute("clientInfo");
		
		int reqMemberId = reqMember.getMember_id(); // 요청자 member_id (client)
		String reqMemberNickname = reviewdao.GetApplyMemberNickname(reqMemberId); // 요청자 닉네임
		
		String applyMemberNickname = reviewdao.GetApplyMemberNickname(applyMemberId); // 지원자 닉네임
		
		String title = request.getParameter("errand_title"); // 심부름 제목
		int errand_id = Integer.parseInt(request.getParameter("errand_id")); // 심부름 번호
		String errand_ctgr = request.getParameter("errand_ctgr"); // 심부름 카테고리
		
		request.setAttribute("errand_id", errand_id);
		request.setAttribute("errand_ctgr", errand_ctgr);
		request.setAttribute("applyMemberNickname", applyMemberNickname);
		request.setAttribute("errandTitle", title);
		request.setAttribute("applyMemberNickname", applyMemberNickname);
		request.setAttribute("applyMemberId", applyMemberId);
		request.setAttribute("reqMemberId", reqMemberId);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WriteReviewFromReqErr.jsp");
		dispatcher.forward(request, response);
		
	}

}
