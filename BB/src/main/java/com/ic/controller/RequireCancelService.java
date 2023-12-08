package com.ic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ic.model.ErrandDAO;

@WebServlet("/RequireCancelService")
public class RequireCancelService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int errand_id = Integer.parseInt(request.getParameter("errand_id"));
		
		ErrandDAO erranddao = new ErrandDAO();
		
		int deleteResult = erranddao.RequireCancelService(errand_id);
		
		if(deleteResult == 1) {
			System.out.println("요청취소 성공");
		} else {
			System.out.println("요청취소 실패");
		}
		
		response.sendRedirect("RequiredErrandService");
		
	}

}
