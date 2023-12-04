package com.ic.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ic.model.ApplyDAO;
import com.ic.model.MemberDTO;

@WebServlet("/ApplyErrandService")
public class ApplyErrandService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int errand_id = Integer.parseInt(request.getParameter("errand_id")); // 심부름 번호
		
		HttpSession session = request.getSession();
		MemberDTO memberdto= (MemberDTO)session.getAttribute("clientInfo");
		
		int apply_member_id = memberdto.getMember_id();  // 지원자 회원번호
		
		String msg = request.getParameter("message"); // 지원메시지
		
		ArrayList list = new ArrayList<>();
		list.add(errand_id);
		list.add(apply_member_id);
		list.add(msg);
	
		ApplyDAO applydao = new ApplyDAO();
		int result = applydao.ApplyErrand(list);
		
		
		
		response.sendRedirect("ShowApplyErrandService");
		
	}

}
