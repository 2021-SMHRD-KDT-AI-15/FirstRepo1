package com.ic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ic.model.ErrandDAO;
import com.ic.model.ErrandDTO;
import com.ic.model.MemberDTO;

@WebServlet("/RequireErrandService")
public class RequireErrandService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		MemberDTO memberdto = new MemberDTO();
		memberdto = (MemberDTO)session.getAttribute("clientInfo");
		

		String title = request.getParameter("title");                   // 제목
		String location_ctgr = request.getParameter("location_ctgr");   // 구단위 분류
		String errand_ctgr = request.getParameter("errand_ctgr");       // 심부름 분류
		String req_date = request.getParameter("req_date");				// 요청일시
		String want_date = request.getParameter("want_date");			// 완료되어야 하는 시한
		int price = Integer.parseInt(request.getParameter("price"));	// 금액
		String req_location = request.getParameter("req_location");		// 요청위치
		String content = request.getParameter("content");				// 내용
		System.out.println(want_date);
		
		System.out.println(req_date);
		int member_id = memberdto.getMember_id();						// 회원번호
		
		ErrandDTO erranddto = new ErrandDTO(member_id, title, location_ctgr, errand_ctgr, req_date, want_date, price, req_location, content);
		ErrandDAO dao = new ErrandDAO();
		
		int result = dao.requireErrand(erranddto);
		
		if (result > 0) {
			response.sendRedirect("Main.jsp");
		} else {
			response.sendRedirect("SubMain.jsp");
		}
	}

}
