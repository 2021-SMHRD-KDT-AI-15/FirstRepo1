package com.ic.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ic.db.SqlSessionManager;

public class PoliceDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	ArrayList<PoliceDTO> policeStaionsList = new ArrayList<>();
	
	// 경찰서 등록
	public ArrayList<PoliceDTO> getAllPoliceStations() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
	    policeStaionsList = (ArrayList)sqlSession.selectList("getAllPoliceStations");
	    
	    sqlSession.close();
	    
	    return policeStaionsList;
	}
	
}
