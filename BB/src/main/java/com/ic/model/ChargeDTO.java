package com.ic.model;

public class ChargeDTO {
	
	private int charge_no;
	private int member_id;
	private String charge_date;
	private int charge_money;
	
	
	public int getCharge_no() {
		return charge_no;
	}
	public void setCharge_no(int charge_no) {
		this.charge_no = charge_no;
	}
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public String getCharge_date() {
		return charge_date;
	}
	public void setCharge_date(String charge_date) {
		this.charge_date = charge_date;
	}
	public int getCharge_money() {
		return charge_money;
	}
	public void setCharge_money(int charge_money) {
		this.charge_money = charge_money;
	}
	
	
	// 기본 생성자
	public ChargeDTO() {
	}
	
}
