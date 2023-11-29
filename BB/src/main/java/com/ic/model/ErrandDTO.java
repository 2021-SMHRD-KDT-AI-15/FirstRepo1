package com.ic.model;

public class ErrandDTO {

	private int member_id;
	private int errand_id;
	private String title;
	private String content;
	private String errand_ctgr;
	private int price;
	private String created_date;
	private String location_ctgr;
	private String req_location;
	private String req_date;
	private char status;
	private String completed_date;
	private String want_date;
	
	
	public int getErrand_id() {
		return errand_id;
	}
	public void setErrand_id(int errand_id) {
		this.errand_id = errand_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getErrand_ctgr() {
		return errand_ctgr;
	}
	public void setErrand_ctgr(String errand_ctgr) {
		this.errand_ctgr = errand_ctgr;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCreated_date() {
		return created_date;
	}
	public void setCreated_date(String created_date) {
		this.created_date = created_date;
	}
	public String getLocation_ctgr() {
		return location_ctgr;
	}
	public void setLocation_ctgr(String location_ctgr) {
		this.location_ctgr = location_ctgr;
	}
	public String getReq_location() {
		return req_location;
	}
	public void setReq_location(String req_lotation) {
		this.req_location = req_lotation;
	}
	public String getReq_date() {
		return req_date;
	}
	public void setReq_date(String req_date) {
		this.req_date = req_date;
	}
	public char getStatus() {
		return status;
	}
	public void setStatus(char status) {
		this.status = status;
	}
	public String getCompleted_date() {
		return completed_date;
	}
	public void setCompleted_date(String completed_date) {
		this.completed_date = completed_date;
	}
	public String getWant_date() {
		return want_date;
	}
	public void setWant_date(String want_date) {
		this.want_date = want_date;
	}
	
	
	// 기본 생성자
	public ErrandDTO() {
	}
	
	
	// 심부름 요청 생성자
	public ErrandDTO(int member_id, String title, String location_ctgr, String errand_ctgr, String req_date, String want_date, int price, String req_location, String content) {
		this.member_id = member_id;
		this.title = title;
		this.location_ctgr = location_ctgr;
		this.errand_ctgr = errand_ctgr;
		this.req_date = req_date;
		this.want_date = want_date;
		this.price = price;
		this.req_location = req_location;
		this.content = content;
	}
	
}
