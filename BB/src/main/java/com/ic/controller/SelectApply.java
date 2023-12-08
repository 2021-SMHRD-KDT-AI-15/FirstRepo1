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
		
		int changeErrCheck = erranddao.ChangeErrStatus(errand_id);
		if(changeErrCheck == 1) {
			System.out.println("status 1로 변경");
		}else{
			System.out.println("status 변경 실패");
		}
		
		ApplyCheckDTO apply = new ApplyCheckDTO(errand_id, apply_member_id);
		int changeAppCheck = erranddao.ChangeAppStatus(apply);
		if(changeAppCheck == 1) {
			System.out.println("match_status 1로 변경");
		}else {
			System.out.println("match_status 변경 실패");
		}
		
		int deleteOtherAppCheck = erranddao.DeleteOtherApply(apply);
		if(deleteOtherAppCheck == 1) {
			System.out.println("다른 지원자들 match_status 2로 변경 완료");
		}else {
			System.out.println("다른 지원자들 match_status 변경 실패");
		}
		
		response.sendRedirect("RequiredErrandService");
	}

}
