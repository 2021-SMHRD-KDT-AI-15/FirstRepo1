package com.ic.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ic.model.ErrandDAO;
import com.ic.model.ErrandDTO;
import com.ic.model.MemberDTO;

@WebServlet("/ErrandListService")
public class ErrandListService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ErrandDAO erranddao = new ErrandDAO();
		
		ArrayList <ErrandDTO> errandList = new ArrayList<>();
		errandList = erranddao.errandList();
		
		ArrayList member_id_list = new ArrayList<>();  // member_id만 따로 담아오는 리스트 생성
		for(ErrandDTO errand : errandList) {
			member_id_list.add(errand.getMember_id());
		}
		
		ArrayList nickname_list = new ArrayList<>();
		nickname_list = erranddao.getNicknames(member_id_list);
		
		request.setAttribute("errandList", errandList);
		request.setAttribute("nicknameList", nickname_list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("ErrandList.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
