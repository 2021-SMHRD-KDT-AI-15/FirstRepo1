package com.ic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
        MemberDTO memberdto = (MemberDTO) session.getAttribute("clientinfo");

        String member_id = memberdto.getId();
        int errand_id = Integer.parseInt(request.getParameter("errand_id"));

        ErrandDAO erranddao = new ErrandDAO();
        ErrandDTO erranddto = erranddao.errandInfo(errand_id);

        if (erranddto != null) {
            String title = erranddto.getTitle();
            System.out.println("Title: " + title);
            request.setAttribute("errandTitle", title);

            String redirectURL = "ErrandInfo.jsp?errand_id=" + errand_id + "&member_id=" + member_id;
            RequestDispatcher rd = request.getRequestDispatcher(redirectURL);
            rd.forward(request, response);
        } else {
            response.sendRedirect("RequiredErrand.jsp");
        }
    }
}
