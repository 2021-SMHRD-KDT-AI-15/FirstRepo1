package com.ic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ic.model.ApplyCheckDTO;
import com.ic.model.ErrandDAO;
import com.ic.model.ErrandDTO;
import com.ic.model.MemberDAO;
import com.ic.model.MemberDTO;

@WebServlet("/CompleteErrand")
public class CompleteErrand extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int errand_id = Integer.parseInt(request.getParameter("errand_id"));
		int apply_member_id = Integer.parseInt(request.getParameter("apply_member_id"));
		int member_id = Integer.parseInt(request.getParameter("member_id"));
		
		ErrandDAO erranddao = new ErrandDAO();
		
		int completeErrandChk = erranddao.CompleteErrand(errand_id);
		
		
		if(completeErrandChk == 1) {
			System.out.println("심부름 상태 2로 변경");
		} else {  
			System.out.println("심부름 상태 2로 변경 실패");
		}
		
		ApplyCheckDTO apply = new ApplyCheckDTO(errand_id, apply_member_id);
		
		int completeErrandAppChk = erranddao.CompleteErrandApply(apply);
		
		if(completeErrandAppChk == 1) {
			System.out.println("지원자 매칭 상태 4로 변경");
		} else {
			System.out.println("지원자 매칭 상태 4로 변경 실패");
		}
		
		response.sendRedirect("RequiredErrandService");
	}

}
