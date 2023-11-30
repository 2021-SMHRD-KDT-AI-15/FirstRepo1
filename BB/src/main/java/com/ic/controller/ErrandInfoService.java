package com.ic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ic.model.ErrandDAO;
import com.ic.model.ErrandDTO;

@WebServlet("/ErrandInfoService")
public class ErrandInfoService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int errand_id = Integer.parseInt(request.getParameter("errand_id")); // ErrandList.jsp에서 가져온 값
		int member_id = Integer.parseInt(request.getParameter("member_id")); // member_id 값 불러옴
		
		ErrandDAO erranddao = new ErrandDAO();
		
		ErrandDTO erranddto = new ErrandDTO();
		erranddto = erranddao.errandInfo(errand_id); // 얻어온 심부름 정보 DTO
		String nickname = erranddao.getNickname(member_id); // 닉네임 호출
		
		if(erranddto != null) {
			request.setAttribute("ErrandInfo", erranddto);
			request.setAttribute("nickname", nickname);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("ErrandInfo.jsp");
			dispatcher.forward(request, response);
		}else {
			response.sendRedirect("ErrandList.jsp");
		}

	}

}
