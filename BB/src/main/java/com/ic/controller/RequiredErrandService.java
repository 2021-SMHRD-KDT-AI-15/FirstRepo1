package com.ic.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ic.model.ErrandDAO;
import com.ic.model.ErrandDTO;
import com.ic.model.MemberDTO;

@WebServlet("/RequiredErrandService")
public class RequiredErrandService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		MemberDTO memberdto = new MemberDTO();
		memberdto = (MemberDTO)session.getAttribute("clientinfo");
		
		String member_id = request.getParameter("Member_id");
		int errand_id = Integer.parseInt(request.getParameter("errand_id"));
		
		ErrandDAO erranddao = new ErrandDAO();
		ErrandDTO erranddto = new ErrandDTO();
		
		erranddto = erranddao.errandInfo(errand_id);
		String title = request.getParameter("title");
		
		
		
		
		
		
	}

}
