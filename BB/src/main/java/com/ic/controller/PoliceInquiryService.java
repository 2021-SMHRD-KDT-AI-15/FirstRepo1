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
		
		// DAO 객체 생성
		PoliceDAO policedao = new PoliceDAO();
		
		// policeList 배열 선언
		ArrayList<PoliceDTO> policeList = new ArrayList<>();
		
		// DAO 메소드로 목록값 불러오기
		policeList = policedao.PoliceStations();
		
		// 불러온 값들을 policList 배열로 전달
		request.setAttribute("policeList", policeList);
		
		//PoliceStaions.jsp로 전달
		RequestDispatcher rd = request.getRequestDispatcher("PoliceStaions.jsp");
		
		rd.forward(request, response);
		
	}

}
