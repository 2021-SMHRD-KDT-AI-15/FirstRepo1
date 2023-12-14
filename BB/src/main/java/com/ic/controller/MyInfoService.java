package com.ic.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ic.model.ChargeDTO;
import com.ic.model.MemberDAO;
import com.ic.model.MemberDTO;
import com.ic.model.ReviewDAO;
import com.ic.model.ReviewDTO;

@WebServlet("/MyInfoService")
public class MyInfoService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		// 사용자의 member_id를 가져오기
		HttpSession session = request.getSession();

		MemberDTO memberdto = (MemberDTO) session.getAttribute("clientInfo");

		int member_id = memberdto.getMember_id();

		MemberDAO memberdao = new MemberDAO();

		MemberDTO MyInfo = memberdao.MyInfo(member_id);

		request.setAttribute("MyInfo", MyInfo);

		// MyInfo.jsp에 필요한 내용을 가져오기
		ReviewDTO reviewdto = new ReviewDTO();
		ReviewDAO reviewdao = new ReviewDAO();

		// 자신의 좋아요 갯수를 체크
		ArrayList<ReviewDTO> getlike = reviewdao.getLike(member_id);
		int like = getlike.size();

		// 자신의 싫어요 갯수를 체크
		ArrayList<ReviewDTO> getdislike = reviewdao.getDisLike(member_id);
		int dislike = getdislike.size();

		request.setAttribute("getlike", like);
		request.setAttribute("getdislike", dislike);

		// 나에게 쓴 리뷰 불러오기
		ArrayList<ReviewDTO> getreview1 = reviewdao.getReview1(member_id);
		request.setAttribute("getreview1", getreview1);
		// 내가 쓴 리뷰 불러오기
		ArrayList<ReviewDTO> getreview0 = reviewdao.getReview0(member_id);
		request.setAttribute("getreview0", getreview0);

		RequestDispatcher dispatcher = request.getRequestDispatcher("MyInfo.jsp");

		dispatcher.forward(request, response);

	}

}