package com.ic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.ic.model.MemberDAO;
import com.ic.model.MemberDTO;

@WebServlet("/InfoChangeService1")
public class InfoChangeService1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session2 = request.getSession();
		
		MemberDTO memberdto = (MemberDTO)session2.getAttribute("clientInfo");
		
		String pw = request.getParameter("pw");
		String id = memberdto.getId();
		
		MemberDTO dto = new MemberDTO(id, pw);
		
		MemberDAO memberdao = new MemberDAO();
		
		MemberDTO result = memberdao.check(dto);
		
		if (result != null) {
			// 비밀번호 확인에 성공했을 때 -> InfoChange2.jsp 이동
			response.sendRedirect("InfoChange2.jsp");
		} else {
			// 실패했을때 -> InfoChange1.jsp
			response.sendRedirect("InfoChange1.jsp");
		}
		
	}

}
