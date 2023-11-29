package com.ic.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ic.model.MemberDAO;
import com.ic.model.MemberDTO;

@WebServlet("/InfoChange1")
public class InfoChangeService1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO();
		
		dto.setPw(pw);
		
		MemberDTO result = dao.check(dto);
		
		if (result != null) {
			// 비밀번호 확인에 성공했을 때 -> InfoChange2.jsp 이동
			HttpSession session = request.getSession();
			session.setAttribute("clientInfo", result);
			response.sendRedirect("InfoChange2.jsp");
		} else {
			// 실패했을때 -> Main.jsp
			response.sendRedirect("InfoChange1.jsp");
		}
		
	}

}
