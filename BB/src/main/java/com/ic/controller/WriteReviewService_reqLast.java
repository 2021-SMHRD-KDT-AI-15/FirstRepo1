package com.ic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ic.model.ApplyCheckDTO;
import com.ic.model.ErrandDAO;
import com.ic.model.MemberDTO;
import com.ic.model.ReviewDAO;
import com.ic.model.ReviewDTO;

@WebServlet("/WriteReviewService_reqLast")
public class WriteReviewService_reqLast extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int applyMemberId = Integer.parseInt(request.getParameter("applyMemberId")); // 지원자(sub)
		String applyMemberNickname = request.getParameter("applyMemberNickname");
		
		HttpSession session = request.getSession();
		MemberDTO clientInfo = (MemberDTO)session.getAttribute("clientInfo");
		
		int reqMemberId = clientInfo.getMember_id(); // 요청자(client)
		String reqMemberNickname = clientInfo.getNickname();
		
		
		// 심부름 정보
		String content = request.getParameter("content");
		String errand_ctgr = request.getParameter("errand_ctgr");
		int likeCheck = Integer.parseInt(request.getParameter("like")); // 0 또는 1
		int errand_id = Integer.parseInt(request.getParameter("errand_id"));
		
		ReviewDAO reviewdao = new ReviewDAO();
		ReviewDTO appDto;
		ReviewDTO reqDto;
		int reqResult;
		int appResult;
		
		if(likeCheck == 0) {
			appDto = new ReviewDTO(applyMemberId, content, errand_ctgr, likeCheck, reqMemberNickname);
			reqDto = new ReviewDTO(reqMemberId, content, errand_ctgr, likeCheck, applyMemberNickname);
			
			reqResult = reviewdao.WriteLikeReview_c(reqDto);
			appResult = reviewdao.WriteLikeReview_s(appDto);
		} else {
			appDto = new ReviewDTO(applyMemberId, content, errand_ctgr, likeCheck, reqMemberNickname);
			reqDto = new ReviewDTO(reqMemberId, content, errand_ctgr, likeCheck, applyMemberNickname);
			
			reqResult = reviewdao.WriteDislikeReview_c(reqDto);
			appResult = reviewdao.WriteDislikeReview_s(appDto);
		}
		
		ErrandDAO erranddao = new ErrandDAO();
		
		// 심부름 상태 3으로 변경하는 메소드 반환값 담는 변수(확인용)
		int ChgErrStatusChk = erranddao.ChgErrStatus(errand_id);
		
		ApplyCheckDTO apply = new ApplyCheckDTO(errand_id, applyMemberId);
		
		response.sendRedirect("MyInfoService");
	}

}
