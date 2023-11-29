package com.ic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
		String address = request.getParameter("address");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO();
		int result = dao.join(dto);

		// 5. 호출된 기능의 결과에 따라 화면 결과 출력
		if (result > 0) {
			// 회원정보 변경 성공 -> Myinfo.jsp 이동
			HttpSession session = request.getSession();
			session.setAttribute("clientInfo", result);
			response.sendRedirect("Myinfo.jsp");
		} else {
			// 실패 -> InfoChange2.jsp
			response.sendRedirect("InfoChange2.jsp");
		}
	}

}
