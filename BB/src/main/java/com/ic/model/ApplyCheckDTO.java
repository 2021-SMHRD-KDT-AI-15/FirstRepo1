package com.ic.model;

public class ApplyCheckDTO {

	private int errand_id;
	private int client_member_id;
	
	
	public int getErrand_id() {
		return errand_id;
	}
	public void setErrand_id(int errand_id) {
		this.errand_id = errand_id;
	}
	public int getMember_id() {
		return client_member_id;
	}
	public void setMember_id(int member_id) {
		this.client_member_id = member_id;
	}
	
	// 기본 생성자
	public ApplyCheckDTO() {
	}
	
	public ApplyCheckDTO(int errand_id, int client_member_id) {
		this.errand_id = errand_id;
		this.client_member_id = client_member_id;
	}
	
	
}
