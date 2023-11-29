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

@WebServlet("/InfoChange2")
public class InfoChange2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String nickname = request.getParameter("nickname");
		String phone = request.getParameter("phone");
		String pw = request.getParameter("pw");
		String address = request.getParameter("adddress");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO();
		
		dto.setNickname(nickname);
		dto.setPhone(phone);
		dto.setPw(pw);
		dto.setAddress(address);
		
		MemberDTO result = dao.update(dto);
		
		if (result != null) {
			// 비밀번호 확인에 성공했을 때 -> InfoChange2.jsp 이동
			HttpSession session = request.getSession();
			session.setAttribute("clientInfo", result);
			response.sendRedirect("Myinfo.jsp.jsp");
		} else {
			// 실패했을때 -> Main.jsp
			response.sendRedirect("InfoChange2.jsp");
		}
		
		
		
		
		
	}

}
