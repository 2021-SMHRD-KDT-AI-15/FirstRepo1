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

		
		
		// 충전한 금액 가져오기
		int charge_money = Integer.parseInt(request.getParameter("charge_money"));

		// clientInfo 세션에서 자신의 memberdto안에 있는 정보들 가져오기
		HttpSession session = request.getSession();
		MemberDTO memberdto = (MemberDTO) session.getAttribute("clientInfo");
		
		// memberdto안에 있는 member_id와 money 가져오기
		int member_id = memberdto.getMember_id();
		int money = memberdto.getMoney();
		
		ChargeDTO dto2 = new ChargeDTO(member_id, charge_money);
		
		
		// charge dao 객체 선언하고 충전메소드 가져오기
		ChargeDAO dao = new ChargeDAO();
		int result = dao.charge(dto2);
		
		// 자신의 충전금액이 담겨있는 memberdto 객체생성
		MemberDTO user = new MemberDTO(member_id, charge_money);
		// chargedao안에있는 금액 업데이트 메소드가져오기
		int chargeResult = dao.UpdateMoney(user);
		
		
		if(chargeResult == 1) {
			RequestDispatcher rd = request.getRequestDispatcher("MyInfoService");
			rd.forward(request, response);
		} else {
			response.sendRedirect("Charge.jsp");
		}
		
		
		

	}

}
