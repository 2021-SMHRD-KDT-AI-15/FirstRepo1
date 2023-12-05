package com.ic.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ic.model.ApplyDAO;
import com.ic.model.ApplyDTO;
import com.ic.model.ErrandDAO;
import com.ic.model.ErrandDTO;
import com.ic.model.MemberDTO;

@WebServlet("/RequiredErrandService")
public class RequiredErrandService extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        MemberDTO memberdto = (MemberDTO) session.getAttribute("clientInfo");

        int member_id = memberdto.getMember_id();
        
        ErrandDAO errandDAO = new ErrandDAO();
        List<ErrandDTO> errandList = errandDAO.Loadlist(member_id);

		ArrayList<ApplyDTO> messagelist = new ArrayList<>();
		
		ApplyDAO applyDAO = new ApplyDAO();
		ArrayList<ApplyDTO> applyErrandList = applyDAO.ErrandAppliancedMember(messagelist);
		
		for(int i=0;i<errandList.size();i++) {
			errandList.get(i).getMember_id();
		}
		
		for (int i = 0; i < applyErrandList.size(); i++) {
		    ApplyDTO applyDTO = applyErrandList.get(i);

		    for (int j = 0; j < messagelist.size(); j++) {
		    	String message = applyDTO.getMessage();
		        messagelist.add(message(j));
		    }
		}
		
		System.out.println(errandList);
		System.out.println(applyErrandList);
		
		
        request.setAttribute("errandList", errandList);
        request.setAttribute("applyErrandList", applyErrandList);

        RequestDispatcher rd = request.getRequestDispatcher("RequiredErrand.jsp");
        rd.forward(request, response);
    }

	private ApplyDTO message(int j) {
		return null;
	}
}
