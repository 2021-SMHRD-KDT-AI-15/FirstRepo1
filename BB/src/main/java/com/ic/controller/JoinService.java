package com.ic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ic.model.MemberDTO;



@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. 요청값에 대한 인코딩 작업
	      request.setCharacterEncoding("utf-8");

	      // 2. 요청값이 보내주는 데이터 꺼내오기
	      String getMember = request.getParameter("email");
	      String pw = request.getParameter("pw");
	      String tel = request.getParameter("tel");
	      String address = request.getParameter("address");

	      // 3. DAO 클래스 객체 생성 -> DB에 대한 작업을 진행할 수 있다
	      MemberDAO dao = new MemberDAO();

	      // 4. DAO의 회원가입 기능(메소드) 호출
	      MemberDTO dto = new MemberDTO();
	      int result = dao.join(dto);
	      
	      // 5. 호출된 기능의 결과에 따라 화면 결과 출력
	      if (result > 0) {
	         // 회원가입 성공 -> JoinSuccess.jsp 이동 -> email 공유
	         request.setAttribute("email", email);
	         RequestDispatcher rd = 
	               request.getRequestDispatcher("JoinSuccess.jsp");
	         rd.forward(request, response);
	      } else {
	         // 실패 -> Main.jsp
	         response.sendRedirect("Main.jsp");
	      }
	   }
	}
	}

}
