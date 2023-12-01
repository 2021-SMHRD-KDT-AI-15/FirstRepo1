package com.ic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ic.model.ApplyCheckDTO;
import com.ic.model.ApplyDAO;
import com.ic.model.MemberDTO;

@WebServlet("/ApplyCancelService")
public class ApplyCancelService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		MemberDTO clientDTO = new MemberDTO();
		clientDTO = (MemberDTO)session.getAttribute("clientInfo");
		int client_member_id = clientDTO.getMember_id();
		
		int errand_id = Integer.parseInt(request.getParameter("errand_id"));
		
		ApplyDAO applydao = new ApplyDAO();
		
		ApplyCheckDTO checkdto = new ApplyCheckDTO(errand_id, client_member_id);
		
		int result = applydao.ApplyCancel(checkdto);
		
		if(result > 0) {
			response.sendRedirect("ShowApplyErrandService");
		}else {
			response.sendRedirect("Main.jsp");
		}
		
	}

}
