package com.ic.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import com.google.gson.Gson;
import com.ic.model.ChatDAO;
import com.ic.model.ChatDTO;

// PathVariable : URL 경로에 데이터를 포함해서 보내는 방법
// /URLMapping/{name} : {}안에 데이터에 이름을 붙임
// @ServerEndpoing("/URLMapping") : 소켓에 연결하기위한 URLMapping을 지정
@ServerEndpoint("/chat/{room}")
public class WebSocket {
	
	// 채팅 방 별 사용자 목록을 저장할 HashMap 객체 생성
	// HashMap : key - value 형태로 짝지어 데이터를 저장하는 객체, 자바판 dict
	// new HashMap< Key의 자료형, Value의 자료형 >();
	// 방 이름을 키값으로 하고, 사용자 목록을 value로 하는 HashMap 생성
	// 전역변수로 사용하기 위해 static 변수로 선언
	private static Map<String, List<Session>> userMap = new HashMap<String, List<Session>>();

	// 사용자가 연결되었을 때
	@OnOpen
	public void onOpen(Session session, @PathParam("room")String room) {
		// Session : 접속한 사용자 정보를 저장하는 객체
		// @PathParam("name") 변수 : PathVariable 중에서 "name"을 가지는 데이터를 변수에 집어넣겠다.
		
		// ex) url : ws://localhost:8081/chat/cat
		// @PathParam("room") String room --> "cat"이 담김
		// System.out.println(room + "방에 연결");

		// hashMap.get(Key값)을 이용해 키 값에 해당하는 Value를 가져올 수 있음		
		if(userMap.get(room) == null) {
			
			// 사용자 목록을 저장할 ArrayList 객체가 생성되지 않았다면 생성 후 Session 객체를 담는다.
			userMap.put(room, new ArrayList<Session>());
			userMap.get(room).add(session);
			
		}else {
			userMap.get(room).add(session);
		}
		
		// System.out.println("현인원 : " + userMap.get(room).size());
	}
	
	// 사용자가 접속을 종료 했을 때
	@OnClose
	public void onClose(Session session, @PathParam("room")String room) {
		
		// 사용자 정보를 해당 방 목록에서 삭제
		userMap.get(room).remove(session);
		
		// System.out.println("사용자 접속 종료됨");
		
	}
	
	// 메세지를 받았을 때
	@OnMessage
	public void onMessage(Session session, String payload, @PathParam("room")String room) {
		
		// String payload 변수에 자동으로 사용자가 보낸 메세지가 담긴다.
		// System.out.println(payload);
		
		// Gson 객체를 이용해 받아온 json 데이터를 Java 객체로 변환
		Gson gson = new Gson();
		ChatDTO chat = gson.fromJson(payload, ChatDTO.class);

		// DB 저장
		int errand_id =chat.getErrand_id();
		int member_id = chat.getMember_id();
		String chatting = chat.getChat();
		
		ChatDTO chatdto = new ChatDTO(errand_id, member_id, chatting);
		
		ChatDAO chatdao = new ChatDAO();
		int saveResult = chatdao.SaveChat(chatdto);
		
		// 해당 방 안의 모든 사용자에서 메세지 전달하기
		for( Session sess : userMap.get(room) ) {
			if(!sess.equals(session)) {// 단 나 자신을 제외하고
				try {
					// 메세지 전달
					sess.getBasicRemote().sendText(payload);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
	}
	
	
	
}
