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

import com.ic.model.ChargeDAO;
import com.ic.model.ChargeDTO;
import com.ic.model.MemberDTO;


@WebServlet("/ChargeHistoryService")
public class ChargeHistoryService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();

		ChargeDTO dto = new ChargeDTO();

		MemberDTO memberdto = (MemberDTO)session.getAttribute("clientInfo");
		int member_id = memberdto.getMember_id();

		ChargeDAO chargedao = new ChargeDAO();
		
		ArrayList <ChargeDTO> chargeHistory = new ArrayList<>();
		chargeHistory = chargedao.ChargeHistory(member_id);
		
		
		if(chargeHistory != null) {
			request.setAttribute("chargeHistory", chargeHistory);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("ChargeHistory.jsp");
			dispatcher.forward(request, response);
			
		}else {
			response.sendRedirect("Main.jsp");
		}
		
	}

}
