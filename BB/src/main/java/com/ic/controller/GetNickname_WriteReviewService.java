package com.ic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ic.model.ReviewDAO;

@WebServlet("/GetNickname_WriteReviewService")
public class GetNickname_WriteReviewService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int subject_id = Integer.parseInt(request.getParameter("subject_id"));
		String title = request.getParameter("title");
		String errand_ctgr = request.getParameter("errand_ctgr");
		int errand_id = Integer.parseInt(request.getParameter("errand_id"));
		
		ReviewDAO reviewdao = new ReviewDAO();
		
		String nickname = reviewdao.getNickname_r(subject_id);
		
		request.setAttribute("title", title);
		request.setAttribute("nickname", nickname);
		request.setAttribute("subject_id", subject_id);
		request.setAttribute("errand_ctgr", errand_ctgr);
		request.setAttribute("errand_id", errand_id);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WriteReview.jsp");
		dispatcher.forward(request, response);
	}

}
