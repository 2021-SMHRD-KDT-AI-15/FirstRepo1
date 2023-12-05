package com.ic.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.ic.db.SqlSessionManager;
import com.ic.model.ChatDTO;

@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int room = Integer.parseInt(request.getParameter("room"));
		
		ArrayList<ChatDTO> chatdto = (ArrayList)sqlSession.selectList("LoadChat", room);
		
		
		JSONArray array = new JSONArray();
		
		for(ChatDTO n : chatdto){
			JSONObject obj = new JSONObject();
			
			obj.put("chat", n.getChat());
			obj.put("timestamp", n.getTimestamp());
			obj.put("memberId", n.getMember_id());
			
			array.add(obj);
		}
		
		PrintWriter out = response.getWriter();
		
		out.print(array.toJSONString());
		
	}

}
