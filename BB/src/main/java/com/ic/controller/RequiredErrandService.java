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
        
        ErrandDAO erranddao = new ErrandDAO();
        ErrandDTO erranddto = new ErrandDTO();
        
        List<ErrandDTO> errandList = erranddao.Loadlist(member_id);
        ArrayList<ErrandDTO> errandInfo = new ArrayList<>();
                
		for(int i=0;i<errandList.size();i++) {
			String title = errandList.get(i).getTitle();
			int number = errandList.get(i).getErrand_id();
			erranddto.setTitle(title);
			erranddto.setErrand_id(number);
			errandInfo.add(erranddto);
			
		}
		erranddao.appliancedErrandMember(errandInfo);
		
    }

}
