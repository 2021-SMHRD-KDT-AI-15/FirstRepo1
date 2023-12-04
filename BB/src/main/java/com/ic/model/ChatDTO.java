package com.ic.model;

public class ChatDTO {
	
	private int chat_no;
	private int errand_id;
	private int member_id;
	private String chat;
	private String timestamp;
	
	
	public int getChat_no() {
		return chat_no;
	}
	public void setChat_no(int chat_no) {
		this.chat_no = chat_no;
	}
	public int getErrand_id() {
		return errand_id;
	}
	public void setErrand_id(int errand_id) {
		this.errand_id = errand_id;
	}
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public String getChat() {
		return chat;
	}
	public void setChat(String chat) {
		this.chat = chat;
	}
	public String getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}
	
	
	// 기본 생성자
	public ChatDTO() {
	}
	public void setRoom(String room) {
		
	}
	
}
