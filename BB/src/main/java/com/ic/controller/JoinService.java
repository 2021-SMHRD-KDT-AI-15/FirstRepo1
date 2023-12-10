package com.ic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ic.model.MemberDAO;
import com.ic.model.MemberDTO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nickname = request.getParameter("nickname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");

		String address = request.getParameter("address");
		String detailAddress = request.getParameter("detailAddress");
		String extraAddress = request.getParameter("extraAddress");
		String sumAddress = address + " " + detailAddress + " " + extraAddress;

		int age = Integer.parseInt(request.getParameter("age"));
		char gender = Character.forDigit(Integer.parseInt(request.getParameter("gender")), 10);

		MemberDAO dao = new MemberDAO();
		
		int cnt1 = dao.check_id(id);
		int cnt2 = dao.check_name(nickname);
		int cnt3 = dao.check_mail(email);

		if (cnt1 != 0) {
			response.sendRedirect("JoinFail1.jsp");
		} else if (cnt2 != 0) {
			response.sendRedirect("JoinFail2.jsp");
		} else if (cnt3 != 0) {
			response.sendRedirect("JoinFail3.jsp");
		} else {
			MemberDTO dto = new MemberDTO(id, pw, nickname, email, phone, sumAddress, age, gender);
			int result = dao.join(dto);
			request.setAttribute("id", id);
			RequestDispatcher rd = request.getRequestDispatcher("JoinSuccess.jsp");
			rd.forward(request, response);
		}
	}
}