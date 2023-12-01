package com.ic.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ic.model.ApplyDAO;
import com.ic.model.ApplyDTO;
import com.ic.model.ErrandDTO;
import com.ic.model.MemberDTO;

@WebServlet("/ShowApplyErrandService")
public class ShowApplyErrandService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		MemberDTO memberdto = new MemberDTO();
		memberdto = (MemberDTO)session.getAttribute("clientInfo");
		
		int member_id = memberdto.getMember_id();
		
		ApplyDAO applydao = new ApplyDAO();
		ArrayList <ApplyDTO> applyList = new ArrayList<>();
		
		applyList = applydao.ShowApplyErrand(member_id);   // 지원한 목록 리스트화

		
		if(applyList.isEmpty()) { // applyList에 암것도 없을 때
			
			response.sendRedirect("ApplyErrand.jsp?applyCheck=0");
			
		}else { // applyList에 하나라도 담겼을 때
			
			// 지원한 목록에서 ERRAND_ID만 빼와서 후처리 //
			ArrayList Errand_id_list = new ArrayList<>(); 
			for(ApplyDTO n : applyList) {
				Errand_id_list.add(n.getErrand_id());
			}
			
			ArrayList<ErrandDTO> erranddto = new ArrayList();  
			erranddto = applydao.getErrandTitle(Errand_id_list);   // 지원한 심부름 제목 가져오는 메소드
			
			session.setAttribute("ApplyErrandList", applyList);
			session.setAttribute("ErrandTitleList", erranddto);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("ApplyErrand.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
