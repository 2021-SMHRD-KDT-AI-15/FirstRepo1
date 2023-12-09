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

import com.ic.model.ApplyDTO;
import com.ic.model.ErrandDAO;
import com.ic.model.ErrandDTO;
import com.ic.model.MemberDAO;
import com.ic.model.MemberDTO;

@WebServlet("/RequiredErrandService")
public class RequiredErrandService extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession();
        MemberDTO memberdto = (MemberDTO) session.getAttribute("clientInfo");
        
        int member_id = memberdto.getMember_id();
        
        ErrandDAO erranddao = new ErrandDAO();
        
        ArrayList <ErrandDTO> clientErrandAll = erranddao.getErrandInfo(member_id);
		
		ArrayList <ArrayList<ApplyDTO>> applyMembers = erranddao.GetApplyMember(clientErrandAll);
		
		ArrayList <ArrayList<String>> applyMembersNickname = erranddao.GetApplyMembersNickname(applyMembers);
		
		request.setAttribute("clientErrandAll", clientErrandAll);
		request.setAttribute("applyMembers", applyMembers);
		request.setAttribute("applyMembersNickname", applyMembersNickname);
		
		if(clientErrandAll.isEmpty()) {
			response.sendRedirect("RequiredErrand.jsp?reqCheck=0");
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("RequiredErrand.jsp");
			dispatcher.forward(request, response);
		}
    }

}
