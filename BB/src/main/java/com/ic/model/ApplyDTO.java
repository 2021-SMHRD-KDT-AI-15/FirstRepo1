package com.ic.model;

public class ApplyDTO {

	private int apply_id;
	private int errand_id;
	private int member_id;
	private String message;
	private char match_status;
	
	
	public int getApply_id() {
		return apply_id;
	}
	public void setApply_id(int apply_id) {
		this.apply_id = apply_id;
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
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public char getMatch_status() {
		return match_status;
	}
	public void setMatch_status(char match_status) {
		this.match_status = match_status;
	}
	
	// 기본 생성자
	public ApplyDTO() {
		
	}
	public ApplyDTO(int apply_id, int errand_id, int member_id, String message, char match_status) {
		super();
		this.apply_id = apply_id;
		this.errand_id = errand_id;
		this.member_id = member_id;
		this.message = message;
		this.match_status = match_status;
	}
	
}
