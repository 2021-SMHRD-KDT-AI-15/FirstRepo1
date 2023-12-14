package com.ic.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ic.model.PoliceDAO;
import com.ic.model.PoliceDTO;

@WebServlet("/PoliceInquiryService")
public class PoliceInquiryService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		PoliceDAO policedao = new PoliceDAO();
		
		ArrayList<PoliceDTO> policeList = new ArrayList<>();
		
		policeList = policedao.PoliceStations();
		
		request.setAttribute("policeList", policeList);
		
		RequestDispatcher rd = request.getRequestDispatcher("PoliceStaions.jsp");
		
		rd.forward(request, response);
		
	}

}
