package com.ic.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ic.model.ChargeDTO;
import com.ic.model.MemberDTO;
import com.ic.model.PaymentDAO;


@WebServlet("/PaymentHistoryService")
public class PaymentHistoryService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();

		MemberDTO memberdto = (MemberDTO)session.getAttribute("clientInfo");
		
		int member_id = memberdto.getMember_id();
		System.out.println(member_id);
		
		PaymentDAO paymentdao = new PaymentDAO();
		
	
		
		
		
		
	}

}
