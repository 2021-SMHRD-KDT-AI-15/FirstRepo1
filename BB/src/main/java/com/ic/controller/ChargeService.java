package com.ic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.DefaultEditorKit.InsertContentAction;

import com.ic.model.ChargeDAO;
import com.ic.model.ChargeDTO;
import com.ic.model.MemberDTO;

@WebServlet("/ChargeService")
public class ChargeService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		int charge_money = Integer.parseInt(request.getParameter("charge_money"));

		HttpSession session = request.getSession();

		MemberDTO memberdto = (MemberDTO) session.getAttribute("clientInfo");

		int member_id = memberdto.getMember_id();
		int money = memberdto.getMoney();
		ChargeDAO dao = new ChargeDAO();

		ChargeDTO dto2 = new ChargeDTO(member_id, charge_money);
		// 충전내역
		int result = dao.charge(dto2);
		
		MemberDTO user = new MemberDTO(member_id, charge_money);
		
		int chargeResult = dao.UpdateMoney(user);
		
		if(chargeResult == 1) {
			System.out.println("충전 완료");
			RequestDispatcher rd = request.getRequestDispatcher("MyInfoService");
			rd.forward(request, response);
		} else {
			System.out.println("충전 실패");
			response.sendRedirect("Charge.jsp");
		}
		
		
		

	}

}
