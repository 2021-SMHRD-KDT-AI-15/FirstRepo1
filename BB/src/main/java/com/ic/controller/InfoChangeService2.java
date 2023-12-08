package com.ic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ic.model.MemberDAO;
import com.ic.model.MemberDTO;

@WebServlet("/InfoChangeService2")
public class InfoChangeService2 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        // 기존 세션을 가져오거나 새 세션을 만듭니다.
        HttpSession session = request.getSession();

        // 세션에서 clientInfo 속성을 검색합니다.
        MemberDTO memberdto = (MemberDTO) session.getAttribute("clientInfo");

        String member_id = memberdto.getId();
        String nickname = request.getParameter("nickname");
        String phone = request.getParameter("phone");
        String pw = request.getParameter("pw");
        String address = request.getParameter("address");

        // 새 MemberDTO 개체를 만들고 해당 속성을 설정합니다.
        MemberDTO dto = new MemberDTO();
        dto.setId(member_id);
        dto.setNickname(nickname);
        dto.setPhone(phone);
        dto.setPw(pw);
        dto.setAddress(address);

        MemberDAO dao = new MemberDAO();

        int result = dao.change(dto);

        if (result > 0) {
            // 회원정보 변경에 성공했을 때 -> Myinfo.jsp 이동
            request.setAttribute("id", dto);
            RequestDispatcher rd = request.getRequestDispatcher("MyInfo.jsp");
            rd.forward(request, response);
        } else {
            // 실패했을때 -> InfoChange2.jsp
            response.sendRedirect("InfoChange2.jsp");
        }
    }
}
