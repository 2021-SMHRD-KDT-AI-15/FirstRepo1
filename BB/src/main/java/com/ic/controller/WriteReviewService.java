package com.ic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ic.model.ApplyCheckDTO;
import com.ic.model.MemberDTO;
import com.ic.model.ReviewDAO;
import com.ic.model.ReviewDTO;

@WebServlet("/WriteReviewService")
public class WriteReviewService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	int subject_result;
	int client_result;
	int apply_delete_check;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		//// 대상자 정보
		int subject_id = Integer.parseInt(request.getParameter("subject_id"));
		String content = request.getParameter("content");
		int likeCheck = Integer.parseInt(request.getParameter("like"));
		String errand_ctgr = request.getParameter("errand_ctgr");
		String subject_nickname = request.getParameter("subject_nickname");
		
		// 심부름 번호
		int errand_id = Integer.parseInt(request.getParameter("errand_id"));
		
		//// 클라이언트 정보
		HttpSession session = request.getSession();
		MemberDTO member_dto = (MemberDTO)session.getAttribute("clientInfo");
		
		int client_id = member_dto.getMember_id();
		String client_nickname = member_dto.getNickname();
		
		
		ReviewDAO reviewdao = new ReviewDAO();
		
		ReviewDTO reviewdto;
		
		ReviewDTO reviewdto_c;
		
		ApplyCheckDTO applycheck = new ApplyCheckDTO(errand_id, client_id); // 후기 상태 4번으로 변경할 때 필요한 dto
		
		if(likeCheck == 0) {
			// 후기유형이 나에 대한 리뷰(char = 1)인 좋은 리뷰 작성
			reviewdto = new ReviewDTO(subject_id, content, likeCheck, errand_ctgr, client_nickname);
			subject_result = reviewdao.WriteLikeReview_s(reviewdto);
			
			// 후기유형이 내가 작성한 리뷰(char = 0) 좋은 리뷰 작성
			reviewdto_c = new ReviewDTO(client_id, content, errand_ctgr, subject_nickname);
			client_result = reviewdao.WriteLikeReview_c(reviewdto_c);
			
			apply_delete_check = reviewdao.DeleteApply(applycheck);
		}else {
			// 후기유형이 나에 대한 리뷰(char = 1)인 안좋은 리뷰 작성
			reviewdto = new ReviewDTO(subject_id, content, errand_ctgr, likeCheck, client_nickname);
			subject_result = reviewdao.WriteDislikeReview_s(reviewdto);
			
			// 후기유형이 내가 작성한 리뷰(char = 0)인 안좋은 리뷰 작성
			reviewdto_c = new ReviewDTO(client_id, content, errand_ctgr, subject_nickname);
			reviewdao.WriteDislikeReview_c(reviewdto_c);
			
			apply_delete_check = reviewdao.DeleteApply(applycheck);
		}
		
		// 매칭상태 5로 변경하는 메소드의 반환값 담은 변수(확인용)
		int ChgAppMatchStatusChk = reviewdao.ChgAppMatchStatus(applycheck);
		
		response.sendRedirect("MyInfoService");
	}

}
