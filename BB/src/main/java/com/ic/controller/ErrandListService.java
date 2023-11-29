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

@WebServlet("/ErrandListService")
public class ErrandListService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ErrandDAO erranddao = new ErrandDAO();
		
		ArrayList <ErrandDTO> errandList = new ArrayList<>();
		errandList = erranddao.errandList();
		
		request.setAttribute("errandList", errandList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("ErrandList.jsp");
		dispatcher.forward(request, response);
	}

}
