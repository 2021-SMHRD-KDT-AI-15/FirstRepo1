package com.ic.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ic.model.ApplyDAO;
import com.ic.model.ApplyDTO;
import com.ic.model.ErrandDAO;
import com.ic.model.MemberDTO;

@WebServlet("/RequireCancelService")
public class RequireCancelService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int errand_id = Integer.parseInt(request.getParameter("errand_id"));
		
		ErrandDAO erranddao = new ErrandDAO();
		
		int deleteApply = erranddao.ApplyCancelService(errand_id); // 지원자 삭제
		
		int deleteResult = erranddao.RequireCancelService(errand_id); // 요청 삭제
		
		int deleteChat = erranddao.DeleteChat(errand_id); // 채팅 삭제
		
		response.sendRedirect("RequiredErrandService");
		
	}

}
