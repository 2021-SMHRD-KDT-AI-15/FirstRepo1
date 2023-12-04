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
import com.ic.model.ChatDAO;
import com.ic.model.ErrandDTO;
import com.ic.model.MemberDTO;

@WebServlet("/ChatListService")
public class ChatListService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList <MemberDTO> nickname_List = new ArrayList(); // 닉네임 리스트 (정보까지 다 저장)
		
		HttpSession session = request.getSession();
		
		MemberDTO memberdto = (MemberDTO)session.getAttribute("clientInfo");
		
		int member_id = memberdto.getMember_id();
		
		ChatDAO chatdao = new ChatDAO();
		
		ArrayList <ErrandDTO> list = chatdao.GetReqErrand(member_id); // 클라이언트가 요청한 심부름 번호 리스트 (status 값이 1인)
		
		
		ArrayList <ErrandDTO> chatList = new ArrayList<>(); // 요청, 지원한 상태 다 담을 수 있는 채팅리스트
		
		for(ErrandDTO n : list) {
			chatList.add(n);
		}
		
		ArrayList <ErrandDTO> list2 = chatdao.GetApplyErrand(member_id); // 클라이언트가 지원한 심부름 번호 리스트 (match_status 값이 1인)
		
		
		for(ErrandDTO n : list2) {
			chatList.add(n);
		}
		
		ArrayList <Integer> applyErrand_id = new ArrayList(); // 요청자의 회원번호로 지원 테이블의 member_id 리스트화
		applyErrand_id.addAll(chatdao.reqErrand_to_memberId(list));
		
		ArrayList <Integer> reqErrand_memberId = new ArrayList();
		reqErrand_memberId = chatdao.getReqErrandId(list2);  // 지원테이블의 errand_id로 심부름테이블의 요청자의 member_id에 접근
		
		
		nickname_List.addAll(chatdao.memberId_to_nickname(applyErrand_id));   // 지원자 닉네임 추가
		nickname_List.addAll(chatdao.getReqNickname(reqErrand_memberId)); // 지원한 심부름의 요청자 닉네임 추가
	
		
		request.setAttribute("nicknameList", nickname_List);
		request.setAttribute("chatList", chatList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("ChatList.jsp");
		dispatcher.forward(request, response);
	}

}
