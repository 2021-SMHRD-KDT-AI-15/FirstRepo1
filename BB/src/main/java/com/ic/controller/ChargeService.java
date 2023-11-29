package com.ic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ic.model.MemberDTO;


@WebServlet("/ChargeService")
public class ChargeService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		HttpSession session = request.getSession();
		MemberDTO dto = new MemberDTO();
		dto = (MemberDTO)session.getAttribute("clinetInfo");
		
		int member_id = dto.getMember_id();
		
	}

}
