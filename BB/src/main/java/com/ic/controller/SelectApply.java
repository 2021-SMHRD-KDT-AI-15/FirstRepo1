package com.ic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ic.model.ApplyCheckDTO;
import com.ic.model.ErrandDAO;

@WebServlet("/SelectApply")
public class SelectApply extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int errand_id = Integer.parseInt(request.getParameter("errand_id"));
		int apply_member_id = Integer.parseInt(request.getParameter("apply_member_id"));
		
		ErrandDAO erranddao = new ErrandDAO();
		
		// 심부름 상태 1로 변경
		int changeErrCheck = erranddao.ChangeErrStatus(errand_id);
		
		ApplyCheckDTO apply = new ApplyCheckDTO(errand_id, apply_member_id);
		
		// 지원 매칭 상태 1로 변경
		int changeAppCheck = erranddao.ChangeAppStatus(apply);

		// 다른 지원자들 매칭 상태 2로 변경
		int deleteOtherAppCheck = erranddao.DeleteOtherApply(apply);
		
		response.sendRedirect("RequiredErrandService");
	}

}
