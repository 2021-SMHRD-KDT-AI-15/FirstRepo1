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

/**
 * Servlet implementation class LoginService
 */
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		// 1. 요청값에 대한 인코딩 작업 
		request.setCharacterEncoding("UTF-8");
		
		// 2. 요청값이 보내주는 데이터 꺼내오기
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
	
		// 3. MemberDAO 객체 생성
		MemberDAO dao = new MemberDAO();
		
		// 4. MemberDAO -> login 호출
		// 		- login() 생성후 호출해서 사용!
		// 		- 꺼내온 데이터 email. pw 한 묶음으로 묶어서 전달! -> MemberDTO 활용!
		MemberDTO dto = new MemberDTO();
		dto.setEmail(email);
		dto.setPw(pw);
		
		MemberDTO result = dao.login(dto);
		
		// 로그인에 성공했다면 회우너정보를 공유할 수 있도록
		// session영역에 저장하여 페이지 이동!
		
		if(result != null) {
			// 회원가입에 성공했을 때 -> Main.jsp 이동 -> email
			HttpSession session = request.getSession();
			session.setAttribute("info", result);
			response.sendRedirect("Main.jsp");
		} 
		else {
			// 실패했을때 -> Main.jsp
			response.sendRedirect("Main.jsp");
		}
		
		
	
	}

}
