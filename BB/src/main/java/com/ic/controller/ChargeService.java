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

		MemberDTO dto = new MemberDTO();

		dto = (MemberDTO) session.getAttribute("clientInfo");
		int member_id = dto.getMember_id();
		
		ChargeDAO dao = new ChargeDAO();

		ChargeDTO dto2 = new ChargeDTO(member_id, charge_money);

		dao.charge(dto2);
		
		response.sendRedirect("MyInfo.jsp");
		
	}

}
