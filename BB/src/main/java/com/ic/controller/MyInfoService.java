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

		HttpSession session = request.getSession();

		MemberDTO memberdto = (MemberDTO) session.getAttribute("clientInfo");

		int member_id = memberdto.getMember_id();
		
		MemberDAO memberdao = new MemberDAO();

		MemberDTO MyInfo = memberdao.MyInfo(member_id);
	
		request.setAttribute("MyInfo", MyInfo);
		
		ReviewDTO reviewdto = new ReviewDTO();
		
		ReviewDAO reviewdao = new ReviewDAO();
	
		ReviewDTO getreview = reviewdao.getReview(member_id);
		
		System.out.println("ㅎㅇ"+getreview);
		
		request.setAttribute("getreview", getreview);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("MyInfo.jsp");
		dispatcher.forward(request, response);

		// 1. 쿼리 스트링으로 보내기
		// response.sendRedirect("MyInfo.jsp?myInfo="+MyInfo);

	}

}
