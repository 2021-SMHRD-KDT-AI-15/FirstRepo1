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

@WebServlet("/InfoChangeService2")
public class InfoChangeService2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();

		MemberDTO dto2 = (MemberDTO)session.getAttribute("result");
		int member_id = dto2.getMember_id();
		System.out.println(member_id);
		String phone = request.getParameter("phone");
		String pw = request.getParameter("pw");
		String address = request.getParameter("address");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO();
		
		int result = dao.change(dto);
		
		if (result > 0) {
			// 회원정보 변경에 성공했을 때 -> Myinfo.jsp 이동
			HttpSession session1 = request.getSession();
			session1.setAttribute("clientInfo", result);
			response.sendRedirect("MyInfo.jsp");
		} else {
			// 실패했을때 -> InfoChange2.jsp
			response.sendRedirect("InfoChange2.jsp");
		}
		
	
	}

}
